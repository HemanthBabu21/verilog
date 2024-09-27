module mod12_tb();
reg [3:0]in;
reg clk,rst,load;
wire [3:0]c;
parameter ck=10;

mod12 TB(.in(in),.clk(clk),.rst(rst),.load(load),.c(c));

always
begin
#(ck/2);
clk=1'b0;
#(ck/2);
clk=~clk;
end

task reset();
begin
rst=1'b0;
#ck;
rst=1'b1;
#ck;
end
endtask

task ins(input [3:0]i,input l);
begin
@(posedge clk);
in=i;
load=l;
#10;
end
endtask

initial
begin
reset();
ins(5,1);

ins(9,0);
reset();
ins(8,1);
reset();
ins(6,1);
ins(11,0);

#100;
$finish;
end

endmodule
