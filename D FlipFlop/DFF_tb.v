module DFF_tb();
reg d,clk,rst;
wire q,qb;
DFF TB(.d(d),.clk(clk),.rst(rst),.q(q),.qb(qb));
parameter c=10;

always
begin
  #(c/2);
  clk=1'b0;
  #(c/2);
  clk=~clk;
end

task reset();
begin
    rst=1'b1;
    #20;
    rst=1'b0;
end
endtask

task din(input i);
 begin
  @(posedge clk);
    d=i;
    end
 endtask 

initial
begin
reset();
din(0);
din(1);
din(0);
din(1);
reset();
din(0);
din(1);
din(0);
din(1);
#10;
$finish;
end

initial
$monitor("din=%b,q=%b,qb=%b",d,q,qb);
endmodule
