`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/*
	Assignment Number: 3
	Problem Number: 1 Ripple Carry Adder
	Semester Number: 5
	Group Number: 22 
	Group Members: Nikhil Saraswat(20CS10039), Amit Kumar (20CS30003)
*/
//////////////////////////////////////////////////////////////////////////////////

module RippleCarryAdder_64bit(in1, in2, c_in, sum, c_out); // 64 bit ripple carry adder
	output [63:0] sum; // sum of in1 and in2
    output c_out; // carry out
	 
    input [63:0] in1,in2; // input 1 and input 2
    input c_in; // carry in
	 
	wire carry; 
	 //cascaded 2 32bit RCAs using carry wire
    RippleCarryAdder_32bit rca1(in1[31:0], in2[31:0], c_in, sum[31:0], carry);
    RippleCarryAdder_32bit rca2(in1[63:32], in2[63:32], carry, sum[63:32], c_out);


endmodule
