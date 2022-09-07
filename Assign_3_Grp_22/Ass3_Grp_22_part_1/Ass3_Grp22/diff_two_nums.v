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
module diff_two_nums(in1, in2, sum, c_out);
	 output [63:0] sum; // sum of in1 and in2
    output c_out; // carry out
	 
    input [63:0] in1,in2; // input 1 and input 2
	 wire [63:0] in1,in2;
	 //cascaded 2 32bit RCAs using carry wire
    RippleCarryAdder_64bit rca64(in1[63:0],~ in2[63:0],64'b1, sum[63:0], c_out);

endmodule
