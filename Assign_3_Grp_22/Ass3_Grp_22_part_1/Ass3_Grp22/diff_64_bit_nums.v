`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:21:32 08/26/2022
// Design Name:   RippleCarryAdder_64bit
// Module Name:   /home/nikhil/Nikhil/Ass3_Grp22/diff_64_bit_nums.v
// Project Name:  Ass3_Grp22
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RippleCarryAdder_64bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module diff_64_bit_nums;

	// Inputs
	reg [63:0] in1;
	reg [63:0] in2;
	reg c_in;

	// Outputs
	wire [63:0] sum;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	RippleCarryAdder_64bit uut (
		.in1(in1), 
		.in2(in2), 
		.c_in(c_in), 
		.sum(sum), 
		.c_out(c_out)
	);

	initial begin
		// Initialize Inputs
		in1 = 0;
		in2 = 0;
		c_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
		in1 = 64'd12765438912345; in2 = 64'd98345672198765; c_in = 0;
		#100;
		RippleCarryAdder_64bit rca1(in1, in2, c_in, sum, c_out);
		// Add stimulus here

	end
      
endmodule

