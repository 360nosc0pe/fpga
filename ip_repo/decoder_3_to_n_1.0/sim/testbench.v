module tb;

// Inputs
reg [2:0] spi_select;
reg spi_master_active_n;

// Outputs
wire [7:0] spi_csn;

spi_decoder_3_to_n # (
    .NUM_OUT_LINES(7)
) uut (
    .spi_select(spi_select), 
    .spi_master_active_n(spi_master_active_n), 
    .spi_csn(spi_csn)
);
        
initial begin
    spi_master_active_n = 1;
    spi_select = 0;

    #10;
    spi_master_active_n = 0;
    
    #10;
    spi_select = 1;

    #10;
    spi_select = 2;

    #10;
    spi_select = 3;

    #10;
    spi_select = 4;

    #10;
    spi_select = 5;

    #10;
    spi_select = 6;

    #10;
    spi_select = 7;

    #10;
    spi_master_active_n = 1;

    #10
    $finish;
end
      
endmodule