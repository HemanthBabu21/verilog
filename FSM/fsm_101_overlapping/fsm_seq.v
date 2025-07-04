module fsm_seq(clk,rst,in,out );
input clk,rst,in;
output out;

reg [1:0] s,ns;
parameter s0=2'b00,
          s1=2'b01,
          s2=2'b10,
          s3=2'b11;
          
   always@(posedge clk or posedge rst)
   begin
   if(rst)
        s<=s0;
   else
        s<=ns;
   end
   
   always@(s or in)
   begin
   ns=s0;
   case(s)
   
        s0:if(in)
                ns=s1;
           
            else
                ns=s0;
        s1:if(in)   
                ns=s1;
           else
                ns=s2;
         s2:if(in)
                ns=s3;
            else
                ns=s0;
         s3:if(in)
                ns=s1;
            else
                //ns=s0;//non overlapping
                  ns=s2;
        endcase
     end
     
  assign out=(s==s3);

endmodule
