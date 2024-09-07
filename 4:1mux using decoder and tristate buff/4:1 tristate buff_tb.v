module mux_tb();
    reg [1:0]s;
reg [3:0]i;
wire y;
integer j,k;

mux4 TB(.s(s),.i(i),.y(y));
initial
begin
s=0;
i=0;
end
initial
begin
    for(j=0;j<4;j=j+1)
        begin
        s=j;
        for(k=0;k<16;k=k+1)
            begin
            i=k;
            #10;
            end
         #10;
         end
 #50 $finish;     
  end   

endmodule
