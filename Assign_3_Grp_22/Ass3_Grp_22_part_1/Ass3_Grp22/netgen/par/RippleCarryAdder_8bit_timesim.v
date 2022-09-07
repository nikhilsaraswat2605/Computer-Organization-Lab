////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: RippleCarryAdder_8bit_timesim.v
// /___/   /\     Timestamp: Fri Aug 26 15:29:15 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 1 -pcf RippleCarryAdder_8bit.pcf -sdf_anno true -sdf_path netgen/par -insert_glbl true -insert_pp_buffers true -w -dir netgen/par -ofmt verilog -sim RippleCarryAdder_8bit.ncd RippleCarryAdder_8bit_timesim.v 
// Device	: 7a100tcsg324-1 (PRODUCTION 1.10 2013-10-13)
// Input file	: RippleCarryAdder_8bit.ncd
// Output file	: C:\Users\Student\Downloads\Assgn_3_Grp_22\Assgn_3_Grp_22\Ass3_Grp22\Ass3_Grp22\netgen\par\RippleCarryAdder_8bit_timesim.v
// # of Modules	: 1
// Design Name	: RippleCarryAdder_8bit
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

module RippleCarryAdder_8bit (
  c_in, c_out, in1, in2, sum
);
  input c_in;
  output c_out;
  input [7 : 0] in1;
  input [7 : 0] in2;
  output [7 : 0] sum;
  wire sum_7_OBUF_143;
  wire in1_7_IBUF_144;
  wire in2_7_IBUF_145;
  wire in1_6_IBUF_146;
  wire in2_6_IBUF_147;
  wire c_out_bdd2;
  wire c_out_OBUF_0;
  wire sum_5_OBUF_150;
  wire in1_5_IBUF_151;
  wire in2_5_IBUF_152;
  wire in1_4_IBUF_153;
  wire in2_4_IBUF_154;
  wire c_out_bdd6_0;
  wire sum_3_OBUF_157;
  wire in1_3_IBUF_158;
  wire in2_3_IBUF_159;
  wire in1_2_IBUF_160;
  wire in2_2_IBUF_161;
  wire c_out_bdd10;
  wire sum_1_OBUF_163;
  wire in1_1_IBUF_164;
  wire in2_1_IBUF_165;
  wire in1_0_IBUF_166;
  wire in2_0_IBUF_167;
  wire c_in_IBUF_168;
  wire sum_0_OBUF_169;
  wire sum_2_OBUF_170;
  wire sum_4_OBUF_171;
  wire sum_6_OBUF_172;
  wire \ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \in1<0>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \in1<3>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \in1<2>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \in1<7>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \in2<4>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \in2<5>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \in2<6>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \in2<7>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \c_in/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire c_out_OBUF_79;
  wire c_out_bdd2_pack_1;
  wire c_out_bdd6;
  wire c_out_bdd10_pack_4;
  wire \in1<5>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \in2<0>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \in2<1>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \in1<6>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \in2<2>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \in1<4>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \in2<3>/ProtoComp2.INTERMDISABLE_GND.0 ;
  wire \NlwBufferSignal_c_out_OBUF/I ;
  wire \NlwBufferSignal_sum_0_OBUF/I ;
  wire \NlwBufferSignal_sum_1_OBUF/I ;
  wire \NlwBufferSignal_sum_2_OBUF/I ;
  wire \NlwBufferSignal_sum_6_OBUF/I ;
  wire \NlwBufferSignal_sum_7_OBUF/I ;
  wire \NlwBufferSignal_sum_3_OBUF/I ;
  wire \NlwBufferSignal_sum_4_OBUF/I ;
  wire \NlwBufferSignal_sum_5_OBUF/I ;
  initial $sdf_annotate("netgen/par/ripplecarryadder_8bit_timesim.sdf");
  X_OPAD #(
    .LOC ( "IOB_X0Y124" ))
  c_out_3 (
    .PAD(c_out)
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y124" ))
  c_out_OBUF (
    .I(\NlwBufferSignal_c_out_OBUF/I ),
    .O(c_out)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y148" ))
  \in1<1>  (
    .PAD(in1[1])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y148" ))
  \ProtoComp2.INTERMDISABLE_GND.1  (
    .O(\ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y148" ))
  in1_1_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(in1_1_IBUF_164),
    .I(in1[1]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y149" ))
  \in1<0>  (
    .PAD(in1[0])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y149" ))
  \ProtoComp2.INTERMDISABLE_GND  (
    .O(\in1<0>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y149" ))
  in1_0_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<0>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(in1_0_IBUF_166),
    .I(in1[0]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y146" ))
  \in1<3>  (
    .PAD(in1[3])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y146" ))
  \ProtoComp2.INTERMDISABLE_GND.3  (
    .O(\in1<3>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y146" ))
  in1_3_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<3>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(in1_3_IBUF_158),
    .I(in1[3]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y147" ))
  \in1<2>  (
    .PAD(in1[2])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y147" ))
  \ProtoComp2.INTERMDISABLE_GND.2  (
    .O(\in1<2>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y147" ))
  in1_2_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<2>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(in1_2_IBUF_160),
    .I(in1[2]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y132" ))
  \sum<0>  (
    .PAD(sum[0])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y132" ))
  sum_0_OBUF (
    .I(\NlwBufferSignal_sum_0_OBUF/I ),
    .O(sum[0])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y139" ))
  \sum<1>  (
    .PAD(sum[1])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y139" ))
  sum_1_OBUF (
    .I(\NlwBufferSignal_sum_1_OBUF/I ),
    .O(sum[1])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y130" ))
  \sum<2>  (
    .PAD(sum[2])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y130" ))
  sum_2_OBUF (
    .I(\NlwBufferSignal_sum_2_OBUF/I ),
    .O(sum[2])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y131" ))
  \in1<7>  (
    .PAD(in1[7])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y131" ))
  \ProtoComp2.INTERMDISABLE_GND.11  (
    .O(\in1<7>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y131" ))
  in1_7_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<7>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(in1_7_IBUF_144),
    .I(in1[7]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y136" ))
  \in2<4>  (
    .PAD(in2[4])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y136" ))
  \ProtoComp2.INTERMDISABLE_GND.12  (
    .O(\in2<4>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y136" ))
  in2_4_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<4>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(in2_4_IBUF_154),
    .I(in2[4]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y133" ))
  \in2<5>  (
    .PAD(in2[5])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y133" ))
  \ProtoComp2.INTERMDISABLE_GND.13  (
    .O(\in2<5>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y133" ))
  in2_5_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<5>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(in2_5_IBUF_152),
    .I(in2[5]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y134" ))
  \in2<6>  (
    .PAD(in2[6])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y134" ))
  \ProtoComp2.INTERMDISABLE_GND.14  (
    .O(\in2<6>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y134" ))
  in2_6_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<6>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(in2_6_IBUF_147),
    .I(in2[6]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y135" ))
  \in2<7>  (
    .PAD(in2[7])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y135" ))
  \ProtoComp2.INTERMDISABLE_GND.15  (
    .O(\in2<7>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y135" ))
  in2_7_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<7>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(in2_7_IBUF_145),
    .I(in2[7]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y144" ))
  c_in_95 (
    .PAD(c_in)
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y144" ))
  \ProtoComp2.INTERMDISABLE_GND.16  (
    .O(\c_in/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y144" ))
  c_in_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\c_in/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(c_in_IBUF_168),
    .I(c_in),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y126" ))
  \sum<6>  (
    .PAD(sum[6])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y126" ))
  sum_6_OBUF (
    .I(\NlwBufferSignal_sum_6_OBUF/I ),
    .O(sum[6])
  );
  X_BUF   \sum_5_OBUF/sum_5_OBUF_DMUX_Delay  (
    .I(c_out_bdd2_pack_1),
    .O(c_out_bdd2)
  );
  X_BUF   \sum_5_OBUF/sum_5_OBUF_CMUX_Delay  (
    .I(c_out_OBUF_79),
    .O(c_out_OBUF_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y134" ),
    .INIT ( 64'hE11E8778E11E8778 ))
  \sum<5>1  (
    .ADR3(in1_5_IBUF_151),
    .ADR2(in2_5_IBUF_152),
    .ADR1(in1_4_IBUF_153),
    .ADR4(in2_4_IBUF_154),
    .ADR0(c_out_bdd6_0),
    .ADR5(1'b1),
    .O(sum_5_OBUF_150)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X1Y134" ),
    .INIT ( 32'hFEE0F880 ))
  c_out21 (
    .ADR3(in1_5_IBUF_151),
    .ADR2(in2_5_IBUF_152),
    .ADR1(in1_4_IBUF_153),
    .ADR4(in2_4_IBUF_154),
    .ADR0(c_out_bdd6_0),
    .O(c_out_bdd2_pack_1)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y134" ),
    .INIT ( 64'hE81717E8E81717E8 ))
  \sum<7>1  (
    .ADR4(in1_7_IBUF_144),
    .ADR3(in2_7_IBUF_145),
    .ADR1(in1_6_IBUF_146),
    .ADR0(in2_6_IBUF_147),
    .ADR2(c_out_bdd2),
    .ADR5(1'b1),
    .O(sum_7_OBUF_143)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X1Y134" ),
    .INIT ( 32'hFFE8E800 ))
  c_out1 (
    .ADR4(in1_7_IBUF_144),
    .ADR3(in2_7_IBUF_145),
    .ADR1(in1_6_IBUF_146),
    .ADR0(in2_6_IBUF_147),
    .ADR2(c_out_bdd2),
    .O(c_out_OBUF_79)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y125" ))
  \sum<7>  (
    .PAD(sum[7])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y125" ))
  sum_7_OBUF (
    .I(\NlwBufferSignal_sum_7_OBUF/I ),
    .O(sum[7])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X1Y139" ),
    .INIT ( 64'hC3C33C3CC3C33C3C ))
  \sum<2>1  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR2(in1_2_IBUF_160),
    .ADR4(in2_2_IBUF_161),
    .ADR1(c_out_bdd10),
    .O(sum_2_OBUF_170)
  );
  X_BUF   \sum_1_OBUF/sum_1_OBUF_DMUX_Delay  (
    .I(c_out_bdd10_pack_4),
    .O(c_out_bdd10)
  );
  X_BUF   \sum_1_OBUF/sum_1_OBUF_CMUX_Delay  (
    .I(c_out_bdd6),
    .O(c_out_bdd6_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y139" ),
    .INIT ( 64'hE11E8778E11E8778 ))
  \sum<1>1  (
    .ADR2(in1_1_IBUF_164),
    .ADR3(in2_1_IBUF_165),
    .ADR4(in1_0_IBUF_166),
    .ADR1(in2_0_IBUF_167),
    .ADR0(c_in_IBUF_168),
    .ADR5(1'b1),
    .O(sum_1_OBUF_163)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y139" ),
    .INIT ( 32'hFEE0F880 ))
  c_out61 (
    .ADR2(in1_1_IBUF_164),
    .ADR3(in2_1_IBUF_165),
    .ADR4(in1_0_IBUF_166),
    .ADR1(in2_0_IBUF_167),
    .ADR0(c_in_IBUF_168),
    .O(c_out_bdd10_pack_4)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y139" ),
    .INIT ( 64'hE11E8778E11E8778 ))
  \sum<3>1  (
    .ADR3(in1_3_IBUF_158),
    .ADR2(in2_3_IBUF_159),
    .ADR1(in1_2_IBUF_160),
    .ADR0(in2_2_IBUF_161),
    .ADR4(c_out_bdd10),
    .ADR5(1'b1),
    .O(sum_3_OBUF_157)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X0Y139" ),
    .INIT ( 32'hFEE0F880 ))
  c_out41 (
    .ADR3(in1_3_IBUF_158),
    .ADR2(in2_3_IBUF_159),
    .ADR1(in1_2_IBUF_160),
    .ADR0(in2_2_IBUF_161),
    .ADR4(c_out_bdd10),
    .O(c_out_bdd6)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y139" ),
    .INIT ( 64'hAAAA55555555AAAA ))
  \sum<0>1  (
    .ADR3(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR4(c_in_IBUF_168),
    .ADR5(in1_0_IBUF_166),
    .ADR0(in2_0_IBUF_167),
    .O(sum_0_OBUF_169)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y134" ),
    .INIT ( 64'hAA5555AAAA5555AA ))
  \sum<4>1  (
    .ADR5(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(in1_4_IBUF_153),
    .ADR4(in2_4_IBUF_154),
    .ADR0(c_out_bdd6_0),
    .O(sum_4_OBUF_171)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X0Y134" ),
    .INIT ( 64'hC3C33C3CC3C33C3C ))
  \sum<6>1  (
    .ADR0(1'b1),
    .ADR5(1'b1),
    .ADR3(1'b1),
    .ADR2(in1_6_IBUF_146),
    .ADR4(in2_6_IBUF_147),
    .ADR1(c_out_bdd2),
    .O(sum_6_OBUF_172)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y137" ))
  \in1<5>  (
    .PAD(in1[5])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y137" ))
  \ProtoComp2.INTERMDISABLE_GND.7  (
    .O(\in1<5>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y137" ))
  in1_5_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<5>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(in1_5_IBUF_151),
    .I(in1[5]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y141" ))
  \in2<0>  (
    .PAD(in2[0])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y141" ))
  \ProtoComp2.INTERMDISABLE_GND.4  (
    .O(\in2<0>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y141" ))
  in2_0_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<0>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(in2_0_IBUF_167),
    .I(in2[0]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y140" ))
  \in2<1>  (
    .PAD(in2[1])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y140" ))
  \ProtoComp2.INTERMDISABLE_GND.6  (
    .O(\in2<1>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y140" ))
  in2_1_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<1>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(in2_1_IBUF_165),
    .I(in2[1]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y143" ))
  \in1<6>  (
    .PAD(in1[6])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y143" ))
  \ProtoComp2.INTERMDISABLE_GND.9  (
    .O(\in1<6>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y143" ))
  in1_6_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<6>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(in1_6_IBUF_146),
    .I(in1[6]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y129" ))
  \sum<3>  (
    .PAD(sum[3])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y129" ))
  sum_3_OBUF (
    .I(\NlwBufferSignal_sum_3_OBUF/I ),
    .O(sum[3])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y138" ))
  \in2<2>  (
    .PAD(in2[2])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y138" ))
  \ProtoComp2.INTERMDISABLE_GND.8  (
    .O(\in2<2>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y138" ))
  in2_2_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<2>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(in2_2_IBUF_161),
    .I(in2[2]),
    .TPWRGT(1'b1)
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y145" ))
  \in1<4>  (
    .PAD(in1[4])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y145" ))
  \ProtoComp2.INTERMDISABLE_GND.5  (
    .O(\in1<4>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y145" ))
  in1_4_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in1<4>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(in1_4_IBUF_153),
    .I(in1[4]),
    .TPWRGT(1'b1)
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y128" ))
  \sum<4>  (
    .PAD(sum[4])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y128" ))
  sum_4_OBUF (
    .I(\NlwBufferSignal_sum_4_OBUF/I ),
    .O(sum[4])
  );
  X_OPAD #(
    .LOC ( "IOB_X0Y127" ))
  \sum<5>  (
    .PAD(sum[5])
  );
  X_OBUF #(
    .LOC ( "IOB_X0Y127" ))
  sum_5_OBUF (
    .I(\NlwBufferSignal_sum_5_OBUF/I ),
    .O(sum[5])
  );
  X_IPAD #(
    .LOC ( "IOB_X0Y142" ))
  \in2<3>  (
    .PAD(in2[3])
  );
  X_ZERO #(
    .LOC ( "IOB_X0Y142" ))
  \ProtoComp2.INTERMDISABLE_GND.10  (
    .O(\in2<3>/ProtoComp2.INTERMDISABLE_GND.0 )
  );
  X_IBUF_INTERMDISABLE_TPWRGT #(
    .LOC ( "IOB_X0Y142" ))
  in2_3_IBUF (
    .IBUFDISABLE(1'b0),
    .INTERMDISABLE(\in2<3>/ProtoComp2.INTERMDISABLE_GND.0 ),
    .O(in2_3_IBUF_159),
    .I(in2[3]),
    .TPWRGT(1'b1)
  );
  X_BUF   \NlwBufferBlock_c_out_OBUF/I  (
    .I(c_out_OBUF_0),
    .O(\NlwBufferSignal_c_out_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_0_OBUF/I  (
    .I(sum_0_OBUF_169),
    .O(\NlwBufferSignal_sum_0_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_1_OBUF/I  (
    .I(sum_1_OBUF_163),
    .O(\NlwBufferSignal_sum_1_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_2_OBUF/I  (
    .I(sum_2_OBUF_170),
    .O(\NlwBufferSignal_sum_2_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_6_OBUF/I  (
    .I(sum_6_OBUF_172),
    .O(\NlwBufferSignal_sum_6_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_7_OBUF/I  (
    .I(sum_7_OBUF_143),
    .O(\NlwBufferSignal_sum_7_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_3_OBUF/I  (
    .I(sum_3_OBUF_157),
    .O(\NlwBufferSignal_sum_3_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_4_OBUF/I  (
    .I(sum_4_OBUF_171),
    .O(\NlwBufferSignal_sum_4_OBUF/I )
  );
  X_BUF   \NlwBufferBlock_sum_5_OBUF/I  (
    .I(sum_5_OBUF_150),
    .O(\NlwBufferSignal_sum_5_OBUF/I )
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

