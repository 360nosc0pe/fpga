/* Machine-generated using LiteX gen */
module top(
	output reg spi_SCLK,
	output reg spi_DIN,
	output reg spi_nSYNC,
	output reg mux_nE,
	output reg [2:0] mux_S,
	output reg [63:0] debug,
	input adc_axis_clk,
	input adc_axis_rst,
	input [19:0] adc0,
	output [63:0] adc0_tdata,
	output adc0_tvalid,
	input adc0_tready,
	output adc0_tlast,
	input [19:0] adc1,
	output [63:0] adc1_tdata,
	output adc1_tvalid,
	input adc1_tready,
	output adc1_tlast,
	input [15:0] axi_lite_aw_addr,
	input [2:0] axi_lite_aw_prot,
	input axi_lite_aw_valid,
	output reg axi_lite_aw_ready,
	input [31:0] axi_lite_w_data,
	input [3:0] axi_lite_w_strb,
	input axi_lite_w_valid,
	output reg axi_lite_w_ready,
	output reg [1:0] axi_lite_b_resp,
	output reg axi_lite_b_valid,
	input axi_lite_b_ready,
	input [15:0] axi_lite_ar_addr,
	input [2:0] axi_lite_ar_prot,
	input axi_lite_ar_valid,
	output reg axi_lite_ar_ready,
	output [31:0] axi_lite_r_data,
	output [1:0] axi_lite_r_resp,
	output axi_lite_r_valid,
	input axi_lite_r_ready,
	input sys_clk,
	input sys_rst
);

reg [31:0] top_offsetdac_status = 32'd1047980;
reg [31:0] top_offsetdac_control_storage_full = 32'd0;
wire [31:0] top_offsetdac_control_storage;
reg top_offsetdac_control_re = 1'd0;
reg [31:0] top_offsetdac_clkdiv_storage_full = 32'd326;
wire [31:0] top_offsetdac_clkdiv_storage;
reg top_offsetdac_clkdiv_re = 1'd0;
reg [31:0] top_offsetdac_enable_storage_full = 32'd1;
wire [31:0] top_offsetdac_enable_storage;
reg top_offsetdac_enable_re = 1'd0;
reg [31:0] top_offsetdac_v0_storage_full = 32'd32768;
wire [31:0] top_offsetdac_v0_storage;
reg top_offsetdac_v0_re = 1'd0;
reg [31:0] top_offsetdac_v1_storage_full = 32'd32768;
wire [31:0] top_offsetdac_v1_storage;
reg top_offsetdac_v1_re = 1'd0;
reg [31:0] top_offsetdac_v2_storage_full = 32'd32768;
wire [31:0] top_offsetdac_v2_storage;
reg top_offsetdac_v2_re = 1'd0;
reg [31:0] top_offsetdac_v3_storage_full = 32'd32768;
wire [31:0] top_offsetdac_v3_storage;
reg top_offsetdac_v3_re = 1'd0;
reg [31:0] top_offsetdac_v4_storage_full = 32'd32768;
wire [31:0] top_offsetdac_v4_storage;
reg top_offsetdac_v4_re = 1'd0;
reg [31:0] top_offsetdac_v5_storage_full = 32'd32768;
wire [31:0] top_offsetdac_v5_storage;
reg top_offsetdac_v5_re = 1'd0;
reg [31:0] top_offsetdac_v6_storage_full = 32'd32768;
wire [31:0] top_offsetdac_v6_storage;
reg top_offsetdac_v6_re = 1'd0;
reg [31:0] top_offsetdac_v7_storage_full = 32'd32768;
wire [31:0] top_offsetdac_v7_storage;
reg top_offsetdac_v7_re = 1'd0;
reg [15:0] top_offsetdac_clkdiv = 16'd0;
reg top_offsetdac_clk = 1'd0;
reg top_offsetdac_clk_falling = 1'd0;
reg [4:0] top_offsetdac_current_bit = 5'd0;
reg [2:0] top_offsetdac_current_channel = 3'd0;
reg [1:0] top_offsetdac_pd = 2'd0;
reg [23:0] top_offsetdac_current_dac_word = 24'd0;
reg [19:0] top_count = 20'd0;
reg [7:0] top_record0_lvds_pads_adc_d_p = 8'd0;
reg [7:0] top_record0_lvds_pads_adc_d_n = 8'd0;
wire top_record0_lvds_pads_adc_fclk_p;
wire top_record0_lvds_pads_adc_fclk_n;
wire top_record0_lvds_pads_adc_lclk_p;
wire top_record0_lvds_pads_adc_lclk_n;
reg [31:0] top_lvdsreceiver0_status = 32'd2780;
reg [31:0] top_lvdsreceiver0_control_storage_full = 32'd0;
wire [31:0] top_lvdsreceiver0_control_storage;
reg top_lvdsreceiver0_control_re = 1'd0;
reg top_lvdsreceiver0_rx_delay_rst = 1'd0;
reg top_lvdsreceiver0_rx_delay_inc = 1'd0;
reg top_lvdsreceiver0_bitslip_do = 1'd0;
reg [63:0] top_lvdsreceiver0_d_preslip = 64'd0;
wire [63:0] top_lvdsreceiver0_d;
wire [7:0] top_lvdsreceiver0_fclk;
wire top_lvdsreceiver0_d_clk;
wire top_lvdsreceiver0_d_rst;
wire top_lvdsreceiver0_d_valid;
wire top_lvdsreceiver0_d_last;
wire top_lvdsreceiver0_d_ready;
wire [7:0] top_lvdsreceiver0_fclk_preslip;
wire top_lvdsreceiver0_lclk_i;
wire top_lvdsreceiver0_lclk_i_bufio;
wire adcif0_lclkdiv_clk;
wire adcif0_lclkdiv_rst;
wire top_lvdsreceiver0_serdes_i_nodelay0;
wire top_lvdsreceiver0_serdes_i_delayed0;
wire [7:0] top_lvdsreceiver0_serdes_q0;
wire top_lvdsreceiver0_serdes_i_nodelay1;
wire top_lvdsreceiver0_serdes_i_delayed1;
wire [7:0] top_lvdsreceiver0_serdes_q1;
wire top_lvdsreceiver0_serdes_i_nodelay2;
wire top_lvdsreceiver0_serdes_i_delayed2;
wire [7:0] top_lvdsreceiver0_serdes_q2;
wire top_lvdsreceiver0_serdes_i_nodelay3;
wire top_lvdsreceiver0_serdes_i_delayed3;
wire [7:0] top_lvdsreceiver0_serdes_q3;
wire top_lvdsreceiver0_serdes_i_nodelay4;
wire top_lvdsreceiver0_serdes_i_delayed4;
wire [7:0] top_lvdsreceiver0_serdes_q4;
wire top_lvdsreceiver0_serdes_i_nodelay5;
wire top_lvdsreceiver0_serdes_i_delayed5;
wire [7:0] top_lvdsreceiver0_serdes_q5;
wire top_lvdsreceiver0_serdes_i_nodelay6;
wire top_lvdsreceiver0_serdes_i_delayed6;
wire [7:0] top_lvdsreceiver0_serdes_q6;
wire top_lvdsreceiver0_serdes_i_nodelay7;
wire top_lvdsreceiver0_serdes_i_delayed7;
wire [7:0] top_lvdsreceiver0_serdes_q7;
wire top_lvdsreceiver0_serdes_i_nodelay8;
wire top_lvdsreceiver0_serdes_i_delayed8;
wire [7:0] top_lvdsreceiver0_serdes_q8;
wire adcif0_data_clk;
wire adcif0_data_rst;
wire top_lvdsreceiver0_data_fifo_re;
reg top_lvdsreceiver0_data_fifo_readable = 1'd0;
reg [71:0] top_lvdsreceiver0_data_fifo_dout = 72'd0;
wire top_lvdsreceiver0_data_fifo_asyncfifo0_we;
wire top_lvdsreceiver0_data_fifo_asyncfifo0_writable;
wire top_lvdsreceiver0_data_fifo_asyncfifo0_re;
wire top_lvdsreceiver0_data_fifo_asyncfifo0_readable;
reg [71:0] top_lvdsreceiver0_data_fifo_asyncfifo0_din = 72'd0;
wire [71:0] top_lvdsreceiver0_data_fifo_asyncfifo0_dout;
wire top_lvdsreceiver0_data_fifo_graycounter0_ce;
(* no_retiming = "true" *) reg [6:0] top_lvdsreceiver0_data_fifo_graycounter0_q = 7'd0;
wire [6:0] top_lvdsreceiver0_data_fifo_graycounter0_q_next;
reg [6:0] top_lvdsreceiver0_data_fifo_graycounter0_q_binary = 7'd0;
reg [6:0] top_lvdsreceiver0_data_fifo_graycounter0_q_next_binary = 7'd0;
wire top_lvdsreceiver0_data_fifo_graycounter1_ce;
(* no_retiming = "true" *) reg [6:0] top_lvdsreceiver0_data_fifo_graycounter1_q = 7'd0;
wire [6:0] top_lvdsreceiver0_data_fifo_graycounter1_q_next;
reg [6:0] top_lvdsreceiver0_data_fifo_graycounter1_q_binary = 7'd0;
reg [6:0] top_lvdsreceiver0_data_fifo_graycounter1_q_next_binary = 7'd0;
wire [6:0] top_lvdsreceiver0_data_fifo_produce_rdomain;
wire [6:0] top_lvdsreceiver0_data_fifo_consume_wdomain;
wire [5:0] top_lvdsreceiver0_data_fifo_wrport_adr;
wire [71:0] top_lvdsreceiver0_data_fifo_wrport_dat_r;
wire top_lvdsreceiver0_data_fifo_wrport_we;
wire [71:0] top_lvdsreceiver0_data_fifo_wrport_dat_w;
wire [5:0] top_lvdsreceiver0_data_fifo_rdport_adr;
wire [71:0] top_lvdsreceiver0_data_fifo_rdport_dat_r;
reg [15:0] top_lvdsreceiver0_bitslip_delay = 16'd0;
reg [13:0] top_lvdsreceiver0_last_counter = 14'd0;
reg [7:0] top_record1_lvds_pads_adc_d_p = 8'd0;
reg [7:0] top_record1_lvds_pads_adc_d_n = 8'd0;
wire top_record1_lvds_pads_adc_fclk_p;
wire top_record1_lvds_pads_adc_fclk_n;
wire top_record1_lvds_pads_adc_lclk_p;
wire top_record1_lvds_pads_adc_lclk_n;
reg [31:0] top_lvdsreceiver1_status = 32'd2780;
reg [31:0] top_lvdsreceiver1_control_storage_full = 32'd0;
wire [31:0] top_lvdsreceiver1_control_storage;
reg top_lvdsreceiver1_control_re = 1'd0;
reg top_lvdsreceiver1_rx_delay_rst = 1'd0;
reg top_lvdsreceiver1_rx_delay_inc = 1'd0;
reg top_lvdsreceiver1_bitslip_do = 1'd0;
reg [63:0] top_lvdsreceiver1_d_preslip = 64'd0;
wire [63:0] top_lvdsreceiver1_d;
wire [7:0] top_lvdsreceiver1_fclk;
wire top_lvdsreceiver1_d_clk;
wire top_lvdsreceiver1_d_rst;
wire top_lvdsreceiver1_d_valid;
wire top_lvdsreceiver1_d_last;
wire top_lvdsreceiver1_d_ready;
wire [7:0] top_lvdsreceiver1_fclk_preslip;
wire top_lvdsreceiver1_lclk_i;
wire top_lvdsreceiver1_lclk_i_bufio;
wire adcif1_lclkdiv_clk;
wire adcif1_lclkdiv_rst;
wire top_lvdsreceiver1_serdes_i_nodelay0;
wire top_lvdsreceiver1_serdes_i_delayed0;
wire [7:0] top_lvdsreceiver1_serdes_q0;
wire top_lvdsreceiver1_serdes_i_nodelay1;
wire top_lvdsreceiver1_serdes_i_delayed1;
wire [7:0] top_lvdsreceiver1_serdes_q1;
wire top_lvdsreceiver1_serdes_i_nodelay2;
wire top_lvdsreceiver1_serdes_i_delayed2;
wire [7:0] top_lvdsreceiver1_serdes_q2;
wire top_lvdsreceiver1_serdes_i_nodelay3;
wire top_lvdsreceiver1_serdes_i_delayed3;
wire [7:0] top_lvdsreceiver1_serdes_q3;
wire top_lvdsreceiver1_serdes_i_nodelay4;
wire top_lvdsreceiver1_serdes_i_delayed4;
wire [7:0] top_lvdsreceiver1_serdes_q4;
wire top_lvdsreceiver1_serdes_i_nodelay5;
wire top_lvdsreceiver1_serdes_i_delayed5;
wire [7:0] top_lvdsreceiver1_serdes_q5;
wire top_lvdsreceiver1_serdes_i_nodelay6;
wire top_lvdsreceiver1_serdes_i_delayed6;
wire [7:0] top_lvdsreceiver1_serdes_q6;
wire top_lvdsreceiver1_serdes_i_nodelay7;
wire top_lvdsreceiver1_serdes_i_delayed7;
wire [7:0] top_lvdsreceiver1_serdes_q7;
wire top_lvdsreceiver1_serdes_i_nodelay8;
wire top_lvdsreceiver1_serdes_i_delayed8;
wire [7:0] top_lvdsreceiver1_serdes_q8;
wire adcif1_data_clk;
wire adcif1_data_rst;
wire top_lvdsreceiver1_data_fifo_re;
reg top_lvdsreceiver1_data_fifo_readable = 1'd0;
reg [71:0] top_lvdsreceiver1_data_fifo_dout = 72'd0;
wire top_lvdsreceiver1_data_fifo_asyncfifo1_we;
wire top_lvdsreceiver1_data_fifo_asyncfifo1_writable;
wire top_lvdsreceiver1_data_fifo_asyncfifo1_re;
wire top_lvdsreceiver1_data_fifo_asyncfifo1_readable;
reg [71:0] top_lvdsreceiver1_data_fifo_asyncfifo1_din = 72'd0;
wire [71:0] top_lvdsreceiver1_data_fifo_asyncfifo1_dout;
wire top_lvdsreceiver1_data_fifo_graycounter2_ce;
(* no_retiming = "true" *) reg [6:0] top_lvdsreceiver1_data_fifo_graycounter2_q = 7'd0;
wire [6:0] top_lvdsreceiver1_data_fifo_graycounter2_q_next;
reg [6:0] top_lvdsreceiver1_data_fifo_graycounter2_q_binary = 7'd0;
reg [6:0] top_lvdsreceiver1_data_fifo_graycounter2_q_next_binary = 7'd0;
wire top_lvdsreceiver1_data_fifo_graycounter3_ce;
(* no_retiming = "true" *) reg [6:0] top_lvdsreceiver1_data_fifo_graycounter3_q = 7'd0;
wire [6:0] top_lvdsreceiver1_data_fifo_graycounter3_q_next;
reg [6:0] top_lvdsreceiver1_data_fifo_graycounter3_q_binary = 7'd0;
reg [6:0] top_lvdsreceiver1_data_fifo_graycounter3_q_next_binary = 7'd0;
wire [6:0] top_lvdsreceiver1_data_fifo_produce_rdomain;
wire [6:0] top_lvdsreceiver1_data_fifo_consume_wdomain;
wire [5:0] top_lvdsreceiver1_data_fifo_wrport_adr;
wire [71:0] top_lvdsreceiver1_data_fifo_wrport_dat_r;
wire top_lvdsreceiver1_data_fifo_wrport_we;
wire [71:0] top_lvdsreceiver1_data_fifo_wrport_dat_w;
wire [5:0] top_lvdsreceiver1_data_fifo_rdport_adr;
wire [71:0] top_lvdsreceiver1_data_fifo_rdport_dat_r;
reg [15:0] top_lvdsreceiver1_bitslip_delay = 16'd0;
reg [13:0] top_lvdsreceiver1_last_counter = 14'd0;
wire data_clk;
wire data_rst;
wire [13:0] top_csr_adr;
wire top_csr_we;
wire [31:0] top_csr_dat_w;
wire [31:0] top_csr_dat_r;
wire top_busy;
wire top_write_transaction;
wire top_read_transaction;
reg [31:0] top_wdata = 32'd0;
reg [15:0] top_addr = 16'd0;
reg top_is_ongoing0 = 1'd0;
reg top_is_ongoing1 = 1'd0;
reg top_is_ongoing2 = 1'd0;
wire [13:0] top_interface0_bank_bus_adr;
wire top_interface0_bank_bus_we;
wire [31:0] top_interface0_bank_bus_dat_w;
reg [31:0] top_interface0_bank_bus_dat_r = 32'd0;
wire top_csrbank0_status_re;
wire [31:0] top_csrbank0_status_r;
wire [31:0] top_csrbank0_status_w;
wire top_csrbank0_control0_re;
wire [31:0] top_csrbank0_control0_r;
wire [31:0] top_csrbank0_control0_w;
wire top_csrbank0_sel;
wire [13:0] top_interface1_bank_bus_adr;
wire top_interface1_bank_bus_we;
wire [31:0] top_interface1_bank_bus_dat_w;
reg [31:0] top_interface1_bank_bus_dat_r = 32'd0;
wire top_csrbank1_status_re;
wire [31:0] top_csrbank1_status_r;
wire [31:0] top_csrbank1_status_w;
wire top_csrbank1_control0_re;
wire [31:0] top_csrbank1_control0_r;
wire [31:0] top_csrbank1_control0_w;
wire top_csrbank1_sel;
wire [13:0] top_interface2_bank_bus_adr;
wire top_interface2_bank_bus_we;
wire [31:0] top_interface2_bank_bus_dat_w;
reg [31:0] top_interface2_bank_bus_dat_r = 32'd0;
wire top_csrbank2_status_re;
wire [31:0] top_csrbank2_status_r;
wire [31:0] top_csrbank2_status_w;
wire top_csrbank2_control0_re;
wire [31:0] top_csrbank2_control0_r;
wire [31:0] top_csrbank2_control0_w;
wire top_csrbank2_clkdiv0_re;
wire [31:0] top_csrbank2_clkdiv0_r;
wire [31:0] top_csrbank2_clkdiv0_w;
wire top_csrbank2_enable0_re;
wire [31:0] top_csrbank2_enable0_r;
wire [31:0] top_csrbank2_enable0_w;
wire top_csrbank2_v00_re;
wire [31:0] top_csrbank2_v00_r;
wire [31:0] top_csrbank2_v00_w;
wire top_csrbank2_v10_re;
wire [31:0] top_csrbank2_v10_r;
wire [31:0] top_csrbank2_v10_w;
wire top_csrbank2_v20_re;
wire [31:0] top_csrbank2_v20_r;
wire [31:0] top_csrbank2_v20_w;
wire top_csrbank2_v30_re;
wire [31:0] top_csrbank2_v30_r;
wire [31:0] top_csrbank2_v30_w;
wire top_csrbank2_v40_re;
wire [31:0] top_csrbank2_v40_r;
wire [31:0] top_csrbank2_v40_w;
wire top_csrbank2_v50_re;
wire [31:0] top_csrbank2_v50_r;
wire [31:0] top_csrbank2_v50_w;
wire top_csrbank2_v60_re;
wire [31:0] top_csrbank2_v60_r;
wire [31:0] top_csrbank2_v60_w;
wire top_csrbank2_v70_re;
wire [31:0] top_csrbank2_v70_r;
wire [31:0] top_csrbank2_v70_w;
wire top_csrbank2_sel;
reg offsetdac_state = 1'd0;
reg offsetdac_next_state = 1'd0;
reg [4:0] top_offsetdac_current_bit_offsetdac_next_value0 = 5'd0;
reg top_offsetdac_current_bit_offsetdac_next_value_ce0 = 1'd0;
reg top_offsetdac_mux_nE_offsetdac_next_value1 = 1'd0;
reg top_offsetdac_mux_nE_offsetdac_next_value_ce1 = 1'd0;
reg top_offsetdac_spi_nSYNC_offsetdac_next_value2 = 1'd0;
reg top_offsetdac_spi_nSYNC_offsetdac_next_value_ce2 = 1'd0;
reg top_offsetdac_spi_DIN_offsetdac_next_value3 = 1'd0;
reg top_offsetdac_spi_DIN_offsetdac_next_value_ce3 = 1'd0;
reg [2:0] top_offsetdac_current_channel_offsetdac_f_next_value = 3'd0;
reg top_offsetdac_current_channel_offsetdac_f_next_value_ce = 1'd0;
reg [2:0] top_offsetdac_mux_S_offsetdac_t_next_value = 3'd0;
reg top_offsetdac_mux_S_offsetdac_t_next_value_ce = 1'd0;
reg [1:0] axilite2csr_state = 2'd0;
reg [1:0] axilite2csr_next_state = 2'd0;
reg [31:0] top_wdata_axilite2csr_next_value = 32'd0;
reg top_wdata_axilite2csr_next_value_ce = 1'd0;
reg [15:0] rhs_array_muxed = 16'd0;
reg cases_array_muxed = 1'd0;
(* no_retiming = "true" *) reg multiregimpl0_regs0 = 1'd0;
(* no_retiming = "true" *) reg multiregimpl0_regs1 = 1'd0;
(* no_retiming = "true" *) reg [6:0] multiregimpl1_regs0 = 7'd0;
(* no_retiming = "true" *) reg [6:0] multiregimpl1_regs1 = 7'd0;
(* no_retiming = "true" *) reg [6:0] multiregimpl2_regs0 = 7'd0;
(* no_retiming = "true" *) reg [6:0] multiregimpl2_regs1 = 7'd0;
(* no_retiming = "true" *) reg multiregimpl3_regs0 = 1'd0;
(* no_retiming = "true" *) reg multiregimpl3_regs1 = 1'd0;
(* no_retiming = "true" *) reg [6:0] multiregimpl4_regs0 = 7'd0;
(* no_retiming = "true" *) reg [6:0] multiregimpl4_regs1 = 7'd0;
(* no_retiming = "true" *) reg [6:0] multiregimpl5_regs0 = 7'd0;
(* no_retiming = "true" *) reg [6:0] multiregimpl5_regs1 = 7'd0;

