module half_adder_tb();
reg a,b;
wire sum,carry;
integer i;
half_adder TB(.a(a),.b(b),.sum(sum),.carry(carry));
initial
   begin
        {a,b}=0;
    end
initial
    begin
      for(i=0;i<4;i=i+1)
        begin
            {a,b}=i;    
            #10;
         end
         #20; $finish;
      end
initial
    begin
        $monitor("a=%b,b=%b,sum=%b,carry=%b",a,b,sum,carry);
    end
endmodule
