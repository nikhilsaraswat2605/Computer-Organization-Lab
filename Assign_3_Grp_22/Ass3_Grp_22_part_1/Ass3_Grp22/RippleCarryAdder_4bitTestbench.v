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

module RippleCarryAdder_4bitTestbench; // Testbench module for Ripple Carry Adder

	// Unit Under Test (UUT) 
	RippleCarryAdder_4bit uut (
		.c_out(c_out),
		.sum(sum),
		.c_in(c_in),
		.in1(in1), 
		.in2(in2)
	);
	
	// Outputs 
	wire c_out; // Output carry bit
	wire [3:0] sum; // Output sum
	
	// Inputs
	reg [3:0] in1, in2; // Inputs
	reg c_in; // Input carry bit





	initial begin
		$monitor ("in1 = %d, in2 = %d, c_in = %d, c_out = %d, , sum = %d", in1, in2, c_in, c_out, sum); // Print inputs and outputs
		// Initialize Inputs
		c_in = 0; in1 = 4'b0101; in2 = 4'b0111;  
		#100;
		c_in = 0; in1 = 4'b0110; in2 = 4'b1100; 
		#100;
		c_in = 1; in1 = 4'b1110; in2 = 4'b0110; 
		#100;
		c_in = 1; in1 = 4'b0010; in2 = 4'b0001; 
	end
      
endmodule

