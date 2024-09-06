module mux(
input i0,i1,
input s,
output reg out
);
always@(i0,i1,s)
begin
if(s==0)
    out=i0;
else
    out=i1;
end        
endmodule

module mux4(i,s0,s1,y);
input [3:0]i;
input s0,s1;
output y;
wire w1,w2;

mux t1(.i0(i[0]),.i1(i[1]),.s(s0),.out(w1));
mux t2(.i0(i[2]),.i1(i[3]),.s(s0),.out(w2));
mux t3(.i0(w1),.i1(w2),.s(s1),.out(y));
endmodule
