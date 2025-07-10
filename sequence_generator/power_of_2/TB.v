module TB( );
reg clk,rst;
wire [7:0] out;

pow_2 tb(clk,rst,out);

always #5 clk=~clk;

initial
begin
clk=0;
rst=0;
#10;
rst=1;
#50;
rst=0;
#500 $finish;
end

initial 
begin
        $monitor("Time = %0t | Output = %0d", $time, out); 
end
endmodule
