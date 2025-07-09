module pattern();
integer i,j;
initial
begin
for(i=5;i>=1;i=i-1)
    begin
        for(j=1;j<=i;j=j+1)
            begin
            $write("",j);
            end
  $display("");
  end
   
 end   
endmodule
