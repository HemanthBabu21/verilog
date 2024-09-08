module bidirection( a,b,ct);
inout a,b;
input ct;
bufif0 b1(b,ct,a);
bufif1 b2(a,ct,b);

endmodule
