`timescale 1 ns / 1 ps

module spi_decoder_3_to_n #
(
    parameter integer NUM_OUT_LINES = 8
)
(
    input  wire [2:0]               spi_select,
    input  wire                     spi_master_active_n,
    output wire [NUM_OUT_LINES-1:0] spi_csn
);

assign spi_csn = (spi_select < NUM_OUT_LINES && ~spi_master_active_n) ? ~(1 << spi_select) : {(NUM_OUT_LINES){1'b1}};

endmodule
