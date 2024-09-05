module full_add_tb();
reg [3:0]a;
reg [3:0]b;
reg cin;
wire [3:0]sum;
wire carry;
integer i,j;
full_add TB(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
initial 
begin
cin=0;
for(i=0;i<16;i=i+1)
begin
    for(j=0;j<16;j=j+1)
        begin
            a=i;
            b=j;
             #0.5;
        end
        #0.5;
end
#50 $finish;
end
endmodule
