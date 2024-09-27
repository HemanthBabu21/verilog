module up_down_tb();
reg [3:0]in;
reg clk,rst,ud,load;
wire [3:0]ct;
parameter ck=10;

up_down TB(.in(in),.clk(clk),.rst(rst),.ud(ud),.load(load),.ct(ct));

always
begin
clk=1'b0;
#ck;
clk=~clk;
#ck;
end

task reset();
begin
@(negedge clk);
 rst=1'b1;
 #10;
 @(negedge clk);
 rst=1'b0;
 #10;
 end
 endtask
 
 task inputs(input l,input u,input [3:0]a);
 begin
 @(negedge clk);
 load=l;
 ud=u;
 in=a;
 #10;
 end
 endtask
 
 
 initial
 begin
 reset();

 inputs(1'b1,1'b0,4'b1010);
 #10;
 
 inputs(1'b0,1'b0,4'b1111);
 #10;

 inputs(1'b0,1'b1,4'b0110);
 #10;
 inputs(1'b0,1'b1,4'b1000); 
 #500;
 $finish;
 end
endmodule
