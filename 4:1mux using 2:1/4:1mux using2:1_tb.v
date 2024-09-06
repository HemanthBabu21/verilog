module mux4_tb();
reg [3:0]i;
reg [1:0]s;
wire y;
integer k,j;
mux4 TB(.i(i),.s0(s[0]),.s1(s[1]),.y(y));
initial
begin
i=4'b0000;
s=2'b00;
end

initial
begin
for(k=0;k<4;k=k+1)
begin
    s=k;
    
        for(j=0;j<16;j=j+1)
            begin
                i=j;
                #5;
            end
          
     end
       
$finish;
end
endmodule
