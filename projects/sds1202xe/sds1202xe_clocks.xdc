# Ethernet clocks
create_clock -period 40.000 -name ETHERNET_MII_rx_clk -waveform {0.000 20.000} [get_ports ETHERNET_MII_rx_clk]
create_clock -period 40.000 -name ETHERNET_MII_tx_clk -waveform {0.000 20.000} [get_ports ETHERNET_MII_tx_clk]

# Crossing in VDMA for LCD display which is in asynchronous mode
# Memory clock crosses into peripheral clock and vice versa
set_false_path -from [get_clocks clk_fpga_2] -to [get_clocks clk_fpga_1]
set_false_path -from [get_clocks clk_fpga_1] -to [get_clocks clk_fpga_2]
