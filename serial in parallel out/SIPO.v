module sipo(clk,rst,si,po);
input clk,rst,si;
output reg [3:0]po;

reg [3:0]temp;

always@(posedge clk)
begin
    if(rst)
        temp<=4'b0000;
    else
        temp<={si,temp[3:1]};
        po<=temp[3:0];
    end
          
endmodule
