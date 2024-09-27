module upcount(in,load,clk,rst,c);
input[3:0]in;
input load,clk,rst;
output reg [3:0]c;

always@(posedge clk)
begin
    if(rst==0)
        c<=4'b0000;
    else if(load)
        c<=in;
    else
        c<=c+1'b1;
    end
    
endmodule
