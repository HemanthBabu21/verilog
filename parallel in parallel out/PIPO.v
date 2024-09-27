module pipo(

input clk,rst,
input [3:0]pi,
input load,
output reg [3:0]po
  );
 reg [3:0] temp;
 
always@(posedge clk)
begin
if(rst)
    temp<=4'b0000;
else if(load==1)
    temp<=pi;
else
begin
   po<=pi;
        end
end      
endmodule

    

