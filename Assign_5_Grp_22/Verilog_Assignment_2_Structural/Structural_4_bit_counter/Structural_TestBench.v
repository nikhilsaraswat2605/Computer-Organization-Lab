`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:44:21 09/14/2022
// Design Name:   Struct_4_bit_counter
// Module Name:   /home/nikhil/Nikhil/Assign_2_Verilog/Verilog_Assignment_2_Structural/Structural_4_bit_counter/Structural_TestBench.v
// Project Name:  Structural_4_bit_counter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Struct_4_bit_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Structural_TestBench;

	// Inputs
	reg clk;
	reg rstn;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	Struct_4_bit_counter uut (
		.clk(clk), 
		.rstn(rstn), 
		.out(out)
	);
	
  // This initial block forms the stimulus of the testbench  
  initial begin  
    // Initialize testbench variables to 0 at start of simulation  
    clk <= 0;  
    rstn <= 0;  
  
    // Drive rest of the stimulus, reset is asserted in between  
    #100   rstn <= 1;  
    #100   rstn <= 0;  
    #100   rstn <= 1;  
  
    // Finish the stimulus after 200ns  
    #20 $finish;  
  end 
   always #5 clk = ~clk;  
      
endmodule

