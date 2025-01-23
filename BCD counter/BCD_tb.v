module bcd_tb();
reg clk,rst;
wire [3:0]p;

bcd tb(.clk(clk),.rst(rst),.p(p));

always #5 clk=~clk;
initial
begin
clk=0;
rst=0;

rst=1;
#50;
rst=0;
#100;
rst=1;
#20;
rst=0;
#10;
rst=1;
#10
rst=0;


#100;
$finish ;
end

endmodule
