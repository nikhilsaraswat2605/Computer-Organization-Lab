`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
/*
    Assignment Number: 3
    Problem Number: 2 Carry Look-ahead Adder
    Semester Number: 5
    Group Number: 22 
    Group Members: Nikhil Saraswat(20CS10039), Amit Kumar (20CS30003)
*/
//////////////////////////////////////////////////////////////////////////////////

module CLA_16bit_ripple(   in1, in2, c_in, sum, c_out  );
	
    input [15:0] in1 , in2;
    input c_in;
    output [15:0] sum;
    output c_out;
	wire [2:0] carry; // carry is a 2 bit wire
	
	// 16 bit adder by cascading 4 4bit CLAs and ripple the carry 
	CLA_4bit cla4(.in1(in1[15:12]), .in2(in2[15:12]), .c_in(carry[2]), .sum(sum[15:12]), .c_out(c_out));
	CLA_4bit cla3(.in1(in1[11:8]), .in2(in2[11:8]), .c_in(carry[1]), .sum(sum[11:8]), .c_out(carry[2]));
	CLA_4bit cla2(.in1(in1[7:4]), .in2(in2[7:4]), .c_in(carry[0]), .sum(sum[7:4]), .c_out(carry[1]));
	CLA_4bit cla1(.in1(in1[3:0]), .in2(in2[3:0]), .c_in(c_in), .sum(sum[3:0]), .c_out(carry[0]));

endmodule