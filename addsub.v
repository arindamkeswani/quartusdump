module addsub(a, b, m, s, c);
input [3:0]a,b;
input m;
output [3:0]s;
output c;
wire c1,c2,c3,bn0,bn1,bn2,bn3;
assign bn0=b[0]^m;
assign bn1=b[1]^m;
assign bn2=b[2]^m;
assign bn3=b[3]^m;

full_adderlab6 fa1(
.Data_in_A(a[0]),
.Data_in_B(bn0),
.Data_in_C(m),
.Data_out_Sum(s[0]),
.Data_out_Carry(c1)
);
	
full_adderlab6 fa2(
.Data_in_A(a[1]),
.Data_in_B(bn1),
.Data_in_C(m),
.Data_out_Sum(s[1]),
.Data_out_Carry(c2)
);
full_adderlab6 fa3(
.Data_in_A(a[2]),
.Data_in_B(bn2),
.Data_in_C(m),
.Data_out_Sum(s[2]),
.Data_out_Carry(c3)
);
full_adderlab6 fa4(
.Data_in_A(a[3]),
.Data_in_B(bn3),
.Data_in_C(m),
.Data_out_Sum(s[3]),
.Data_out_Carry(c)
);
endmodule

module addsub_testbench;
reg [3:0]a,b;
reg m;
wire [3:0]s;
wire c;

addsub DUT(a, b, m, s, c);
initial
begin
a[0]=0;a[1]=1;a[2]=0;a[3]=1;
b[0]=0;b[1]=0;b[2]=1;b[3]=1;   
m=0;
#10;
a[0]=0;a[1]=1;a[2]=0;a[3]=1;
b[0]=1;b[1]=0;b[2]=0;b[3]=0;   
m=1;
#100;
end
endmodule
