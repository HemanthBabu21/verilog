module piso_8bit(input clk,rst,
                  input load,
                  input [7:0]pi,
                  output reg so);
              
reg [7:0] temp;           
always@(posedge clk)
begin
    if(rst)
           begin
           so<=1'b0;
           temp<=8'b0;
           end
           
     else if(load)
            begin
            temp<=pi;
            end
     else  
           begin
          // temp<=pi;
           so<=temp[7];
           temp<={temp[6:0],1'b0};
           end
end           
endmodule
