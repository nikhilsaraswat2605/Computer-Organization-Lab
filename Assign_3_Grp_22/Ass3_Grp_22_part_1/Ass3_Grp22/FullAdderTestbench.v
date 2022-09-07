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

module FullAdderTestbench;

	// uut is the unit under test
	FullAdder uut (
		.c_out(c_out),
		.sum(sum),
		.c_in(c_in),
		.in1(in1), 
		.in2(in2)
	);

	// Inputs
	reg in1, in2, c_in;

	// Outputs 
	wire sum, c_out;



	initial begin
		$monitor ("in1 = %d, in2 = %d, c_in = %d, c_out = %d, sum = %d", in1, in2, c_in, c_out, sum); // $monitor is a verilog command to print the values of the inputs and outputs
		// Initialize Inputs
		c_in = 1; in1 = 0; in2 = 0; // first test data
		#100;					    // wait for 100 cycles
		c_in = 0; in1 = 1; in2 = 1;	// second test data
		#100;						// wait for 100 cycles
		c_in = 0; in1 = 0; in2 = 1;	// third test data
		#100;						// wait for 100 cycles
		c_in = 0; in1 = 1; in2 = 0;	// fourth test data
		#100;						// wait for 100 cycles
		c_in = 1; in1 = 1; in2 = 0;	// fifth test data
		#100;						// wait for 100 cycles
		c_in = 1; in1 = 1; in2 = 1;	// sixth test data
		#100;						// wait for 100 cycles
		c_in = 0; in1 = 0; in2 = 0;	// seventh test data
		#100;						// wait for 100 cycles
		c_in = 1; in1 = 0; in2 = 1;	// eighth test data
		end
      
endmodule						// end of module

