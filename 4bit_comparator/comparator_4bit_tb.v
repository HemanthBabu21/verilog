module com_4bit_tb();
                   reg [3:0]a;
                   reg [3:0]b;
                   wire grater;
                   wire equal;
                   wire lesser;
                   
com_4bit TB( .a(a),.b(b),.a_grater(grater),.a_equal(equal),.a_lesser(lesser));
initial
begin
$monitor("the value a=%b,b=%b out grater=%b,equal=%b,lesser=%b",a,b,grater,equal,lesser);

a=4'b1010; b=4'b0010;
#10;
a=4'b1001; b=4'b1000;
#10;
a=4'b1110; b=4'b0001;
#10;
a=4'b0000; b=4'b0000;
#10;
a=4'b0000; b=4'b1000;
#10;
a=4'b0101; b=4'b1010;
#10;
a=4'b0110; b=4'b0011;
#10;
#100 $finish;
end
endmodule
