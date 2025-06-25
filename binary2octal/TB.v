module TB();
reg [7:0]in;
wire [2:0]oct1;
wire [2:0]oct2;
wire [2:0]oct3;

bin2oct tb(in,oct1,oct2,oct3);

initial
begin
in=8'b0;
#10;
in=8'b11111111;
#10;
in=8'b00001111;
#10;
in=8'b00110011;
#10;
in=8'b11100011;
end
endmodule
