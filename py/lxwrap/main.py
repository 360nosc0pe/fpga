from migen import *
from litex.soc.interconnect import axi, csr_bus, csr

from offsetdac import OffsetDac
from lvdsrecv import LvdsReceiver

LVDS_ADC = [
    ("d_p", 8, DIR_M_TO_S),
    ("d_n", 8, DIR_M_TO_S),
    ("fclk_p", 1, DIR_M_TO_S),
    ("fclk_n", 1, DIR_M_TO_S),
    ("lclk_p", 1, DIR_M_TO_S),
    ("lclk_n", 1, DIR_M_TO_S),
]

class Top(Module):
    def __init__(self):
        # AXI is byte addressed, CSR is word addressed...
        self.axi_width = 16
        self.csr_width = self.axi_width - 2

        self._csr_map = {}
        self._csr_reverse_map = {}

        self.submodules.offsetdac = OffsetDac()

        self.offsetdac_mux = self.offsetdac.mux
        self.offsetdac_spi = self.offsetdac.spi


        self.adc0 = Signal(20) # DP1A, DN1A, ...DN4B, LCLK, FCLK each p/n
        
        # AXIS ADC0 data
        
        self.adc_axis_clk = Signal()
        self.adc_axis_rst = Signal()
        
        self.adc0_tdata = Signal(64)
        self.adc0_tvalid = Signal()
        self.adc0_tready = Signal()
        
        self.debug = Signal(64)
        self.lvds_pads_adc0 = Record(LVDS_ADC)

        for i in range(8):
            self.comb += [
                self.lvds_pads_adc0.d_p[i].eq(self.adc0[i * 2 + 0]),
                self.lvds_pads_adc0.d_n[i].eq(self.adc0[i * 2 + 1]),
            ]
        self.comb += [
            self.lvds_pads_adc0.lclk_p.eq(self.adc0[16]),
            self.lvds_pads_adc0.lclk_n.eq(self.adc0[17]),
            self.lvds_pads_adc0.fclk_p.eq(self.adc0[18]),
            self.lvds_pads_adc0.fclk_n.eq(self.adc0[19]),
        ]

        self.submodules.lvds_adc0 = LvdsReceiver(self.lvds_pads_adc0)
        
        # wire up AXIS
        self.comb += [
            self.lvds_adc0.d_clk.eq(self.adc_axis_clk), # data clock
            self.lvds_adc0.d_rst.eq(self.adc_axis_rst), # data reset
            self.adc0_tdata.eq(self.lvds_adc0.d),
            self.adc0_tvalid.eq(self.lvds_adc0.d_valid),
            self.lvds_adc0.d_ready.eq(self.adc0_tready)
        ]
        
        # DEBUG
        count = Signal(20)
        
        self.clock_domains.cd_data = ClockDomain()
        self.comb += self.cd_data.clk.eq(self.adc_axis_clk)
        self.comb += self.cd_data.rst.eq(self.adc_axis_rst)
        
        self.sync.data += [
            count.eq(count + 1)
        ]
        
        self.comb += [
            self.debug[0:32].eq(self.lvds_adc0.d),
            self.debug[32:40].eq(self.lvds_adc0.fclk_preslip),
            self.debug[40].eq(self.lvds_adc0.d_valid),
            self.debug[41].eq(self.adc0_tvalid),
            self.debug[42].eq(self.adc0_tready),
            self.debug[45:64].eq(count)
        ]

        self.axi_lite = axi.Interface(
                data_width=32, address_width=self.axi_width)
        self.csr = csr_bus.Interface(
                data_width=32, address_width=self.csr_width)
        self.submodules.axi2csr = axi.AXILite2CSR(
                bus_axi=self.axi_lite, bus_csr=self.csr)
        self.submodules.csrbankarray = csr_bus.CSRBankArray(
                self, self._get_csr_map, data_width=32,
                address_width=self.csr_width)
        self.submodules.csrcon = csr_bus.Interconnect(
                self.csr, self.csrbankarray.get_buses())


        self.ios = set()
        for i in self.axi_lite, self.offsetdac_mux, self.offsetdac_spi:
            self.ios |= set(i.flatten())
        self.ios |= set([self.debug, self.adc0, self.adc0_tdata, self.adc0_tvalid, self.adc0_tready, self.adc_axis_clk, self.adc_axis_rst])
            
    def print_map(self):
        print('AXI Lite slave map:')
        for name, csrs, mapaddr, rmap in self.csrbankarray.banks:
            origin = mapaddr * (1 << 11)
            print(' - bank {}'.format(name))
            for csr in csrs:
                width = csr.size // 8
                print('   0x{:03x}: {}'.format(origin, csr.name))
                origin += width

    def _get_csr_map(self, name, memory):
        # Called by CSRBankArray to get mapping of CSR banks
        if name is None or memory is not None:
            raise Exception("Memory? :V")
        if name not in self._csr_map:
            for i in range(1024):
                if i not in self._csr_reverse_map:
                    self._csr_map[name] = i
                    self._csr_reverse_map[i] = name
                    break
        print(name, " -> ",  self._csr_map[name])
        return self._csr_map[name]


from litex.gen.fhdl import verilog
from litex.gen.sim import run_simulation

if __name__ == '__main__':
    def testbench_write_read(dut):
        for _ in range(8):
            yield

        def read_w(addr):
            yield dut.axi_lite.ar.valid.eq(1)
            yield dut.axi_lite.r.ready.eq(1)
            yield dut.axi_lite.ar.addr.eq(addr)

            while (yield dut.axi_lite.ar.ready != 1):
                yield
            yield dut.axi_lite.ar.valid.eq(0)
            while (yield dut.axi_lite.r.valid != 1):
                yield
            yield dut.axi_lite.r.ready.eq(0)

        yield from read_w(0x0)
        r = (yield dut.axi_lite.r.data)
        for _ in range(8):
            yield

        yield from read_w(0x800)
        r = (yield dut.axi_lite.r.data)

        for _ in range(8):
            yield

#    print("Running simulation...")
#    t = Top()
#    run_simulation(t, testbench_write_read(t), vcd_name='axi-read.vcd')

    print("Exporting lxwrap.v...")
    t = Top()
    verilog.convert(t, ios=t.ios).write('lxwrap.v')

    t.print_map()
