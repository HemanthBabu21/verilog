module srff(s,r,q,qb );
input s,r;
inout q,qb;
wire a,b;

nor(a,s,b);
nor(b,r,a);
assign q=a;
assign qb=b;

endmodule
