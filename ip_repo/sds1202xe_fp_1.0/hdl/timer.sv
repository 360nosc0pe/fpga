`timescale 1ns / 1ps

module timer #(
    parameter integer TIMER_PERIOD = 128,
    parameter integer TIMER_WIDTH = $clog2(TIMER_PERIOD)
)
(
    input clk,
    input rstn,
    input clk_en,
    output [TIMER_WIDTH-1:0] timer_value,
    output timer_msb,
    output timer_half_elapsed,
    output overflowing
);

reg [TIMER_WIDTH-1:0] timer = 0;

always_ff @(posedge clk) begin
    if(rstn == 0) begin
        timer <= 0;
    end else if(clk_en == 1) begin
        if(timer < TIMER_PERIOD-1)
            timer <= timer + 1;
        else begin
            timer <= 0;
        end
    end
end

assign timer_half_elapsed = timer == (TIMER_PERIOD/2)-1;
assign overflowing = timer == TIMER_PERIOD-1;
assign timer_msb = timer[TIMER_WIDTH-1];
assign timer_value = timer;

endmodule
