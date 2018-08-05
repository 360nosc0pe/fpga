/* Machine-generated using LiteX gen */
module top(
	output reg spi_SCLK,
	output reg spi_DIN,
	output reg spi_nSYNC,
	output reg mux_nE,
	output reg [2:0] mux_S,
	input [19:0] adc0,
	input adc_axis_clk,
	input adc_axis_rst,
	output [63:0] adc0_tdata,
	output adc0_tvalid,
	input adc0_tready,
	output reg [63:0] debug,
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

reg [31:0] offsetdac_status = 32'd1047980;
reg [31:0] offsetdac_control_storage_full = 32'd0;
wire [31:0] offsetdac_control_storage;
reg offsetdac_control_re = 1'd0;
reg [31:0] offsetdac_clkdiv_storage_full = 32'd326;
wire [31:0] offsetdac_clkdiv_storage;
reg offsetdac_clkdiv_re = 1'd0;
reg [31:0] offsetdac_enable_storage_full = 32'd1;
wire [31:0] offsetdac_enable_storage;
reg offsetdac_enable_re = 1'd0;
reg [31:0] offsetdac_v0_storage_full = 32'd32768;
wire [31:0] offsetdac_v0_storage;
reg offsetdac_v0_re = 1'd0;
reg [31:0] offsetdac_v1_storage_full = 32'd32768;
wire [31:0] offsetdac_v1_storage;
reg offsetdac_v1_re = 1'd0;
reg [31:0] offsetdac_v2_storage_full = 32'd32768;
wire [31:0] offsetdac_v2_storage;
reg offsetdac_v2_re = 1'd0;
reg [31:0] offsetdac_v3_storage_full = 32'd32768;
wire [31:0] offsetdac_v3_storage;
reg offsetdac_v3_re = 1'd0;
reg [31:0] offsetdac_v4_storage_full = 32'd32768;
wire [31:0] offsetdac_v4_storage;
reg offsetdac_v4_re = 1'd0;
reg [31:0] offsetdac_v5_storage_full = 32'd32768;
wire [31:0] offsetdac_v5_storage;
reg offsetdac_v5_re = 1'd0;
reg [31:0] offsetdac_v6_storage_full = 32'd32768;
wire [31:0] offsetdac_v6_storage;
reg offsetdac_v6_re = 1'd0;
reg [31:0] offsetdac_v7_storage_full = 32'd32768;
wire [31:0] offsetdac_v7_storage;
reg offsetdac_v7_re = 1'd0;
reg [15:0] offsetdac_clkdiv = 16'd0;
reg offsetdac_clk = 1'd0;
reg offsetdac_clk_falling = 1'd0;
reg [4:0] offsetdac_current_bit = 5'd0;
reg [2:0] offsetdac_current_channel = 3'd0;
reg [1:0] offsetdac_pd = 2'd0;
reg [23:0] offsetdac_current_dac_word = 24'd0;
reg [7:0] lvds_pads_adc0_d_p = 8'd0;
reg [7:0] lvds_pads_adc0_d_n = 8'd0;
wire lvds_pads_adc0_fclk_p;
wire lvds_pads_adc0_fclk_n;
wire lvds_pads_adc0_lclk_p;
wire lvds_pads_adc0_lclk_n;
reg [31:0] lvds_adc0_status = 32'd2780;
reg [31:0] lvds_adc0_control_storage_full = 32'd0;
wire [31:0] lvds_adc0_control_storage;
reg lvds_adc0_control_re = 1'd0;
reg lvds_adc0_rx_delay_rst = 1'd0;
reg lvds_adc0_rx_delay_inc = 1'd0;
reg lvds_adc0_bitslip_do = 1'd0;
reg [63:0] lvds_adc0_d_preslip = 64'd0;
wire [63:0] lvds_adc0_d;
wire [7:0] lvds_adc0_fclk;
wire lvds_adc0_d_clk;
wire lvds_adc0_d_rst;
wire lvds_adc0_d_valid;
wire lvds_adc0_d_ready;
wire [7:0] lvds_adc0_fclk_preslip;
wire lvds_adc0_lclk_i;
wire lvds_adc0_lclk_i_bufio;
wire lclkdiv_clk;
wire lclkdiv_rst;
wire lvds_adc0_serdes_i_nodelay0;
wire lvds_adc0_serdes_i_delayed0;
wire [7:0] lvds_adc0_serdes_q0;
wire lvds_adc0_serdes_i_nodelay1;
wire lvds_adc0_serdes_i_delayed1;
wire [7:0] lvds_adc0_serdes_q1;
wire lvds_adc0_serdes_i_nodelay2;
wire lvds_adc0_serdes_i_delayed2;
wire [7:0] lvds_adc0_serdes_q2;
wire lvds_adc0_serdes_i_nodelay3;
wire lvds_adc0_serdes_i_delayed3;
wire [7:0] lvds_adc0_serdes_q3;
wire lvds_adc0_serdes_i_nodelay4;
wire lvds_adc0_serdes_i_delayed4;
wire [7:0] lvds_adc0_serdes_q4;
wire lvds_adc0_serdes_i_nodelay5;
wire lvds_adc0_serdes_i_delayed5;
wire [7:0] lvds_adc0_serdes_q5;
wire lvds_adc0_serdes_i_nodelay6;
wire lvds_adc0_serdes_i_delayed6;
wire [7:0] lvds_adc0_serdes_q6;
wire lvds_adc0_serdes_i_nodelay7;
wire lvds_adc0_serdes_i_delayed7;
wire [7:0] lvds_adc0_serdes_q7;
wire lvds_adc0_serdes_i_nodelay8;
wire lvds_adc0_serdes_i_delayed8;
wire [7:0] lvds_adc0_serdes_q8;
wire data_clk;
wire data_rst;
wire lvds_adc0_data_fifo_re;
reg lvds_adc0_data_fifo_readable = 1'd0;
reg [71:0] lvds_adc0_data_fifo_dout = 72'd0;
wire lvds_adc0_data_fifo_asyncfifo_we;
wire lvds_adc0_data_fifo_asyncfifo_writable;
wire lvds_adc0_data_fifo_asyncfifo_re;
wire lvds_adc0_data_fifo_asyncfifo_readable;
reg [71:0] lvds_adc0_data_fifo_asyncfifo_din = 72'd0;
wire [71:0] lvds_adc0_data_fifo_asyncfifo_dout;
wire lvds_adc0_data_fifo_graycounter0_ce;
(* no_retiming = "true" *) reg [6:0] lvds_adc0_data_fifo_graycounter0_q = 7'd0;
wire [6:0] lvds_adc0_data_fifo_graycounter0_q_next;
reg [6:0] lvds_adc0_data_fifo_graycounter0_q_binary = 7'd0;
reg [6:0] lvds_adc0_data_fifo_graycounter0_q_next_binary = 7'd0;
wire lvds_adc0_data_fifo_graycounter1_ce;
(* no_retiming = "true" *) reg [6:0] lvds_adc0_data_fifo_graycounter1_q = 7'd0;
wire [6:0] lvds_adc0_data_fifo_graycounter1_q_next;
reg [6:0] lvds_adc0_data_fifo_graycounter1_q_binary = 7'd0;
reg [6:0] lvds_adc0_data_fifo_graycounter1_q_next_binary = 7'd0;
wire [6:0] lvds_adc0_data_fifo_produce_rdomain;
wire [6:0] lvds_adc0_data_fifo_consume_wdomain;
wire [5:0] lvds_adc0_data_fifo_wrport_adr;
wire [71:0] lvds_adc0_data_fifo_wrport_dat_r;
wire lvds_adc0_data_fifo_wrport_we;
wire [71:0] lvds_adc0_data_fifo_wrport_dat_w;
wire [5:0] lvds_adc0_data_fifo_rdport_adr;
wire [71:0] lvds_adc0_data_fifo_rdport_dat_r;
reg [15:0] lvds_adc0_bitslip_delay = 16'd0;
reg [19:0] count = 20'd0;
wire data_clk_1;
wire data_rst_1;
wire [13:0] csr_adr;
wire csr_we;
wire [31:0] csr_dat_w;
wire [31:0] csr_dat_r;
wire busy;
wire write_transaction;
wire read_transaction;
reg [31:0] wdata = 32'd0;
reg [15:0] addr = 16'd0;
reg is_ongoing0 = 1'd0;
reg is_ongoing1 = 1'd0;
reg is_ongoing2 = 1'd0;
wire [13:0] interface0_bank_bus_adr;
wire interface0_bank_bus_we;
wire [31:0] interface0_bank_bus_dat_w;
reg [31:0] interface0_bank_bus_dat_r = 32'd0;
wire csrbank0_status_re;
wire [31:0] csrbank0_status_r;
wire [31:0] csrbank0_status_w;
wire csrbank0_control0_re;
wire [31:0] csrbank0_control0_r;
wire [31:0] csrbank0_control0_w;
wire csrbank0_sel;
wire [13:0] interface1_bank_bus_adr;
wire interface1_bank_bus_we;
wire [31:0] interface1_bank_bus_dat_w;
reg [31:0] interface1_bank_bus_dat_r = 32'd0;
wire csrbank1_status_re;
wire [31:0] csrbank1_status_r;
wire [31:0] csrbank1_status_w;
wire csrbank1_control0_re;
wire [31:0] csrbank1_control0_r;
wire [31:0] csrbank1_control0_w;
wire csrbank1_clkdiv0_re;
wire [31:0] csrbank1_clkdiv0_r;
wire [31:0] csrbank1_clkdiv0_w;
wire csrbank1_enable0_re;
wire [31:0] csrbank1_enable0_r;
wire [31:0] csrbank1_enable0_w;
wire csrbank1_v00_re;
wire [31:0] csrbank1_v00_r;
wire [31:0] csrbank1_v00_w;
wire csrbank1_v10_re;
wire [31:0] csrbank1_v10_r;
wire [31:0] csrbank1_v10_w;
wire csrbank1_v20_re;
wire [31:0] csrbank1_v20_r;
wire [31:0] csrbank1_v20_w;
wire csrbank1_v30_re;
wire [31:0] csrbank1_v30_r;
wire [31:0] csrbank1_v30_w;
wire csrbank1_v40_re;
wire [31:0] csrbank1_v40_r;
wire [31:0] csrbank1_v40_w;
wire csrbank1_v50_re;
wire [31:0] csrbank1_v50_r;
wire [31:0] csrbank1_v50_w;
wire csrbank1_v60_re;
wire [31:0] csrbank1_v60_r;
wire [31:0] csrbank1_v60_w;
wire csrbank1_v70_re;
wire [31:0] csrbank1_v70_r;
wire [31:0] csrbank1_v70_w;
wire csrbank1_sel;
reg offsetdac_state = 1'd0;
reg offsetdac_next_state = 1'd0;
reg [4:0] offsetdac_current_bit_offsetdac_next_value0 = 5'd0;
reg offsetdac_current_bit_offsetdac_next_value_ce0 = 1'd0;
reg offsetdac_mux_nE_offsetdac_next_value1 = 1'd0;
reg offsetdac_mux_nE_offsetdac_next_value_ce1 = 1'd0;
reg offsetdac_spi_nSYNC_offsetdac_next_value2 = 1'd0;
reg offsetdac_spi_nSYNC_offsetdac_next_value_ce2 = 1'd0;
reg offsetdac_spi_DIN_offsetdac_next_value3 = 1'd0;
reg offsetdac_spi_DIN_offsetdac_next_value_ce3 = 1'd0;
reg [2:0] offsetdac_current_channel_offsetdac_f_next_value = 3'd0;
reg offsetdac_current_channel_offsetdac_f_next_value_ce = 1'd0;
reg [2:0] offsetdac_mux_S_offsetdac_t_next_value = 3'd0;
reg offsetdac_mux_S_offsetdac_t_next_value_ce = 1'd0;
reg [1:0] axilite2csr_state = 2'd0;
reg [1:0] axilite2csr_next_state = 2'd0;
reg [31:0] wdata_axilite2csr_next_value = 32'd0;
reg wdata_axilite2csr_next_value_ce = 1'd0;
reg [15:0] rhs_array_muxed = 16'd0;
reg cases_array_muxed = 1'd0;
(* no_retiming = "true" *) reg multiregimpl0_regs0 = 1'd0;
(* no_retiming = "true" *) reg multiregimpl0_regs1 = 1'd0;
(* no_retiming = "true" *) reg [6:0] multiregimpl1_regs0 = 7'd0;
(* no_retiming = "true" *) reg [6:0] multiregimpl1_regs1 = 7'd0;
(* no_retiming = "true" *) reg [6:0] multiregimpl2_regs0 = 7'd0;
(* no_retiming = "true" *) reg [6:0] multiregimpl2_regs1 = 7'd0;

always @(*) begin
	lvds_pads_adc0_d_p <= 8'd0;
	lvds_pads_adc0_d_p[0] <= adc0[0];
	lvds_pads_adc0_d_p[1] <= adc0[2];
	lvds_pads_adc0_d_p[2] <= adc0[4];
	lvds_pads_adc0_d_p[3] <= adc0[6];
	lvds_pads_adc0_d_p[4] <= adc0[8];
	lvds_pads_adc0_d_p[5] <= adc0[10];
	lvds_pads_adc0_d_p[6] <= adc0[12];
	lvds_pads_adc0_d_p[7] <= adc0[14];
end
always @(*) begin
	lvds_pads_adc0_d_n <= 8'd0;
	lvds_pads_adc0_d_n[0] <= adc0[1];
	lvds_pads_adc0_d_n[1] <= adc0[3];
	lvds_pads_adc0_d_n[2] <= adc0[5];
	lvds_pads_adc0_d_n[3] <= adc0[7];
	lvds_pads_adc0_d_n[4] <= adc0[9];
	lvds_pads_adc0_d_n[5] <= adc0[11];
	lvds_pads_adc0_d_n[6] <= adc0[13];
	lvds_pads_adc0_d_n[7] <= adc0[15];
end
assign lvds_pads_adc0_lclk_p = adc0[16];
assign lvds_pads_adc0_lclk_n = adc0[17];
assign lvds_pads_adc0_fclk_p = adc0[18];
assign lvds_pads_adc0_fclk_n = adc0[19];
assign lvds_adc0_d_clk = adc_axis_clk;
assign lvds_adc0_d_rst = adc_axis_rst;
assign adc0_tdata = lvds_adc0_d;
assign adc0_tvalid = lvds_adc0_d_valid;
assign lvds_adc0_d_ready = adc0_tready;
assign data_clk_1 = adc_axis_clk;
assign data_rst_1 = adc_axis_rst;
always @(*) begin
	debug <= 64'd0;
	debug[31:0] <= lvds_adc0_d;
	debug[39:32] <= lvds_adc0_fclk_preslip;
	debug[40] <= lvds_adc0_d_valid;
	debug[41] <= adc0_tvalid;
	debug[42] <= adc0_tready;
	debug[63:45] <= count;
end
always @(*) begin
	offsetdac_current_dac_word <= 24'd0;
	offsetdac_current_dac_word[15:0] <= rhs_array_muxed;
	offsetdac_current_dac_word[17:16] <= offsetdac_pd;
	offsetdac_current_dac_word[23:18] <= 1'd0;
end
always @(*) begin
	offsetdac_next_state <= 1'd0;
	offsetdac_current_bit_offsetdac_next_value0 <= 5'd0;
	offsetdac_current_bit_offsetdac_next_value_ce0 <= 1'd0;
	offsetdac_mux_nE_offsetdac_next_value1 <= 1'd0;
	offsetdac_mux_nE_offsetdac_next_value_ce1 <= 1'd0;
	offsetdac_mux_S_offsetdac_t_next_value <= 3'd0;
	offsetdac_mux_S_offsetdac_t_next_value_ce <= 1'd0;
	offsetdac_spi_nSYNC_offsetdac_next_value2 <= 1'd0;
	offsetdac_spi_nSYNC_offsetdac_next_value_ce2 <= 1'd0;
	offsetdac_spi_DIN_offsetdac_next_value3 <= 1'd0;
	offsetdac_spi_DIN_offsetdac_next_value_ce3 <= 1'd0;
	offsetdac_current_channel_offsetdac_f_next_value <= 3'd0;
	offsetdac_current_channel_offsetdac_f_next_value_ce <= 1'd0;
	offsetdac_next_state <= offsetdac_state;
	case (offsetdac_state)
		1'd1: begin
			if (offsetdac_clk_falling) begin
				offsetdac_spi_nSYNC_offsetdac_next_value2 <= 1'd0;
				offsetdac_spi_nSYNC_offsetdac_next_value_ce2 <= 1'd1;
				offsetdac_mux_nE_offsetdac_next_value1 <= 1'd0;
				offsetdac_mux_nE_offsetdac_next_value_ce1 <= 1'd1;
				offsetdac_spi_DIN_offsetdac_next_value3 <= cases_array_muxed;
				offsetdac_spi_DIN_offsetdac_next_value_ce3 <= 1'd1;
				if ((offsetdac_current_bit == 5'd23)) begin
					offsetdac_mux_nE_offsetdac_next_value1 <= 1'd1;
					offsetdac_mux_nE_offsetdac_next_value_ce1 <= 1'd1;
					offsetdac_next_state <= 1'd0;
					offsetdac_mux_S_offsetdac_t_next_value <= offsetdac_current_channel;
					offsetdac_mux_S_offsetdac_t_next_value_ce <= 1'd1;
					offsetdac_current_channel_offsetdac_f_next_value <= (offsetdac_current_channel + 1'd1);
					offsetdac_current_channel_offsetdac_f_next_value_ce <= 1'd1;
				end else begin
					offsetdac_current_bit_offsetdac_next_value0 <= (offsetdac_current_bit + 1'd1);
					offsetdac_current_bit_offsetdac_next_value_ce0 <= 1'd1;
				end
			end
		end
		default: begin
			if (offsetdac_clk_falling) begin
				offsetdac_current_bit_offsetdac_next_value0 <= 1'd0;
				offsetdac_current_bit_offsetdac_next_value_ce0 <= 1'd1;
				offsetdac_mux_nE_offsetdac_next_value1 <= 1'd1;
				offsetdac_mux_nE_offsetdac_next_value_ce1 <= 1'd1;
				offsetdac_spi_nSYNC_offsetdac_next_value2 <= 1'd1;
				offsetdac_spi_nSYNC_offsetdac_next_value_ce2 <= 1'd1;
				offsetdac_spi_DIN_offsetdac_next_value3 <= 1'd0;
				offsetdac_spi_DIN_offsetdac_next_value_ce3 <= 1'd1;
				if (offsetdac_enable_storage[0]) begin
					offsetdac_next_state <= 1'd1;
				end else begin
					offsetdac_current_channel_offsetdac_f_next_value <= 1'd0;
					offsetdac_current_channel_offsetdac_f_next_value_ce <= 1'd1;
				end
			end
		end
	endcase
end
always @(*) begin
	lvds_adc0_d_preslip <= 64'd0;
	lvds_adc0_d_preslip[7:0] <= lvds_adc0_serdes_q0;
	lvds_adc0_d_preslip[15:8] <= lvds_adc0_serdes_q1;
	lvds_adc0_d_preslip[23:16] <= lvds_adc0_serdes_q2;
	lvds_adc0_d_preslip[31:24] <= lvds_adc0_serdes_q3;
	lvds_adc0_d_preslip[39:32] <= lvds_adc0_serdes_q4;
	lvds_adc0_d_preslip[47:40] <= lvds_adc0_serdes_q5;
	lvds_adc0_d_preslip[55:48] <= lvds_adc0_serdes_q6;
	lvds_adc0_d_preslip[63:56] <= lvds_adc0_serdes_q7;
end
assign lvds_adc0_fclk_preslip = lvds_adc0_serdes_q8;
assign data_clk = lvds_adc0_d_clk;
assign data_rst = lvds_adc0_d_rst;
assign lvds_adc0_data_fifo_asyncfifo_we = 1'd1;
assign lvds_adc0_data_fifo_re = lvds_adc0_d_ready;
assign lvds_adc0_d = lvds_adc0_data_fifo_dout[63:0];
assign lvds_adc0_fclk = lvds_adc0_data_fifo_dout[71:64];
assign lvds_adc0_d_valid = lvds_adc0_data_fifo_readable;
assign lvds_adc0_data_fifo_asyncfifo_re = (lvds_adc0_data_fifo_re | (~lvds_adc0_data_fifo_readable));
assign lvds_adc0_data_fifo_graycounter0_ce = (lvds_adc0_data_fifo_asyncfifo_writable & lvds_adc0_data_fifo_asyncfifo_we);
assign lvds_adc0_data_fifo_graycounter1_ce = (lvds_adc0_data_fifo_asyncfifo_readable & lvds_adc0_data_fifo_asyncfifo_re);
assign lvds_adc0_data_fifo_asyncfifo_writable = (((lvds_adc0_data_fifo_graycounter0_q[6] == lvds_adc0_data_fifo_consume_wdomain[6]) | (lvds_adc0_data_fifo_graycounter0_q[5] == lvds_adc0_data_fifo_consume_wdomain[5])) | (lvds_adc0_data_fifo_graycounter0_q[4:0] != lvds_adc0_data_fifo_consume_wdomain[4:0]));
assign lvds_adc0_data_fifo_asyncfifo_readable = (lvds_adc0_data_fifo_graycounter1_q != lvds_adc0_data_fifo_produce_rdomain);
assign lvds_adc0_data_fifo_wrport_adr = lvds_adc0_data_fifo_graycounter0_q_binary[5:0];
assign lvds_adc0_data_fifo_wrport_dat_w = lvds_adc0_data_fifo_asyncfifo_din;
assign lvds_adc0_data_fifo_wrport_we = lvds_adc0_data_fifo_graycounter0_ce;
assign lvds_adc0_data_fifo_rdport_adr = lvds_adc0_data_fifo_graycounter1_q_next_binary[5:0];
assign lvds_adc0_data_fifo_asyncfifo_dout = lvds_adc0_data_fifo_rdport_dat_r;
always @(*) begin
	lvds_adc0_data_fifo_graycounter0_q_next_binary <= 7'd0;
	if (lvds_adc0_data_fifo_graycounter0_ce) begin
		lvds_adc0_data_fifo_graycounter0_q_next_binary <= (lvds_adc0_data_fifo_graycounter0_q_binary + 1'd1);
	end else begin
		lvds_adc0_data_fifo_graycounter0_q_next_binary <= lvds_adc0_data_fifo_graycounter0_q_binary;
	end
end
assign lvds_adc0_data_fifo_graycounter0_q_next = (lvds_adc0_data_fifo_graycounter0_q_next_binary ^ lvds_adc0_data_fifo_graycounter0_q_next_binary[6:1]);
always @(*) begin
	lvds_adc0_data_fifo_graycounter1_q_next_binary <= 7'd0;
	if (lvds_adc0_data_fifo_graycounter1_ce) begin
		lvds_adc0_data_fifo_graycounter1_q_next_binary <= (lvds_adc0_data_fifo_graycounter1_q_binary + 1'd1);
	end else begin
		lvds_adc0_data_fifo_graycounter1_q_next_binary <= lvds_adc0_data_fifo_graycounter1_q_binary;
	end
end
assign lvds_adc0_data_fifo_graycounter1_q_next = (lvds_adc0_data_fifo_graycounter1_q_next_binary ^ lvds_adc0_data_fifo_graycounter1_q_next_binary[6:1]);
assign write_transaction = (((axi_lite_aw_valid & axi_lite_aw_ready) & axi_lite_w_valid) & axi_lite_w_ready);
assign read_transaction = (axi_lite_ar_valid & axi_lite_ar_ready);
assign csr_adr = (addr >>> 2'd2);
assign csr_dat_w = wdata;
assign axi_lite_r_data = csr_dat_r;
assign axi_lite_r_resp = 1'd0;
assign busy = (~is_ongoing0);
assign axi_lite_r_valid = is_ongoing1;
assign csr_we = is_ongoing2;
always @(*) begin
	addr <= 16'd0;
	is_ongoing2 <= 1'd0;
	is_ongoing0 <= 1'd0;
	axilite2csr_next_state <= 2'd0;
	is_ongoing1 <= 1'd0;
	wdata_axilite2csr_next_value <= 32'd0;
	wdata_axilite2csr_next_value_ce <= 1'd0;
	axilite2csr_next_state <= axilite2csr_state;
	case (axilite2csr_state)
		1'd1: begin
			is_ongoing1 <= 1'd1;
			addr <= axi_lite_ar_addr;
			if (axi_lite_r_ready) begin
				axilite2csr_next_state <= 1'd0;
			end
		end
		2'd2: begin
			is_ongoing2 <= 1'd1;
			addr <= axi_lite_aw_addr;
			axilite2csr_next_state <= 1'd0;
		end
		default: begin
			is_ongoing0 <= 1'd1;
			if (read_transaction) begin
				addr <= axi_lite_ar_addr;
				axilite2csr_next_state <= 1'd1;
			end else begin
				if (write_transaction) begin
					addr <= axi_lite_aw_addr;
					wdata_axilite2csr_next_value <= axi_lite_w_data;
					wdata_axilite2csr_next_value_ce <= 1'd1;
					axilite2csr_next_state <= 2'd2;
				end
			end
		end
	endcase
end
assign csrbank0_sel = (interface0_bank_bus_adr[13:9] == 1'd0);
assign csrbank0_status_r = interface0_bank_bus_dat_w[31:0];
assign csrbank0_status_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[0] == 1'd0));
assign csrbank0_control0_r = interface0_bank_bus_dat_w[31:0];
assign csrbank0_control0_re = ((csrbank0_sel & interface0_bank_bus_we) & (interface0_bank_bus_adr[0] == 1'd1));
assign csrbank0_status_w = lvds_adc0_status[31:0];
assign lvds_adc0_control_storage = lvds_adc0_control_storage_full[31:0];
assign csrbank0_control0_w = lvds_adc0_control_storage_full[31:0];
assign csrbank1_sel = (interface1_bank_bus_adr[13:9] == 1'd1);
assign csrbank1_status_r = interface1_bank_bus_dat_w[31:0];
assign csrbank1_status_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 1'd0));
assign csrbank1_control0_r = interface1_bank_bus_dat_w[31:0];
assign csrbank1_control0_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 1'd1));
assign csrbank1_clkdiv0_r = interface1_bank_bus_dat_w[31:0];
assign csrbank1_clkdiv0_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 2'd2));
assign csrbank1_enable0_r = interface1_bank_bus_dat_w[31:0];
assign csrbank1_enable0_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 2'd3));
assign csrbank1_v00_r = interface1_bank_bus_dat_w[31:0];
assign csrbank1_v00_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 3'd4));
assign csrbank1_v10_r = interface1_bank_bus_dat_w[31:0];
assign csrbank1_v10_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 3'd5));
assign csrbank1_v20_r = interface1_bank_bus_dat_w[31:0];
assign csrbank1_v20_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 3'd6));
assign csrbank1_v30_r = interface1_bank_bus_dat_w[31:0];
assign csrbank1_v30_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 3'd7));
assign csrbank1_v40_r = interface1_bank_bus_dat_w[31:0];
assign csrbank1_v40_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 4'd8));
assign csrbank1_v50_r = interface1_bank_bus_dat_w[31:0];
assign csrbank1_v50_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 4'd9));
assign csrbank1_v60_r = interface1_bank_bus_dat_w[31:0];
assign csrbank1_v60_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 4'd10));
assign csrbank1_v70_r = interface1_bank_bus_dat_w[31:0];
assign csrbank1_v70_re = ((csrbank1_sel & interface1_bank_bus_we) & (interface1_bank_bus_adr[3:0] == 4'd11));
assign csrbank1_status_w = offsetdac_status[31:0];
assign offsetdac_control_storage = offsetdac_control_storage_full[31:0];
assign csrbank1_control0_w = offsetdac_control_storage_full[31:0];
assign offsetdac_clkdiv_storage = offsetdac_clkdiv_storage_full[31:0];
assign csrbank1_clkdiv0_w = offsetdac_clkdiv_storage_full[31:0];
assign offsetdac_enable_storage = offsetdac_enable_storage_full[31:0];
assign csrbank1_enable0_w = offsetdac_enable_storage_full[31:0];
assign offsetdac_v0_storage = offsetdac_v0_storage_full[31:0];
assign csrbank1_v00_w = offsetdac_v0_storage_full[31:0];
assign offsetdac_v1_storage = offsetdac_v1_storage_full[31:0];
assign csrbank1_v10_w = offsetdac_v1_storage_full[31:0];
assign offsetdac_v2_storage = offsetdac_v2_storage_full[31:0];
assign csrbank1_v20_w = offsetdac_v2_storage_full[31:0];
assign offsetdac_v3_storage = offsetdac_v3_storage_full[31:0];
assign csrbank1_v30_w = offsetdac_v3_storage_full[31:0];
assign offsetdac_v4_storage = offsetdac_v4_storage_full[31:0];
assign csrbank1_v40_w = offsetdac_v4_storage_full[31:0];
assign offsetdac_v5_storage = offsetdac_v5_storage_full[31:0];
assign csrbank1_v50_w = offsetdac_v5_storage_full[31:0];
assign offsetdac_v6_storage = offsetdac_v6_storage_full[31:0];
assign csrbank1_v60_w = offsetdac_v6_storage_full[31:0];
assign offsetdac_v7_storage = offsetdac_v7_storage_full[31:0];
assign csrbank1_v70_w = offsetdac_v7_storage_full[31:0];
assign interface0_bank_bus_adr = csr_adr;
assign interface1_bank_bus_adr = csr_adr;
assign interface0_bank_bus_we = csr_we;
assign interface1_bank_bus_we = csr_we;
assign interface0_bank_bus_dat_w = csr_dat_w;
assign interface1_bank_bus_dat_w = csr_dat_w;
assign csr_dat_r = (interface0_bank_bus_dat_r | interface1_bank_bus_dat_r);
always @(*) begin
	rhs_array_muxed <= 16'd0;
	case (offsetdac_current_channel)
		1'd0: begin
			rhs_array_muxed <= offsetdac_v0_storage[15:0];
		end
		1'd1: begin
			rhs_array_muxed <= offsetdac_v1_storage[15:0];
		end
		2'd2: begin
			rhs_array_muxed <= offsetdac_v2_storage[15:0];
		end
		2'd3: begin
			rhs_array_muxed <= offsetdac_v3_storage[15:0];
		end
		3'd4: begin
			rhs_array_muxed <= offsetdac_v4_storage[15:0];
		end
		3'd5: begin
			rhs_array_muxed <= offsetdac_v5_storage[15:0];
		end
		3'd6: begin
			rhs_array_muxed <= offsetdac_v6_storage[15:0];
		end
		default: begin
			rhs_array_muxed <= offsetdac_v7_storage[15:0];
		end
	endcase
end
always @(*) begin
	cases_array_muxed <= 1'd0;
	case ((5'd23 - offsetdac_current_bit))
		1'd0: begin
			cases_array_muxed <= offsetdac_current_dac_word[0];
		end
		1'd1: begin
			cases_array_muxed <= offsetdac_current_dac_word[1];
		end
		2'd2: begin
			cases_array_muxed <= offsetdac_current_dac_word[2];
		end
		2'd3: begin
			cases_array_muxed <= offsetdac_current_dac_word[3];
		end
		3'd4: begin
			cases_array_muxed <= offsetdac_current_dac_word[4];
		end
		3'd5: begin
			cases_array_muxed <= offsetdac_current_dac_word[5];
		end
		3'd6: begin
			cases_array_muxed <= offsetdac_current_dac_word[6];
		end
		3'd7: begin
			cases_array_muxed <= offsetdac_current_dac_word[7];
		end
		4'd8: begin
			cases_array_muxed <= offsetdac_current_dac_word[8];
		end
		4'd9: begin
			cases_array_muxed <= offsetdac_current_dac_word[9];
		end
		4'd10: begin
			cases_array_muxed <= offsetdac_current_dac_word[10];
		end
		4'd11: begin
			cases_array_muxed <= offsetdac_current_dac_word[11];
		end
		4'd12: begin
			cases_array_muxed <= offsetdac_current_dac_word[12];
		end
		4'd13: begin
			cases_array_muxed <= offsetdac_current_dac_word[13];
		end
		4'd14: begin
			cases_array_muxed <= offsetdac_current_dac_word[14];
		end
		4'd15: begin
			cases_array_muxed <= offsetdac_current_dac_word[15];
		end
		5'd16: begin
			cases_array_muxed <= offsetdac_current_dac_word[16];
		end
		5'd17: begin
			cases_array_muxed <= offsetdac_current_dac_word[17];
		end
		5'd18: begin
			cases_array_muxed <= offsetdac_current_dac_word[18];
		end
		5'd19: begin
			cases_array_muxed <= offsetdac_current_dac_word[19];
		end
		5'd20: begin
			cases_array_muxed <= offsetdac_current_dac_word[20];
		end
		5'd21: begin
			cases_array_muxed <= offsetdac_current_dac_word[21];
		end
		5'd22: begin
			cases_array_muxed <= offsetdac_current_dac_word[22];
		end
		default: begin
			cases_array_muxed <= offsetdac_current_dac_word[23];
		end
	endcase
end
assign lclkdiv_rst = multiregimpl0_regs1;
assign lvds_adc0_data_fifo_produce_rdomain = multiregimpl1_regs1;
assign lvds_adc0_data_fifo_consume_wdomain = multiregimpl2_regs1;

always @(posedge data_clk_1) begin
	count <= (count + 1'd1);
	if ((lvds_adc0_data_fifo_re | (~lvds_adc0_data_fifo_readable))) begin
		lvds_adc0_data_fifo_dout <= lvds_adc0_data_fifo_asyncfifo_dout;
		lvds_adc0_data_fifo_readable <= lvds_adc0_data_fifo_asyncfifo_readable;
	end
	lvds_adc0_data_fifo_graycounter1_q_binary <= lvds_adc0_data_fifo_graycounter1_q_next_binary;
	lvds_adc0_data_fifo_graycounter1_q <= lvds_adc0_data_fifo_graycounter1_q_next;
	if (data_rst_1) begin
		lvds_adc0_data_fifo_readable <= 1'd0;
		lvds_adc0_data_fifo_dout <= 72'd0;
		lvds_adc0_data_fifo_graycounter1_q <= 7'd0;
		lvds_adc0_data_fifo_graycounter1_q_binary <= 7'd0;
		count <= 20'd0;
	end
	multiregimpl1_regs0 <= lvds_adc0_data_fifo_graycounter0_q;
	multiregimpl1_regs1 <= multiregimpl1_regs0;
end

always @(posedge lclkdiv_clk) begin
	lvds_adc0_data_fifo_asyncfifo_din[7:0] <= lvds_adc0_d_preslip[7:0];
	lvds_adc0_data_fifo_asyncfifo_din[15:8] <= lvds_adc0_d_preslip[15:8];
	lvds_adc0_data_fifo_asyncfifo_din[23:16] <= lvds_adc0_d_preslip[23:16];
	lvds_adc0_data_fifo_asyncfifo_din[31:24] <= lvds_adc0_d_preslip[31:24];
	lvds_adc0_data_fifo_asyncfifo_din[39:32] <= lvds_adc0_d_preslip[39:32];
	lvds_adc0_data_fifo_asyncfifo_din[47:40] <= lvds_adc0_d_preslip[47:40];
	lvds_adc0_data_fifo_asyncfifo_din[55:48] <= lvds_adc0_d_preslip[55:48];
	lvds_adc0_data_fifo_asyncfifo_din[63:56] <= lvds_adc0_d_preslip[63:56];
	lvds_adc0_data_fifo_asyncfifo_din[71:64] <= lvds_adc0_fclk_preslip;
	lvds_adc0_bitslip_delay <= (lvds_adc0_bitslip_delay + 1'd1);
	lvds_adc0_bitslip_do <= ((((lvds_adc0_fclk_preslip != 4'd15) & (lvds_adc0_fclk_preslip != 6'd51)) & (lvds_adc0_fclk_preslip != 7'd85)) & (lvds_adc0_bitslip_delay == 1'd0));
	lvds_adc0_data_fifo_graycounter0_q_binary <= lvds_adc0_data_fifo_graycounter0_q_next_binary;
	lvds_adc0_data_fifo_graycounter0_q <= lvds_adc0_data_fifo_graycounter0_q_next;
	if (lclkdiv_rst) begin
		lvds_adc0_bitslip_do <= 1'd0;
		lvds_adc0_data_fifo_asyncfifo_din <= 72'd0;
		lvds_adc0_data_fifo_graycounter0_q <= 7'd0;
		lvds_adc0_data_fifo_graycounter0_q_binary <= 7'd0;
		lvds_adc0_bitslip_delay <= 16'd0;
	end
	multiregimpl0_regs0 <= lvds_adc0_control_storage[0];
	multiregimpl0_regs1 <= multiregimpl0_regs0;
	multiregimpl2_regs0 <= lvds_adc0_data_fifo_graycounter1_q;
	multiregimpl2_regs1 <= multiregimpl2_regs0;
end

always @(posedge sys_clk) begin
	if ((offsetdac_clkdiv == offsetdac_clkdiv_storage[15:0])) begin
		offsetdac_clkdiv <= 1'd0;
	end else begin
		offsetdac_clkdiv <= (offsetdac_clkdiv + 1'd1);
	end
	offsetdac_clk_falling <= 1'd0;
	if ((offsetdac_clkdiv == 1'd0)) begin
		offsetdac_clk <= (~offsetdac_clk);
		offsetdac_clk_falling <= (~offsetdac_clk);
	end
	spi_SCLK <= (offsetdac_clk & offsetdac_enable_storage[0]);
	offsetdac_state <= offsetdac_next_state;
	if (offsetdac_current_bit_offsetdac_next_value_ce0) begin
		offsetdac_current_bit <= offsetdac_current_bit_offsetdac_next_value0;
	end
	if (offsetdac_mux_nE_offsetdac_next_value_ce1) begin
		mux_nE <= offsetdac_mux_nE_offsetdac_next_value1;
	end
	if (offsetdac_spi_nSYNC_offsetdac_next_value_ce2) begin
		spi_nSYNC <= offsetdac_spi_nSYNC_offsetdac_next_value2;
	end
	if (offsetdac_spi_DIN_offsetdac_next_value_ce3) begin
		spi_DIN <= offsetdac_spi_DIN_offsetdac_next_value3;
	end
	if (offsetdac_current_channel_offsetdac_f_next_value_ce) begin
		offsetdac_current_channel <= offsetdac_current_channel_offsetdac_f_next_value;
	end
	if (offsetdac_mux_S_offsetdac_t_next_value_ce) begin
		mux_S <= offsetdac_mux_S_offsetdac_t_next_value;
	end
	axi_lite_aw_ready <= 1'd0;
	axi_lite_w_ready <= 1'd0;
	if ((axi_lite_aw_valid & axi_lite_w_valid)) begin
		if ((((~axi_lite_aw_ready) & (~busy)) & (~axi_lite_ar_valid))) begin
			axi_lite_aw_ready <= 1'd1;
			axi_lite_w_ready <= 1'd1;
		end
	end
	axi_lite_b_valid <= 1'd0;
	if (write_transaction) begin
		if ((axi_lite_b_ready & (~axi_lite_b_valid))) begin
			axi_lite_b_valid <= 1'd1;
			axi_lite_b_resp <= 1'd0;
		end
	end
	axi_lite_ar_ready <= 1'd0;
	if (((axi_lite_ar_valid & (~axi_lite_ar_ready)) & (~busy))) begin
		axi_lite_ar_ready <= 1'd1;
	end
	axilite2csr_state <= axilite2csr_next_state;
	if (wdata_axilite2csr_next_value_ce) begin
		wdata <= wdata_axilite2csr_next_value;
	end
	interface0_bank_bus_dat_r <= 1'd0;
	if (csrbank0_sel) begin
		case (interface0_bank_bus_adr[0])
			1'd0: begin
				interface0_bank_bus_dat_r <= csrbank0_status_w;
			end
			1'd1: begin
				interface0_bank_bus_dat_r <= csrbank0_control0_w;
			end
		endcase
	end
	if (csrbank0_control0_re) begin
		lvds_adc0_control_storage_full[31:0] <= csrbank0_control0_r;
	end
	lvds_adc0_control_re <= csrbank0_control0_re;
	interface1_bank_bus_dat_r <= 1'd0;
	if (csrbank1_sel) begin
		case (interface1_bank_bus_adr[3:0])
			1'd0: begin
				interface1_bank_bus_dat_r <= csrbank1_status_w;
			end
			1'd1: begin
				interface1_bank_bus_dat_r <= csrbank1_control0_w;
			end
			2'd2: begin
				interface1_bank_bus_dat_r <= csrbank1_clkdiv0_w;
			end
			2'd3: begin
				interface1_bank_bus_dat_r <= csrbank1_enable0_w;
			end
			3'd4: begin
				interface1_bank_bus_dat_r <= csrbank1_v00_w;
			end
			3'd5: begin
				interface1_bank_bus_dat_r <= csrbank1_v10_w;
			end
			3'd6: begin
				interface1_bank_bus_dat_r <= csrbank1_v20_w;
			end
			3'd7: begin
				interface1_bank_bus_dat_r <= csrbank1_v30_w;
			end
			4'd8: begin
				interface1_bank_bus_dat_r <= csrbank1_v40_w;
			end
			4'd9: begin
				interface1_bank_bus_dat_r <= csrbank1_v50_w;
			end
			4'd10: begin
				interface1_bank_bus_dat_r <= csrbank1_v60_w;
			end
			4'd11: begin
				interface1_bank_bus_dat_r <= csrbank1_v70_w;
			end
		endcase
	end
	if (csrbank1_control0_re) begin
		offsetdac_control_storage_full[31:0] <= csrbank1_control0_r;
	end
	offsetdac_control_re <= csrbank1_control0_re;
	if (csrbank1_clkdiv0_re) begin
		offsetdac_clkdiv_storage_full[31:0] <= csrbank1_clkdiv0_r;
	end
	offsetdac_clkdiv_re <= csrbank1_clkdiv0_re;
	if (csrbank1_enable0_re) begin
		offsetdac_enable_storage_full[31:0] <= csrbank1_enable0_r;
	end
	offsetdac_enable_re <= csrbank1_enable0_re;
	if (csrbank1_v00_re) begin
		offsetdac_v0_storage_full[31:0] <= csrbank1_v00_r;
	end
	offsetdac_v0_re <= csrbank1_v00_re;
	if (csrbank1_v10_re) begin
		offsetdac_v1_storage_full[31:0] <= csrbank1_v10_r;
	end
	offsetdac_v1_re <= csrbank1_v10_re;
	if (csrbank1_v20_re) begin
		offsetdac_v2_storage_full[31:0] <= csrbank1_v20_r;
	end
	offsetdac_v2_re <= csrbank1_v20_re;
	if (csrbank1_v30_re) begin
		offsetdac_v3_storage_full[31:0] <= csrbank1_v30_r;
	end
	offsetdac_v3_re <= csrbank1_v30_re;
	if (csrbank1_v40_re) begin
		offsetdac_v4_storage_full[31:0] <= csrbank1_v40_r;
	end
	offsetdac_v4_re <= csrbank1_v40_re;
	if (csrbank1_v50_re) begin
		offsetdac_v5_storage_full[31:0] <= csrbank1_v50_r;
	end
	offsetdac_v5_re <= csrbank1_v50_re;
	if (csrbank1_v60_re) begin
		offsetdac_v6_storage_full[31:0] <= csrbank1_v60_r;
	end
	offsetdac_v6_re <= csrbank1_v60_re;
	if (csrbank1_v70_re) begin
		offsetdac_v7_storage_full[31:0] <= csrbank1_v70_r;
	end
	offsetdac_v7_re <= csrbank1_v70_re;
	if (sys_rst) begin
		spi_SCLK <= 1'd0;
		spi_DIN <= 1'd0;
		spi_nSYNC <= 1'd0;
		mux_nE <= 1'd0;
		mux_S <= 3'd0;
		offsetdac_control_storage_full <= 32'd0;
		offsetdac_control_re <= 1'd0;
		offsetdac_clkdiv_storage_full <= 32'd326;
		offsetdac_clkdiv_re <= 1'd0;
		offsetdac_enable_storage_full <= 32'd1;
		offsetdac_enable_re <= 1'd0;
		offsetdac_v0_storage_full <= 32'd32768;
		offsetdac_v0_re <= 1'd0;
		offsetdac_v1_storage_full <= 32'd32768;
		offsetdac_v1_re <= 1'd0;
		offsetdac_v2_storage_full <= 32'd32768;
		offsetdac_v2_re <= 1'd0;
		offsetdac_v3_storage_full <= 32'd32768;
		offsetdac_v3_re <= 1'd0;
		offsetdac_v4_storage_full <= 32'd32768;
		offsetdac_v4_re <= 1'd0;
		offsetdac_v5_storage_full <= 32'd32768;
		offsetdac_v5_re <= 1'd0;
		offsetdac_v6_storage_full <= 32'd32768;
		offsetdac_v6_re <= 1'd0;
		offsetdac_v7_storage_full <= 32'd32768;
		offsetdac_v7_re <= 1'd0;
		offsetdac_clkdiv <= 16'd0;
		offsetdac_clk <= 1'd0;
		offsetdac_clk_falling <= 1'd0;
		offsetdac_current_bit <= 5'd0;
		offsetdac_current_channel <= 3'd0;
		lvds_adc0_control_storage_full <= 32'd0;
		lvds_adc0_control_re <= 1'd0;
		axi_lite_aw_ready <= 1'd0;
		axi_lite_w_ready <= 1'd0;
		axi_lite_b_resp <= 2'd0;
		axi_lite_b_valid <= 1'd0;
		axi_lite_ar_ready <= 1'd0;
		wdata <= 32'd0;
		interface0_bank_bus_dat_r <= 32'd0;
		interface1_bank_bus_dat_r <= 32'd0;
		offsetdac_state <= 1'd0;
		axilite2csr_state <= 2'd0;
	end
end

IBUFDS IBUFDS(
	.I(lvds_pads_adc0_lclk_p),
	.IB(lvds_pads_adc0_lclk_n),
	.O(lvds_adc0_lclk_i)
);

BUFIO BUFIO(
	.I(lvds_adc0_lclk_i),
	.O(lvds_adc0_lclk_i_bufio)
);

BUFR #(
	.BUFR_DIVIDE("4")
) BUFR (
	.I(lvds_adc0_lclk_i),
	.O(lclkdiv_clk)
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT(
	.I(lvds_pads_adc0_d_p[0]),
	.IB(lvds_pads_adc0_d_n[0]),
	.O(lvds_adc0_serdes_i_nodelay0)
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
	.C(lclkdiv_clk),
	.CE(lvds_adc0_rx_delay_inc),
	.IDATAIN(lvds_adc0_serdes_i_nodelay0),
	.INC(1'd1),
	.LD(lvds_adc0_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(lvds_adc0_serdes_i_delayed0)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2 (
	.BITSLIP(lvds_adc0_bitslip_do),
	.CE1(1'd1),
	.CLK(lvds_adc0_lclk_i_bufio),
	.CLKB((~lvds_adc0_lclk_i_bufio)),
	.CLKDIV(lclkdiv_clk),
	.DDLY(lvds_adc0_serdes_i_delayed0),
	.RST(lclkdiv_rst),
	.Q1(lvds_adc0_serdes_q0[7]),
	.Q2(lvds_adc0_serdes_q0[6]),
	.Q3(lvds_adc0_serdes_q0[5]),
	.Q4(lvds_adc0_serdes_q0[4]),
	.Q5(lvds_adc0_serdes_q0[3]),
	.Q6(lvds_adc0_serdes_q0[2]),
	.Q7(lvds_adc0_serdes_q0[1]),
	.Q8(lvds_adc0_serdes_q0[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_1(
	.I(lvds_pads_adc0_d_p[1]),
	.IB(lvds_pads_adc0_d_n[1]),
	.O(lvds_adc0_serdes_i_nodelay1)
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
	.C(lclkdiv_clk),
	.CE(lvds_adc0_rx_delay_inc),
	.IDATAIN(lvds_adc0_serdes_i_nodelay1),
	.INC(1'd1),
	.LD(lvds_adc0_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(lvds_adc0_serdes_i_delayed1)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_1 (
	.BITSLIP(lvds_adc0_bitslip_do),
	.CE1(1'd1),
	.CLK(lvds_adc0_lclk_i_bufio),
	.CLKB((~lvds_adc0_lclk_i_bufio)),
	.CLKDIV(lclkdiv_clk),
	.DDLY(lvds_adc0_serdes_i_delayed1),
	.RST(lclkdiv_rst),
	.Q1(lvds_adc0_serdes_q1[7]),
	.Q2(lvds_adc0_serdes_q1[6]),
	.Q3(lvds_adc0_serdes_q1[5]),
	.Q4(lvds_adc0_serdes_q1[4]),
	.Q5(lvds_adc0_serdes_q1[3]),
	.Q6(lvds_adc0_serdes_q1[2]),
	.Q7(lvds_adc0_serdes_q1[1]),
	.Q8(lvds_adc0_serdes_q1[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_2(
	.I(lvds_pads_adc0_d_p[2]),
	.IB(lvds_pads_adc0_d_n[2]),
	.O(lvds_adc0_serdes_i_nodelay2)
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
	.C(lclkdiv_clk),
	.CE(lvds_adc0_rx_delay_inc),
	.IDATAIN(lvds_adc0_serdes_i_nodelay2),
	.INC(1'd1),
	.LD(lvds_adc0_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(lvds_adc0_serdes_i_delayed2)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_2 (
	.BITSLIP(lvds_adc0_bitslip_do),
	.CE1(1'd1),
	.CLK(lvds_adc0_lclk_i_bufio),
	.CLKB((~lvds_adc0_lclk_i_bufio)),
	.CLKDIV(lclkdiv_clk),
	.DDLY(lvds_adc0_serdes_i_delayed2),
	.RST(lclkdiv_rst),
	.Q1(lvds_adc0_serdes_q2[7]),
	.Q2(lvds_adc0_serdes_q2[6]),
	.Q3(lvds_adc0_serdes_q2[5]),
	.Q4(lvds_adc0_serdes_q2[4]),
	.Q5(lvds_adc0_serdes_q2[3]),
	.Q6(lvds_adc0_serdes_q2[2]),
	.Q7(lvds_adc0_serdes_q2[1]),
	.Q8(lvds_adc0_serdes_q2[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_3(
	.I(lvds_pads_adc0_d_p[3]),
	.IB(lvds_pads_adc0_d_n[3]),
	.O(lvds_adc0_serdes_i_nodelay3)
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
	.C(lclkdiv_clk),
	.CE(lvds_adc0_rx_delay_inc),
	.IDATAIN(lvds_adc0_serdes_i_nodelay3),
	.INC(1'd1),
	.LD(lvds_adc0_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(lvds_adc0_serdes_i_delayed3)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_3 (
	.BITSLIP(lvds_adc0_bitslip_do),
	.CE1(1'd1),
	.CLK(lvds_adc0_lclk_i_bufio),
	.CLKB((~lvds_adc0_lclk_i_bufio)),
	.CLKDIV(lclkdiv_clk),
	.DDLY(lvds_adc0_serdes_i_delayed3),
	.RST(lclkdiv_rst),
	.Q1(lvds_adc0_serdes_q3[7]),
	.Q2(lvds_adc0_serdes_q3[6]),
	.Q3(lvds_adc0_serdes_q3[5]),
	.Q4(lvds_adc0_serdes_q3[4]),
	.Q5(lvds_adc0_serdes_q3[3]),
	.Q6(lvds_adc0_serdes_q3[2]),
	.Q7(lvds_adc0_serdes_q3[1]),
	.Q8(lvds_adc0_serdes_q3[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_4(
	.I(lvds_pads_adc0_d_p[4]),
	.IB(lvds_pads_adc0_d_n[4]),
	.O(lvds_adc0_serdes_i_nodelay4)
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
	.C(lclkdiv_clk),
	.CE(lvds_adc0_rx_delay_inc),
	.IDATAIN(lvds_adc0_serdes_i_nodelay4),
	.INC(1'd1),
	.LD(lvds_adc0_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(lvds_adc0_serdes_i_delayed4)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_4 (
	.BITSLIP(lvds_adc0_bitslip_do),
	.CE1(1'd1),
	.CLK(lvds_adc0_lclk_i_bufio),
	.CLKB((~lvds_adc0_lclk_i_bufio)),
	.CLKDIV(lclkdiv_clk),
	.DDLY(lvds_adc0_serdes_i_delayed4),
	.RST(lclkdiv_rst),
	.Q1(lvds_adc0_serdes_q4[7]),
	.Q2(lvds_adc0_serdes_q4[6]),
	.Q3(lvds_adc0_serdes_q4[5]),
	.Q4(lvds_adc0_serdes_q4[4]),
	.Q5(lvds_adc0_serdes_q4[3]),
	.Q6(lvds_adc0_serdes_q4[2]),
	.Q7(lvds_adc0_serdes_q4[1]),
	.Q8(lvds_adc0_serdes_q4[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_5(
	.I(lvds_pads_adc0_d_p[5]),
	.IB(lvds_pads_adc0_d_n[5]),
	.O(lvds_adc0_serdes_i_nodelay5)
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
	.C(lclkdiv_clk),
	.CE(lvds_adc0_rx_delay_inc),
	.IDATAIN(lvds_adc0_serdes_i_nodelay5),
	.INC(1'd1),
	.LD(lvds_adc0_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(lvds_adc0_serdes_i_delayed5)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_5 (
	.BITSLIP(lvds_adc0_bitslip_do),
	.CE1(1'd1),
	.CLK(lvds_adc0_lclk_i_bufio),
	.CLKB((~lvds_adc0_lclk_i_bufio)),
	.CLKDIV(lclkdiv_clk),
	.DDLY(lvds_adc0_serdes_i_delayed5),
	.RST(lclkdiv_rst),
	.Q1(lvds_adc0_serdes_q5[7]),
	.Q2(lvds_adc0_serdes_q5[6]),
	.Q3(lvds_adc0_serdes_q5[5]),
	.Q4(lvds_adc0_serdes_q5[4]),
	.Q5(lvds_adc0_serdes_q5[3]),
	.Q6(lvds_adc0_serdes_q5[2]),
	.Q7(lvds_adc0_serdes_q5[1]),
	.Q8(lvds_adc0_serdes_q5[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_6(
	.I(lvds_pads_adc0_d_p[6]),
	.IB(lvds_pads_adc0_d_n[6]),
	.O(lvds_adc0_serdes_i_nodelay6)
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
	.C(lclkdiv_clk),
	.CE(lvds_adc0_rx_delay_inc),
	.IDATAIN(lvds_adc0_serdes_i_nodelay6),
	.INC(1'd1),
	.LD(lvds_adc0_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(lvds_adc0_serdes_i_delayed6)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_6 (
	.BITSLIP(lvds_adc0_bitslip_do),
	.CE1(1'd1),
	.CLK(lvds_adc0_lclk_i_bufio),
	.CLKB((~lvds_adc0_lclk_i_bufio)),
	.CLKDIV(lclkdiv_clk),
	.DDLY(lvds_adc0_serdes_i_delayed6),
	.RST(lclkdiv_rst),
	.Q1(lvds_adc0_serdes_q6[7]),
	.Q2(lvds_adc0_serdes_q6[6]),
	.Q3(lvds_adc0_serdes_q6[5]),
	.Q4(lvds_adc0_serdes_q6[4]),
	.Q5(lvds_adc0_serdes_q6[3]),
	.Q6(lvds_adc0_serdes_q6[2]),
	.Q7(lvds_adc0_serdes_q6[1]),
	.Q8(lvds_adc0_serdes_q6[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_7(
	.I(lvds_pads_adc0_d_p[7]),
	.IB(lvds_pads_adc0_d_n[7]),
	.O(lvds_adc0_serdes_i_nodelay7)
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
	.C(lclkdiv_clk),
	.CE(lvds_adc0_rx_delay_inc),
	.IDATAIN(lvds_adc0_serdes_i_nodelay7),
	.INC(1'd1),
	.LD(lvds_adc0_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(lvds_adc0_serdes_i_delayed7)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_7 (
	.BITSLIP(lvds_adc0_bitslip_do),
	.CE1(1'd1),
	.CLK(lvds_adc0_lclk_i_bufio),
	.CLKB((~lvds_adc0_lclk_i_bufio)),
	.CLKDIV(lclkdiv_clk),
	.DDLY(lvds_adc0_serdes_i_delayed7),
	.RST(lclkdiv_rst),
	.Q1(lvds_adc0_serdes_q7[7]),
	.Q2(lvds_adc0_serdes_q7[6]),
	.Q3(lvds_adc0_serdes_q7[5]),
	.Q4(lvds_adc0_serdes_q7[4]),
	.Q5(lvds_adc0_serdes_q7[3]),
	.Q6(lvds_adc0_serdes_q7[2]),
	.Q7(lvds_adc0_serdes_q7[1]),
	.Q8(lvds_adc0_serdes_q7[0])
);

IBUFDS_DIFF_OUT IBUFDS_DIFF_OUT_8(
	.I(lvds_pads_adc0_fclk_p),
	.IB(lvds_pads_adc0_fclk_n),
	.O(lvds_adc0_serdes_i_nodelay8)
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
	.C(lclkdiv_clk),
	.CE(lvds_adc0_rx_delay_inc),
	.IDATAIN(lvds_adc0_serdes_i_nodelay8),
	.INC(1'd1),
	.LD(lvds_adc0_rx_delay_rst),
	.LDPIPEEN(1'd0),
	.DATAOUT(lvds_adc0_serdes_i_delayed8)
);

ISERDESE2 #(
	.DATA_RATE("DDR"),
	.DATA_WIDTH(4'd8),
	.INTERFACE_TYPE("NETWORKING"),
	.IOBDELAY("IFD"),
	.NUM_CE(1'd1),
	.SERDES_MODE("MASTER")
) ISERDESE2_8 (
	.BITSLIP(lvds_adc0_bitslip_do),
	.CE1(1'd1),
	.CLK(lvds_adc0_lclk_i_bufio),
	.CLKB((~lvds_adc0_lclk_i_bufio)),
	.CLKDIV(lclkdiv_clk),
	.DDLY(lvds_adc0_serdes_i_delayed8),
	.RST(lclkdiv_rst),
	.Q1(lvds_adc0_serdes_q8[7]),
	.Q2(lvds_adc0_serdes_q8[6]),
	.Q3(lvds_adc0_serdes_q8[5]),
	.Q4(lvds_adc0_serdes_q8[4]),
	.Q5(lvds_adc0_serdes_q8[3]),
	.Q6(lvds_adc0_serdes_q8[2]),
	.Q7(lvds_adc0_serdes_q8[1]),
	.Q8(lvds_adc0_serdes_q8[0])
);

reg [71:0] storage[0:63];
reg [5:0] memadr;
reg [5:0] memadr_1;
always @(posedge lclkdiv_clk) begin
	if (lvds_adc0_data_fifo_wrport_we)
		storage[lvds_adc0_data_fifo_wrport_adr] <= lvds_adc0_data_fifo_wrport_dat_w;
	memadr <= lvds_adc0_data_fifo_wrport_adr;
end

always @(posedge data_clk_1) begin
	memadr_1 <= lvds_adc0_data_fifo_rdport_adr;
end

assign lvds_adc0_data_fifo_wrport_dat_r = storage[memadr];
assign lvds_adc0_data_fifo_rdport_dat_r = storage[memadr_1];

IDELAYCTRL IDELAYCTRL(
	.REFCLK(sys_clk),
	.RST(sys_rst)
);

endmodule
