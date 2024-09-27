module siso( input si,rst,clk,
             output reg so);
reg [3:0]temp;
always@(posedge clk)
begin
if(rst)
    temp<=4'd0;
else
    begin
    temp<={si,temp[3:1]};
    so<=temp[0];
    end
end


endmodule
