////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: The_sum_synthesis.v
// /___/   /\     Timestamp: Wed Dec 13 23:16:31 2023
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim The_sum.ngc The_sum_synthesis.v 
// Device	: xc6slx16-2-csg324
// Input file	: The_sum.ngc
// Output file	: /home/vassil/workspace/xilinx/sum/netgen/synthesis/The_sum_synthesis.v
// # of Modules	: 1
// Design Name	: The_sum
// Xilinx        : /opt/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module The_sum (
  START, A, B, LED
);
  input START;
  input [2 : 0] A;
  input [2 : 0] B;
  output [7 : 0] LED;
  wire A_2_IBUF_0;
  wire A_1_IBUF_1;
  wire A_0_IBUF_2;
  wire B_2_IBUF_3;
  wire B_1_IBUF_4;
  wire B_0_IBUF_5;
  wire START_IBUF_6;
  wire LED_5_OBUF_7;
  wire LED_4_OBUF_8;
  wire LED_3_OBUF_9;
  wire LED_6_OBUF_10;
  wire LED_2_OBUF_11;
  wire LED_1_OBUF_12;
  wire LED_0_OBUF_13;
  wire \Madd_n0016[3:0]_cy<0> ;
  LUT2 #(
    .INIT ( 4'h8 ))
  \Madd_n0016[3:0]_cy<0>11  (
    .I0(A_0_IBUF_2),
    .I1(B_0_IBUF_5),
    .O(\Madd_n0016[3:0]_cy<0> )
  );
  LUT3 #(
    .INIT ( 8'h78 ))
  Mmux_n000611 (
    .I0(START_IBUF_6),
    .I1(A_0_IBUF_2),
    .I2(B_0_IBUF_5),
    .O(LED_0_OBUF_13)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  Mmux_n000531 (
    .I0(START_IBUF_6),
    .I1(A_2_IBUF_0),
    .O(LED_5_OBUF_7)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  Mmux_n000521 (
    .I0(START_IBUF_6),
    .I1(A_1_IBUF_1),
    .O(LED_4_OBUF_8)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  Mmux_n000511 (
    .I0(START_IBUF_6),
    .I1(A_0_IBUF_2),
    .O(LED_3_OBUF_9)
  );
  IBUF   A_2_IBUF (
    .I(A[2]),
    .O(A_2_IBUF_0)
  );
  IBUF   A_1_IBUF (
    .I(A[1]),
    .O(A_1_IBUF_1)
  );
  IBUF   A_0_IBUF (
    .I(A[0]),
    .O(A_0_IBUF_2)
  );
  IBUF   B_2_IBUF (
    .I(B[2]),
    .O(B_2_IBUF_3)
  );
  IBUF   B_1_IBUF (
    .I(B[1]),
    .O(B_1_IBUF_4)
  );
  IBUF   B_0_IBUF (
    .I(B[0]),
    .O(B_0_IBUF_5)
  );
  IBUF   START_IBUF (
    .I(START),
    .O(START_IBUF_6)
  );
  OBUF   LED_7_OBUF (
    .I(START_IBUF_6),
    .O(LED[7])
  );
  OBUF   LED_6_OBUF (
    .I(LED_6_OBUF_10),
    .O(LED[6])
  );
  OBUF   LED_5_OBUF (
    .I(LED_5_OBUF_7),
    .O(LED[5])
  );
  OBUF   LED_4_OBUF (
    .I(LED_4_OBUF_8),
    .O(LED[4])
  );
  OBUF   LED_3_OBUF (
    .I(LED_3_OBUF_9),
    .O(LED[3])
  );
  OBUF   LED_2_OBUF (
    .I(LED_2_OBUF_11),
    .O(LED[2])
  );
  OBUF   LED_1_OBUF (
    .I(LED_1_OBUF_12),
    .O(LED[1])
  );
  OBUF   LED_0_OBUF (
    .I(LED_0_OBUF_13),
    .O(LED[0])
  );
  LUT6 #(
    .INIT ( 64'hA8A8A880A8808080 ))
  Mmux_n000641 (
    .I0(START_IBUF_6),
    .I1(A_2_IBUF_0),
    .I2(B_2_IBUF_3),
    .I3(A_1_IBUF_1),
    .I4(B_1_IBUF_4),
    .I5(\Madd_n0016[3:0]_cy<0> ),
    .O(LED_6_OBUF_10)
  );
  LUT6 #(
    .INIT ( 64'hD2D2D278D2787878 ))
  Mmux_n000631 (
    .I0(START_IBUF_6),
    .I1(A_2_IBUF_0),
    .I2(B_2_IBUF_3),
    .I3(\Madd_n0016[3:0]_cy<0> ),
    .I4(A_1_IBUF_1),
    .I5(B_1_IBUF_4),
    .O(LED_2_OBUF_11)
  );
  LUT5 #(
    .INIT ( 32'hD57F2A80 ))
  Mmux_n000621 (
    .I0(START_IBUF_6),
    .I1(A_0_IBUF_2),
    .I2(B_0_IBUF_5),
    .I3(A_1_IBUF_1),
    .I4(B_1_IBUF_4),
    .O(LED_1_OBUF_12)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

