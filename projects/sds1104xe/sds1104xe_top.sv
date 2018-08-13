//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.3 (lin64) Build 2018833 Wed Oct  4 19:58:07 MDT 2017
//Date        : Thu Mar  8 23:42:22 2018
//Host        : s1 running 64-bit Ubuntu 16.04.3 LTS
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module sds1104xe
   (ADC_0,
 ADC_1,
 CAPTURE_SPI_CSN,
 CAPTURE_SPI_MOSI,
 CAPTURE_SPI_SCLK,
 DDR_PL_addr,
 DDR_PL_ba,
 DDR_PL_cas_n,
 DDR_PL_ck_n,
 DDR_PL_ck_p,
 DDR_PL_cke,
 DDR_PL_dq,
 DDR_PL_dqs_n,
 DDR_PL_dqs_p,
 DDR_PL_odt,
 DDR_PL_ras_n,
 DDR_PL_reset_n,
 DDR_PL_we_n,
 DDR_addr,
 DDR_ba,
 DDR_cas_n,
 DDR_ck_n,
 DDR_ck_p,
 DDR_cke,
 DDR_cs_n,
 DDR_dm,
 DDR_dq,
 DDR_dqs_n,
 DDR_dqs_p,
 DDR_odt,
 DDR_ras_n,
 DDR_reset_n,
 DDR_we_n,
 EMIO_GPIO_tri_io,
 ETHERNET_MDIO_mdc,
 ETHERNET_MDIO_mdio_io,
 ETHERNET_MII_col,
 ETHERNET_MII_crs,
 ETHERNET_MII_rx_clk,
 ETHERNET_MII_rx_dv,
 ETHERNET_MII_rx_er,
 ETHERNET_MII_rxd,
 ETHERNET_MII_tx_clk,
 ETHERNET_MII_tx_en,
 ETHERNET_MII_txd,
 FIXED_IO_ddr_vrn,
 FIXED_IO_ddr_vrp,
 FIXED_IO_mio,
 FIXED_IO_ps_clk,
 FIXED_IO_ps_porb,
 FIXED_IO_ps_srstb,
 FP_BTN_CLEAR,
 FP_BTN_CLOCK,
 FP_BTN_IN,
 FP_LED_MOSI,
 FP_LED_RCLK,
 FP_LED_SCLK,
 OFFSETDAC_SCLK,
 OFFSETDAC_SDATA,
 OFFSETDAC_SYNCN,
 OFFSETMUX_EN,
 OFFSETMUX_S,
 VID_DATA,
 VID_HSYNC,
 VID_PIXEL_CLK,
 VID_VSYNC);
input [19:0]ADC_0;
input [19:0]ADC_1;
output [7:0]CAPTURE_SPI_CSN;
output CAPTURE_SPI_MOSI;
output CAPTURE_SPI_SCLK;
output [12:0]DDR_PL_addr;
output [2:0]DDR_PL_ba;
output DDR_PL_cas_n;
output [0:0]DDR_PL_ck_n;
output [0:0]DDR_PL_ck_p;
output [0:0]DDR_PL_cke;
inout [31:0]DDR_PL_dq;
inout [3:0]DDR_PL_dqs_n;
inout [3:0]DDR_PL_dqs_p;
output [0:0]DDR_PL_odt;
output DDR_PL_ras_n;
output DDR_PL_reset_n;
output DDR_PL_we_n;
inout [14:0]DDR_addr;
inout [2:0]DDR_ba;
inout DDR_cas_n;
inout DDR_ck_n;
inout DDR_ck_p;
inout DDR_cke;
inout DDR_cs_n;
inout [3:0]DDR_dm;
inout [31:0]DDR_dq;
inout [3:0]DDR_dqs_n;
inout [3:0]DDR_dqs_p;
inout DDR_odt;
inout DDR_ras_n;
inout DDR_reset_n;
inout DDR_we_n;
inout [0:0]EMIO_GPIO_tri_io;
output ETHERNET_MDIO_mdc;
inout ETHERNET_MDIO_mdio_io;
input ETHERNET_MII_col;
input ETHERNET_MII_crs;
input ETHERNET_MII_rx_clk;
input ETHERNET_MII_rx_dv;
input ETHERNET_MII_rx_er;
input [3:0]ETHERNET_MII_rxd;
input ETHERNET_MII_tx_clk;
output ETHERNET_MII_tx_en;
output [3:0]ETHERNET_MII_txd;
inout FIXED_IO_ddr_vrn;
inout FIXED_IO_ddr_vrp;
inout [53:0]FIXED_IO_mio;
inout FIXED_IO_ps_clk;
inout FIXED_IO_ps_porb;
inout FIXED_IO_ps_srstb;
output FP_BTN_CLEAR;
output FP_BTN_CLOCK;
input FP_BTN_IN;
output FP_LED_MOSI;
output FP_LED_RCLK;
output FP_LED_SCLK;
output OFFSETDAC_SCLK;
output OFFSETDAC_SDATA;
output OFFSETDAC_SYNCN;
output OFFSETMUX_EN;
output [2:0]OFFSETMUX_S;
output [17:0]VID_DATA;
output VID_HSYNC;
output VID_PIXEL_CLK;
output VID_VSYNC;

