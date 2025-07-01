module fsm001(
    input clk,
    input rst,
    input in,
    output  out
    );
    
 reg [1:0]s,ns;
 parameter s0=0,s1=1,s2=2,s3=3;
 
 always@(posedge clk or posedge rst)
 begin
    if(rst)
        s<=s0;
    else
        s<=ns;
 end
 
 always@(*)
 begin
   //ns=s0;
    case(s)
    s0: if(in) ns=s0;
        else    ns=s1;
        
    s1: if(in)  ns=s0;
        else        ns=s2;

    s2: if(in)begin
           // out=1;
            ns=s3;
            end
        else  ns=s2;
    s3: if(in)
            ns=s0;
        else ns=s1;
    default: ns=s0;
  endcase
end  
 
assign out = (s ==s3 );     
endmodule
