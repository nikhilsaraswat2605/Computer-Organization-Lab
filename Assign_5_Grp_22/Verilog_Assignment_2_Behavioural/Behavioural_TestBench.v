`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:45:31 09/14/2022
// Design Name:   Behavioural_4_bit_counter
// Module Name:   /home/nikhil/Nikhil/Assign_2_Verilog/Verilog_Assignment_2_Behavioural/Behavioural_TestBench.v
// Project Name:  Verilog_Assignment_2
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Behavioural_4_bit_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Behavioural_TestBench;

	// Inputs
	reg clk;
	reg rstn;

	// Outputs
	wire [3:0] out;

	// Instantiate the Unit Under Test (UUT)
	Behavioural_4_bit_counter uut (
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
    #20   rstn <= 1;  
    #80   rstn <= 0;  
    #50   rstn <= 1;  
  
    // Finish the stimulus after 200ns  
    #20 $finish;  
  end 
   always #5 clk = ~clk;  
      
endmodule

