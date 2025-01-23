module sipo_tb();
reg clk,rst,si;
wire po;

sipo tb(.clk(clk),.rst(rst),.si(si),.po(po));

initial 
begin
clk=1'b0;
forever #10 clk=~clk;
end

task rt();
begin
rst=1;
#10;
rst=0;
end
endtask

task in(input i);
begin
@(negedge clk)si=i;
end
endtask

initial
begin
rt();
in(1);
in(0);
in(1);
in(0);
#100;
$finish;
end

endmodule
