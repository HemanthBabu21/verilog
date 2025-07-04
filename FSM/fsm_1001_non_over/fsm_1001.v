module fsm_1001(
    input clk,
    input rst,
    input in,
    output out
    );
    
reg [2:0] s,ns;

parameter s0=0,s1=1,s2=2,s3=3,s4=4;

always@(posedge clk or posedge rst)
begin
    if(rst)
        s<=s0;
    else    
        s<=ns;
end
always@(*)
begin
    case(s)
    
    s0:if(in)   ns=s1;
        else    ns=s0;
        
    s1:if(in)   ns=s1;
        else    ns=s2;
       
    s2:if(in)   ns=s1;
        else    ns=s3;
      
    s3:if(in)   ns=s4;
        else    ns=s0;
        
    s4:if(in)   ns=s1;
        else    //ns=s2; 
                ns=s0;
        
    default: ns=s0;
    endcase
    
end

assign out=(s==s4);
endmodule
