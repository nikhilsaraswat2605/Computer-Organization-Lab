`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
/*
    Assignment Number: 3
    Problem Number: 2 Carry Look-ahead Adder
    Semester Number: 5
    Group Number:22 
    Group Members: Nikhil Saraswat(20CS10039), Amit Kumar (20CS10039)
*/
//////////////////////////////////////////////////////////////////////////////////

module CLA_4bit(in1,in2,c_in,sum,c_out);

    output c_out; // carry out
    output [3:0] sum;   // output sum
    input c_in;     // input carry (carry_in)
    input [3:0] in1, in2; // input 1 and input 2


	
	wire [3:0] carry, G, P; // wires for bitwise generate, propagate and carry
	
	// calculate bitwise generate and propagate using input 1 and input 2
	assign P = in1 ^ in2; // propagate P = in1 XOR in2
	assign G = in1 & in2; // generate G = in1 AND in2
	
	// calculating sum using generate and propagate
	assign sum = carry ^ P; // sum = carry XOR P
	
	// calculating subsequent carries using generate, propagate and previous carries 
	assign carry[3] = (carry[0] & P[2] & P[1] & P[0]) | (G[0] & P[2] & P[1]) | (G[1] & P[2]) | G[2]; // carry[3] = (carry[0] AND P[2] AND P[1] AND P[0]) OR (G[0] AND P[2] AND P[1]) OR (G[1] AND P[2]) OR G[2]
	assign carry[2] = (carry[0] & P[1] & P[0]) | (G[0] & P[1]) | G[1]; // carry[2] = (carry[0] AND P[1] AND P[0]) OR (G[0] AND P[1]) OR G[1]
	assign carry[1] = G[0] | (P[0] & carry[0]); // carry[1] = G[0] OR (P[0] AND carry[0])
	assign carry[0] = c_in; // carry[0] = c_in
	assign c_out = (carry[0] & P[3] & P[2] & P[1] & P[0]) | (G[0] & P[3] & P[2] & P[1]) | (G[1] & P[3] & P[2]) | (G[2] & P[3]) | G[3]; // c_out = (carry[0] AND P[3] AND P[2] AND P[1] AND P[0]) OR (G[0] AND P[3] AND P[2] AND P[1]) OR (G[1] AND P[3] AND P[2]) OR (G[2] AND P[3]) OR G[3]
	


endmodule