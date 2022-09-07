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

module RippleCarryAdder_8bitTestbench;


	// Instantiate the Unit Under Test (UUT)
	RippleCarryAdder_8bit uut (
		.c_out(c_out),
		.sum(sum),
		.c_in(c_in),
		.in1(in1), 
		.in2(in2)
	);
	
	// Outputs
	wire c_out;
	wire [7:0] sum;
	
	// Inputs
	reg c_in;
	reg [7:0] in1, in2;


	initial begin
		$monitor ("in1 = %d, in2 = %d, c_in = %d, c_out = %d, sum = %d", in1, in2, c_in, c_out, sum);
		// Initialize Inputs
		c_in = 0;in1 = 8'd102; in2 = 8'd103; 
		#100;
		c_in = 1;in1 = 8'd203; in2 = 8'd2;
		#100;
		c_in = 0;in1 = 8'd141; in2 = 8'd114;
		#100;
		c_in = 0;in1 = 8'd140; in2 = 8'd116;
		#100;
		c_in = 1;in1 = 8'd139; in2 = 8'd117; 
	end
      
endmodule

