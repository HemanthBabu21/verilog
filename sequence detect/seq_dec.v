module sequece_dec(input din,clk,rst,
                   output out);
                   
parameter s0=3'b000,
          s1=3'b001,
          s2=3'b010,
          s3=3'b011;
          
reg [2:0]s,ns;
          
always@(posedge clk or posedge rst)
begin
if(rst)
    s<=s0;
else
   s<=ns;
   
end 

always@(*)
begin
ns=s0;
case(s)
   
    s0: if(din) 
            ns=s1; 
        else 
            ns=s0;
    s1: if(din) 
            ns=s2; 
        else 
            ns=s0;
    s2: if(din) 
            ns=s0; 
        else
             ns=s3;
    s3: if(din)
             ns=s1;
        else 
            ns=s0;
    default: ns=s0;
 endcase
    
end  
assign out=(s==s1 && din==1)?1'b1:1'b0;
               
endmodule
