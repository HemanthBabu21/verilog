module bin_counter4_tb( );
reg clk,rst;

wire [3:0] out;

bin_counter4 TB(clk,rst,out);
initial
begin
clk=1'b0;
forever #10 clk=~clk;
end

task reset();
begin
   @( negedge clk);
    rst=1'b1;
    #50;
    rst=1'b0;
end
endtask



initial
begin
reset();
#100;
reset();
end
 



endmodule

