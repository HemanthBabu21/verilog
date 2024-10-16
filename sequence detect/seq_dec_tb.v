module sequence_dec_tb( );
reg clk,rst,din;
wire out;
sequece_dec TB(.clk(clk),.rst(rst),.din(din),.out(out));
initial
begin
clk=1'b0;
forever #10 clk=~clk;
end

initial
begin
@(negedge clk);
rst=1'b1;
#50;
rst=1'b0;
@(negedge clk);
din=1'b1;
#5;

din=1'b1;
#5;

din=1'b0;
#5;

din=1'b1;
#50;
end

endmodule
