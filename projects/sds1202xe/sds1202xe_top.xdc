############### Misc ###############

set_property IOSTANDARD LVCMOS33 [get_ports FPGA_LED]
set_property PACKAGE_PIN M21 [get_ports FPGA_LED]

############### Ethernet ###############

set_property IOSTANDARD LVCMOS33 [get_ports ETHERNET_MDIO_mdc]
set_property PACKAGE_PIN Y19 [get_ports ETHERNET_MDIO_mdc]

set_property IOSTANDARD LVCMOS33 [get_ports ETHERNET_MDIO_mdio_io]
set_property PACKAGE_PIN U19 [get_ports ETHERNET_MDIO_mdio_io]

set_property IOSTANDARD LVCMOS33 [get_ports {ETHERNET_MII_tx_en}]
set_property PACKAGE_PIN Y16 [get_ports {ETHERNET_MII_tx_en}]

set_property IOSTANDARD LVCMOS33 [get_ports {ETHERNET_MII_rxd[3]}]
set_property PACKAGE_PIN T21 [get_ports {ETHERNET_MII_rxd[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ETHERNET_MII_rxd[2]}]
set_property PACKAGE_PIN U21 [get_ports {ETHERNET_MII_rxd[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ETHERNET_MII_rxd[1]}]
set_property PACKAGE_PIN T22 [get_ports {ETHERNET_MII_rxd[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ETHERNET_MII_rxd[0]}]
set_property PACKAGE_PIN U22 [get_ports {ETHERNET_MII_rxd[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ETHERNET_MII_txd[3]}]
set_property PACKAGE_PIN U20 [get_ports {ETHERNET_MII_txd[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ETHERNET_MII_txd[2]}]
set_property PACKAGE_PIN V20 [get_ports {ETHERNET_MII_txd[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ETHERNET_MII_txd[1]}]
set_property PACKAGE_PIN V18 [get_ports {ETHERNET_MII_txd[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {ETHERNET_MII_txd[0]}]
set_property PACKAGE_PIN V19 [get_ports {ETHERNET_MII_txd[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports ETHERNET_MII_col]
set_property PACKAGE_PIN W21 [get_ports ETHERNET_MII_col]

set_property IOSTANDARD LVCMOS33 [get_ports ETHERNET_MII_crs]
set_property PACKAGE_PIN W22 [get_ports ETHERNET_MII_crs]

set_property IOSTANDARD LVCMOS33 [get_ports ETHERNET_MII_rx_clk]
set_property PACKAGE_PIN W16 [get_ports ETHERNET_MII_rx_clk]

set_property IOSTANDARD LVCMOS33 [get_ports ETHERNET_MII_rx_dv]
set_property PACKAGE_PIN V22 [get_ports ETHERNET_MII_rx_dv]

set_property IOSTANDARD LVCMOS33 [get_ports ETHERNET_MII_rx_er]
set_property PACKAGE_PIN W20 [get_ports ETHERNET_MII_rx_er]

set_property IOSTANDARD LVCMOS33 [get_ports ETHERNET_MII_tx_clk]
set_property PACKAGE_PIN W17 [get_ports ETHERNET_MII_tx_clk]

############### USB ###############

#USB_HOST_PWR_ENA
set_property IOSTANDARD LVCMOS33 [get_ports {EMIO_GPIO_tri_io[0]}]
set_property PACKAGE_PIN P20 [get_ports {EMIO_GPIO_tri_io[0]}]

#USB_HOST_PWR_FAULT_N
set_property IOSTANDARD LVCMOS33 [get_ports {EMIO_GPIO_tri_io[1]}]
set_property PACKAGE_PIN P21 [get_ports {EMIO_GPIO_tri_io[1]}]

############### Display ###############

set_property IOSTANDARD LVCMOS33 [get_ports VID_PIXEL_CLK]
set_property PACKAGE_PIN H15 [get_ports VID_PIXEL_CLK]

set_property IOSTANDARD LVCMOS33 [get_ports VID_ACTIVE_VIDEO]
set_property PACKAGE_PIN J16 [get_ports VID_ACTIVE_VIDEO]

set_property IOSTANDARD LVCMOS33 [get_ports VID_VSYNC]
set_property PACKAGE_PIN K15 [get_ports VID_VSYNC]

set_property IOSTANDARD LVCMOS33 [get_ports VID_HSYNC]
set_property PACKAGE_PIN J15 [get_ports VID_HSYNC]

set_property IOSTANDARD LVCMOS33 [get_ports {EMIO_GPIO_tri_io[2]}]
set_property PACKAGE_PIN P22 [get_ports {EMIO_GPIO_tri_io[2]}]

#Red
set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[16]}]
set_property PACKAGE_PIN M15 [get_ports {VID_DATA[16]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[17]}]
set_property PACKAGE_PIN N18 [get_ports {VID_DATA[17]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[18]}]
set_property PACKAGE_PIN N17 [get_ports {VID_DATA[18]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[19]}]
set_property PACKAGE_PIN M17 [get_ports {VID_DATA[19]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[20]}]
set_property PACKAGE_PIN L17 [get_ports {VID_DATA[20]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[21]}]
set_property PACKAGE_PIN L16 [get_ports {VID_DATA[21]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[22]}]
set_property PACKAGE_PIN R20 [get_ports {VID_DATA[22]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[23]}]
set_property PACKAGE_PIN J17 [get_ports {VID_DATA[23]}]

#Green
set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[8]}]
set_property PACKAGE_PIN L21 [get_ports {VID_DATA[8]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[9]}]
set_property PACKAGE_PIN K21 [get_ports {VID_DATA[9]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[10]}]
set_property PACKAGE_PIN J20 [get_ports {VID_DATA[10]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[11]}]
set_property PACKAGE_PIN J22 [get_ports {VID_DATA[11]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[12]}]
set_property PACKAGE_PIN J21 [get_ports {VID_DATA[12]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[13]}]
set_property PACKAGE_PIN K18 [get_ports {VID_DATA[13]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[14]}]
set_property PACKAGE_PIN J18 [get_ports {VID_DATA[14]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[15]}]
set_property PACKAGE_PIN M16 [get_ports {VID_DATA[15]}]

#Blue
set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[0]}]
set_property PACKAGE_PIN N20 [get_ports {VID_DATA[0]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[1]}]
set_property PACKAGE_PIN N19 [get_ports {VID_DATA[1]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[2]}]
set_property PACKAGE_PIN M20 [get_ports {VID_DATA[2]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[3]}]
set_property PACKAGE_PIN L19 [get_ports {VID_DATA[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[4]}]
set_property PACKAGE_PIN L18 [get_ports {VID_DATA[4]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[5]}]
set_property PACKAGE_PIN K20 [get_ports {VID_DATA[5]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[6]}]
set_property PACKAGE_PIN K19 [get_ports {VID_DATA[6]}]

set_property IOSTANDARD LVCMOS33 [get_ports {VID_DATA[7]}]
set_property PACKAGE_PIN L22 [get_ports {VID_DATA[7]}]

############### Frontpanel ###############

# LEDs
set_property IOSTANDARD LVCMOS33 [get_ports FP_LED_SCLK]
set_property PACKAGE_PIN T18 [get_ports FP_LED_SCLK]

set_property IOSTANDARD LVCMOS33 [get_ports FP_LED_MOSI]
set_property PACKAGE_PIN T19 [get_ports FP_LED_MOSI]

set_property IOSTANDARD LVCMOS33 [get_ports FP_LED_RCLK]
set_property PACKAGE_PIN R18 [get_ports FP_LED_RCLK]

# LED shift registers output enable
set_property IOSTANDARD LVCMOS33 [get_ports {EMIO_GPIO_tri_io[3]}]
set_property PACKAGE_PIN P17 [get_ports {EMIO_GPIO_tri_io[3]}]

# Buttons
set_property IOSTANDARD LVCMOS33 [get_ports FP_BTN_CLOCK]
set_property PACKAGE_PIN P16 [get_ports FP_BTN_CLOCK]

set_property IOSTANDARD LVCMOS33 [get_ports FP_BTN_CLEAR]
set_property PACKAGE_PIN R15 [get_ports FP_BTN_CLEAR]

set_property IOSTANDARD LVCMOS33 [get_ports FP_BTN_IN]
set_property PACKAGE_PIN R16 [get_ports FP_BTN_IN]

############### SPI (PLL, ADC, ...) ###############

# Common
set_property IOSTANDARD LVCMOS33 [get_ports SPI_CLK]
set_property PACKAGE_PIN AB14 [get_ports SPI_CLK]

set_property IOSTANDARD LVCMOS33 [get_ports SPI_MOSI]
set_property PACKAGE_PIN V17 [get_ports SPI_MOSI]

# Chip Selects
set_property IOSTANDARD LVCMOS33 [get_ports SPI_CS_PLL]
set_property PACKAGE_PIN Y14 [get_ports SPI_CS_PLL]
