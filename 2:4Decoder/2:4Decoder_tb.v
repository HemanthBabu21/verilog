module decoder_tb();
reg [1:0]a;
wire [3:0]y;
integer i;
decoder TB(.a(a),.y(y));
initial
begin
a=0;
end
initial
begin
for(i=0;i<4;i=i+1)
begin
a=i;
#10;
end
#50; $finish;
end
endmodule
