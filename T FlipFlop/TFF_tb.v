module TFF_tb();
reg clk,rst,T;
wire q,qb;
parameter c=10;
TFF TB(.T(T),.clk(clk),.rst(rst),.q(q),.qb(qb));

always
begin
clk=1'b0;
#(c/2);
clk=~clk;
#(c/2);
end

task in();
begin
rst=0;
clk=0;
T=0;
end
endtask

task reset();
begin
rst=1'b1;
#5;
rst=1'b0;
#5;
end
endtask

task tin(input i);
begin
@(posedge clk);
T=i;
end
endtask

initial
begin
in();
reset();
tin(0);
tin(1);
tin(0);
tin(0);
#50;
reset();
tin(1);
tin(0);
tin(1);
#10;
$finish;
end

endmodule
