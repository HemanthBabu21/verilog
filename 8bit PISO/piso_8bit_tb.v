module piso_8bit_tb();
reg clk,rst,load;
reg [7:0]pi;
wire so;

piso_8bit TB(.clk(clk),.rst(rst),.so(so),.pi(pi),.load(load));

initial
begin
clk=1'b0;
forever #10 clk=~clk;
end

initial
begin
rst=1'b0;
load=1'b0;
pi=8'b0;
end

initial
begin
@(negedge clk);
rst=1'b1;
#50;
rst=1'b0;

@(negedge clk);
load=1'b1;
pi=8'b11000110;
#50;
@(negedge clk);
load=1'b0;

#200;
@(negedge clk);
load=1'b1;
pi=8'b00111111;
#50;
@(negedge clk);
load=1'b0;
end

initial begin
        $monitor("Time = %0t | rst = %b | load = %b | pi = %b | so = %b", $time, rst, load, pi, so);
    end
endmodule
