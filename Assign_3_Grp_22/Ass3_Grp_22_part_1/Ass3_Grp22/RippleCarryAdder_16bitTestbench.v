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

module RippleCarryAdder_16bitTestbench; // Testbench module for Ripple Carry Adder

	// Unit Under Test (UUT) instantialization 
	RippleCarryAdder_16bit uut (
		.c_out(c_out),
		.sum(sum),
		.c_in(c_in),
		.in1(in1), 
		.in2(in2)
	);

	// Outputs
	wire [15:0] sum; // Sum of inputs
	wire c_out; // Carry out

	// Inputs
	reg [15:0] in1, in2; // Inputs
	reg c_in; // Carry in



	initial begin
		$monitor ("in1 = %d, in2 = %d, c_in = %d, c_out = %d, sum = %d", in1, in2, c_in, c_out, sum); // Prints the inputs and outputs
		// Initialize Inputs
		c_in = 0; in1 = 16'd16245; in2 = 16'd3785;
		#100;
		c_in = 1; in1 = 16'd3785; in2 = 16'd16245;
		#100;
		c_in = 0; in1 = 16'd65005; in2 = 16'd530;
		#100;
		c_in = 0; in1 = 16'd25531; in2 = 16'd40005;
		#100;
		c_in = 1; in1 = 16'd40006; in2 = 16'd25530;
	end
      
endmodule // end of module RippleCarryAdder_16bitTestbench