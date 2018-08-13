`timescale 1ns / 1ps

//FIXME: honor C_S00_AXI_DATA_WIDTH - anything other than 32 breaks right now
//FIXME: calculate C_S00_AXI_ADDR_WIDTH dynamically from button count?

module axi_frontpanel_scanner #(
    parameter integer C_S00_AXI_ACLK_FREQ_HZ = 100000000,
    parameter integer C_S00_AXI_DATA_WIDTH	= 32,
    parameter integer C_S00_AXI_ADDR_WIDTH	= 4,
    parameter integer SCANNING_FREQUENCY_HZ = 100000,
    parameter integer BUTTON_COUNT = 64
)
(
    input wire  S_AXI_ACLK,
    input wire  S_AXI_ARESETN,

    axi_ifc.slave s,
    
    output wire INT_OUT,
        
    output wire MATRIX_CLOCK,
    output wire MATRIX_CLEAR,
    input wire MATRIX_DATA_IN
);


wire readout_clock;
wire readout_clear;
wire readout_next;
wire sample_input;
wire [$clog2(BUTTON_COUNT*2)-1:0] scanning_pos;

reg interrupt_enabled = 0;
reg interrupt_status = 0;
reg interrupt_assert_flag = 0;
reg interrupt_clear_flag = 0;

reg [BUTTON_COUNT-1:0] button_states;
reg [BUTTON_COUNT-1:0] button_states_latch;

wire [31:0]wdata;
reg [31:0]rdata;
wire [C_S00_AXI_ADDR_WIDTH-3:0]wreg;
wire [C_S00_AXI_ADDR_WIDTH-3:0]rreg;
wire wr;

/* AXI register interface */
axi_registers #(
    .R_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH-2)
) regs (
    .clk(S_AXI_ACLK),
    .s(s),
    .o_rreg(rreg),
    .o_wreg(wreg),
    .i_rdata(rdata),
    .o_wdata(wdata),
    .o_rd(),
    .o_wr(wr)
);

/* AXI register read */
wire [32:0] btn_state_axi_sliced [0:BUTTON_COUNT/32-1];

always_comb begin
    if(rreg == 0)
        rdata = {31'h0, interrupt_enabled};
    else if(rreg == 1)
        rdata = {31'h0, interrupt_status};
    else if(rreg >= 2 && (rreg - 2) < BUTTON_COUNT/32) begin
        rdata = btn_state_axi_sliced[rreg-2];
    end else
        rdata = 0;
end

generate
for (genvar i = 0; i < BUTTON_COUNT/32; i++)
    assign btn_state_axi_sliced[i] = button_states_latch[32*i+32-1:32*i];
endgenerate


/* AXI register write */
always_ff @(posedge S_AXI_ACLK) begin
	if(S_AXI_ARESETN == 0) begin
	   interrupt_enabled <= 0;
	end else if (wr) begin
        if(wreg == 0)
            interrupt_enabled <= wdata[0];
        else if(wreg == 1)
            interrupt_clear_flag <= wdata[0];
    end else begin
        interrupt_clear_flag <= 0;
	end
end

/* Base timer to generate the scanning frequency */
timer #(
    .TIMER_PERIOD(C_S00_AXI_ACLK_FREQ_HZ / SCANNING_FREQUENCY_HZ)
) readout_clock_gen (
    .clk(S_AXI_ACLK),
    .rstn(S_AXI_ARESETN),
    .clk_en(1),
    .timer_msb(readout_clock),
    .overflowing(readout_next),
    .timer_half_elapsed(sample_input)
);

/* Timer to generate pulses to control the readout */
timer #(
    .TIMER_PERIOD(BUTTON_COUNT*2)
) row_column_select (
    .clk(S_AXI_ACLK),
    .rstn(S_AXI_ARESETN),
    .clk_en(readout_next),
    .timer_msb(readout_clear),
    .timer_value(scanning_pos)
);

/* Matrix readout and shifting */
always_ff @(posedge S_AXI_ACLK) begin
    if(~S_AXI_ARESETN) begin
        button_states = 0;
        button_states_latch = 0;
        interrupt_assert_flag = 0;
    end else begin
        if(scanning_pos >= BUTTON_COUNT-1 && scanning_pos < (BUTTON_COUNT*2)-1 && sample_input)
            button_states <= {button_states[BUTTON_COUNT-2:0], MATRIX_DATA_IN};
        else if(scanning_pos == (BUTTON_COUNT*2)-1) begin
            button_states_latch <= button_states;
            interrupt_assert_flag <= button_states_latch != button_states;
        end
    end
end

/* Interrupt latching logic */
always_ff @(posedge S_AXI_ACLK) begin
    if(~S_AXI_ARESETN) begin
       interrupt_status <= 0;
    end else begin
        if(interrupt_assert_flag == 1)
            interrupt_status <= 1;
        else if(interrupt_clear_flag == 1)
            interrupt_status <= 0;
    end
end

assign MATRIX_CLOCK = ~readout_clock;
assign MATRIX_CLEAR = ~readout_clear;
assign INT_OUT = interrupt_status & interrupt_enabled;

endmodule
