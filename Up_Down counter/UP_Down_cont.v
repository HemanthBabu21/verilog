module up_down(clk,rst,ud,in,ct,load);
input [3:0]in;
input clk,ud,rst,load;
output reg [3:0]ct;

always@(posedge clk)
begin
  if(rst)
    ct<=0;
  else if(load)
    ct<=in;
 else if(ud==1'b0&&ct==4'd0)
    ct<=4'd15;
  else if(ud==1'b1&&ct==4'd15)
    ct<=4'd0;  
    
  else
        begin
        case(ud)
            0: begin
                if(ct==2)
                    ct<=15;
                else
                    ct<=ct-1;
               end
               
            1: begin
                if(ct==15)
                    ct<=2;
                else
                    ct<=ct+1;
                 end
             endcase
end
end
endmodule
