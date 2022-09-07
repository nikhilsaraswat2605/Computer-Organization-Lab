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

module RippleCarryAdder_32bitTestbench; // Testbench module for Ripple Carry Adder

	// Unit Under Test (UUT)
	RippleCarryAdder_32bit uut (
		.c_out(c_out),
		.sum(sum),
		.c_in(c_in),
		.in1(in1), 
		.in2(in2)
	);

	// Outputs
	wire [31:0] sum; // Output sum
	wire c_out; // Output carry

	// Inputs
	reg [31:0] in1, in2; // Inputs
	reg c_in; // Input carry


	initial begin
		$monitor ("in1 = %d, in2 = %d, c_in = %d, sum = %d, c_out = %d", in1, in2, c_in, sum, c_out); // Print inputs and outputs
		// Initialize Inputs
		c_in = 0; in1 = 12365438; in2 = 98745672; 
		#100;
		c_in = 1; in1 = 98765678; in2 = 12345432; 
		#100;
		c_in = 0; in1 = 4200007290; in2 = 94960005; 
		#100;
		c_in = 0; in1 = 4000067290; in2 = 294900006; 
		#100;
		c_in = 1; in1 = 4294000006; in2 = 967290; 
	end

      
endmodule // end of RippleCarryAdder_32bitTestbench

