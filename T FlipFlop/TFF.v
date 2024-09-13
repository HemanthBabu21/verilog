module TFF(T,clk,rst,q,qb);
input T,clk,rst;
output q;
output qb;
wire w;
xor x(w,T,q);
DFF d1(w,clk,rst,q,qb);
endmodule

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
