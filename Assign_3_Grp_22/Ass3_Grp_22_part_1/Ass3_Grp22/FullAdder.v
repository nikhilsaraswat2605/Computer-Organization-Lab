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

module FullAdder(in1, in2, c_in, sum, c_out); //FullAdder Module
	 input in1, in2, c_in; //Inputs of FullAdder
	 output sum, c_out; //Outputs of FullAdder
	 
    wire carry1,carry2; // declaring carry1 and carry2 as wires
	wire temp_sum;      // declaring temp_sum as a wire
	 
	or (c_out, carry1, carry2);  // or gate to get the carry out
    HalfAdder h1(temp_sum, c_in, sum, carry2);  // HalfAdder module to get the sum and carry out 2
	HalfAdder h2(in1, in2, temp_sum, carry1);  // HalfAdder module to get the temp_sum and carry out 1
    
endmodule
