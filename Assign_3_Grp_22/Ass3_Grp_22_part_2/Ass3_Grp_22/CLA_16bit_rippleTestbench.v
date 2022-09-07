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


module CLA_16bit_rippleTestbench;

	// Outputs
	wire [15:0] sum;
	wire c_out;

	
	// Inputs
	reg [15:0] in1 , in2;
	reg c_in;



	// Instantiate the Unit Under Test (UUT)
	CLA_16bit_ripple uut (.in1(in1), .in2(in2), .c_in(c_in), .sum(sum), .c_out(c_out));

	initial begin
		$monitor("in1 = %d, in2 = %d, c_in = %d, c_out = %d, sum = %d", in1, in2, c_in, c_out, sum);
		// Initialize Inputs
		in1 = 16'd16285; in2 = 16'd3745; c_in = 0;
		#100;
		in1 = 16'd3745; in2 = 16'd16285; c_in = 1;
		#100;
		in1 = 16'd40000; in2 = 16'd25535; c_in = 0;
		#100;
		in1 = 16'd25535; in2 = 16'd40001; c_in = 0;
	end
      
endmodule
