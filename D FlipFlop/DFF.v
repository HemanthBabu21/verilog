module DFF(d,clk,rst,q,qb );
input d,clk,rst;
output reg q;
output qb;
always@(posedge clk)
begin
if(rst)
q<=0;
else
q<=d;
#10;
end
assign qb=~q;
endmodule
