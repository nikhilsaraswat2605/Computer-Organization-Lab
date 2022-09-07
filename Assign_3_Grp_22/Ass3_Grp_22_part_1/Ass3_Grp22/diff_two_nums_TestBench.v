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

module diff_two_nums_TestBench;

	// Instantiate the Unit Under Test (UUT)
	diff_two_nums uut (
		.c_out(c_out),
		.sum(sum),
		.in1(in1), 
		.in2(in2)
	);
	// Outputs
	wire [63:0] sum;
	wire c_out;

	// Inputs
	reg [63:0] in1, in2;
	
	initial begin
		$monitor("in1 = %d, in2 = %d, sum = %d", in1, in2, sum);
		// Initialize Inputs
		in1 = 64'd98345672198765; in2 = 64'd12765438912345;
		#100;
		in1 = 64'd12345432198765; in2 = 64'd98765678912345;
		#100;
		in1 = 64'd18446744073709000005; in2 = 64'd55161;
		#100;
		in1 = 64'd18446744073709000006; in2 = 64'd551610;
		#100;
		in1 = 64'd18446744073709000006; in2 = 64'd551610;
	end
      
endmodule

