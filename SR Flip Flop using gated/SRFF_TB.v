module srff_tb();
reg s,r;
wire q,qb;
srff TB(.s(s),.r(r),.q(q),.qb(qb));

task inputs(input a,b);
begin
s=a;
r=b;
#10;
end
endtask

initial
begin
inputs(0,0);
#10;
inputs(0,1);
#10;
inputs(1,0);
#10;
inputs(1,1);
#100 $finish;
end


endmodule
