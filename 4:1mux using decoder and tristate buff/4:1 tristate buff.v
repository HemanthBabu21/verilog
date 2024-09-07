module mux4(s,i,y);
input [1:0]s;
input [3:0]i;
output  y;
wire [3:0]d;

decode a(s,d);
buffer t1(i[0],d[0],y);
buffer t2(i[1],d[1],y);
buffer t3(i[2],d[2],y);
buffer t4(i[3],d[3],y);
endmodule


module buffer(ctrl,in,z);
input ctrl,in;
output z;
bufif1 B(z,ctrl,in);
endmodule

module decode(t,u);
input [1:0]t;
output [3:0]u;
assign u[0]=~t[0]&~t[1];
assign u[1]=t[0]&~t[1];
assign u[2]=~t[0]&t[1];
assign u[3]=t[0]&t[1];

endmodule
