`timescale 1ns / 1ps

module Add_by_1(in_, out_);
	input [3:0] in_;
	output [3:0] out_;
	assign out_[0] = ~in_[0];
	assign out_[1] = in_[1] ^ in_[0];
	assign out_[2] = in_[2] ^ (in_[1]&in_[0]);
	assign out_[3] = in_[3] ^ (in_[2]&in_[1]&in_[0]);
	
endmodule