always @(*) begin
	top_record0_lvds_pads_adc_d_p <= 8'd0;
	top_record0_lvds_pads_adc_d_p[0] <= adc0[0];
	top_record0_lvds_pads_adc_d_p[1] <= adc0[2];
	top_record0_lvds_pads_adc_d_p[2] <= adc0[4];
	top_record0_lvds_pads_adc_d_p[3] <= adc0[6];
	top_record0_lvds_pads_adc_d_p[4] <= adc0[8];
	top_record0_lvds_pads_adc_d_p[5] <= adc0[10];
	top_record0_lvds_pads_adc_d_p[6] <= adc0[12];
	top_record0_lvds_pads_adc_d_p[7] <= adc0[14];
end
always @(*) begin
	top_record0_lvds_pads_adc_d_n <= 8'd0;
	top_record0_lvds_pads_adc_d_n[0] <= adc0[1];
	top_record0_lvds_pads_adc_d_n[1] <= adc0[3];
	top_record0_lvds_pads_adc_d_n[2] <= adc0[5];
	top_record0_lvds_pads_adc_d_n[3] <= adc0[7];
	top_record0_lvds_pads_adc_d_n[4] <= adc0[9];
	top_record0_lvds_pads_adc_d_n[5] <= adc0[11];
	top_record0_lvds_pads_adc_d_n[6] <= adc0[13];
	top_record0_lvds_pads_adc_d_n[7] <= adc0[15];
end
assign top_record0_lvds_pads_adc_lclk_p = adc0[16];
assign top_record0_lvds_pads_adc_lclk_n = adc0[17];
assign top_record0_lvds_pads_adc_fclk_p = adc0[18];
assign top_record0_lvds_pads_adc_fclk_n = adc0[19];
assign top_lvdsreceiver0_d_clk = adc_axis_clk;
assign top_lvdsreceiver0_d_rst = adc_axis_rst;
assign adc0_tdata = top_lvdsreceiver0_d;
assign adc0_tvalid = top_lvdsreceiver0_d_valid;
assign top_lvdsreceiver0_d_ready = adc0_tready;
assign adc0_tlast = top_lvdsreceiver0_d_last;
always @(*) begin
	top_record1_lvds_pads_adc_d_p <= 8'd0;
	top_record1_lvds_pads_adc_d_p[0] <= adc1[0];
	top_record1_lvds_pads_adc_d_p[1] <= adc1[2];
	top_record1_lvds_pads_adc_d_p[2] <= adc1[4];
	top_record1_lvds_pads_adc_d_p[3] <= adc1[6];
	top_record1_lvds_pads_adc_d_p[4] <= adc1[8];
	top_record1_lvds_pads_adc_d_p[5] <= adc1[10];
	top_record1_lvds_pads_adc_d_p[6] <= adc1[12];
	top_record1_lvds_pads_adc_d_p[7] <= adc1[14];
end
always @(*) begin
	top_record1_lvds_pads_adc_d_n <= 8'd0;
	top_record1_lvds_pads_adc_d_n[0] <= adc1[1];
	top_record1_lvds_pads_adc_d_n[1] <= adc1[3];
	top_record1_lvds_pads_adc_d_n[2] <= adc1[5];
	top_record1_lvds_pads_adc_d_n[3] <= adc1[7];
	top_record1_lvds_pads_adc_d_n[4] <= adc1[9];
	top_record1_lvds_pads_adc_d_n[5] <= adc1[11];
	top_record1_lvds_pads_adc_d_n[6] <= adc1[13];
	top_record1_lvds_pads_adc_d_n[7] <= adc1[15];
end
assign top_record1_lvds_pads_adc_lclk_p = adc1[16];
assign top_record1_lvds_pads_adc_lclk_n = adc1[17];
assign top_record1_lvds_pads_adc_fclk_p = adc1[18];
assign top_record1_lvds_pads_adc_fclk_n = adc1[19];
always @(*) begin
	debug <= 64'd0;
	debug[31:0] <= top_lvdsreceiver1_d;
	debug[39:32] <= top_lvdsreceiver1_fclk_preslip;
	debug[40] <= top_lvdsreceiver1_d_valid;
	debug[41] <= top_lvdsreceiver1_d_last;
	debug[42] <= top_lvdsreceiver1_d_ready;
	debug[63:45] <= top_count;
