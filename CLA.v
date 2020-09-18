module CLA(s,a,b,ci,co);
 input [3:0]a,b;
 output [4:0]s;
 input ci;
 output co;
 wire [3:0]G,P,C;
 assign G = a&b;
 assign P = a^b;
 assign C[0]=ci;
 assign C[1]=G[0] + (P[0]&ci);
 assign C[2]=G[1] + (P[1]&G[0]) + (P[1]&P[0]&ci);
 assign C[3]=G[2] + (P[2]&G[1]) + (P[2]&P[1]&G[0]) +  (P[2]&P[1]&P[0]&ci);
 assign co=G[3]+ (P[3]&G[2]) + (P[3]&P[2]&G[1]) +  (P[3]&P[2]&P[1]&G[0]) + (P[3]&P[2]&P[1]&P[0]&ci);
 assign s = {co,P^C};
endmodule