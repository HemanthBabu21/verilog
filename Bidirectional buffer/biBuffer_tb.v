module bidirection_tb();
reg ct;
wire a,b;
reg a_in,b_in;
bidirection TB(.a(a),.b(b),.ct(ct));
initial
begin
ct=1;
a_in=1;
b_in=1;
#20;

ct=0;
a_in=1;
b_in=0;
#20;

ct=1;
a_in=1;
b_in=0;
#20;
$finish;
end

assign a=(ct==0)?b_in:1'bz;
assign b=(ct==1)?a_in:1'bz;


endmodule
