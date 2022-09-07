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

module HalfAdder(in1,in2,sum,c_out); 
	input in1, in2; 				//inputs of the half adder
	output sum, c_out; 				//outputs of the half adder
	assign c_out = in1 & in2; 		//carry out is 1 if both inputs are 1
	assign sum = in1 ^ in2; 		//sum is 1 if either input is 1
	
endmodule
