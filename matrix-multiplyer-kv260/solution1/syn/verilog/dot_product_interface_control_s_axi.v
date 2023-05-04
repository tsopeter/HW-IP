// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module dot_product_interface_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 22,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire [31:0]                   n,
    output wire [31:0]                   m,
    output wire [31:0]                   h,
    input  wire [19:0]                   A_address0,
    input  wire                          A_ce0,
    output wire [7:0]                    A_q0,
    input  wire [19:0]                   B_address0,
    input  wire                          B_ce0,
    output wire [7:0]                    B_q0,
    input  wire [19:0]                   C_address0,
    input  wire                          C_ce0,
    input  wire                          C_we0,
    input  wire [7:0]                    C_d0
);
//------------------------Address Info-------------------
// 0x000000 : reserved
// 0x000004 : reserved
// 0x000008 : reserved
// 0x00000c : reserved
// 0x000010 : Data signal of n
//            bit 31~0 - n[31:0] (Read/Write)
// 0x000014 : reserved
// 0x000018 : Data signal of m
//            bit 31~0 - m[31:0] (Read/Write)
// 0x00001c : reserved
// 0x000020 : Data signal of h
//            bit 31~0 - h[31:0] (Read/Write)
// 0x000024 : reserved
// 0x100000 ~
// 0x1fffff : Memory 'A' (1048576 * 8b)
//            Word n : bit [ 7: 0] - A[4n]
//                     bit [15: 8] - A[4n+1]
//                     bit [23:16] - A[4n+2]
//                     bit [31:24] - A[4n+3]
// 0x200000 ~
// 0x2fffff : Memory 'B' (1048576 * 8b)
//            Word n : bit [ 7: 0] - B[4n]
//                     bit [15: 8] - B[4n+1]
//                     bit [23:16] - B[4n+2]
//                     bit [31:24] - B[4n+3]
// 0x300000 ~
// 0x3fffff : Memory 'C' (1048576 * 8b)
//            Word n : bit [ 7: 0] - C[4n]
//                     bit [15: 8] - C[4n+1]
//                     bit [23:16] - C[4n+2]
//                     bit [31:24] - C[4n+3]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_N_DATA_0 = 22'h000010,
    ADDR_N_CTRL   = 22'h000014,
    ADDR_M_DATA_0 = 22'h000018,
    ADDR_M_CTRL   = 22'h00001c,
    ADDR_H_DATA_0 = 22'h000020,
    ADDR_H_CTRL   = 22'h000024,
    ADDR_A_BASE   = 22'h100000,
    ADDR_A_HIGH   = 22'h1fffff,
    ADDR_B_BASE   = 22'h200000,
    ADDR_B_HIGH   = 22'h2fffff,
    ADDR_C_BASE   = 22'h300000,
    ADDR_C_HIGH   = 22'h3fffff,
    WRIDLE        = 2'd0,
    WRDATA        = 2'd1,
    WRRESP        = 2'd2,
    WRRESET       = 2'd3,
    RDIDLE        = 2'd0,
    RDDATA        = 2'd1,
    RDRESET       = 2'd2,
    ADDR_BITS                = 22;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg  [31:0]                   int_n = 'b0;
    reg  [31:0]                   int_m = 'b0;
    reg  [31:0]                   int_h = 'b0;
    // memory signals
    wire [17:0]                   int_A_address0;
    wire                          int_A_ce0;
    wire [31:0]                   int_A_q0;
    wire [17:0]                   int_A_address1;
    wire                          int_A_ce1;
    wire                          int_A_we1;
    wire [3:0]                    int_A_be1;
    wire [31:0]                   int_A_d1;
    wire [31:0]                   int_A_q1;
    reg                           int_A_read;
    reg                           int_A_write;
    reg  [1:0]                    int_A_shift0;
    wire [17:0]                   int_B_address0;
    wire                          int_B_ce0;
    wire [31:0]                   int_B_q0;
    wire [17:0]                   int_B_address1;
    wire                          int_B_ce1;
    wire                          int_B_we1;
    wire [3:0]                    int_B_be1;
    wire [31:0]                   int_B_d1;
    wire [31:0]                   int_B_q1;
    reg                           int_B_read;
    reg                           int_B_write;
    reg  [1:0]                    int_B_shift0;
    wire [17:0]                   int_C_address0;
    wire                          int_C_ce0;
    wire [3:0]                    int_C_be0;
    wire [31:0]                   int_C_d0;
    wire [17:0]                   int_C_address1;
    wire                          int_C_ce1;
    wire [31:0]                   int_C_q1;
    reg                           int_C_read;
    reg                           int_C_write;
    reg  [1:0]                    int_C_shift0;

