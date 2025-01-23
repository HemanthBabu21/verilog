module bcd(clk,rst,p);
input clk;
input rst;
output reg[3:0] p;


always@(posedge clk or posedge rst)
begin
if(rst)
    p<=4'b0;
else if(p==4'd9)
    p<=4'b0;
else
    p<=p+1;
end
endmodule
