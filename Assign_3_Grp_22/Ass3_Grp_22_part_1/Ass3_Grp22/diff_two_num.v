`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:10:26 08/26/2022
// Design Name:   RippleCarryAdder_64bit
// Module Name:   /home/nikhil/Nikhil/Ass3_Grp22/diff_two_num.v
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

	// Outputs
	wire [63:0] sum;
	wire c_out;

	// Inputs
	reg [63:0] in1, in2;
	reg c_in;



		// Initialize Inputs
					 //cascaded 2 32bit RCAs using carry wire
		
		in1 = 64'd12765438912345; in2 = 64'd98345672198765; c_in = 0;
		#100;
		RippleCarryAdder_64bit rca1(in1, in2, c_in, sum, c_out);
		//$monitor("in1 = %d, in2 = %d, c_in = %d, c_out = %d, sum = %d", in1, in2, c_in, c_out, sum);
      
endmodule

