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
    def __init__(self, num_adcs = 2):
        # AXI is byte addressed, CSR is word addressed...
        self.axi_width = 16
        self.csr_width = self.axi_width - 2

        self._csr_map = {}
        self._csr_reverse_map = {}

        self.submodules.offsetdac = OffsetDac()

        self.offsetdac_mux = self.offsetdac.mux
        self.offsetdac_spi = self.offsetdac.spi

        # DEBUG
        count = Signal(20)
        self.sync.data += [
            count.eq(count + 1)
        ]
        self.debug = Signal(64)

        # common across all ADC channels
        self.adc_axis_clk = Signal()
        self.adc_axis_rst = Signal()

        def create_signal(name, signal):
            setattr(self, name, signal)
            getattr(self, name).name_override = name
            return signal

        # per-ADC signals
        for nadc in range(num_adcs):
            adc = create_signal("adc%d" % nadc, Signal(20))
            adc_tdata = create_signal("adc%d_tdata" % nadc, Signal(64))
            adc_tvalid = create_signal("adc%d_tvalid" % nadc, Signal())
            adc_tready = create_signal("adc%d_tready" % nadc, Signal())
            adc_tlast = create_signal("adc%d_tlast" % nadc, Signal())

            lvds_pads_adc = Record(LVDS_ADC)

            for i in range(8):
                self.comb += [
                    lvds_pads_adc.d_p[i].eq(adc[i * 2 + 0]),
                    lvds_pads_adc.d_n[i].eq(adc[i * 2 + 1]),
                ]
            self.comb += [
                lvds_pads_adc.lclk_p.eq(adc[16]),
                lvds_pads_adc.lclk_n.eq(adc[17]),
                lvds_pads_adc.fclk_p.eq(adc[18]),
                lvds_pads_adc.fclk_n.eq(adc[19]),
            ]

            adcif = LvdsReceiver(lvds_pads_adc, nadc)

            if nadc == 1:
                self.comb += [
                    self.debug[0:32].eq(adcif.d),
                    self.debug[32:40].eq(adcif.fclk_preslip),
                    self.debug[40].eq(adcif.d_valid),
                    self.debug[41].eq(adcif.d_last),
                    self.debug[42].eq(adcif.d_ready),
                    self.debug[45:64].eq(count)
                ]

            self.comb += [
                adcif.d_clk.eq(self.adc_axis_clk), # data clock
                adcif.d_rst.eq(self.adc_axis_rst), # data reset
                adc_tdata.eq(adcif.d),
                adc_tvalid.eq(adcif.d_valid),
                adcif.d_ready.eq(adc_tready),
                adc_tlast.eq(adcif.d_last),
            ]

            setattr(self.submodules, "adcif%d" % nadc, adcif)



        self.clock_domains.cd_data = ClockDomain()
        self.comb += self.cd_data.clk.eq(self.adc_axis_clk)
        self.comb += self.cd_data.rst.eq(self.adc_axis_rst)

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
        self.ios |= set([self.debug, self.adc_axis_clk, self.adc_axis_rst])

        for nadc in range(num_adcs):
            for i in "adc%d", "adc%d_tdata", "adc%d_tvalid", "adc%d_tready", "adc%d_tlast":
                self.ios.add(getattr(self, i % nadc))

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
