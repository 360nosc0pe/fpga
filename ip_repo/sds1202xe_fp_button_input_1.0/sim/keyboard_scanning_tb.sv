`timescale 1ns/1ps

module testbench();

reg rstn = 0;
reg clk = 0;
always #5 clk = ~clk;

axi_ifc axi0();

wire INT_OUT;
wire MATRIX_CLOCK;
wire MATRIX_CLEAR;
reg MATRIX_DATA_IN;

axi_frontpanel_scanner #( 
    .C_S_AXI_ACLK_FREQ_HZ(100000000),
    .C_S_AXI_DATA_WIDTH(32),
    .C_S_AXI_ADDR_WIDTH(7)
) scanner (
    .S_AXI_ACLK(clk),
    .S_AXI_ARESETN(rstn),
    .s(axi0),
    .INT_OUT(INT_OUT),
    .MATRIX_CLOCK(MATRIX_CLOCK),
    .MATRIX_CLEAR(MATRIX_CLEAR),
    .MATRIX_DATA_IN(MATRIX_DATA_IN)
);

integer tick = 0;
reg [31:0]addr = 32'hffffffff;
reg [31:0]next_addr;
reg [31:0]data = 32'hffffffff;
reg [31:0]next_data;
reg do_rd = 0;
reg next_do_rd;
reg do_wr = 0;
reg next_do_wr;

axi_rw_engine engine0(
    .clk(clk),
    .m(axi0),
    .rd(do_rd),
    .wr(do_wr),
    .addr(addr),
    .data(data)
    );


reg [63:0] button_pattern = 64'b1010000011110000111111110000000001010101101010100000000011111111;
reg [31:0] matrix_pos = 0;

always_ff @(posedge MATRIX_CLOCK) begin
    if (MATRIX_CLEAR == 1)
        matrix_pos <= 0;
    else begin
        if(matrix_pos < 64-1)
            matrix_pos <= matrix_pos + 1;
        else
            matrix_pos <= 0;
    end
end

assign MATRIX_DATA_IN = button_pattern[matrix_pos];

always_comb begin
    next_do_rd = 0;
    next_do_wr = 0;
    next_addr = 32'hffffffff;
    next_data = 32'hffffffff;
    
    if (tick == 10) begin
        rstn = 1;
    
    //Read latched register 1&2, should return 0 at this time
    end else if(tick == 90000) begin
        next_do_rd = 1;
        next_addr = 32'h00000008; //Button State [0]
    end else if(tick == 90010) begin
        next_do_rd = 1;
        next_addr = 32'h0000000C; //Button State [1]

    //Read interrupt flag, should be set as first complete readout should have happened
    end else if(tick == 130000) begin
        next_do_rd = 1;
        next_addr = 32'h00000004;

    //Read latched register 1&2, should return button states now
    end else if(tick == 130010) begin
        next_do_rd = 1;
        next_addr = 32'h00000008; //Button State [0]
    end else if(tick == 130020) begin
        next_do_rd = 1;
        next_addr = 32'h0000000C; //Button State [1]

     //Simulate button press
    end else if(tick == 140000) begin
        button_pattern[0] ^= 1;

    //Clear pending interrupt
    end else if(tick == 150000) begin
        next_do_wr = 1;
        next_data = 32'h1;
        next_addr = 32'h00000004; //Interrupt status

    //Simulate button press
    end else if(tick == 300000-1) begin
        button_pattern[0] ^= 1;

    //Clear pending interrupt
    end else if(tick == 300000) begin
        next_do_wr = 1;
        next_data = 32'h1;
        next_addr = 32'h00000004; //Interrupt status

    //Unmask interrupt
    end else if(tick == 300010) begin
        next_do_wr = 1;
        next_data = 32'h1;
        next_addr = 32'h00000000; //Interrupt status

    //Clear pending interrupt
    end else if(tick == 420000) begin
        next_do_wr = 1;
        next_data = 32'h1;
        next_addr = 32'h00000004; //Interrupt status



        //Simulate button press
    end else if(tick == 520000-1) begin
        button_pattern[0] ^= 1;

    //Clear pending interrupt
    end else if(tick == 520000) begin
        next_do_wr = 1;
        next_data = 32'h1;
        next_addr = 32'h00000004; //Interrupt status

    //Unmask interrupt
    end else if(tick == 520010) begin
        next_do_wr = 1;
        next_data = 32'h1;
        next_addr = 32'h00000000; //Interrupt status

    //Clear pending interrupt
    end else if(tick == 680000) begin
        next_do_wr = 1;
        next_data = 32'h1;
        next_addr = 32'h00000004; //Interrupt status


        
    end else if (tick == 3611060) begin
        $finish;
    end
end

always_ff @(posedge clk) begin
    do_rd <= next_do_rd;
    do_wr <= next_do_wr;
    addr <= next_addr;
    data <= next_data;
    tick <= tick + 1;
end

endmodule
