module TB( );
reg clk,rst;
wire [3:0]out;

ring tb(clk,rst,out);

    always #5 clk=~clk;
    
initial
begin
clk=0;
rst=0;
end
initial
begin
rst=1;
#10;
rst=0;
#50;


#100 $finish;
end
endmodule
