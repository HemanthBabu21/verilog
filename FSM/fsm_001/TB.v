module TB();
reg clk,rst,in;
wire out;

fsm001 tb(clk,rst,in,out);

always #5 clk=~clk;

initial
begin
    clk=0;
    rst=1;
#5;
@(negedge clk)rst=0;
#10;
@(negedge clk)rst=0;
@(negedge clk)in=0;
#10;
@(negedge clk)in=0;
#20;
@(negedge clk)in=1;
#20;
@(negedge clk)in=0;
#10;
@(negedge clk)in=0;
#10;
@(negedge clk)in=1;
#100 $finish;
end
endmodule
