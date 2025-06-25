module bin2oct( in,oct1,oct2,oct3

    );
  input [7:0]in;
  output reg [2:0]oct1;
  output reg [2:0]oct2;
  output reg [2:0]oct3;
  
  always@(*)
  begin
  oct1=in[2:0];
  oct2=in[5:3];
  oct3=in[7:6];

  $display("the octal no=%d%d%d",oct3,oct2,oct1);
  end
endmodule
