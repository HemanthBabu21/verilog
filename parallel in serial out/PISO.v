module piso(
input clk,rst,
input [3:0]pi,
input load,
output reg so
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
   so<=temp[3];
   temp<={temp[2:0],1'b0};
        end
end      
endmodule
