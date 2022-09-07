module wrapper(input clk,input rst,input [15:0] in1,input [15:0]in2, input c_in,output reg [15:0] sum, output reg c_out);

reg [15:0] in1_reg;
reg [15:0] in2_reg;
reg c_in_reg;
wire [15:0] sum_net;
wire c_out_net;
always @(posedge clk)
    begin
        if(rst) 
            begin
                in1_reg <= 16'd0;
                in2_reg <= 16'd0;
            end 
        else 
            begin
            in1_reg <= in1;
            in2_reg <= in2;
            sum<=sum_net;
        end
    end 

CLA_16bit_withLCU add(in1_reg,in2_reg, c_in_reg,sum_net, c_out_net);
endmodule