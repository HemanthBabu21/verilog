module JKFF_tb();
reg [1:0]jk;
reg clk,rst;
wire q,qb;
parameter c=10;

JKFF TB(.jk(jk),.clk(clk),.rst(rst),.q(q),.qb(qb));

always
begin
clk=1'b0;
#(c/2);
clk=~clk;
#(c/2);
end

task reset();
begin
rst=1'b1;
#10;
rst=1'b0;
#10;
end
endtask

task in(input [1:0]a);
begin
@(posedge clk)
jk=a;
#10;
end
endtask

initial 
begin
reset();
in(0);
in(1);
in(2);
in(3);
#20;
$finish;
end

endmodule



