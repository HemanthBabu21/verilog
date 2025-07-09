module pattern();
integer i,j;
initial
begin
for(i=1;i>=1;i=i+1)
    begin
        for(j=5;j>=i;j=j-1)
            begin
            $write("",j);
            end
  $display("");
  end
   
 end   
 endmodule
