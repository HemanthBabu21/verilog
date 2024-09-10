module mux4to1(input[3:0]in,
               input[1:0]se,
               output reg y);
               
               always@(in,se)
               begin
               case(se)
                    2'd0:y=in[0];
                    2'd1:y=in[1];
                    2'd2:y=in[2];
                    2'd3:y=in[3];
                endcase
                end
endmodule
