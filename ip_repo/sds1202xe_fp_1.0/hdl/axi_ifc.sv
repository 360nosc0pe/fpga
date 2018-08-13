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

interface axi_ifc;

parameter AWIDTH = 32;
parameter DWIDTH = 32;
parameter AXI3 = 0;

localparam LENMAX = AXI3 ? 3 : 7;
localparam LOCKMAX = AXI3 ? 1 : 0;
localparam SIZEMAX = AXI3 ? 1 : 2;
localparam STRBWIDTH = (DWIDTH == 64) ? 8 : 4;

logic [AWIDTH-1:0] awaddr;
 logic [1:0]awburst;
 logic [3:0]awcache;
 logic [LENMAX:0]awlen;
 logic [SIZEMAX:0]awsize;
 logic [LOCKMAX:0]awlock;
logic awvalid;
logic awready;

logic [DWIDTH-1:0] wdata;
logic [STRBWIDTH-1:0]wstrb;
logic wvalid;
logic wready;
 logic wlast;

logic [1:0] bresp;
logic bvalid;
logic bready;

logic [AWIDTH-1:0] araddr;
 logic [1:0]arburst;
 logic [3:0]arcache;
 logic [LENMAX:0]arlen;
 logic [SIZEMAX:0]arsize;
 logic [LOCKMAX:0]arlock;
logic arvalid;
logic arready;

logic [DWIDTH-1:0] rdata;
logic [1:0] rresp;
logic rvalid;
logic rready;
 logic rlast;

modport master (
	output awaddr, awvalid, wdata, wstrb, wvalid, bready,
	output awburst, awcache, awlen, awsize, awlock, wlast,
	output araddr, arvalid, rready,
	output arburst, arcache, arlen, arsize, arlock,
	input awready, wready, bresp, bvalid,
	input arready, rdata, rresp, rvalid, rlast
);

modport writer (
	output awaddr, awvalid, wdata, wstrb, wvalid, bready,
	output awburst, awcache, awlen, awsize, awlock, wlast,
	input awready, wready, bresp, bvalid
);

modport reader (
	output araddr, arvalid, rready,
	output arburst, arcache, arlen, arsize, arlock,
	input arready, rdata, rresp, rvalid, rlast
);

modport slave (
	input awaddr, awvalid, wdata, wstrb, wvalid, bready,
	input awburst, awcache, awlen, awsize, awlock, wlast,
	input araddr, arvalid, rready,
	input arburst, arcache, arlen, arsize, arlock,
	output awready, wready, bresp, bvalid,
	output arready, rdata, rresp, rvalid, rlast
);
	
endinterface
