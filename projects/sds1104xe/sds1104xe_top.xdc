############### Misc ###############

#set_property IOSTANDARD LVCMOS33 [get_ports FPGA_LED]
#set_property PACKAGE_PIN G16 [get_ports FPGA_LED]

############### Ethernet ###############

set_property IOSTANDARD LVCMOS33 [get_ports ETHERNET_MDIO_mdc]
set_property PACKAGE_PIN D15 [get_ports ETHERNET_MDIO_mdc]

set_property IOSTANDARD LVCMOS33 [get_ports ETHERNET_MDIO_mdio_io]
set_property PACKAGE_PIN E15 [get_ports ETHERNET_MDIO_mdio_io]

set_property IOSTANDARD LVCMOS33 [get_ports {ETHERNET_MII_tx_en}]
set_property PACKAGE_PIN A18 [get_ports {ETHERNET_MII_tx_en}]

set_property IOSTANDARD LVCMOS33 [get_ports {ETHERNET_MII_rxd[3]}]
set_property PACKAGE_PIN D17 [get_ports {ETHERNET_MII_rxd[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ETHERNET_MII_rxd[2]}]
set_property PACKAGE_PIN B17 [get_ports {ETHERNET_MII_rxd[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ETHERNET_MII_rxd[1]}]
set_property PACKAGE_PIN A17 [get_ports {ETHERNET_MII_rxd[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ETHERNET_MII_rxd[0]}]
set_property PACKAGE_PIN D16 [get_ports {ETHERNET_MII_rxd[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ETHERNET_MII_txd[3]}]
set_property PACKAGE_PIN B20 [get_ports {ETHERNET_MII_txd[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ETHERNET_MII_txd[2]}]
set_property PACKAGE_PIN C19 [get_ports {ETHERNET_MII_txd[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ETHERNET_MII_txd[1]}]
set_property PACKAGE_PIN A19 [get_ports {ETHERNET_MII_txd[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ETHERNET_MII_txd[0]}]
set_property PACKAGE_PIN C18 [get_ports {ETHERNET_MII_txd[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports ETHERNET_MII_col]
set_property PACKAGE_PIN B16 [get_ports ETHERNET_MII_col]

set_property IOSTANDARD LVCMOS33 [get_ports ETHERNET_MII_crs]
set_property PACKAGE_PIN B15 [get_ports ETHERNET_MII_crs]

set_property IOSTANDARD LVCMOS33 [get_ports ETHERNET_MII_rx_clk]
set_property PACKAGE_PIN C17 [get_ports ETHERNET_MII_rx_clk]

set_property IOSTANDARD LVCMOS33 [get_ports ETHERNET_MII_rx_dv]
set_property PACKAGE_PIN A16 [get_ports ETHERNET_MII_rx_dv]

set_property IOSTANDARD LVCMOS33 [get_ports ETHERNET_MII_rx_er]
set_property PACKAGE_PIN C15 [get_ports ETHERNET_MII_rx_er]

set_property IOSTANDARD LVCMOS33 [get_ports ETHERNET_MII_tx_clk]
set_property PACKAGE_PIN B19 [get_ports ETHERNET_MII_tx_clk]

############### Display ###############

set_property IOSTANDARD LVCMOS33 [get_ports VID_PIXEL_CLK]
set_property PACKAGE_PIN D20 [get_ports VID_PIXEL_CLK]

set_property IOSTANDARD LVCMOS33 [get_ports VID_VSYNC]
set_property PACKAGE_PIN A21 [get_ports VID_VSYNC]

set_property IOSTANDARD LVCMOS33 [get_ports VID_HSYNC]
set_property PACKAGE_PIN A22 [get_ports VID_HSYNC]

#Red
set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[12]}]
set_property PACKAGE_PIN G22 [get_ports {VID_DATA[12]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[13]}]
set_property PACKAGE_PIN F22 [get_ports {VID_DATA[13]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[14]}]
set_property PACKAGE_PIN F21 [get_ports {VID_DATA[14]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[15]}]
set_property PACKAGE_PIN F19 [get_ports {VID_DATA[15]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[16]}]
set_property PACKAGE_PIN F18 [get_ports {VID_DATA[16]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[17]}]
set_property PACKAGE_PIN F17 [get_ports {VID_DATA[17]}]

#Green
set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[6]}]
set_property PACKAGE_PIN F16 [get_ports {VID_DATA[6]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[7]}]
set_property PACKAGE_PIN E21 [get_ports {VID_DATA[7]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[8]}]
set_property PACKAGE_PIN E20 [get_ports {VID_DATA[8]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[9]}]
set_property PACKAGE_PIN E19 [get_ports {VID_DATA[9]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[10]}]
set_property PACKAGE_PIN E18 [get_ports {VID_DATA[10]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[11]}]
set_property PACKAGE_PIN E16 [get_ports {VID_DATA[11]}]

#Blue
set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[0]}]
set_property PACKAGE_PIN D22 [get_ports {VID_DATA[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[1]}]
set_property PACKAGE_PIN D21 [get_ports {VID_DATA[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[2]}]
set_property PACKAGE_PIN C22 [get_ports {VID_DATA[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[3]}]
set_property PACKAGE_PIN C20 [get_ports {VID_DATA[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[4]}]
set_property PACKAGE_PIN B22 [get_ports {VID_DATA[4]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[5]}]
set_property PACKAGE_PIN B21 [get_ports {VID_DATA[5]}]

############### Frontpanel ###############

# LEDs
set_property IOSTANDARD LVCMOS15 [get_ports FP_LED_SCLK]
set_property PACKAGE_PIN R20 [get_ports FP_LED_SCLK]

set_property IOSTANDARD LVCMOS15 [get_ports FP_LED_MOSI]
set_property PACKAGE_PIN P22 [get_ports FP_LED_MOSI]

set_property IOSTANDARD LVCMOS15 [get_ports FP_LED_RCLK]
set_property PACKAGE_PIN N22 [get_ports FP_LED_RCLK]

# LED shift registers output enable
set_property IOSTANDARD LVCMOS15 [get_ports {EMIO_GPIO_tri_io}]
set_property PACKAGE_PIN R21 [get_ports {EMIO_GPIO_tri_io}]

############### SPI for signal capture devices ###############

# SPI
set_property IOSTANDARD LVCMOS15 [get_ports CAPTURE_SPI_SCLK]
set_property PACKAGE_PIN K15 [get_ports CAPTURE_SPI_SCLK]

set_property IOSTANDARD LVCMOS15 [get_ports CAPTURE_SPI_MOSI]
set_property PACKAGE_PIN J16 [get_ports CAPTURE_SPI_MOSI]

# PLL Latch
set_property IOSTANDARD LVCMOS15 [get_ports {CAPTURE_SPI_CSN[0]}]
set_property PACKAGE_PIN J17 [get_ports {CAPTURE_SPI_CSN[0]}]

# ADC1 CSN
set_property IOSTANDARD LVCMOS15 [get_ports {CAPTURE_SPI_CSN[1]}]
set_property PACKAGE_PIN L16 [get_ports {CAPTURE_SPI_CSN[1]}]

# ADC2 CSN
set_property IOSTANDARD LVCMOS15 [get_ports {CAPTURE_SPI_CSN[2]}]
set_property PACKAGE_PIN L17 [get_ports {CAPTURE_SPI_CSN[2]}]

# Frontend shiftregs RCLK
set_property IOSTANDARD LVCMOS15 [get_ports {CAPTURE_SPI_CSN[3]}]
set_property PACKAGE_PIN M17 [get_ports {CAPTURE_SPI_CSN[3]}]

# Channel 1 VGA
set_property IOSTANDARD LVCMOS15 [get_ports {CAPTURE_SPI_CSN[4]}]
set_property PACKAGE_PIN N17 [get_ports {CAPTURE_SPI_CSN[4]}]

# Channel 2 VGA
set_property IOSTANDARD LVCMOS15 [get_ports {CAPTURE_SPI_CSN[5]}]
set_property PACKAGE_PIN N18 [get_ports {CAPTURE_SPI_CSN[5]}]

# Channel 3 VGA
set_property IOSTANDARD LVCMOS15 [get_ports {CAPTURE_SPI_CSN[6]}]
set_property PACKAGE_PIN M15 [get_ports {CAPTURE_SPI_CSN[6]}]

# Channel 4 VGA
set_property IOSTANDARD LVCMOS15 [get_ports {CAPTURE_SPI_CSN[7]}]
set_property PACKAGE_PIN K20 [get_ports {CAPTURE_SPI_CSN[7]}]

############### OFFSETDAC ############### 

set_property IOSTANDARD LVCMOS15 [get_ports OFFSETDAC_SCLK]
set_property PACKAGE_PIN H15 [get_ports OFFSETDAC_SCLK]

set_property IOSTANDARD LVCMOS15 [get_ports OFFSETDAC_SDATA]
set_property PACKAGE_PIN R15 [get_ports OFFSETDAC_SDATA]

set_property IOSTANDARD LVCMOS15 [get_ports OFFSETDAC_SYNCN]
set_property PACKAGE_PIN J15 [get_ports OFFSETDAC_SYNCN]

set_property IOSTANDARD LVCMOS15 [get_ports {OFFSETMUX_S[0]}]
set_property PACKAGE_PIN U14 [get_ports {OFFSETMUX_S[0]}]

set_property IOSTANDARD LVCMOS15 [get_ports {OFFSETMUX_S[1]}]
set_property PACKAGE_PIN Y18 [get_ports {OFFSETMUX_S[1]}]

set_property IOSTANDARD LVCMOS15 [get_ports {OFFSETMUX_S[2]}]
set_property PACKAGE_PIN AA18 [get_ports {OFFSETMUX_S[2]}]

set_property IOSTANDARD LVCMOS15 [get_ports OFFSETMUX_EN]
set_property PACKAGE_PIN U19 [get_ports OFFSETMUX_EN]

############### ADC ############### 

set_property IOSTANDARD LVDS_25 [get_ports ADC_0[0]]
set_property DIFF_TERM TRUE [get_ports ADC_0[0]]
set_property PACKAGE_PIN AA12 [get_ports ADC_0[0]]

set_property IOSTANDARD LVDS_25 [get_ports ADC_0[1]]
set_property DIFF_TERM TRUE [get_ports ADC_0[1]]
set_property PACKAGE_PIN AB12 [get_ports ADC_0[1]]

set_property IOSTANDARD LVDS_25 [get_ports ADC_0[2]]
set_property DIFF_TERM TRUE [get_ports ADC_0[2]]
set_property PACKAGE_PIN AA11 [get_ports ADC_0[2]]

set_property IOSTANDARD LVDS_25 [get_ports ADC_0[3]]
set_property DIFF_TERM TRUE [get_ports ADC_0[3]]
set_property PACKAGE_PIN AB11 [get_ports ADC_0[3]]

set_property IOSTANDARD LVDS_25 [get_ports ADC_0[4]]
set_property DIFF_TERM TRUE [get_ports ADC_0[4]]
set_property PACKAGE_PIN W11 [get_ports ADC_0[4]]

set_property IOSTANDARD LVDS_25 [get_ports ADC_0[5]]
set_property DIFF_TERM TRUE [get_ports ADC_0[5]]
set_property PACKAGE_PIN W10 [get_ports ADC_0[5]]

set_property IOSTANDARD LVDS_25 [get_ports ADC_0[6]]
set_property DIFF_TERM TRUE [get_ports ADC_0[6]]
set_property PACKAGE_PIN U10 [get_ports ADC_0[6]]

set_property IOSTANDARD LVDS_25 [get_ports ADC_0[7]]
set_property DIFF_TERM TRUE [get_ports ADC_0[7]]
set_property PACKAGE_PIN U9 [get_ports ADC_0[7]]

set_property IOSTANDARD LVDS_25 [get_ports ADC_0[8]]
set_property DIFF_TERM TRUE [get_ports ADC_0[8]]
set_property PACKAGE_PIN V10 [get_ports ADC_0[8]]

set_property IOSTANDARD LVDS_25 [get_ports ADC_0[9]]
set_property DIFF_TERM TRUE [get_ports ADC_0[9]]
set_property PACKAGE_PIN V9 [get_ports ADC_0[9]]

set_property IOSTANDARD LVDS_25 [get_ports ADC_0[10]]
set_property DIFF_TERM TRUE [get_ports ADC_0[10]]
set_property PACKAGE_PIN V8 [get_ports ADC_0[10]]

set_property IOSTANDARD LVDS_25 [get_ports ADC_0[11]]
set_property DIFF_TERM TRUE [get_ports ADC_0[11]]
set_property PACKAGE_PIN W8 [get_ports ADC_0[11]]

set_property IOSTANDARD LVDS_25 [get_ports ADC_0[12]]
set_property DIFF_TERM TRUE [get_ports ADC_0[12]]
set_property PACKAGE_PIN Y11 [get_ports ADC_0[12]]

set_property IOSTANDARD LVDS_25 [get_ports ADC_0[13]]
set_property DIFF_TERM TRUE [get_ports ADC_0[13]]
set_property PACKAGE_PIN Y10 [get_ports ADC_0[13]]

set_property IOSTANDARD LVDS_25 [get_ports ADC_0[14]]
set_property DIFF_TERM TRUE [get_ports ADC_0[14]]
set_property PACKAGE_PIN AB10 [get_ports ADC_0[14]]

set_property IOSTANDARD LVDS_25 [get_ports ADC_0[15]]
set_property DIFF_TERM TRUE [get_ports ADC_0[15]]
set_property PACKAGE_PIN AB9 [get_ports ADC_0[15]]

set_property IOSTANDARD LVDS_25 [get_ports ADC_0[17]]
set_property DIFF_TERM TRUE [get_ports ADC_0[17]]
set_property PACKAGE_PIN Y8 [get_ports ADC_0[17]]

set_property IOSTANDARD LVDS_25 [get_ports ADC_0[16]]
set_property DIFF_TERM TRUE [get_ports ADC_0[16]]
set_property PACKAGE_PIN Y9 [get_ports ADC_0[16]]

set_property IOSTANDARD LVDS_25 [get_ports ADC_0[19]]
set_property DIFF_TERM TRUE [get_ports ADC_0[19]]
set_property PACKAGE_PIN AA8 [get_ports ADC_0[19]]

set_property IOSTANDARD LVDS_25 [get_ports ADC_0[18]]
set_property DIFF_TERM TRUE [get_ports ADC_0[18]]
set_property PACKAGE_PIN AA9 [get_ports ADC_0[18]]

