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

module RippleCarryAdder_4bit(in1, in2, c_in, sum, c_out);   //4 bit ripple carry adder
    input [3:0] in1, in2;                                   //inputs
	input c_in;                                             //carry input
    output [3:0] sum;                                       //output
	output c_out;                                           //carry output

	wire [2:0] carry;                                       //carry wire
	// cascade 4 FullAdders using carry wire 
	   FullAdder fa4(in1[3], in2[3], carry[2], sum[3], c_out);  
		FullAdder fa3(in1[2], in2[2], carry[1], sum[2], carry[2]);  
		FullAdder fa2(in1[1], in2[1], carry[0], sum[1], carry[1]);
		FullAdder fa1(in1[0], in2[0], c_in, sum[0], carry[0]);

endmodule
