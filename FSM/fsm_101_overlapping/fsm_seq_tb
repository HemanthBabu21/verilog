module fsm_seq_tb( );
reg clk,rst,in;
wire out;

fsm_seq TB(clk,rst,in,out);

initial 
begin
clk=1'b0;
forever #10 clk=~clk;
end

initial
begin
rst=1'b1; 
in=1'b0;
@(negedge clk) rst=1'b0;
@(negedge clk) in=1'b1;
@(negedge clk) in=1'b0;
@(negedge clk) in=1'b1;
@(negedge clk) in=1'b1;
@(negedge clk) in=1'b0;
//@(negedge clk) in=1'b0;
@(negedge clk) in=1'b1;
@(negedge clk) in=1'b0;
@(negedge clk) in=1'b1;
#10;
@(negedge clk) in=1'b1;
@(negedge clk) in=1'b0;
@(negedge clk) in=1'b1;
end


endmodule
