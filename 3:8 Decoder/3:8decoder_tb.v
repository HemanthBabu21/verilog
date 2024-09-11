module dec3to8_tb();
reg [2:0]in;
wire [7:0]y;
integer i;

dec3to8 TB(.in(in),.y(y));

task initialize();
begin
in=0;
end
endtask

task data(input[2:0]a);
begin
in=a;
end
endtask

task delay();
begin 
#50;
end
endtask

initial
begin
initialize;
for(i=0;i<8;i=i+1)
begin
    data(i);
    delay;
    end
end    
initial
$monitor("the values in=%b,out=%d",in,y);
endmodule