wire [19:0]ADC_0;
wire [19:0]ADC_1;
wire [7:0]CAPTURE_SPI_CSN;
wire CAPTURE_SPI_MOSI;
wire CAPTURE_SPI_SCLK;
wire [12:0]DDR_PL_addr;
wire [2:0]DDR_PL_ba;
wire DDR_PL_cas_n;
wire [0:0]DDR_PL_ck_n;
wire [0:0]DDR_PL_ck_p;
wire [0:0]DDR_PL_cke;
wire [31:0]DDR_PL_dq;
wire [3:0]DDR_PL_dqs_n;
wire [3:0]DDR_PL_dqs_p;
wire [0:0]DDR_PL_odt;
wire DDR_PL_ras_n;
wire DDR_PL_reset_n;
wire DDR_PL_we_n;
wire [14:0]DDR_addr;
wire [2:0]DDR_ba;
wire DDR_cas_n;
wire DDR_ck_n;
wire DDR_ck_p;
wire DDR_cke;
wire DDR_cs_n;
wire [3:0]DDR_dm;
wire [31:0]DDR_dq;
wire [3:0]DDR_dqs_n;
wire [3:0]DDR_dqs_p;
wire DDR_odt;
wire DDR_ras_n;
wire DDR_reset_n;
wire DDR_we_n;
wire [0:0]EMIO_GPIO_tri_i_0;
wire [0:0]EMIO_GPIO_tri_io_0;
wire [0:0]EMIO_GPIO_tri_o_0;
wire [0:0]EMIO_GPIO_tri_t_0;
wire ETHERNET_MDIO_mdc;
wire ETHERNET_MDIO_mdio_i;
wire ETHERNET_MDIO_mdio_io;
wire ETHERNET_MDIO_mdio_o;
wire ETHERNET_MDIO_mdio_t;
wire ETHERNET_MII_col;
wire ETHERNET_MII_crs;
wire ETHERNET_MII_rx_clk;
wire ETHERNET_MII_rx_dv;
wire ETHERNET_MII_rx_er;
wire [3:0]ETHERNET_MII_rxd;
wire ETHERNET_MII_tx_clk;
wire ETHERNET_MII_tx_en;
wire [3:0]ETHERNET_MII_txd;
wire FIXED_IO_ddr_vrn;
wire FIXED_IO_ddr_vrp;
wire [53:0]FIXED_IO_mio;
wire FIXED_IO_ps_clk;
wire FIXED_IO_ps_porb;
wire FIXED_IO_ps_srstb;
wire FP_BTN_CLEAR;
wire FP_BTN_CLOCK;
wire FP_BTN_IN;
wire FP_LED_MOSI;
wire FP_LED_RCLK;
wire FP_LED_SCLK;
wire OFFSETDAC_SCLK;
wire OFFSETDAC_SDATA;
wire OFFSETDAC_SYNCN;
wire OFFSETMUX_EN;
wire [2:0]OFFSETMUX_S;
wire [17:0]VID_DATA;
wire VID_HSYNC;
wire VID_PIXEL_CLK;
wire VID_VSYNC;

IOBUF EMIO_GPIO_tri_iobuf_0
    (.I(EMIO_GPIO_tri_o_0),
     .IO(EMIO_GPIO_tri_io[0]),
     .O(EMIO_GPIO_tri_i_0),
     .T(EMIO_GPIO_tri_t_0));
IOBUF ETHERNET_MDIO_mdio_iobuf
    (.I(ETHERNET_MDIO_mdio_o),
     .IO(ETHERNET_MDIO_mdio_io),
     .O(ETHERNET_MDIO_mdio_i),
     .T(ETHERNET_MDIO_mdio_t));