end
assign top_lvdsreceiver1_d_clk = adc_axis_clk;
assign top_lvdsreceiver1_d_rst = adc_axis_rst;
assign adc1_tdata = top_lvdsreceiver1_d;
assign adc1_tvalid = top_lvdsreceiver1_d_valid;
assign top_lvdsreceiver1_d_ready = adc1_tready;
assign adc1_tlast = top_lvdsreceiver1_d_last;
assign data_clk = adc_axis_clk;
assign data_rst = adc_axis_rst;
always @(*) begin
	top_offsetdac_current_dac_word <= 24'd0;
	top_offsetdac_current_dac_word[15:0] <= rhs_array_muxed;
	top_offsetdac_current_dac_word[17:16] <= top_offsetdac_pd;
	top_offsetdac_current_dac_word[23:18] <= 1'd0;
end
always @(*) begin
	top_offsetdac_current_channel_offsetdac_f_next_value <= 3'd0;
	top_offsetdac_current_channel_offsetdac_f_next_value_ce <= 1'd0;
	offsetdac_next_state <= 1'd0;
	top_offsetdac_current_bit_offsetdac_next_value0 <= 5'd0;
	top_offsetdac_current_bit_offsetdac_next_value_ce0 <= 1'd0;
	top_offsetdac_mux_nE_offsetdac_next_value1 <= 1'd0;
	top_offsetdac_mux_nE_offsetdac_next_value_ce1 <= 1'd0;
	top_offsetdac_mux_S_offsetdac_t_next_value <= 3'd0;
	top_offsetdac_mux_S_offsetdac_t_next_value_ce <= 1'd0;
	top_offsetdac_spi_nSYNC_offsetdac_next_value2 <= 1'd0;
	top_offsetdac_spi_nSYNC_offsetdac_next_value_ce2 <= 1'd0;
	top_offsetdac_spi_DIN_offsetdac_next_value3 <= 1'd0;
	top_offsetdac_spi_DIN_offsetdac_next_value_ce3 <= 1'd0;
	offsetdac_next_state <= offsetdac_state;
	case (offsetdac_state)
		1'd1: begin
			if (top_offsetdac_clk_falling) begin
				top_offsetdac_spi_nSYNC_offsetdac_next_value2 <= 1'd0;
				top_offsetdac_spi_nSYNC_offsetdac_next_value_ce2 <= 1'd1;
				top_offsetdac_mux_nE_offsetdac_next_value1 <= 1'd0;
				top_offsetdac_mux_nE_offsetdac_next_value_ce1 <= 1'd1;
				top_offsetdac_spi_DIN_offsetdac_next_value3 <= cases_array_muxed;
				top_offsetdac_spi_DIN_offsetdac_next_value_ce3 <= 1'd1;
				if ((top_offsetdac_current_bit == 5'd23)) begin
					top_offsetdac_mux_nE_offsetdac_next_value1 <= 1'd1;
					top_offsetdac_mux_nE_offsetdac_next_value_ce1 <= 1'd1;
					offsetdac_next_state <= 1'd0;
					top_offsetdac_mux_S_offsetdac_t_next_value <= top_offsetdac_current_channel;
					top_offsetdac_mux_S_offsetdac_t_next_value_ce <= 1'd1;
					top_offsetdac_current_channel_offsetdac_f_next_value <= (top_offsetdac_current_channel + 1'd1);
					top_offsetdac_current_channel_offsetdac_f_next_value_ce <= 1'd1;
				end else begin
					top_offsetdac_current_bit_offsetdac_next_value0 <= (top_offsetdac_current_bit + 1'd1);
					top_offsetdac_current_bit_offsetdac_next_value_ce0 <= 1'd1;
				end
			end
		end
		default: begin
			if (top_offsetdac_clk_falling) begin
				top_offsetdac_current_bit_offsetdac_next_value0 <= 1'd0;
				top_offsetdac_current_bit_offsetdac_next_value_ce0 <= 1'd1;
				top_offsetdac_mux_nE_offsetdac_next_value1 <= 1'd1;
				top_offsetdac_mux_nE_offsetdac_next_value_ce1 <= 1'd1;
				top_offsetdac_spi_nSYNC_offsetdac_next_value2 <= 1'd1;
				top_offsetdac_spi_nSYNC_offsetdac_next_value_ce2 <= 1'd1;
				top_offsetdac_spi_DIN_offsetdac_next_value3 <= 1'd0;
				top_offsetdac_spi_DIN_offsetdac_next_value_ce3 <= 1'd1;
				if (top_offsetdac_enable_storage[0]) begin
					offsetdac_next_state <= 1'd1;
				end else begin
					top_offsetdac_current_channel_offsetdac_f_next_value <= 1'd0;
					top_offsetdac_current_channel_offsetdac_f_next_value_ce <= 1'd1;
				end
			end
		end
	endcase
end
always @(*) begin
	top_lvdsreceiver0_d_preslip <= 64'd0;
	top_lvdsreceiver0_d_preslip[7:0] <= top_lvdsreceiver0_serdes_q0;
	top_lvdsreceiver0_d_preslip[15:8] <= top_lvdsreceiver0_serdes_q1;
	top_lvdsreceiver0_d_preslip[23:16] <= top_lvdsreceiver0_serdes_q2;
	top_lvdsreceiver0_d_preslip[31:24] <= top_lvdsreceiver0_serdes_q3;
	top_lvdsreceiver0_d_preslip[39:32] <= top_lvdsreceiver0_serdes_q4;
	top_lvdsreceiver0_d_preslip[47:40] <= top_lvdsreceiver0_serdes_q5;
	top_lvdsreceiver0_d_preslip[55:48] <= top_lvdsreceiver0_serdes_q6;
	top_lvdsreceiver0_d_preslip[63:56] <= top_lvdsreceiver0_serdes_q7;
end
assign top_lvdsreceiver0_fclk_preslip = top_lvdsreceiver0_serdes_q8;
assign adcif0_data_clk = top_lvdsreceiver0_d_clk;
assign adcif0_data_rst = top_lvdsreceiver0_d_rst;
assign top_lvdsreceiver0_data_fifo_asyncfifo0_we = 1'd1;
assign top_lvdsreceiver0_data_fifo_re = top_lvdsreceiver0_d_ready;
assign top_lvdsreceiver0_d = top_lvdsreceiver0_data_fifo_dout[63:0];
assign top_lvdsreceiver0_fclk = top_lvdsreceiver0_data_fifo_dout[71:64];
assign top_lvdsreceiver0_d_valid = top_lvdsreceiver0_data_fifo_readable;
assign top_lvdsreceiver0_d_last = (top_lvdsreceiver0_last_counter == 14'd16383);
assign top_lvdsreceiver0_data_fifo_asyncfifo0_re = (top_lvdsreceiver0_data_fifo_re | (~top_lvdsreceiver0_data_fifo_readable));
assign top_lvdsreceiver0_data_fifo_graycounter0_ce = (top_lvdsreceiver0_data_fifo_asyncfifo0_writable & top_lvdsreceiver0_data_fifo_asyncfifo0_we);
assign top_lvdsreceiver0_data_fifo_graycounter1_ce = (top_lvdsreceiver0_data_fifo_asyncfifo0_readable & top_lvdsreceiver0_data_fifo_asyncfifo0_re);
assign top_lvdsreceiver0_data_fifo_asyncfifo0_writable = (((top_lvdsreceiver0_data_fifo_graycounter0_q[6] == top_lvdsreceiver0_data_fifo_consume_wdomain[6]) | (top_lvdsreceiver0_data_fifo_graycounter0_q[5] == top_lvdsreceiver0_data_fifo_consume_wdomain[5])) | (top_lvdsreceiver0_data_fifo_graycounter0_q[4:0] != top_lvdsreceiver0_data_fifo_consume_wdomain[4:0]));
assign top_lvdsreceiver0_data_fifo_asyncfifo0_readable = (top_lvdsreceiver0_data_fifo_graycounter1_q != top_lvdsreceiver0_data_fifo_produce_rdomain);
assign top_lvdsreceiver0_data_fifo_wrport_adr = top_lvdsreceiver0_data_fifo_graycounter0_q_binary[5:0];
assign top_lvdsreceiver0_data_fifo_wrport_dat_w = top_lvdsreceiver0_data_fifo_asyncfifo0_din;
assign top_lvdsreceiver0_data_fifo_wrport_we = top_lvdsreceiver0_data_fifo_graycounter0_ce;
assign top_lvdsreceiver0_data_fifo_rdport_adr = top_lvdsreceiver0_data_fifo_graycounter1_q_next_binary[5:0];
assign top_lvdsreceiver0_data_fifo_asyncfifo0_dout = top_lvdsreceiver0_data_fifo_rdport_dat_r;
always @(*) begin
	top_lvdsreceiver0_data_fifo_graycounter0_q_next_binary <= 7'd0;
	if (top_lvdsreceiver0_data_fifo_graycounter0_ce) begin
		top_lvdsreceiver0_data_fifo_graycounter0_q_next_binary <= (top_lvdsreceiver0_data_fifo_graycounter0_q_binary + 1'd1);
	end else begin
		top_lvdsreceiver0_data_fifo_graycounter0_q_next_binary <= top_lvdsreceiver0_data_fifo_graycounter0_q_binary;
	end
end
assign top_lvdsreceiver0_data_fifo_graycounter0_q_next = (top_lvdsreceiver0_data_fifo_graycounter0_q_next_binary ^ top_lvdsreceiver0_data_fifo_graycounter0_q_next_binary[6:1]);
always @(*) begin
	top_lvdsreceiver0_data_fifo_graycounter1_q_next_binary <= 7'd0;
	if (top_lvdsreceiver0_data_fifo_graycounter1_ce) begin
		top_lvdsreceiver0_data_fifo_graycounter1_q_next_binary <= (top_lvdsreceiver0_data_fifo_graycounter1_q_binary + 1'd1);
	end else begin
		top_lvdsreceiver0_data_fifo_graycounter1_q_next_binary <= top_lvdsreceiver0_data_fifo_graycounter1_q_binary;
	end
end
assign top_lvdsreceiver0_data_fifo_graycounter1_q_next = (top_lvdsreceiver0_data_fifo_graycounter1_q_next_binary ^ top_lvdsreceiver0_data_fifo_graycounter1_q_next_binary[6:1]);
always @(*) begin
	top_lvdsreceiver1_d_preslip <= 64'd0;
	top_lvdsreceiver1_d_preslip[7:0] <= top_lvdsreceiver1_serdes_q0;
	top_lvdsreceiver1_d_preslip[15:8] <= top_lvdsreceiver1_serdes_q1;
	top_lvdsreceiver1_d_preslip[23:16] <= top_lvdsreceiver1_serdes_q2;
	top_lvdsreceiver1_d_preslip[31:24] <= top_lvdsreceiver1_serdes_q3;
	top_lvdsreceiver1_d_preslip[39:32] <= top_lvdsreceiver1_serdes_q4;
	top_lvdsreceiver1_d_preslip[47:40] <= top_lvdsreceiver1_serdes_q5;
	top_lvdsreceiver1_d_preslip[55:48] <= top_lvdsreceiver1_serdes_q6;
	top_lvdsreceiver1_d_preslip[63:56] <= top_lvdsreceiver1_serdes_q7;
end
assign top_lvdsreceiver1_fclk_preslip = top_lvdsreceiver1_serdes_q8;
assign adcif1_data_clk = top_lvdsreceiver1_d_clk;
assign adcif1_data_rst = top_lvdsreceiver1_d_rst;
assign top_lvdsreceiver1_data_fifo_asyncfifo1_we = 1'd1;
assign top_lvdsreceiver1_data_fifo_re = top_lvdsreceiver1_d_ready;
assign top_lvdsreceiver1_d = top_lvdsreceiver1_data_fifo_dout[63:0];
assign top_lvdsreceiver1_fclk = top_lvdsreceiver1_data_fifo_dout[71:64];
assign top_lvdsreceiver1_d_valid = top_lvdsreceiver1_data_fifo_readable;
assign top_lvdsreceiver1_d_last = (top_lvdsreceiver1_last_counter == 14'd16383);
assign top_lvdsreceiver1_data_fifo_asyncfifo1_re = (top_lvdsreceiver1_data_fifo_re | (~top_lvdsreceiver1_data_fifo_readable));
assign top_lvdsreceiver1_data_fifo_graycounter2_ce = (top_lvdsreceiver1_data_fifo_asyncfifo1_writable & top_lvdsreceiver1_data_fifo_asyncfifo1_we);
assign top_lvdsreceiver1_data_fifo_graycounter3_ce = (top_lvdsreceiver1_data_fifo_asyncfifo1_readable & top_lvdsreceiver1_data_fifo_asyncfifo1_re);
assign top_lvdsreceiver1_data_fifo_asyncfifo1_writable = (((top_lvdsreceiver1_data_fifo_graycounter2_q[6] == top_lvdsreceiver1_data_fifo_consume_wdomain[6]) | (top_lvdsreceiver1_data_fifo_graycounter2_q[5] == top_lvdsreceiver1_data_fifo_consume_wdomain[5])) | (top_lvdsreceiver1_data_fifo_graycounter2_q[4:0] != top_lvdsreceiver1_data_fifo_consume_wdomain[4:0]));
assign top_lvdsreceiver1_data_fifo_asyncfifo1_readable = (top_lvdsreceiver1_data_fifo_graycounter3_q != top_lvdsreceiver1_data_fifo_produce_rdomain);
assign top_lvdsreceiver1_data_fifo_wrport_adr = top_lvdsreceiver1_data_fifo_graycounter2_q_binary[5:0];
assign top_lvdsreceiver1_data_fifo_wrport_dat_w = top_lvdsreceiver1_data_fifo_asyncfifo1_din;
assign top_lvdsreceiver1_data_fifo_wrport_we = top_lvdsreceiver1_data_fifo_graycounter2_ce;
assign top_lvdsreceiver1_data_fifo_rdport_adr = top_lvdsreceiver1_data_fifo_graycounter3_q_next_binary[5:0];
assign top_lvdsreceiver1_data_fifo_asyncfifo1_dout = top_lvdsreceiver1_data_fifo_rdport_dat_r;
always @(*) begin
	top_lvdsreceiver1_data_fifo_graycounter2_q_next_binary <= 7'd0;
	if (top_lvdsreceiver1_data_fifo_graycounter2_ce) begin
		top_lvdsreceiver1_data_fifo_graycounter2_q_next_binary <= (top_lvdsreceiver1_data_fifo_graycounter2_q_binary + 1'd1);
	end else begin
		top_lvdsreceiver1_data_fifo_graycounter2_q_next_binary <= top_lvdsreceiver1_data_fifo_graycounter2_q_binary;
	end
end
assign top_lvdsreceiver1_data_fifo_graycounter2_q_next = (top_lvdsreceiver1_data_fifo_graycounter2_q_next_binary ^ top_lvdsreceiver1_data_fifo_graycounter2_q_next_binary[6:1]);
always @(*) begin
	top_lvdsreceiver1_data_fifo_graycounter3_q_next_binary <= 7'd0;
	if (top_lvdsreceiver1_data_fifo_graycounter3_ce) begin
		top_lvdsreceiver1_data_fifo_graycounter3_q_next_binary <= (top_lvdsreceiver1_data_fifo_graycounter3_q_binary + 1'd1);
	end else begin
		top_lvdsreceiver1_data_fifo_graycounter3_q_next_binary <= top_lvdsreceiver1_data_fifo_graycounter3_q_binary;
	end
end
assign top_lvdsreceiver1_data_fifo_graycounter3_q_next = (top_lvdsreceiver1_data_fifo_graycounter3_q_next_binary ^ top_lvdsreceiver1_data_fifo_graycounter3_q_next_binary[6:1]);
assign top_write_transaction = (((axi_lite_aw_valid & axi_lite_aw_ready) & axi_lite_w_valid) & axi_lite_w_ready);
assign top_read_transaction = (axi_lite_ar_valid & axi_lite_ar_ready);
assign top_csr_adr = (top_addr >>> 2'd2);
assign top_csr_dat_w = top_wdata;
assign axi_lite_r_data = top_csr_dat_r;
assign axi_lite_r_resp = 1'd0;
assign top_busy = (~top_is_ongoing0);
assign axi_lite_r_valid = top_is_ongoing1;
assign top_csr_we = top_is_ongoing2;
always @(*) begin
	axilite2csr_next_state <= 2'd0;
	top_wdata_axilite2csr_next_value <= 32'd0;
	top_is_ongoing1 <= 1'd0;
	top_wdata_axilite2csr_next_value_ce <= 1'd0;
	top_is_ongoing2 <= 1'd0;
	top_addr <= 16'd0;
	top_is_ongoing0 <= 1'd0;
	axilite2csr_next_state <= axilite2csr_state;
	case (axilite2csr_state)
		1'd1: begin
			top_is_ongoing1 <= 1'd1;
			top_addr <= axi_lite_ar_addr;
			if (axi_lite_r_ready) begin
				axilite2csr_next_state <= 1'd0;
			end
		end
		2'd2: begin
			top_is_ongoing2 <= 1'd1;
			top_addr <= axi_lite_aw_addr;
			axilite2csr_next_state <= 1'd0;
		end
		default: begin
			top_is_ongoing0 <= 1'd1;
			if (top_read_transaction) begin
				top_addr <= axi_lite_ar_addr;
				axilite2csr_next_state <= 1'd1;
			end else begin
				if (top_write_transaction) begin
					top_addr <= axi_lite_aw_addr;
					top_wdata_axilite2csr_next_value <= axi_lite_w_data;
					top_wdata_axilite2csr_next_value_ce <= 1'd1;
					axilite2csr_next_state <= 2'd2;
				end
			end
		end
	endcase
end
assign top_csrbank0_sel = (top_interface0_bank_bus_adr[13:9] == 1'd0);
assign top_csrbank0_status_r = top_interface0_bank_bus_dat_w[31:0];
assign top_csrbank0_status_re = ((top_csrbank0_sel & top_interface0_bank_bus_we) & (top_interface0_bank_bus_adr[0] == 1'd0));
assign top_csrbank0_control0_r = top_interface0_bank_bus_dat_w[31:0];
assign top_csrbank0_control0_re = ((top_csrbank0_sel & top_interface0_bank_bus_we) & (top_interface0_bank_bus_adr[0] == 1'd1));
assign top_csrbank0_status_w = top_lvdsreceiver0_status[31:0];
assign top_lvdsreceiver0_control_storage = top_lvdsreceiver0_control_storage_full[31:0];
assign top_csrbank0_control0_w = top_lvdsreceiver0_control_storage_full[31:0];
assign top_csrbank1_sel = (top_interface1_bank_bus_adr[13:9] == 1'd1);
assign top_csrbank1_status_r = top_interface1_bank_bus_dat_w[31:0];
assign top_csrbank1_status_re = ((top_csrbank1_sel & top_interface1_bank_bus_we) & (top_interface1_bank_bus_adr[0] == 1'd0));
assign top_csrbank1_control0_r = top_interface1_bank_bus_dat_w[31:0];
assign top_csrbank1_control0_re = ((top_csrbank1_sel & top_interface1_bank_bus_we) & (top_interface1_bank_bus_adr[0] == 1'd1));
assign top_csrbank1_status_w = top_lvdsreceiver1_status[31:0];
assign top_lvdsreceiver1_control_storage = top_lvdsreceiver1_control_storage_full[31:0];
assign top_csrbank1_control0_w = top_lvdsreceiver1_control_storage_full[31:0];
assign top_csrbank2_sel = (top_interface2_bank_bus_adr[13:9] == 2'd2);
assign top_csrbank2_status_r = top_interface2_bank_bus_dat_w[31:0];
assign top_csrbank2_status_re = ((top_csrbank2_sel & top_interface2_bank_bus_we) & (top_interface2_bank_bus_adr[3:0] == 1'd0));
assign top_csrbank2_control0_r = top_interface2_bank_bus_dat_w[31:0];
assign top_csrbank2_control0_re = ((top_csrbank2_sel & top_interface2_bank_bus_we) & (top_interface2_bank_bus_adr[3:0] == 1'd1));
assign top_csrbank2_clkdiv0_r = top_interface2_bank_bus_dat_w[31:0];
assign top_csrbank2_clkdiv0_re = ((top_csrbank2_sel & top_interface2_bank_bus_we) & (top_interface2_bank_bus_adr[3:0] == 2'd2));
assign top_csrbank2_enable0_r = top_interface2_bank_bus_dat_w[31:0];
assign top_csrbank2_enable0_re = ((top_csrbank2_sel & top_interface2_bank_bus_we) & (top_interface2_bank_bus_adr[3:0] == 2'd3));
assign top_csrbank2_v00_r = top_interface2_bank_bus_dat_w[31:0];
assign top_csrbank2_v00_re = ((top_csrbank2_sel & top_interface2_bank_bus_we) & (top_interface2_bank_bus_adr[3:0] == 3'd4));
assign top_csrbank2_v10_r = top_interface2_bank_bus_dat_w[31:0];
assign top_csrbank2_v10_re = ((top_csrbank2_sel & top_interface2_bank_bus_we) & (top_interface2_bank_bus_adr[3:0] == 3'd5));
assign top_csrbank2_v20_r = top_interface2_bank_bus_dat_w[31:0];
assign top_csrbank2_v20_re = ((top_csrbank2_sel & top_interface2_bank_bus_we) & (top_interface2_bank_bus_adr[3:0] == 3'd6));
assign top_csrbank2_v30_r = top_interface2_bank_bus_dat_w[31:0];
assign top_csrbank2_v30_re = ((top_csrbank2_sel & top_interface2_bank_bus_we) & (top_interface2_bank_bus_adr[3:0] == 3'd7));
assign top_csrbank2_v40_r = top_interface2_bank_bus_dat_w[31:0];
assign top_csrbank2_v40_re = ((top_csrbank2_sel & top_interface2_bank_bus_we) & (top_interface2_bank_bus_adr[3:0] == 4'd8));
assign top_csrbank2_v50_r = top_interface2_bank_bus_dat_w[31:0];
assign top_csrbank2_v50_re = ((top_csrbank2_sel & top_interface2_bank_bus_we) & (top_interface2_bank_bus_adr[3:0] == 4'd9));
assign top_csrbank2_v60_r = top_interface2_bank_bus_dat_w[31:0];
assign top_csrbank2_v60_re = ((top_csrbank2_sel & top_interface2_bank_bus_we) & (top_interface2_bank_bus_adr[3:0] == 4'd10));
assign top_csrbank2_v70_r = top_interface2_bank_bus_dat_w[31:0];
assign top_csrbank2_v70_re = ((top_csrbank2_sel & top_interface2_bank_bus_we) & (top_interface2_bank_bus_adr[3:0] == 4'd11));
assign top_csrbank2_status_w = top_offsetdac_status[31:0];
assign top_offsetdac_control_storage = top_offsetdac_control_storage_full[31:0];
assign top_csrbank2_control0_w = top_offsetdac_control_storage_full[31:0];
assign top_offsetdac_clkdiv_storage = top_offsetdac_clkdiv_storage_full[31:0];
assign top_csrbank2_clkdiv0_w = top_offsetdac_clkdiv_storage_full[31:0];
assign top_offsetdac_enable_storage = top_offsetdac_enable_storage_full[31:0];
assign top_csrbank2_enable0_w = top_offsetdac_enable_storage_full[31:0];
assign top_offsetdac_v0_storage = top_offsetdac_v0_storage_full[31:0];
assign top_csrbank2_v00_w = top_offsetdac_v0_storage_full[31:0];
assign top_offsetdac_v1_storage = top_offsetdac_v1_storage_full[31:0];
assign top_csrbank2_v10_w = top_offsetdac_v1_storage_full[31:0];
assign top_offsetdac_v2_storage = top_offsetdac_v2_storage_full[31:0];
assign top_csrbank2_v20_w = top_offsetdac_v2_storage_full[31:0];
assign top_offsetdac_v3_storage = top_offsetdac_v3_storage_full[31:0];
assign top_csrbank2_v30_w = top_offsetdac_v3_storage_full[31:0];
assign top_offsetdac_v4_storage = top_offsetdac_v4_storage_full[31:0];
assign top_csrbank2_v40_w = top_offsetdac_v4_storage_full[31:0];
assign top_offsetdac_v5_storage = top_offsetdac_v5_storage_full[31:0];
assign top_csrbank2_v50_w = top_offsetdac_v5_storage_full[31:0];
assign top_offsetdac_v6_storage = top_offsetdac_v6_storage_full[31:0];
assign top_csrbank2_v60_w = top_offsetdac_v6_storage_full[31:0];
assign top_offsetdac_v7_storage = top_offsetdac_v7_storage_full[31:0];
assign top_csrbank2_v70_w = top_offsetdac_v7_storage_full[31:0];
assign top_interface0_bank_bus_adr = top_csr_adr;
assign top_interface1_bank_bus_adr = top_csr_adr;
assign top_interface2_bank_bus_adr = top_csr_adr;
assign top_interface0_bank_bus_we = top_csr_we;
assign top_interface1_bank_bus_we = top_csr_we;
assign top_interface2_bank_bus_we = top_csr_we;
assign top_interface0_bank_bus_dat_w = top_csr_dat_w;
assign top_interface1_bank_bus_dat_w = top_csr_dat_w;
assign top_interface2_bank_bus_dat_w = top_csr_dat_w;
assign top_csr_dat_r = ((top_interface0_bank_bus_dat_r | top_interface1_bank_bus_dat_r) | top_interface2_bank_bus_dat_r);
always @(*) begin
	rhs_array_muxed <= 16'd0;
	case (top_offsetdac_current_channel)
		1'd0: begin
			rhs_array_muxed <= top_offsetdac_v0_storage[15:0];
		end
		1'd1: begin
			rhs_array_muxed <= top_offsetdac_v1_storage[15:0];
		end
		2'd2: begin
			rhs_array_muxed <= top_offsetdac_v2_storage[15:0];
		end
		2'd3: begin
			rhs_array_muxed <= top_offsetdac_v3_storage[15:0];
		end
		3'd4: begin
			rhs_array_muxed <= top_offsetdac_v4_storage[15:0];
		end
		3'd5: begin
			rhs_array_muxed <= top_offsetdac_v5_storage[15:0];
		end
		3'd6: begin
			rhs_array_muxed <= top_offsetdac_v6_storage[15:0];
		end
		default: begin
			rhs_array_muxed <= top_offsetdac_v7_storage[15:0];
		end
	endcase
end
always @(*) begin
	cases_array_muxed <= 1'd0;
	case ((5'd23 - top_offsetdac_current_bit))
		1'd0: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[0];
		end
		1'd1: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[1];
		end
		2'd2: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[2];
		end
		2'd3: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[3];
		end
		3'd4: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[4];
		end
		3'd5: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[5];
		end
		3'd6: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[6];
		end
		3'd7: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[7];
		end
		4'd8: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[8];
		end
		4'd9: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[9];
		end
		4'd10: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[10];
		end
		4'd11: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[11];
		end
		4'd12: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[12];
		end
		4'd13: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[13];
		end
		4'd14: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[14];
		end
		4'd15: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[15];
		end
		5'd16: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[16];
		end
		5'd17: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[17];
		end
		5'd18: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[18];
		end
		5'd19: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[19];
		end
		5'd20: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[20];
		end
		5'd21: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[21];
		end
		5'd22: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[22];
		end
		default: begin
			cases_array_muxed <= top_offsetdac_current_dac_word[23];
		end
	endcase
end
assign adcif0_lclkdiv_rst = multiregimpl0_regs1;
assign top_lvdsreceiver0_data_fifo_produce_rdomain = multiregimpl1_regs1;
assign top_lvdsreceiver0_data_fifo_consume_wdomain = multiregimpl2_regs1;
assign adcif1_lclkdiv_rst = multiregimpl3_regs1;
assign top_lvdsreceiver1_data_fifo_produce_rdomain = multiregimpl4_regs1;
assign top_lvdsreceiver1_data_fifo_consume_wdomain = multiregimpl5_regs1;

always @(posedge adcif0_data_clk) begin
	if ((top_lvdsreceiver0_data_fifo_re | (~top_lvdsreceiver0_data_fifo_readable))) begin
		top_lvdsreceiver0_data_fifo_dout <= top_lvdsreceiver0_data_fifo_asyncfifo0_dout;
		top_lvdsreceiver0_data_fifo_readable <= top_lvdsreceiver0_data_fifo_asyncfifo0_readable;
	end
	top_lvdsreceiver0_data_fifo_graycounter1_q_binary <= top_lvdsreceiver0_data_fifo_graycounter1_q_next_binary;
	top_lvdsreceiver0_data_fifo_graycounter1_q <= top_lvdsreceiver0_data_fifo_graycounter1_q_next;
	if (adcif0_data_rst) begin
		top_lvdsreceiver0_data_fifo_readable <= 1'd0;
		top_lvdsreceiver0_data_fifo_graycounter1_q <= 7'd0;
		top_lvdsreceiver0_data_fifo_graycounter1_q_binary <= 7'd0;
	end
	multiregimpl1_regs0 <= top_lvdsreceiver0_data_fifo_graycounter0_q;
	multiregimpl1_regs1 <= multiregimpl1_regs0;
end

always @(posedge adcif0_lclkdiv_clk) begin
	top_lvdsreceiver0_data_fifo_asyncfifo0_din[7:0] <= top_lvdsreceiver0_d_preslip[7:0];
	top_lvdsreceiver0_data_fifo_asyncfifo0_din[15:8] <= top_lvdsreceiver0_d_preslip[15:8];
	top_lvdsreceiver0_data_fifo_asyncfifo0_din[23:16] <= top_lvdsreceiver0_d_preslip[23:16];
	top_lvdsreceiver0_data_fifo_asyncfifo0_din[31:24] <= top_lvdsreceiver0_d_preslip[31:24];
	top_lvdsreceiver0_data_fifo_asyncfifo0_din[39:32] <= top_lvdsreceiver0_d_preslip[39:32];
	top_lvdsreceiver0_data_fifo_asyncfifo0_din[47:40] <= top_lvdsreceiver0_d_preslip[47:40];
	top_lvdsreceiver0_data_fifo_asyncfifo0_din[55:48] <= top_lvdsreceiver0_d_preslip[55:48];
	top_lvdsreceiver0_data_fifo_asyncfifo0_din[63:56] <= top_lvdsreceiver0_d_preslip[63:56];
	top_lvdsreceiver0_data_fifo_asyncfifo0_din[71:64] <= top_lvdsreceiver0_fclk_preslip;
	top_lvdsreceiver0_bitslip_delay <= (top_lvdsreceiver0_bitslip_delay + 1'd1);
	top_lvdsreceiver0_bitslip_do <= ((((top_lvdsreceiver0_fclk_preslip != 4'd15) & (top_lvdsreceiver0_fclk_preslip != 6'd51)) & (top_lvdsreceiver0_fclk_preslip != 7'd85)) & (top_lvdsreceiver0_bitslip_delay == 1'd0));
	top_lvdsreceiver0_data_fifo_graycounter0_q_binary <= top_lvdsreceiver0_data_fifo_graycounter0_q_next_binary;
	top_lvdsreceiver0_data_fifo_graycounter0_q <= top_lvdsreceiver0_data_fifo_graycounter0_q_next;
	if (adcif0_lclkdiv_rst) begin
		top_lvdsreceiver0_bitslip_do <= 1'd0;
		top_lvdsreceiver0_data_fifo_graycounter0_q <= 7'd0;
		top_lvdsreceiver0_data_fifo_graycounter0_q_binary <= 7'd0;
		top_lvdsreceiver0_bitslip_delay <= 16'd0;
	end
	multiregimpl0_regs0 <= top_lvdsreceiver0_control_storage[0];
	multiregimpl0_regs1 <= multiregimpl0_regs0;
	multiregimpl2_regs0 <= top_lvdsreceiver0_data_fifo_graycounter1_q;
	multiregimpl2_regs1 <= multiregimpl2_regs0;
end

always @(posedge adcif1_data_clk) begin
	if ((top_lvdsreceiver1_data_fifo_re | (~top_lvdsreceiver1_data_fifo_readable))) begin
		top_lvdsreceiver1_data_fifo_dout <= top_lvdsreceiver1_data_fifo_asyncfifo1_dout;
		top_lvdsreceiver1_data_fifo_readable <= top_lvdsreceiver1_data_fifo_asyncfifo1_readable;
	end
	top_lvdsreceiver1_data_fifo_graycounter3_q_binary <= top_lvdsreceiver1_data_fifo_graycounter3_q_next_binary;
	top_lvdsreceiver1_data_fifo_graycounter3_q <= top_lvdsreceiver1_data_fifo_graycounter3_q_next;
	if (adcif1_data_rst) begin
		top_lvdsreceiver1_data_fifo_readable <= 1'd0;
		top_lvdsreceiver1_data_fifo_graycounter3_q <= 7'd0;
		top_lvdsreceiver1_data_fifo_graycounter3_q_binary <= 7'd0;
	end
	multiregimpl4_regs0 <= top_lvdsreceiver1_data_fifo_graycounter2_q;
	multiregimpl4_regs1 <= multiregimpl4_regs0;
end

always @(posedge adcif1_lclkdiv_clk) begin
	top_lvdsreceiver1_data_fifo_asyncfifo1_din[7:0] <= top_lvdsreceiver1_d_preslip[7:0];
	top_lvdsreceiver1_data_fifo_asyncfifo1_din[15:8] <= top_lvdsreceiver1_d_preslip[15:8];
	top_lvdsreceiver1_data_fifo_asyncfifo1_din[23:16] <= top_lvdsreceiver1_d_preslip[23:16];
	top_lvdsreceiver1_data_fifo_asyncfifo1_din[31:24] <= top_lvdsreceiver1_d_preslip[31:24];
	top_lvdsreceiver1_data_fifo_asyncfifo1_din[39:32] <= top_lvdsreceiver1_d_preslip[39:32];
	top_lvdsreceiver1_data_fifo_asyncfifo1_din[47:40] <= top_lvdsreceiver1_d_preslip[47:40];
	top_lvdsreceiver1_data_fifo_asyncfifo1_din[55:48] <= top_lvdsreceiver1_d_preslip[55:48];
	top_lvdsreceiver1_data_fifo_asyncfifo1_din[63:56] <= top_lvdsreceiver1_d_preslip[63:56];
	top_lvdsreceiver1_data_fifo_asyncfifo1_din[71:64] <= top_lvdsreceiver1_fclk_preslip;
	top_lvdsreceiver1_bitslip_delay <= (top_lvdsreceiver1_bitslip_delay + 1'd1);
	top_lvdsreceiver1_bitslip_do <= ((((top_lvdsreceiver1_fclk_preslip != 4'd15) & (top_lvdsreceiver1_fclk_preslip != 6'd51)) & (top_lvdsreceiver1_fclk_preslip != 7'd85)) & (top_lvdsreceiver1_bitslip_delay == 1'd0));
	top_lvdsreceiver1_data_fifo_graycounter2_q_binary <= top_lvdsreceiver1_data_fifo_graycounter2_q_next_binary;
	top_lvdsreceiver1_data_fifo_graycounter2_q <= top_lvdsreceiver1_data_fifo_graycounter2_q_next;
	if (adcif1_lclkdiv_rst) begin
		top_lvdsreceiver1_bitslip_do <= 1'd0;
		top_lvdsreceiver1_data_fifo_graycounter2_q <= 7'd0;
		top_lvdsreceiver1_data_fifo_graycounter2_q_binary <= 7'd0;
		top_lvdsreceiver1_bitslip_delay <= 16'd0;
	end
	multiregimpl3_regs0 <= top_lvdsreceiver1_control_storage[0];
	multiregimpl3_regs1 <= multiregimpl3_regs0;
	multiregimpl5_regs0 <= top_lvdsreceiver1_data_fifo_graycounter3_q;
	multiregimpl5_regs1 <= multiregimpl5_regs0;
end

always @(posedge data_clk) begin
	top_count <= (top_count + 1'd1);
	if (data_rst) begin
		top_count <= 20'd0;
	end
end

always @(posedge sys_clk) begin
	if ((top_offsetdac_clkdiv == top_offsetdac_clkdiv_storage[15:0])) begin
		top_offsetdac_clkdiv <= 1'd0;
	end else begin
		top_offsetdac_clkdiv <= (top_offsetdac_clkdiv + 1'd1);
	end
	top_offsetdac_clk_falling <= 1'd0;
	if ((top_offsetdac_clkdiv == 1'd0)) begin
		top_offsetdac_clk <= (~top_offsetdac_clk);
		top_offsetdac_clk_falling <= (~top_offsetdac_clk);
	end
	spi_SCLK <= (top_offsetdac_clk & top_offsetdac_enable_storage[0]);
	offsetdac_state <= offsetdac_next_state;
	if (top_offsetdac_current_bit_offsetdac_next_value_ce0) begin
		top_offsetdac_current_bit <= top_offsetdac_current_bit_offsetdac_next_value0;
	end
	if (top_offsetdac_mux_nE_offsetdac_next_value_ce1) begin
		mux_nE <= top_offsetdac_mux_nE_offsetdac_next_value1;
	end
	if (top_offsetdac_spi_nSYNC_offsetdac_next_value_ce2) begin
		spi_nSYNC <= top_offsetdac_spi_nSYNC_offsetdac_next_value2;
	end
	if (top_offsetdac_spi_DIN_offsetdac_next_value_ce3) begin
		spi_DIN <= top_offsetdac_spi_DIN_offsetdac_next_value3;
	end
	if (top_offsetdac_current_channel_offsetdac_f_next_value_ce) begin
		top_offsetdac_current_channel <= top_offsetdac_current_channel_offsetdac_f_next_value;
	end
	if (top_offsetdac_mux_S_offsetdac_t_next_value_ce) begin
		mux_S <= top_offsetdac_mux_S_offsetdac_t_next_value;
	end
	if ((top_lvdsreceiver0_d_valid & top_lvdsreceiver0_d_ready)) begin
		if ((top_lvdsreceiver0_last_counter == 14'd16383)) begin
			top_lvdsreceiver0_last_counter <= 1'd0;
		end else begin
			top_lvdsreceiver0_last_counter <= (top_lvdsreceiver0_last_counter + 1'd1);
		end
	end
	if ((top_lvdsreceiver1_d_valid & top_lvdsreceiver1_d_ready)) begin
		if ((top_lvdsreceiver1_last_counter == 14'd16383)) begin
			top_lvdsreceiver1_last_counter <= 1'd0;
		end else begin
			top_lvdsreceiver1_last_counter <= (top_lvdsreceiver1_last_counter + 1'd1);
		end
	end
	axi_lite_aw_ready <= 1'd0;
	axi_lite_w_ready <= 1'd0;
	if ((axi_lite_aw_valid & axi_lite_w_valid)) begin
		if ((((~axi_lite_aw_ready) & (~top_busy)) & (~axi_lite_ar_valid))) begin
			axi_lite_aw_ready <= 1'd1;
			axi_lite_w_ready <= 1'd1;
		end
	end
	axi_lite_b_valid <= 1'd0;
	if (top_write_transaction) begin
		if ((axi_lite_b_ready & (~axi_lite_b_valid))) begin
			axi_lite_b_valid <= 1'd1;
			axi_lite_b_resp <= 1'd0;
		end
	end
	axi_lite_ar_ready <= 1'd0;
	if (((axi_lite_ar_valid & (~axi_lite_ar_ready)) & (~top_busy))) begin
		axi_lite_ar_ready <= 1'd1;
	end
	axilite2csr_state <= axilite2csr_next_state;
	if (top_wdata_axilite2csr_next_value_ce) begin
		top_wdata <= top_wdata_axilite2csr_next_value;
	end
	top_interface0_bank_bus_dat_r <= 1'd0;
	if (top_csrbank0_sel) begin
		case (top_interface0_bank_bus_adr[0])
			1'd0: begin
				top_interface0_bank_bus_dat_r <= top_csrbank0_status_w;
			end
			1'd1: begin
				top_interface0_bank_bus_dat_r <= top_csrbank0_control0_w;
			end
		endcase
	end
	if (top_csrbank0_control0_re) begin
		top_lvdsreceiver0_control_storage_full[31:0] <= top_csrbank0_control0_r;
	end
	top_lvdsreceiver0_control_re <= top_csrbank0_control0_re;
	top_interface1_bank_bus_dat_r <= 1'd0;
	if (top_csrbank1_sel) begin
		case (top_interface1_bank_bus_adr[0])
			1'd0: begin
				top_interface1_bank_bus_dat_r <= top_csrbank1_status_w;
			end
			1'd1: begin
				top_interface1_bank_bus_dat_r <= top_csrbank1_control0_w;
			end
		endcase
	end
	if (top_csrbank1_control0_re) begin
		top_lvdsreceiver1_control_storage_full[31:0] <= top_csrbank1_control0_r;
	end
	top_lvdsreceiver1_control_re <= top_csrbank1_control0_re;
	top_interface2_bank_bus_dat_r <= 1'd0;
	if (top_csrbank2_sel) begin
		case (top_interface2_bank_bus_adr[3:0])
			1'd0: begin
				top_interface2_bank_bus_dat_r <= top_csrbank2_status_w;
			end
			1'd1: begin
				top_interface2_bank_bus_dat_r <= top_csrbank2_control0_w;
			end
			2'd2: begin
				top_interface2_bank_bus_dat_r <= top_csrbank2_clkdiv0_w;
			end
			2'd3: begin
				top_interface2_bank_bus_dat_r <= top_csrbank2_enable0_w;
			end
			3'd4: begin
				top_interface2_bank_bus_dat_r <= top_csrbank2_v00_w;
			end
			3'd5: begin
				top_interface2_bank_bus_dat_r <= top_csrbank2_v10_w;
			end
			3'd6: begin
				top_interface2_bank_bus_dat_r <= top_csrbank2_v20_w;
			end
			3'd7: begin
				top_interface2_bank_bus_dat_r <= top_csrbank2_v30_w;
			end
			4'd8: begin
				top_interface2_bank_bus_dat_r <= top_csrbank2_v40_w;
			end
			4'd9: begin
				top_interface2_bank_bus_dat_r <= top_csrbank2_v50_w;
			end
			4'd10: begin
				top_interface2_bank_bus_dat_r <= top_csrbank2_v60_w;
			end
			4'd11: begin
				top_interface2_bank_bus_dat_r <= top_csrbank2_v70_w;
			end
		endcase
	end
	if (top_csrbank2_control0_re) begin
		top_offsetdac_control_storage_full[31:0] <= top_csrbank2_control0_r;
	end
	top_offsetdac_control_re <= top_csrbank2_control0_re;
	if (top_csrbank2_clkdiv0_re) begin
		top_offsetdac_clkdiv_storage_full[31:0] <= top_csrbank2_clkdiv0_r;
	end
	top_offsetdac_clkdiv_re <= top_csrbank2_clkdiv0_re;
	if (top_csrbank2_enable0_re) begin
		top_offsetdac_enable_storage_full[31:0] <= top_csrbank2_enable0_r;
	end
	top_offsetdac_enable_re <= top_csrbank2_enable0_re;
	if (top_csrbank2_v00_re) begin
		top_offsetdac_v0_storage_full[31:0] <= top_csrbank2_v00_r;
	end
	top_offsetdac_v0_re <= top_csrbank2_v00_re;
	if (top_csrbank2_v10_re) begin
		top_offsetdac_v1_storage_full[31:0] <= top_csrbank2_v10_r;
	end
	top_offsetdac_v1_re <= top_csrbank2_v10_re;
	if (top_csrbank2_v20_re) begin
		top_offsetdac_v2_storage_full[31:0] <= top_csrbank2_v20_r;
	end
	top_offsetdac_v2_re <= top_csrbank2_v20_re;
	if (top_csrbank2_v30_re) begin
		top_offsetdac_v3_storage_full[31:0] <= top_csrbank2_v30_r;
	end
	top_offsetdac_v3_re <= top_csrbank2_v30_re;
	if (top_csrbank2_v40_re) begin
		top_offsetdac_v4_storage_full[31:0] <= top_csrbank2_v40_r;
	end
	top_offsetdac_v4_re <= top_csrbank2_v40_re;
	if (top_csrbank2_v50_re) begin
		top_offsetdac_v5_storage_full[31:0] <= top_csrbank2_v50_r;
	end
	top_offsetdac_v5_re <= top_csrbank2_v50_re;
	if (top_csrbank2_v60_re) begin
		top_offsetdac_v6_storage_full[31:0] <= top_csrbank2_v60_r;
	end
	top_offsetdac_v6_re <= top_csrbank2_v60_re;
	if (top_csrbank2_v70_re) begin
		top_offsetdac_v7_storage_full[31:0] <= top_csrbank2_v70_r;
	end
	top_offsetdac_v7_re <= top_csrbank2_v70_re;
	if (sys_rst) begin
		spi_SCLK <= 1'd0;
		spi_DIN <= 1'd0;
		spi_nSYNC <= 1'd0;
		mux_nE <= 1'd0;
		mux_S <= 3'd0;
		top_offsetdac_control_storage_full <= 32'd0;
		top_offsetdac_control_re <= 1'd0;
		top_offsetdac_clkdiv_storage_full <= 32'd326;
		top_offsetdac_clkdiv_re <= 1'd0;
		top_offsetdac_enable_storage_full <= 32'd1;
		top_offsetdac_enable_re <= 1'd0;
		top_offsetdac_v0_storage_full <= 32'd32768;
		top_offsetdac_v0_re <= 1'd0;
		top_offsetdac_v1_storage_full <= 32'd32768;
		top_offsetdac_v1_re <= 1'd0;
		top_offsetdac_v2_storage_full <= 32'd32768;
		top_offsetdac_v2_re <= 1'd0;
		top_offsetdac_v3_storage_full <= 32'd32768;
		top_offsetdac_v3_re <= 1'd0;
		top_offsetdac_v4_storage_full <= 32'd32768;
		top_offsetdac_v4_re <= 1'd0;
		top_offsetdac_v5_storage_full <= 32'd32768;
		top_offsetdac_v5_re <= 1'd0;
		top_offsetdac_v6_storage_full <= 32'd32768;
		top_offsetdac_v6_re <= 1'd0;
		top_offsetdac_v7_storage_full <= 32'd32768;
		top_offsetdac_v7_re <= 1'd0;
		top_offsetdac_clkdiv <= 16'd0;
		top_offsetdac_clk <= 1'd0;
		top_offsetdac_clk_falling <= 1'd0;
		top_offsetdac_current_bit <= 5'd0;
		top_offsetdac_current_channel <= 3'd0;
		top_lvdsreceiver0_control_storage_full <= 32'd0;
		top_lvdsreceiver0_control_re <= 1'd0;
		top_lvdsreceiver0_last_counter <= 14'd0;
		top_lvdsreceiver1_control_storage_full <= 32'd0;
		top_lvdsreceiver1_control_re <= 1'd0;
		top_lvdsreceiver1_last_counter <= 14'd0;
		axi_lite_aw_ready <= 1'd0;
		axi_lite_w_ready <= 1'd0;
		axi_lite_b_resp <= 2'd0;
		axi_lite_b_valid <= 1'd0;
		axi_lite_ar_ready <= 1'd0;
		top_wdata <= 32'd0;
		top_interface0_bank_bus_dat_r <= 32'd0;
		top_interface1_bank_bus_dat_r <= 32'd0;
		top_interface2_bank_bus_dat_r <= 32'd0;
		offsetdac_state <= 1'd0;
		axilite2csr_state <= 2'd0;
	end
end

IBUFDS IBUFDS(
	.I(top_record0_lvds_pads_adc_lclk_p),
	.IB(top_record0_lvds_pads_adc_lclk_n),
	.O(top_lvdsreceiver0_lclk_i)
);

BUFIO BUFIO(
	.I(top_lvdsreceiver0_lclk_i),
	.O(top_lvdsreceiver0_lclk_i_bufio)
);

BUFR #(
	.BUFR_DIVIDE("4")
) BUFR (
	.I(top_lvdsreceiver0_lclk_i),
	.O(adcif0_lclkdiv_clk)
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT(
	.I(top_record0_lvds_pads_adc_d_p[0]),
	.IB(top_record0_lvds_pads_adc_d_n[0]),
	.O(top_lvdsreceiver0_serdes_i_nodelay0)
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2 (
	.C(adcif0_lclkdiv_clk),
	.CE(top_lvdsreceiver0_rx_delay_inc),
	.IDATAIN(top_lvdsreceiver0_serdes_i_nodelay0),
	.INC(1'd1),
	.LD(top_lvdsreceiver0_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(top_lvdsreceiver0_serdes_i_delayed0)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2 (
	.BITSLIP(top_lvdsreceiver0_bitslip_do),
	.CE1(1'd1),
	.CLK(top_lvdsreceiver0_lclk_i_bufio),
	.CLKB((~top_lvdsreceiver0_lclk_i_bufio)),
	.CLKDIV(adcif0_lclkdiv_clk),
	.DDLY(top_lvdsreceiver0_serdes_i_delayed0),
	.RST(adcif0_lclkdiv_rst),
	.Q1(top_lvdsreceiver0_serdes_q0[7]),
	.Q2(top_lvdsreceiver0_serdes_q0[6]),
	.Q3(top_lvdsreceiver0_serdes_q0[5]),
	.Q4(top_lvdsreceiver0_serdes_q0[4]),
	.Q5(top_lvdsreceiver0_serdes_q0[3]),
	.Q6(top_lvdsreceiver0_serdes_q0[2]),
	.Q7(top_lvdsreceiver0_serdes_q0[1]),
	.Q8(top_lvdsreceiver0_serdes_q0[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_1(
	.I(top_record0_lvds_pads_adc_d_p[1]),
	.IB(top_record0_lvds_pads_adc_d_n[1]),
	.O(top_lvdsreceiver0_serdes_i_nodelay1)
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_1 (
	.C(adcif0_lclkdiv_clk),
	.CE(top_lvdsreceiver0_rx_delay_inc),
	.IDATAIN(top_lvdsreceiver0_serdes_i_nodelay1),
	.INC(1'd1),
	.LD(top_lvdsreceiver0_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(top_lvdsreceiver0_serdes_i_delayed1)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_1 (
	.BITSLIP(top_lvdsreceiver0_bitslip_do),
	.CE1(1'd1),
	.CLK(top_lvdsreceiver0_lclk_i_bufio),
	.CLKB((~top_lvdsreceiver0_lclk_i_bufio)),
	.CLKDIV(adcif0_lclkdiv_clk),
	.DDLY(top_lvdsreceiver0_serdes_i_delayed1),
	.RST(adcif0_lclkdiv_rst),
	.Q1(top_lvdsreceiver0_serdes_q1[7]),
	.Q2(top_lvdsreceiver0_serdes_q1[6]),
	.Q3(top_lvdsreceiver0_serdes_q1[5]),
	.Q4(top_lvdsreceiver0_serdes_q1[4]),
	.Q5(top_lvdsreceiver0_serdes_q1[3]),
	.Q6(top_lvdsreceiver0_serdes_q1[2]),
	.Q7(top_lvdsreceiver0_serdes_q1[1]),
	.Q8(top_lvdsreceiver0_serdes_q1[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_2(
	.I(top_record0_lvds_pads_adc_d_p[2]),
	.IB(top_record0_lvds_pads_adc_d_n[2]),
	.O(top_lvdsreceiver0_serdes_i_nodelay2)
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_2 (
	.C(adcif0_lclkdiv_clk),
	.CE(top_lvdsreceiver0_rx_delay_inc),
	.IDATAIN(top_lvdsreceiver0_serdes_i_nodelay2),
	.INC(1'd1),
	.LD(top_lvdsreceiver0_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(top_lvdsreceiver0_serdes_i_delayed2)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_2 (
	.BITSLIP(top_lvdsreceiver0_bitslip_do),
	.CE1(1'd1),
	.CLK(top_lvdsreceiver0_lclk_i_bufio),
	.CLKB((~top_lvdsreceiver0_lclk_i_bufio)),
	.CLKDIV(adcif0_lclkdiv_clk),
	.DDLY(top_lvdsreceiver0_serdes_i_delayed2),
	.RST(adcif0_lclkdiv_rst),
	.Q1(top_lvdsreceiver0_serdes_q2[7]),
	.Q2(top_lvdsreceiver0_serdes_q2[6]),
	.Q3(top_lvdsreceiver0_serdes_q2[5]),
	.Q4(top_lvdsreceiver0_serdes_q2[4]),
	.Q5(top_lvdsreceiver0_serdes_q2[3]),
	.Q6(top_lvdsreceiver0_serdes_q2[2]),
	.Q7(top_lvdsreceiver0_serdes_q2[1]),
	.Q8(top_lvdsreceiver0_serdes_q2[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_3(
	.I(top_record0_lvds_pads_adc_d_p[3]),
	.IB(top_record0_lvds_pads_adc_d_n[3]),
	.O(top_lvdsreceiver0_serdes_i_nodelay3)
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_3 (
	.C(adcif0_lclkdiv_clk),
	.CE(top_lvdsreceiver0_rx_delay_inc),
	.IDATAIN(top_lvdsreceiver0_serdes_i_nodelay3),
	.INC(1'd1),
	.LD(top_lvdsreceiver0_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(top_lvdsreceiver0_serdes_i_delayed3)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_3 (
	.BITSLIP(top_lvdsreceiver0_bitslip_do),
	.CE1(1'd1),
	.CLK(top_lvdsreceiver0_lclk_i_bufio),
	.CLKB((~top_lvdsreceiver0_lclk_i_bufio)),
	.CLKDIV(adcif0_lclkdiv_clk),
	.DDLY(top_lvdsreceiver0_serdes_i_delayed3),
	.RST(adcif0_lclkdiv_rst),
	.Q1(top_lvdsreceiver0_serdes_q3[7]),
	.Q2(top_lvdsreceiver0_serdes_q3[6]),
	.Q3(top_lvdsreceiver0_serdes_q3[5]),
	.Q4(top_lvdsreceiver0_serdes_q3[4]),
	.Q5(top_lvdsreceiver0_serdes_q3[3]),
	.Q6(top_lvdsreceiver0_serdes_q3[2]),
	.Q7(top_lvdsreceiver0_serdes_q3[1]),
	.Q8(top_lvdsreceiver0_serdes_q3[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_4(
	.I(top_record0_lvds_pads_adc_d_p[4]),
	.IB(top_record0_lvds_pads_adc_d_n[4]),
	.O(top_lvdsreceiver0_serdes_i_nodelay4)
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_4 (
	.C(adcif0_lclkdiv_clk),
	.CE(top_lvdsreceiver0_rx_delay_inc),
	.IDATAIN(top_lvdsreceiver0_serdes_i_nodelay4),
	.INC(1'd1),
	.LD(top_lvdsreceiver0_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(top_lvdsreceiver0_serdes_i_delayed4)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_4 (
	.BITSLIP(top_lvdsreceiver0_bitslip_do),
	.CE1(1'd1),
	.CLK(top_lvdsreceiver0_lclk_i_bufio),
	.CLKB((~top_lvdsreceiver0_lclk_i_bufio)),
	.CLKDIV(adcif0_lclkdiv_clk),
	.DDLY(top_lvdsreceiver0_serdes_i_delayed4),
	.RST(adcif0_lclkdiv_rst),
	.Q1(top_lvdsreceiver0_serdes_q4[7]),
	.Q2(top_lvdsreceiver0_serdes_q4[6]),
	.Q3(top_lvdsreceiver0_serdes_q4[5]),
	.Q4(top_lvdsreceiver0_serdes_q4[4]),
	.Q5(top_lvdsreceiver0_serdes_q4[3]),
	.Q6(top_lvdsreceiver0_serdes_q4[2]),
	.Q7(top_lvdsreceiver0_serdes_q4[1]),
	.Q8(top_lvdsreceiver0_serdes_q4[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_5(
	.I(top_record0_lvds_pads_adc_d_p[5]),
	.IB(top_record0_lvds_pads_adc_d_n[5]),
	.O(top_lvdsreceiver0_serdes_i_nodelay5)
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_5 (
	.C(adcif0_lclkdiv_clk),
	.CE(top_lvdsreceiver0_rx_delay_inc),
	.IDATAIN(top_lvdsreceiver0_serdes_i_nodelay5),
	.INC(1'd1),
	.LD(top_lvdsreceiver0_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(top_lvdsreceiver0_serdes_i_delayed5)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_5 (
	.BITSLIP(top_lvdsreceiver0_bitslip_do),
	.CE1(1'd1),
	.CLK(top_lvdsreceiver0_lclk_i_bufio),
	.CLKB((~top_lvdsreceiver0_lclk_i_bufio)),
	.CLKDIV(adcif0_lclkdiv_clk),
	.DDLY(top_lvdsreceiver0_serdes_i_delayed5),
	.RST(adcif0_lclkdiv_rst),
	.Q1(top_lvdsreceiver0_serdes_q5[7]),
	.Q2(top_lvdsreceiver0_serdes_q5[6]),
	.Q3(top_lvdsreceiver0_serdes_q5[5]),
	.Q4(top_lvdsreceiver0_serdes_q5[4]),
	.Q5(top_lvdsreceiver0_serdes_q5[3]),
	.Q6(top_lvdsreceiver0_serdes_q5[2]),
	.Q7(top_lvdsreceiver0_serdes_q5[1]),
	.Q8(top_lvdsreceiver0_serdes_q5[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_6(
	.I(top_record0_lvds_pads_adc_d_p[6]),
	.IB(top_record0_lvds_pads_adc_d_n[6]),
	.O(top_lvdsreceiver0_serdes_i_nodelay6)
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_6 (
	.C(adcif0_lclkdiv_clk),
	.CE(top_lvdsreceiver0_rx_delay_inc),
	.IDATAIN(top_lvdsreceiver0_serdes_i_nodelay6),
	.INC(1'd1),
	.LD(top_lvdsreceiver0_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(top_lvdsreceiver0_serdes_i_delayed6)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_6 (
	.BITSLIP(top_lvdsreceiver0_bitslip_do),
	.CE1(1'd1),
	.CLK(top_lvdsreceiver0_lclk_i_bufio),
	.CLKB((~top_lvdsreceiver0_lclk_i_bufio)),
	.CLKDIV(adcif0_lclkdiv_clk),
	.DDLY(top_lvdsreceiver0_serdes_i_delayed6),
	.RST(adcif0_lclkdiv_rst),
	.Q1(top_lvdsreceiver0_serdes_q6[7]),
	.Q2(top_lvdsreceiver0_serdes_q6[6]),
	.Q3(top_lvdsreceiver0_serdes_q6[5]),
	.Q4(top_lvdsreceiver0_serdes_q6[4]),
	.Q5(top_lvdsreceiver0_serdes_q6[3]),
	.Q6(top_lvdsreceiver0_serdes_q6[2]),
	.Q7(top_lvdsreceiver0_serdes_q6[1]),
	.Q8(top_lvdsreceiver0_serdes_q6[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_7(
	.I(top_record0_lvds_pads_adc_d_p[7]),
	.IB(top_record0_lvds_pads_adc_d_n[7]),
	.O(top_lvdsreceiver0_serdes_i_nodelay7)
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_7 (
	.C(adcif0_lclkdiv_clk),
	.CE(top_lvdsreceiver0_rx_delay_inc),
	.IDATAIN(top_lvdsreceiver0_serdes_i_nodelay7),
	.INC(1'd1),
	.LD(top_lvdsreceiver0_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(top_lvdsreceiver0_serdes_i_delayed7)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_7 (
	.BITSLIP(top_lvdsreceiver0_bitslip_do),
	.CE1(1'd1),
	.CLK(top_lvdsreceiver0_lclk_i_bufio),
	.CLKB((~top_lvdsreceiver0_lclk_i_bufio)),
	.CLKDIV(adcif0_lclkdiv_clk),
	.DDLY(top_lvdsreceiver0_serdes_i_delayed7),
	.RST(adcif0_lclkdiv_rst),
	.Q1(top_lvdsreceiver0_serdes_q7[7]),
	.Q2(top_lvdsreceiver0_serdes_q7[6]),
	.Q3(top_lvdsreceiver0_serdes_q7[5]),
	.Q4(top_lvdsreceiver0_serdes_q7[4]),
	.Q5(top_lvdsreceiver0_serdes_q7[3]),
	.Q6(top_lvdsreceiver0_serdes_q7[2]),
	.Q7(top_lvdsreceiver0_serdes_q7[1]),
	.Q8(top_lvdsreceiver0_serdes_q7[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_8(
	.I(top_record0_lvds_pads_adc_fclk_p),
	.IB(top_record0_lvds_pads_adc_fclk_n),
	.O(top_lvdsreceiver0_serdes_i_nodelay8)
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_8 (
	.C(adcif0_lclkdiv_clk),
	.CE(top_lvdsreceiver0_rx_delay_inc),
	.IDATAIN(top_lvdsreceiver0_serdes_i_nodelay8),
	.INC(1'd1),
	.LD(top_lvdsreceiver0_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(top_lvdsreceiver0_serdes_i_delayed8)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_8 (
	.BITSLIP(top_lvdsreceiver0_bitslip_do),
	.CE1(1'd1),
	.CLK(top_lvdsreceiver0_lclk_i_bufio),
	.CLKB((~top_lvdsreceiver0_lclk_i_bufio)),
	.CLKDIV(adcif0_lclkdiv_clk),
	.DDLY(top_lvdsreceiver0_serdes_i_delayed8),
	.RST(adcif0_lclkdiv_rst),
	.Q1(top_lvdsreceiver0_serdes_q8[7]),
	.Q2(top_lvdsreceiver0_serdes_q8[6]),
	.Q3(top_lvdsreceiver0_serdes_q8[5]),
	.Q4(top_lvdsreceiver0_serdes_q8[4]),
	.Q5(top_lvdsreceiver0_serdes_q8[3]),
	.Q6(top_lvdsreceiver0_serdes_q8[2]),
	.Q7(top_lvdsreceiver0_serdes_q8[1]),
	.Q8(top_lvdsreceiver0_serdes_q8[0])
);

reg [71:0] storage[0:63];
reg [5:0] memadr;
reg [5:0] memadr_1;
always @(posedge adcif0_lclkdiv_clk) begin
	if (top_lvdsreceiver0_data_fifo_wrport_we)
		storage[top_lvdsreceiver0_data_fifo_wrport_adr] <= top_lvdsreceiver0_data_fifo_wrport_dat_w;
	memadr <= top_lvdsreceiver0_data_fifo_wrport_adr;
end

always @(posedge adcif0_data_clk) begin
	memadr_1 <= top_lvdsreceiver0_data_fifo_rdport_adr;
end

assign top_lvdsreceiver0_data_fifo_wrport_dat_r = storage[memadr];
assign top_lvdsreceiver0_data_fifo_rdport_dat_r = storage[memadr_1];

IDELAYCTRL IDELAYCTRL(
	.REFCLK(sys_clk),
	.RST(sys_rst)
);

IBUFDS IBUFDS_1(
	.I(top_record1_lvds_pads_adc_lclk_p),
	.IB(top_record1_lvds_pads_adc_lclk_n),
	.O(top_lvdsreceiver1_lclk_i)
);

BUFIO BUFIO_1(
	.I(top_lvdsreceiver1_lclk_i),
	.O(top_lvdsreceiver1_lclk_i_bufio)
);

BUFR #(
	.BUFR_DIVIDE("4")
) BUFR_1 (
	.I(top_lvdsreceiver1_lclk_i),
	.O(adcif1_lclkdiv_clk)
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_9(
	.I(top_record1_lvds_pads_adc_d_p[0]),
	.IB(top_record1_lvds_pads_adc_d_n[0]),
	.O(top_lvdsreceiver1_serdes_i_nodelay0)
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_9 (
	.C(adcif1_lclkdiv_clk),
	.CE(top_lvdsreceiver1_rx_delay_inc),
	.IDATAIN(top_lvdsreceiver1_serdes_i_nodelay0),
	.INC(1'd1),
	.LD(top_lvdsreceiver1_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(top_lvdsreceiver1_serdes_i_delayed0)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_9 (
	.BITSLIP(top_lvdsreceiver1_bitslip_do),
	.CE1(1'd1),
	.CLK(top_lvdsreceiver1_lclk_i_bufio),
	.CLKB((~top_lvdsreceiver1_lclk_i_bufio)),
	.CLKDIV(adcif1_lclkdiv_clk),
	.DDLY(top_lvdsreceiver1_serdes_i_delayed0),
	.RST(adcif1_lclkdiv_rst),
	.Q1(top_lvdsreceiver1_serdes_q0[7]),
	.Q2(top_lvdsreceiver1_serdes_q0[6]),
	.Q3(top_lvdsreceiver1_serdes_q0[5]),
	.Q4(top_lvdsreceiver1_serdes_q0[4]),
	.Q5(top_lvdsreceiver1_serdes_q0[3]),
	.Q6(top_lvdsreceiver1_serdes_q0[2]),
	.Q7(top_lvdsreceiver1_serdes_q0[1]),
	.Q8(top_lvdsreceiver1_serdes_q0[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_10(
	.I(top_record1_lvds_pads_adc_d_p[1]),
	.IB(top_record1_lvds_pads_adc_d_n[1]),
	.O(top_lvdsreceiver1_serdes_i_nodelay1)
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_10 (
	.C(adcif1_lclkdiv_clk),
	.CE(top_lvdsreceiver1_rx_delay_inc),
	.IDATAIN(top_lvdsreceiver1_serdes_i_nodelay1),
	.INC(1'd1),
	.LD(top_lvdsreceiver1_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(top_lvdsreceiver1_serdes_i_delayed1)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_10 (
	.BITSLIP(top_lvdsreceiver1_bitslip_do),
	.CE1(1'd1),
	.CLK(top_lvdsreceiver1_lclk_i_bufio),
	.CLKB((~top_lvdsreceiver1_lclk_i_bufio)),
	.CLKDIV(adcif1_lclkdiv_clk),
	.DDLY(top_lvdsreceiver1_serdes_i_delayed1),
	.RST(adcif1_lclkdiv_rst),
	.Q1(top_lvdsreceiver1_serdes_q1[7]),
	.Q2(top_lvdsreceiver1_serdes_q1[6]),
	.Q3(top_lvdsreceiver1_serdes_q1[5]),
	.Q4(top_lvdsreceiver1_serdes_q1[4]),
	.Q5(top_lvdsreceiver1_serdes_q1[3]),
	.Q6(top_lvdsreceiver1_serdes_q1[2]),
	.Q7(top_lvdsreceiver1_serdes_q1[1]),
	.Q8(top_lvdsreceiver1_serdes_q1[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_11(
	.I(top_record1_lvds_pads_adc_d_p[2]),
	.IB(top_record1_lvds_pads_adc_d_n[2]),
	.O(top_lvdsreceiver1_serdes_i_nodelay2)
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_11 (
	.C(adcif1_lclkdiv_clk),
	.CE(top_lvdsreceiver1_rx_delay_inc),
	.IDATAIN(top_lvdsreceiver1_serdes_i_nodelay2),
	.INC(1'd1),
	.LD(top_lvdsreceiver1_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(top_lvdsreceiver1_serdes_i_delayed2)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_11 (
	.BITSLIP(top_lvdsreceiver1_bitslip_do),
	.CE1(1'd1),
	.CLK(top_lvdsreceiver1_lclk_i_bufio),
	.CLKB((~top_lvdsreceiver1_lclk_i_bufio)),
	.CLKDIV(adcif1_lclkdiv_clk),
	.DDLY(top_lvdsreceiver1_serdes_i_delayed2),
	.RST(adcif1_lclkdiv_rst),
	.Q1(top_lvdsreceiver1_serdes_q2[7]),
	.Q2(top_lvdsreceiver1_serdes_q2[6]),
	.Q3(top_lvdsreceiver1_serdes_q2[5]),
	.Q4(top_lvdsreceiver1_serdes_q2[4]),
	.Q5(top_lvdsreceiver1_serdes_q2[3]),
	.Q6(top_lvdsreceiver1_serdes_q2[2]),
	.Q7(top_lvdsreceiver1_serdes_q2[1]),
	.Q8(top_lvdsreceiver1_serdes_q2[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_12(
	.I(top_record1_lvds_pads_adc_d_p[3]),
	.IB(top_record1_lvds_pads_adc_d_n[3]),
	.O(top_lvdsreceiver1_serdes_i_nodelay3)
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_12 (
	.C(adcif1_lclkdiv_clk),
	.CE(top_lvdsreceiver1_rx_delay_inc),
	.IDATAIN(top_lvdsreceiver1_serdes_i_nodelay3),
	.INC(1'd1),
	.LD(top_lvdsreceiver1_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(top_lvdsreceiver1_serdes_i_delayed3)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_12 (
	.BITSLIP(top_lvdsreceiver1_bitslip_do),
	.CE1(1'd1),
	.CLK(top_lvdsreceiver1_lclk_i_bufio),
	.CLKB((~top_lvdsreceiver1_lclk_i_bufio)),
	.CLKDIV(adcif1_lclkdiv_clk),
	.DDLY(top_lvdsreceiver1_serdes_i_delayed3),
	.RST(adcif1_lclkdiv_rst),
	.Q1(top_lvdsreceiver1_serdes_q3[7]),
	.Q2(top_lvdsreceiver1_serdes_q3[6]),
	.Q3(top_lvdsreceiver1_serdes_q3[5]),
	.Q4(top_lvdsreceiver1_serdes_q3[4]),
	.Q5(top_lvdsreceiver1_serdes_q3[3]),
	.Q6(top_lvdsreceiver1_serdes_q3[2]),
	.Q7(top_lvdsreceiver1_serdes_q3[1]),
	.Q8(top_lvdsreceiver1_serdes_q3[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_13(
	.I(top_record1_lvds_pads_adc_d_p[4]),
	.IB(top_record1_lvds_pads_adc_d_n[4]),
	.O(top_lvdsreceiver1_serdes_i_nodelay4)
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_13 (
	.C(adcif1_lclkdiv_clk),
	.CE(top_lvdsreceiver1_rx_delay_inc),
	.IDATAIN(top_lvdsreceiver1_serdes_i_nodelay4),
	.INC(1'd1),
	.LD(top_lvdsreceiver1_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(top_lvdsreceiver1_serdes_i_delayed4)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_13 (
	.BITSLIP(top_lvdsreceiver1_bitslip_do),
	.CE1(1'd1),
	.CLK(top_lvdsreceiver1_lclk_i_bufio),
	.CLKB((~top_lvdsreceiver1_lclk_i_bufio)),
	.CLKDIV(adcif1_lclkdiv_clk),
	.DDLY(top_lvdsreceiver1_serdes_i_delayed4),
	.RST(adcif1_lclkdiv_rst),
	.Q1(top_lvdsreceiver1_serdes_q4[7]),
	.Q2(top_lvdsreceiver1_serdes_q4[6]),
	.Q3(top_lvdsreceiver1_serdes_q4[5]),
	.Q4(top_lvdsreceiver1_serdes_q4[4]),
	.Q5(top_lvdsreceiver1_serdes_q4[3]),
	.Q6(top_lvdsreceiver1_serdes_q4[2]),
	.Q7(top_lvdsreceiver1_serdes_q4[1]),
	.Q8(top_lvdsreceiver1_serdes_q4[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_14(
	.I(top_record1_lvds_pads_adc_d_p[5]),
	.IB(top_record1_lvds_pads_adc_d_n[5]),
	.O(top_lvdsreceiver1_serdes_i_nodelay5)
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_14 (
	.C(adcif1_lclkdiv_clk),
	.CE(top_lvdsreceiver1_rx_delay_inc),
	.IDATAIN(top_lvdsreceiver1_serdes_i_nodelay5),
	.INC(1'd1),
	.LD(top_lvdsreceiver1_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(top_lvdsreceiver1_serdes_i_delayed5)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_14 (
	.BITSLIP(top_lvdsreceiver1_bitslip_do),
	.CE1(1'd1),
	.CLK(top_lvdsreceiver1_lclk_i_bufio),
	.CLKB((~top_lvdsreceiver1_lclk_i_bufio)),
	.CLKDIV(adcif1_lclkdiv_clk),
	.DDLY(top_lvdsreceiver1_serdes_i_delayed5),
	.RST(adcif1_lclkdiv_rst),
	.Q1(top_lvdsreceiver1_serdes_q5[7]),
	.Q2(top_lvdsreceiver1_serdes_q5[6]),
	.Q3(top_lvdsreceiver1_serdes_q5[5]),
	.Q4(top_lvdsreceiver1_serdes_q5[4]),
	.Q5(top_lvdsreceiver1_serdes_q5[3]),
	.Q6(top_lvdsreceiver1_serdes_q5[2]),
	.Q7(top_lvdsreceiver1_serdes_q5[1]),
	.Q8(top_lvdsreceiver1_serdes_q5[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_15(
	.I(top_record1_lvds_pads_adc_d_p[6]),
	.IB(top_record1_lvds_pads_adc_d_n[6]),
	.O(top_lvdsreceiver1_serdes_i_nodelay6)
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_15 (
	.C(adcif1_lclkdiv_clk),
	.CE(top_lvdsreceiver1_rx_delay_inc),
	.IDATAIN(top_lvdsreceiver1_serdes_i_nodelay6),
	.INC(1'd1),
	.LD(top_lvdsreceiver1_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(top_lvdsreceiver1_serdes_i_delayed6)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_15 (
	.BITSLIP(top_lvdsreceiver1_bitslip_do),
	.CE1(1'd1),
	.CLK(top_lvdsreceiver1_lclk_i_bufio),
	.CLKB((~top_lvdsreceiver1_lclk_i_bufio)),
	.CLKDIV(adcif1_lclkdiv_clk),
	.DDLY(top_lvdsreceiver1_serdes_i_delayed6),
	.RST(adcif1_lclkdiv_rst),
	.Q1(top_lvdsreceiver1_serdes_q6[7]),
	.Q2(top_lvdsreceiver1_serdes_q6[6]),
	.Q3(top_lvdsreceiver1_serdes_q6[5]),
	.Q4(top_lvdsreceiver1_serdes_q6[4]),
	.Q5(top_lvdsreceiver1_serdes_q6[3]),
	.Q6(top_lvdsreceiver1_serdes_q6[2]),
	.Q7(top_lvdsreceiver1_serdes_q6[1]),
	.Q8(top_lvdsreceiver1_serdes_q6[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_16(
	.I(top_record1_lvds_pads_adc_d_p[7]),
	.IB(top_record1_lvds_pads_adc_d_n[7]),
	.O(top_lvdsreceiver1_serdes_i_nodelay7)
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_16 (
	.C(adcif1_lclkdiv_clk),
	.CE(top_lvdsreceiver1_rx_delay_inc),
	.IDATAIN(top_lvdsreceiver1_serdes_i_nodelay7),
	.INC(1'd1),
	.LD(top_lvdsreceiver1_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(top_lvdsreceiver1_serdes_i_delayed7)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_16 (
	.BITSLIP(top_lvdsreceiver1_bitslip_do),
	.CE1(1'd1),
	.CLK(top_lvdsreceiver1_lclk_i_bufio),
	.CLKB((~top_lvdsreceiver1_lclk_i_bufio)),
	.CLKDIV(adcif1_lclkdiv_clk),
	.DDLY(top_lvdsreceiver1_serdes_i_delayed7),
	.RST(adcif1_lclkdiv_rst),
	.Q1(top_lvdsreceiver1_serdes_q7[7]),
	.Q2(top_lvdsreceiver1_serdes_q7[6]),
	.Q3(top_lvdsreceiver1_serdes_q7[5]),
	.Q4(top_lvdsreceiver1_serdes_q7[4]),
	.Q5(top_lvdsreceiver1_serdes_q7[3]),
	.Q6(top_lvdsreceiver1_serdes_q7[2]),
	.Q7(top_lvdsreceiver1_serdes_q7[1]),
	.Q8(top_lvdsreceiver1_serdes_q7[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_17(
	.I(top_record1_lvds_pads_adc_fclk_p),
	.IB(top_record1_lvds_pads_adc_fclk_n),
	.O(top_lvdsreceiver1_serdes_i_nodelay8)
);

IDELAYE2 #(
	.CINVCTRL_SEL("FALSE"),
	.DELAY_SRC("IDATAIN"),
	.HIGH_PERFORMANCE_MODE("TRUE"),
	.IDELAY_TYPE("VARIABLE"),
	.IDELAY_VALUE(1'd0),
	.PIPE_SEL("FALSE"),
	.REFCLK_FREQUENCY(200.0),
	.SIGNAL_PATTERN("DATA")
) IDELAYE2_17 (
	.C(adcif1_lclkdiv_clk),
	.CE(top_lvdsreceiver1_rx_delay_inc),
	.IDATAIN(top_lvdsreceiver1_serdes_i_nodelay8),
	.INC(1'd1),
	.LD(top_lvdsreceiver1_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(top_lvdsreceiver1_serdes_i_delayed8)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_17 (
	.BITSLIP(top_lvdsreceiver1_bitslip_do),
	.CE1(1'd1),
	.CLK(top_lvdsreceiver1_lclk_i_bufio),
	.CLKB((~top_lvdsreceiver1_lclk_i_bufio)),
	.CLKDIV(adcif1_lclkdiv_clk),
	.DDLY(top_lvdsreceiver1_serdes_i_delayed8),
	.RST(adcif1_lclkdiv_rst),
	.Q1(top_lvdsreceiver1_serdes_q8[7]),
	.Q2(top_lvdsreceiver1_serdes_q8[6]),
	.Q3(top_lvdsreceiver1_serdes_q8[5]),
	.Q4(top_lvdsreceiver1_serdes_q8[4]),
	.Q5(top_lvdsreceiver1_serdes_q8[3]),
	.Q6(top_lvdsreceiver1_serdes_q8[2]),
	.Q7(top_lvdsreceiver1_serdes_q8[1]),
	.Q8(top_lvdsreceiver1_serdes_q8[0])
);

reg [71:0] storage_1[0:63];
reg [5:0] memadr_2;
reg [5:0] memadr_3;
always @(posedge adcif1_lclkdiv_clk) begin
	if (top_lvdsreceiver1_data_fifo_wrport_we)
		storage_1[top_lvdsreceiver1_data_fifo_wrport_adr] <= top_lvdsreceiver1_data_fifo_wrport_dat_w;
	memadr_2 <= top_lvdsreceiver1_data_fifo_wrport_adr;
end

always @(posedge adcif1_data_clk) begin
	memadr_3 <= top_lvdsreceiver1_data_fifo_rdport_adr;
end

assign top_lvdsreceiver1_data_fifo_wrport_dat_r = storage_1[memadr_2];
assign top_lvdsreceiver1_data_fifo_rdport_dat_r = storage_1[memadr_3];

endmodule
