`timescale 1ns / 1ps

module Behavioural_4_bit_counter(input clk,      // Declare input port for the clock to allow counter to count up  
                  input rstn,              // Declare input port for the reset to allow the counter to be reset to 0 when required  
                  output reg[3:0] out);    // Declare 4-bit output port to get the counter values  
  
 
	wire new_clk;
	Clock_Divider clk_div(.clock_in(clk), .clock_out(new_clk));  
  always @ (posedge new_clk) begin  
    if (rstn)  
      out <= 0;  
    else  
		out <= out + 1;  
  end  

endmodule
