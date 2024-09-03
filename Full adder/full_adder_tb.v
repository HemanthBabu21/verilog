module full_adder_tb();
reg a,b,cin;
wire sum,carry;
integer i;
full_adder TB(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
initial
begin
{a,b,cin}=0;
end
initial
begin
for(i=0;i<8;i=i+1)
begin
{a,b,cin}=i;
#20;
end
#100;$finish;
end
initial
begin
$monitor("a=%b,b=%b,cin=%b,sum=%b,carry=%b", a,b,cin,sum,carry);
end
endmodule
