module com_4bit(input [3:0]a,
                input [3:0]b,
                output a_grater,
                output a_equal,
                output a_lesser );
                
assign a_grater=(a>b)?1'b1:1'b0;
assign a_equal=(a==b)?1'b1:1'b0;
assign a_lesser=(a<b)?1'b1:1'b0;
endmodule
