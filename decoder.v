module decoder(D,X,Y,Z);
output [7:0] D;
input X,Y,Z;
assign D[0] = ~X & ~Y & ~Z;
assign D[1] = ~X & ~Y & Z;
assign D[2] = ~X & Y & ~Z;
assign D[3] = ~X & Y & Z;
assign D[4] =  X & ~Y & ~Z;
assign D[5] =  X & ~Y & Z;
assign D[6] =  X & Y & ~Z;
assign D[7] =  X & Y & Z;
endmodule
