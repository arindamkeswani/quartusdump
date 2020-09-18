module counter(j,k,clk,reset,q,qn);
input j,k,clk,reset;
output wire [3:0]q,qn;
JK jk1(j,k,clk,reset,q[0],qn[0]);
JK jk2(j,k,q[0],reset,q[1],qn[1]);
JK jk3(j,k,q[1],reset,q[2],qn[2]);
JK jk4(j,k,q[2],reset,q[3],qn[3]);
endmodule
