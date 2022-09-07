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

module RippleCarryAdder_32bit(in1, in2, c_in, sum, c_out); // 32 bit ripple carry adder module
	 output [31:0] sum; // output sum
    output c_out; // output carry
	 
    input [31:0] in1,in2; // input 1 and input 2
    input c_in; // input carry

	wire carry;    // carry
	 //cascaded 2 8bit RCAs using carry wire
    RippleCarryAdder_16bit rca1(in1[15:0], in2[15:0], c_in, sum[15:0], carry); 
    RippleCarryAdder_16bit rca2(in1[31:16], in2[31:16], carry, sum[31:16], c_out);


endmodule   // end of module
