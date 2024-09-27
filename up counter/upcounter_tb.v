module upcount_tb();
reg [3:0]in;
reg load,clk,rst;
wire [3:0]c ;
parameter ck=10;

upcount TB(.in(in),.load(load),.clk(clk),.rst(rst),.c(c));

always
begin
    #(ck/2);
    clk=1'b0;
    #(ck/2);
    clk=~clk;
end

task ins(input l,input[3:0] d);
begin
@(posedge clk);
load=l;
in=d;
#10;
end
endtask

task reset();
begin
rst=1'b0;
#10;
rst=1'b1;
end
endtask

initial
begin
reset();
ins(1'b1,4'b1100);
#30;
ins(1'b1,4'b1000);
#10;
ins(1'b0,4'b1011);




end



endmodule
