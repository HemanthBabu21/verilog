module SRFF(sr,clk,rst,q,qb );
input [1:0]sr;
input clk,rst;
output reg q;
output qb;
always@(posedge clk)
begin
    if(rst)
     q<=1'b0;
    else
         begin
            case(sr)
                 2'b00:q<=q;
                 2'b01:q<=0;
                 2'b10:q<=1;
                 2'b11:q<=1'bx;
             endcase
          end
    end
 assign qb=~q;

endmodule
