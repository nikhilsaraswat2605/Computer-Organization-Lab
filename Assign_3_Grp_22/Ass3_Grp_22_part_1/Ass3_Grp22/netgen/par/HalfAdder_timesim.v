////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: HalfAdder_timesim.v
// /___/   /\     Timestamp: Fri Aug 26 15:48:14 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 1 -pcf HalfAdder.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim HalfAdder.ncd HalfAdder_timesim.v 
// Device	: 7a100tcsg324-1 (PRODUCTION 1.10 2013-10-13)
// Input file	: HalfAdder.ncd
// Output file	: C:\Users\Student\Downloads\Assgn_3_Grp_22\Assgn_3_Grp_22\Ass3_Grp22\Ass3_Grp22\netgen\par\HalfAdder_timesim.v
// # of Modules	: 1
// Design Name	: HalfAdder
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
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

module HalfAdder (
  in1, in2, sum, c_out
);
  input in1;
  input in2;
  output sum;
  output c_out;
  wire c_out_OBUF_19;
  wire in1_IBUF_20;
  wire in2_IBUF_21;
  wire sum_OBUF_0;
  wire \ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \in1/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire sum_OBUF_10;
  wire \NlwBufferSignal_c_out_OBUF/I ;
  wire \NlwBufferSignal_sum_OBUF/I ;
  initial $sdf_annotate("netgen/par/halfadder_timesim.sdf");
  X_IPAD #(
    .LOC ( "IOB_X0Y147" ))
  in2_11 (
    .PAD(in2)
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y147" ))
  \ProtoComp2.INTERMDISABLE_GND.1  (
    .O(\ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y147" ))
  in2_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(in2_IBUF_21),
    .I(in2),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y148" ))
  in1_7 (
    .PAD(in1)
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y148" ))
  \ProtoComp2.INTERMDISABLE_GND  (
    .O(\in1/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y148" ))
  in1_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(in1_IBUF_20),
    .I(in1),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y149" ))
  c_out_3 (
    .PAD(c_out)
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y149" ))
  c_out_OBUF (
    .I(\NlwBufferSignal_c_out_OBUF/I ),
    .O(c_out)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y146" ))
  sum_14 (
    .PAD(sum)
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y146" ))
  sum_OBUF (
    .I(\NlwBufferSignal_sum_OBUF/I ),
    .O(sum)
  );
  X_BUF   \c_out_OBUF/c_out_OBUF_AMUX_Delay  (
    .I(sum_OBUF_10),
    .O(sum_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y147" ),
    .INIT ( 64'hF0F00000F0F00000 ))
  c_out1 (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(in1_IBUF_20),
    .ADR4(in2_IBUF_21),
    .ADR5(1'b1),
    .O(c_out_OBUF_19)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y147" ),
    .INIT ( 32'h0F0FF0F0 ))
  \Mxor_sum_xo<0>1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR3(1'b1),
    .ADR2(in1_IBUF_20),
    .ADR4(in2_IBUF_21),
    .O(sum_OBUF_10)
  );
  X_BUF   \NlwBufferBlock_c_out_OBUF/I  (
    .I(c_out_OBUF_19),
    .O(\NlwBufferSignal_c_out_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_OBUF/I  (
    .I(sum_OBUF_0),
    .O(\NlwBufferSignal_sum_OBUF/I )
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

