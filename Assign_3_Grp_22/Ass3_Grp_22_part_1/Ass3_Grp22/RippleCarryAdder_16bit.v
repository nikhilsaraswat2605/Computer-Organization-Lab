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

module RippleCarryAdder_16bit(in1, in2, c_in, sum, c_out); // 16 bit - Ripple Carry Adder
	output [15:0] sum; // Output sum
    output c_out;      // Output carry
	 
    input [15:0] in1,in2; // Inputs
    input c_in;         // Input carry
	 
	wire carry; 
	 //cascaded 2 8bit RCAs using carry wire
    RippleCarryAdder_8bit rca1(in1[7:0], in2[7:0], c_in, sum[7:0], carry);
    RippleCarryAdder_8bit rca2(in1[15:8], in2[15:8], carry, sum[15:8], c_out);


endmodule
