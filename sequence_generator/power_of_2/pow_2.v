module pow_2(
    input clk,
    input rst,
   // input [7:0] in,
    output reg [7:0] out
    );
    
always@(posedge clk)
begin
    if(rst)
        out<=8'b1;
    else if (out == 8'd128)
        out <= 8'd1;         // Reset back to 1 after 128
    else
        out <= out << 1; 
end
endmodule
