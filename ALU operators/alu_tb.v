module alu_tb();
reg [7:0]a,b;
reg [3:0]com;
reg enable;
wire [15:0]y;
integer m,n,o;
reg [4*8:1]str;

 parameter ADD=4'b0000,
           INC=4'b0001,
           SUB=4'b0010,
           DEC=4'b0011,
           MUL=4'b0100,
           DIV=4'b0101,
           SHL=4'b0110,
           SHR=4'b0111,
           INV=4'b1000,
           AND=4'b1001,
           OR =4'b1010,
           NAND=4'b1011,
           NOR=4'b1100,
           XOR=4'b1101,
           XNOR=4'b1110,
           BUF=4'b1111;

alu DUT(a,b,com,enable,y);
task initialize;
begin
    {a,b,com,enable}=0;
end
endtask

task en(input i);
begin
    enable=i;
end
endtask

task inputs(input [7:0]j,k);
begin
    a=j;
    b=k;
end
endtask

task cmd(input [3:0]l);
begin
    com=l;
end
endtask

task delay();
begin
  #0.1;
end
endtask

always@(com)
begin
case(com)
           ADD:str="ADD";
           INC:str="INC";
           SUB:str="SUB";
           DEC:str="DEC";
           MUL:str="MUL";
           DIV:str="DIV";
           SHL:str="SHL";
           SHR:str="SHR";
           INV:str="INV";
           AND:str="AND";
           OR :str="OR";
           NAND:str="NAND";
           NOR:str="NOR";
           XOR:str="XOR";
           XNOR:str="XNOR";
           BUF:str="BUF";
endcase
end

initial
begin
initialize;
en(1'b1);
for(m=0;m<16;m=m+1)
begin
    for(n=0;n<16;n=n+1)
    begin
        inputs(m,n);
        for(o=0;o<16;o=o+1)
            begin
            com=o;
            delay;
            end
    end
end
$finish;
end            
initial
$monitor("the values a=%b,b=%b,cmd=%s,y=%b" ,a,b,str,y);   


endmodule
