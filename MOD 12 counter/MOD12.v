module mod12(in,clk,rst,load,c);
input [3:0]in;
input clk,rst,load;
output reg [3:0]c;

always@(posedge clk)
begin
    if(~rst)
        c<=4'b0000;
    else if(load)
        c<=in;
    else if(c==12)
        c<=4'b0000;
    else
        c<=c+1'b1;
end


endmodule
