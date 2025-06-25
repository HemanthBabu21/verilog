module TB( );
reg clk,rst;
wire [3:0]out;

jcount tb(clk,rst,out);

always #5 clk=~clk;

initial
begin
clk=0;
rst=1;
end

initial
begin
rst=0;
#80;
rst=1;
#10;
rst=0;
#500 $finish;
end
endmodule
