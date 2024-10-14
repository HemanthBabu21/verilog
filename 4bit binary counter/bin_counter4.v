module bin_counter4(
                     input clk,rst,
                     output reg [3:0]out );
                     
always@(posedge clk)
begin                    
            if(rst)
                out<=4'b0000;
            else
                out<=out+1;
end
endmodule

   
