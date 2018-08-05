// Copyright 2014 Brian Swetland <swetland@frotz.net>
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

`timescale 1ns/1ps

// AXI Register Bridge
//
// Reads and Writes may happen simultaneously
//
// Reads:
//  o_rd=1 o_rreg=n on posedge clk
//  i_rdata sampled on next posedge clk
// Writes:
//  o_wr=1 o_wreg=n o_wdata=w on posedge clk

// TODO: deal with non-length-1 bursts

module axi_registers (
	input clk,

	// AXI Interface
	axi_ifc.slave s,

	// Register File Interface
	output reg [R_ADDR_WIDTH-1:0]o_rreg = 0,
	output reg [R_ADDR_WIDTH-1:0]o_wreg = 0,
	input wire [31:0]i_rdata,
	output wire [31:0]o_wdata,
	output reg o_rd = 0,
	output wire o_wr
	);

parameter integer R_ADDR_WIDTH = 2;

typedef enum { W_ADDR, W_DATA, W_RESP } wstate_t;

assign s.bresp = 0;
assign s.rresp = 0;

//reg [31:0]wdata = 0;
//reg [31:0]wdata_next;

wstate_t wstate = W_ADDR;
wstate_t wstate_next;

reg awready_next;
reg wready_next;
reg bvalid_next;

reg [R_ADDR_WIDTH-1:0]wreg_next;
reg [R_ADDR_WIDTH-1:0]rreg_next;

assign o_wdata = s.wdata;
assign o_wr = (s.wvalid & s.wready);

always_comb begin
	wstate_next = wstate;
	//wdata_next = wdata;
	wreg_next = o_wreg;
	awready_next = 0;
	wready_next = 0;
	bvalid_next = 0;
	case (wstate)
	W_ADDR: if (s.awvalid) begin
			wstate_next = W_DATA;
			wready_next = 1;
			wreg_next = s.awaddr[R_ADDR_WIDTH+1:2];
		end else begin
			awready_next = 1;
		end
	W_DATA: if (s.wvalid) begin
			wstate_next = W_RESP;
			bvalid_next = 1;
		end else begin
			wready_next = 1;
		end
	W_RESP: if (s.bready) begin
			wstate_next = W_ADDR;
			awready_next = 1;
		end else begin
			bvalid_next = 1;
		end
	endcase
end

typedef enum { R_ADDR, R_CAPTURE, R_CAPTURE2, R_DATA } rstate_t;

rstate_t rstate = R_ADDR;
rstate_t rstate_next;

reg arready_next;
reg rvalid_next;
reg rlast_next;

reg [31:0]rdata = 0;
reg [31:0]rdata_next;
assign s.rdata = rdata;

reg rd_next;

always_comb begin 
	rstate_next = rstate;
	rdata_next = rdata;
	rreg_next = o_rreg;
	arready_next = 0;
	rvalid_next = 0;
	rlast_next = 0;
	rd_next = 0;
	case (rstate)
	R_ADDR: if (s.arvalid) begin
			// accept address from AXI
			rstate_next = R_CAPTURE;
			rreg_next = s.araddr[R_ADDR_WIDTH+1:2];
			rd_next = 1;
		end else begin
			arready_next = 1;
		end
	R_CAPTURE: begin
			// present address and rd to register file
			rstate_next = R_CAPTURE2;
		end
	R_CAPTURE2: begin
			// capture register file output
			rstate_next = R_DATA;
			rvalid_next = 1;
			rlast_next = 1;
			rdata_next = i_rdata;
		end
	R_DATA: if (s.rready) begin
			// present register data to AXI
			rstate_next = R_ADDR;
			arready_next = 1;
		end else begin
			rvalid_next = 1;
			rlast_next = 1;
		end
	endcase
end

always_ff @(posedge clk) begin
	wstate <= wstate_next;
	//wdata <= wdata_next;
	s.awready <= awready_next;
	s.wready <= wready_next;
	s.bvalid <= bvalid_next;
	o_wreg <= wreg_next;

	rstate <= rstate_next;
	rdata <= rdata_next;
	s.arready <= arready_next;
	s.rvalid <= rvalid_next;
	s.rlast <= rlast_next;
	o_rreg <= rreg_next;
	o_rd <= rd_next;
end

endmodule
