`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
/*
    Assignment Number: 3
    Problem Number: 2 Carry Look-ahead Adder
    Semester Number: 5
    Group Number:22 
    Group Members: Nikhil Saraswat(20CS10039), Amit Kumar (20CS10039)
*/
//////////////////////////////////////////////////////////////////////////////////

module CLA_4bit_augmentedTestbench;
	// Outputs
	wire p,g;
	wire [3:0] sum;
	
	// Inputs
	reg c_in;
	reg [3:0] in1,in2;


	// Instantiate the Unit Under Test (UUT)
	CLA_4bit_augmented uut (
		.in1(in1), 
		.in2(in2), 
		.c_in(c_in), 
		.sum(sum), 
		.p(p), 
		.g(g)
	);

	initial begin
		$monitor ("in1 = %d, in2 = %d, c_in = %d, p = %d, g = %d, sum = %d", in1, in2, c_in, p, g, sum);
		// Initialize Inputs
		in1 = 4'b0100; in2 = 4'b0100; c_in = 0;
		#100;
		in1 = 4'd0100; in2 = 4'b1100; c_in = 0;
		#100;
		in1 = 4'd1000; in2 = 4'b0111; c_in = 1;
		#100;
		in1 = 4'b0011; in2 = 4'b0010; c_in = 1;
		#100;
		in1 = 4'b0001; in2 = 4'b0000; c_in = 1;
	end
      
endmodule