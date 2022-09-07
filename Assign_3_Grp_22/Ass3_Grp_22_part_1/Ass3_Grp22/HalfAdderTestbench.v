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

module HalfAdderTestbench; // HalfAdderTestbench is the module name

	
	// uut is the unit under test
	HalfAdder uut ( 
		.c_out(c_out), 
		.sum(sum),
		.in1(in1), 
		.in2(in2)
	); 

	// Outputs
	wire sum,c_out; // sum is the sum of inputs and c_out is the carry output
	// Inputs
	reg in1,in2; // in1 and in2 are the inputs to the half adder


	initial begin
		$monitor ("in1 = %d, in2 = %d, c_out = %d, sum = %d", in1, in2, c_out, sum); // $monitor is a verilog command to print the values of the inputs and outputs
		in1 = 0; in2 = 0; 				// first test data
		#100; 							// waiting for 100 cycles
		in1 = 1; in2 = 0; 				// second test data
		#100; 							// waiting for 100 cycles
		in1 = 1; in2 = 1; 				// third test data
		#100; 							// waiting for 100 cycles
		in1 = 0; in2 = 1; 				// fourth test data
		
	end
      
endmodule	// end of module HalfAdderTestbench