system system_i
    (.ADC_0(ADC_0),
     .ADC_1(ADC_1),
     .CAPTURE_SPI_CSN(CAPTURE_SPI_CSN),
     .CAPTURE_SPI_MOSI(CAPTURE_SPI_MOSI),
     .CAPTURE_SPI_SCLK(CAPTURE_SPI_SCLK),
     .DDR_PL_addr(DDR_PL_addr),
     .DDR_PL_ba(DDR_PL_ba),
     .DDR_PL_cas_n(DDR_PL_cas_n),
     .DDR_PL_ck_n(DDR_PL_ck_n),
     .DDR_PL_ck_p(DDR_PL_ck_p),
     .DDR_PL_cke(DDR_PL_cke),
     .DDR_PL_dq(DDR_PL_dq),
     .DDR_PL_dqs_n(DDR_PL_dqs_n),
     .DDR_PL_dqs_p(DDR_PL_dqs_p),
     .DDR_PL_odt(DDR_PL_odt),
     .DDR_PL_ras_n(DDR_PL_ras_n),
     .DDR_PL_reset_n(DDR_PL_reset_n),
     .DDR_PL_we_n(DDR_PL_we_n),
     .DDR_addr(DDR_addr),
     .DDR_ba(DDR_ba),
     .DDR_cas_n(DDR_cas_n),
     .DDR_ck_n(DDR_ck_n),
     .DDR_ck_p(DDR_ck_p),
     .DDR_cke(DDR_cke),
     .DDR_cs_n(DDR_cs_n),
     .DDR_dm(DDR_dm),
     .DDR_dq(DDR_dq),
     .DDR_dqs_n(DDR_dqs_n),
     .DDR_dqs_p(DDR_dqs_p),
     .DDR_odt(DDR_odt),
     .DDR_ras_n(DDR_ras_n),
     .DDR_reset_n(DDR_reset_n),
     .DDR_we_n(DDR_we_n),
     .EMIO_GPIO_tri_i(EMIO_GPIO_tri_i_0),
     .EMIO_GPIO_tri_o(EMIO_GPIO_tri_o_0),
     .EMIO_GPIO_tri_t(EMIO_GPIO_tri_t_0),
     .ETHERNET_MDIO_mdc(ETHERNET_MDIO_mdc),
     .ETHERNET_MDIO_mdio_i(ETHERNET_MDIO_mdio_i),
     .ETHERNET_MDIO_mdio_o(ETHERNET_MDIO_mdio_o),
     .ETHERNET_MDIO_mdio_t(ETHERNET_MDIO_mdio_t),
     .ETHERNET_MII_col(ETHERNET_MII_col),
     .ETHERNET_MII_crs(ETHERNET_MII_crs),
     .ETHERNET_MII_rx_clk(ETHERNET_MII_rx_clk),
     .ETHERNET_MII_rx_dv(ETHERNET_MII_rx_dv),
     .ETHERNET_MII_rx_er(ETHERNET_MII_rx_er),
     .ETHERNET_MII_rxd(ETHERNET_MII_rxd),
     .ETHERNET_MII_tx_clk(ETHERNET_MII_tx_clk),
     .ETHERNET_MII_tx_en(ETHERNET_MII_tx_en),
     .ETHERNET_MII_txd(ETHERNET_MII_txd),
     .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
     .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
     .FIXED_IO_mio(FIXED_IO_mio),
     .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
     .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
     .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
     .FP_BTN_CLEAR(FP_BTN_CLEAR),
     .FP_BTN_CLOCK(FP_BTN_CLOCK),
     .FP_BTN_IN(FP_BTN_IN),
     .FP_LED_MOSI(FP_LED_MOSI),
     .FP_LED_RCLK(FP_LED_RCLK),
     .FP_LED_SCLK(FP_LED_SCLK),
     .OFFSETDAC_SCLK(OFFSETDAC_SCLK),
     .OFFSETDAC_SDATA(OFFSETDAC_SDATA),
     .OFFSETDAC_SYNCN(OFFSETDAC_SYNCN),
     .OFFSETMUX_EN(OFFSETMUX_EN),
     .OFFSETMUX_S(OFFSETMUX_S),
     .VID_DATA(VID_DATA),
     .VID_HSYNC(VID_HSYNC),
     .VID_PIXEL_CLK(VID_PIXEL_CLK),
     .VID_VSYNC(VID_VSYNC));
endmodule
