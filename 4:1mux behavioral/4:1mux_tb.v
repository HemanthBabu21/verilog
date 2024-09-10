module mux4to1_tb();
reg [3:0]in;
reg [1:0]se;
wire y;
integer i,j;
mux4to1 TB(.in(in),.se(se),.y(y));

initial
begin
{in,se}=0;
for(i=0;i<4;i=i+1)
    begin
     se=i;
     for(j=0;j<16;j=j+1)
        begin
            in=j;
            #10;
         end
     end
#20 $finish;
  end      
endmodule




