module siso_tb();
reg si,clk,rst;
wire so;
parameter c=10;

siso TB(.si(si),.clk(clk),.rst(rst),.so(so));

always
begin
clk=1'b0;
#c;
clk=~clk;
#c;
end

task reset();
begin
@(negedge clk);
rst=1'b1;

@(negedge clk);
rst=1'b0;
#5;
end
endtask

task inputs(input s);
begin
@(negedge clk);
si=s;
#5;
end
endtask

initial
begin
reset();
inputs(1);

inputs(0);

inputs(1);

inputs(1);


#100 $finish;
end

endmodule
