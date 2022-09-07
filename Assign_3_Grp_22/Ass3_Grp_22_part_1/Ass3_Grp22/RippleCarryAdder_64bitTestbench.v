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

module RippleCarryAdder_64bitTestbench;

	// Instantiate the Unit Under Test (UUT)
	RippleCarryAdder_64bit uut (
		.c_out(c_out),
		.sum(sum),
		.c_in(c_in),
		.in1(in1), 
		.in2(in2)
	);

	// Outputs
	wire [63:0] sum;
	wire c_out;

	// Inputs
	reg [63:0] in1, in2;
	reg c_in;


	initial begin
		$monitor("in1 = %d, in2 = %d, c_in = %d, c_out = %d, sum = %d", in1, in2, c_in, c_out, sum);
		// Initialize Inputs
		in1 = 64'd12765438912345; in2 = 64'd98345672198765; c_in = 0;
		#100;
		in1 = 64'd98765678912345; in2 = 64'd12345432198765; c_in = 1;
		#100;
		in1 = 64'd18446744073709000005; in2 = 64'd55161; c_in = 0;
		#100;
		in1 = 64'd18446744073709000006; in2 = 64'd551610; c_in = 0;
		#100;
		in1 = 64'd18446744073709000006; in2 = 64'd551610; c_in = 1;
	end

      
endmodule

