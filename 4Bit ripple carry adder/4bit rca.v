module rca_adder(a,b,cin,sum,carry );
input a,b;
input cin;
output sum,carry;
assign sum=a^b^cin;
assign carry=(a&b)|(b&cin)|(cin&a);
endmodule

module full_add(a,b,cin,sum,carry);
input [3:0]a;
input [3:0]b;
input cin;
output [3:0]sum;
output carry;
wire c1,c2,c3;
rca_adder r1(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.carry(c1));
rca_adder r2(.a(a[1]),.b(b[1]),.cin(c1),.sum(sum[1]),.carry(c2));
rca_adder r3(.a(a[2]),.b(b[2]),.cin(c2),.sum(sum[2]),.carry(c3));
rca_adder r4(.a(a[3]),.b(b[3]),.cin(c3),.sum(sum[3]),.carry(carry));
endmodule