//------------------------Instantiation------------------
// int_A
dot_product_interface_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 262144 )
) int_A (
    .clk0      ( ACLK ),
    .address0  ( int_A_address0 ),
    .ce0       ( int_A_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {8{1'b0}} ),
    .q0        ( int_A_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_A_address1 ),
    .ce1       ( int_A_ce1 ),
    .we1       ( int_A_be1 ),
    .d1        ( int_A_d1 ),
    .q1        ( int_A_q1 )
);
// int_B
dot_product_interface_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 262144 )
) int_B (
    .clk0      ( ACLK ),
    .address0  ( int_B_address0 ),
    .ce0       ( int_B_ce0 ),
    .we0       ( {4{1'b0}} ),
    .d0        ( {8{1'b0}} ),
    .q0        ( int_B_q0 ),
    .clk1      ( ACLK ),
    .address1  ( int_B_address1 ),
    .ce1       ( int_B_ce1 ),
    .we1       ( int_B_be1 ),
    .d1        ( int_B_d1 ),
    .q1        ( int_B_q1 )
);
// int_C
dot_product_interface_control_s_axi_ram #(
    .MEM_STYLE ( "auto" ),
    .MEM_TYPE  ( "S2P" ),
    .BYTES     ( 4 ),
    .DEPTH     ( 262144 )
) int_C (
    .clk0      ( ACLK ),
    .address0  ( int_C_address0 ),
    .ce0       ( int_C_ce0 ),
    .we0       ( int_C_be0 ),
    .d0        ( int_C_d0 ),
    .q0        (  ),
    .clk1      ( ACLK ),
    .address1  ( int_C_address1 ),
    .ce1       ( int_C_ce1 ),
    .we1       ( {4{1'b0}} ),
    .d1        ( {8{1'b0}} ),
    .q1        ( int_C_q1 )
);


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA) && (!ar_hs);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (w_hs)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA) & !int_A_read & !int_B_read & !int_C_read;
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_N_DATA_0: begin
                    rdata <= int_n[31:0];
                end
                ADDR_M_DATA_0: begin
                    rdata <= int_m[31:0];
                end
                ADDR_H_DATA_0: begin
                    rdata <= int_h[31:0];
                end
            endcase
        end
        else if (int_A_read) begin
            rdata <= int_A_q1;
        end
        else if (int_B_read) begin
            rdata <= int_B_q1;
        end
        else if (int_C_read) begin
            rdata <= int_C_q1;
        end
    end
end


//------------------------Register logic-----------------
assign n = int_n;
assign m = int_m;
assign h = int_h;
// int_n[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_n[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_N_DATA_0)
            int_n[31:0] <= (WDATA[31:0] & wmask) | (int_n[31:0] & ~wmask);
    end
end

// int_m[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_m[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_M_DATA_0)
            int_m[31:0] <= (WDATA[31:0] & wmask) | (int_m[31:0] & ~wmask);
    end
end

// int_h[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_h[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_H_DATA_0)
            int_h[31:0] <= (WDATA[31:0] & wmask) | (int_h[31:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------
// A
assign int_A_address0 = A_address0 >> 2;
assign int_A_ce0      = A_ce0;
assign A_q0           = int_A_q0 >> (int_A_shift0 * 8);
assign int_A_address1 = ar_hs? raddr[19:2] : waddr[19:2];
assign int_A_ce1      = ar_hs | (int_A_write & WVALID);
assign int_A_we1      = int_A_write & w_hs;
assign int_A_be1      = int_A_we1 ? WSTRB : 'b0;
assign int_A_d1       = WDATA;
// B
assign int_B_address0 = B_address0 >> 2;
assign int_B_ce0      = B_ce0;
assign B_q0           = int_B_q0 >> (int_B_shift0 * 8);
assign int_B_address1 = ar_hs? raddr[19:2] : waddr[19:2];
assign int_B_ce1      = ar_hs | (int_B_write & WVALID);
assign int_B_we1      = int_B_write & w_hs;
assign int_B_be1      = int_B_we1 ? WSTRB : 'b0;
assign int_B_d1       = WDATA;
// C
assign int_C_address0 = C_address0 >> 2;
assign int_C_ce0      = C_ce0;
assign int_C_be0      = C_we0 << C_address0[1:0];
assign int_C_d0       = {4{C_d0}};
assign int_C_address1 = ar_hs? raddr[19:2] : waddr[19:2];
assign int_C_ce1      = ar_hs | (int_C_write & WVALID);
// int_A_read
always @(posedge ACLK) begin
    if (ARESET)
        int_A_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_A_BASE && raddr <= ADDR_A_HIGH)
            int_A_read <= 1'b1;
        else
            int_A_read <= 1'b0;
    end
end

// int_A_write
always @(posedge ACLK) begin
    if (ARESET)
        int_A_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_A_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_A_HIGH)
            int_A_write <= 1'b1;
        else if (w_hs)
            int_A_write <= 1'b0;
    end
end

// int_A_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_A_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (A_ce0)
            int_A_shift0 <= A_address0[1:0];
    end
end

// int_B_read
always @(posedge ACLK) begin
    if (ARESET)
        int_B_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_B_BASE && raddr <= ADDR_B_HIGH)
            int_B_read <= 1'b1;
        else
            int_B_read <= 1'b0;
    end
end

// int_B_write
always @(posedge ACLK) begin
    if (ARESET)
        int_B_write <= 1'b0;
    else if (ACLK_EN) begin
        if (aw_hs && AWADDR[ADDR_BITS-1:0] >= ADDR_B_BASE && AWADDR[ADDR_BITS-1:0] <= ADDR_B_HIGH)
            int_B_write <= 1'b1;
        else if (w_hs)
            int_B_write <= 1'b0;
    end
end

// int_B_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_B_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (B_ce0)
            int_B_shift0 <= B_address0[1:0];
    end
end

// int_C_read
always @(posedge ACLK) begin
    if (ARESET)
        int_C_read <= 1'b0;
    else if (ACLK_EN) begin
        if (ar_hs && raddr >= ADDR_C_BASE && raddr <= ADDR_C_HIGH)
            int_C_read <= 1'b1;
        else
            int_C_read <= 1'b0;
    end
end

// int_C_shift0
always @(posedge ACLK) begin
    if (ARESET)
        int_C_shift0 <= 1'b0;
    else if (ACLK_EN) begin
        if (C_ce0)
            int_C_shift0 <= C_address0[1:0];
    end
end


endmodule


`timescale 1ns/1ps

module dot_product_interface_control_s_axi_ram
#(parameter
    MEM_STYLE = "auto",
    MEM_TYPE  = "S2P",
    BYTES  = 4,
    DEPTH  = 256,
    AWIDTH = log2(DEPTH)
) (
    input  wire               clk0,
    input  wire [AWIDTH-1:0]  address0,
    input  wire               ce0,
    input  wire [BYTES-1:0]   we0,
    input  wire [BYTES*8-1:0] d0,
    output reg  [BYTES*8-1:0] q0,
    input  wire               clk1,
    input  wire [AWIDTH-1:0]  address1,
    input  wire               ce1,
    input  wire [BYTES-1:0]   we1,
    input  wire [BYTES*8-1:0] d1,
    output reg  [BYTES*8-1:0] q1
);
//------------------------ Parameters -------------------
localparam
    BYTE_WIDTH = 8,
    PORT0 = (MEM_TYPE == "S2P") ? "WO" : ((MEM_TYPE == "2P") ? "RO" : "RW"),
    PORT1 = (MEM_TYPE == "S2P") ? "RO" : "RW";
//------------------------Local signal-------------------
(* ram_style = MEM_STYLE*)
reg  [BYTES*8-1:0] mem[0:DEPTH-1];
wire re0, re1;
//------------------------Task and function--------------
function integer log2;
    input integer x;
    integer n, m;
begin
    n = 1;
    m = 2;
    while (m < x) begin
        n = n + 1;
        m = m * 2;
    end
    log2 = n;
end
endfunction
//------------------------Body---------------------------
generate
    if (MEM_STYLE == "hls_ultra" && PORT0 == "RW") begin
        assign re0 = ce0 & ~|we0;
    end else begin
        assign re0 = ce0;
    end
endgenerate

generate
    if (MEM_STYLE == "hls_ultra" && PORT1 == "RW") begin
        assign re1 = ce1 & ~|we1;
    end else begin
        assign re1 = ce1;
    end
endgenerate

// read port 0
generate if (PORT0 != "WO") begin
    always @(posedge clk0) begin
        if (re0) q0 <= mem[address0];
    end
end
endgenerate

// read port 1
generate if (PORT1 != "WO") begin
    always @(posedge clk1) begin
        if (re1) q1 <= mem[address1];
    end
end
endgenerate

integer i;
// write port 0
generate if (PORT0 != "RO") begin
    always @(posedge clk0) begin
        if (ce0)
        for (i = 0; i < BYTES; i = i + 1)
            if (we0[i])
                mem[address0][i*BYTE_WIDTH +: BYTE_WIDTH] <= d0[i*BYTE_WIDTH +: BYTE_WIDTH];
    end
end
endgenerate

// write port 1
generate if (PORT1 != "RO") begin
    always @(posedge clk1) begin
        if (ce1)
        for (i = 0; i < BYTES; i = i + 1)
            if (we1[i])
                mem[address1][i*BYTE_WIDTH +: BYTE_WIDTH] <= d1[i*BYTE_WIDTH +: BYTE_WIDTH];
    end
end
endgenerate

endmodule

