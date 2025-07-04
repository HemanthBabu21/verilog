module TB( );
reg clk,rst,in;
wire out;

fsm_1001 tb(clk,rst,in,out);

always #5clk=~clk;

initial
begin
clk=0;
rst=1;

#10;
repeat(5)
begin
@(negedge clk)rst=0;
@(negedge clk)in=1;
#10;
@(negedge clk)in=0;
#10;
@(negedge clk)in=0;
#10;
@(negedge clk)in=1;
#10;
@(negedge clk)in=0;
#10;
@(negedge clk)in=0;
#10;
@(negedge clk)in=1;
end
#500 $finish;
end
endmodule
