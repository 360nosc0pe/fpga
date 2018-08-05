module axi_rw_engine(
    input clk,
    axi_ifc.master m,
    input rd,
    input wr,
    input [31:0]addr,
    input [31:0]data
    );

typedef enum { IDLE, RADDR, RDATA, WADDR, WDATA, WRESP } state_t;
state_t state = IDLE;
state_t next_state;

reg [31:0]awaddr = 0;
reg [31:0]next_awaddr;
reg [31:0]wdata = 0;
reg [31:0]next_wdata;
reg [31:0]araddr = 0;
reg [31:0]next_araddr;
reg arvalid = 0;
reg next_arvalid;
reg rready = 0;
reg next_rready;
reg awvalid = 0;
reg next_awvalid;
reg wvalid = 0;
reg next_wvalid;
reg bready = 0;
reg next_bready;

always_comb begin
    next_state = state;
    next_araddr = araddr;
    next_awaddr = awaddr;
    next_wdata = wdata;
    next_awvalid = 0;
    next_wvalid = 0;
    next_bready = 0;
    next_arvalid = 0;
    next_rready = 0;
    case (state)
    IDLE: begin
        if (rd) begin
            next_state = RADDR;
            next_araddr = addr;
            next_arvalid = 1;
        end else if (wr) begin
            next_state = WADDR;
            next_awaddr = addr;
            next_wdata = data;
            next_awvalid = 1;
        end
    end
    WADDR: begin
        if (m.awready) begin
            next_state = WDATA;
            next_wvalid = 1;
        end else begin
            next_awvalid = 1;
        end
    end
    WDATA: begin
        if (m.wready) begin
            next_state = WRESP;
            next_bready = 1;
        end else begin
            next_wvalid = 1;
        end
    end
    WRESP: begin
        if (m.bvalid) begin
            next_state = IDLE;
            $display("wr %x -> %x (status %x)", wdata, awaddr, m.bresp);
        end else begin
            next_bready = 1;
        end
    end
    RADDR: begin
        if (m.arready) begin
            next_state = RDATA;
            next_rready = 1;
        end else begin
            next_arvalid = 1;
        end
    end
    RDATA: begin
        if (m.rvalid) begin
            next_state = IDLE;
            $display("rd %x <- %x (status %x)", m.rdata, m.araddr, m.rresp);
        end else begin
            next_rready = 1;
        end
    end
    endcase
end

always_ff @(posedge clk) begin
    state <= next_state;
    araddr <= next_araddr;
    awaddr <= next_awaddr;
    arvalid <= next_arvalid;
    awvalid <= next_awvalid;
    rready <= next_rready;
    wvalid <= next_wvalid;
    bready <= next_bready;
    wdata <= next_wdata;
end

assign m.awaddr = awaddr;
assign m.awvalid = awvalid;
assign m.wdata = wdata;
assign m.wstrb = 4'b1111;
assign m.wvalid = wvalid;
assign m.bready = bready;
assign m.awburst = 1; // INCR
assign m.awcache = 0;
assign m.awlen = 0;
assign m.awsize = 2; // 4 bytes
assign m.awlock = 0;
assign m.wlast = 1;

assign m.araddr = araddr;
assign m.arvalid = arvalid;
assign m.rready = rready;
assign m.arburst = 1; // INCR
assign m.arcache = 0;
assign m.arlen = 0;
assign m.arsize = 2; // 4 bytes
assign m.arlock = 0;

endmodule
