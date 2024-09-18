module JKFF(jk,clk,rst,q,qb );
input[1:0]jk;
input clk,rst;
output reg q;
output qb;

parameter HOLD  =2'b00,
          RESET =2'b01,
          SET   =2'b10,
          TOGGLE=2'b11;

always@(posedge clk)
begin
    if(rst)
        q<=0;
     else
        begin
        case(jk)
            HOLD:q<=q;
            RESET:q<=0;
            SET:q<=1;
            TOGGLE:q<=~q;
         endcase
         end
   end
         
assign qb=~q;

endmodule



