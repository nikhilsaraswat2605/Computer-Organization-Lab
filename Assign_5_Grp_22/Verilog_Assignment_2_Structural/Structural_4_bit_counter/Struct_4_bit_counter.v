`timescale 1ns / 1ps

module Struct_4_bit_counter(input clk,      // Declare input port for the clock to allow counter to count up  
                  input rstn,              // Declare input port for the reset to allow the counter to be reset to 0 when required  
                  output [3:0] out
    );
	wire new_clk;
	Clock_Divider clk_div(.clock_in(clk), .clock_out(new_clk));  
	wire [3:0] temp;
	DFF dff0(.D(temp[0]),.clk(new_clk),.async_reset(rstn),.Q(out[0]));
	DFF dff1(.D(temp[1]),.clk(new_clk),.async_reset(rstn),.Q(out[1]));
	DFF dff2(.D(temp[2]),.clk(new_clk),.async_reset(rstn),.Q(out[2]));
	DFF dff3(.D(temp[3]),.clk(new_clk),.async_reset(rstn),.Q(out[3]));
	Add_by_1 add(.in_(out),.out_(temp));


endmodule
