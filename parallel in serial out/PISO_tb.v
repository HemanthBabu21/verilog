module piso_tb( );
reg clk,rst,load;
reg [3:0]pi;
wire so;

piso TB(.clk(clk),.rst(rst),.pi(pi),.so(so),.load(load));

initial
begin
clk=1'b0;
forever #10 clk=~clk;
end

task reset();
begin
@(negedge clk);
rst=1'b1;
@(negedge clk);
rst=1'b0;
end
endtask

task in(input [3:0]i,input l);
begin
@(negedge clk);
pi=i;
load=l;

end
endtask

initial
begin

reset();
@(negedge clk);
in(4'b1101,1'b1);
repeat(4) 
#10;
@(negedge clk);
in(4'b1010,1'b0);
repeat(4)
#10;


end

endmodule
