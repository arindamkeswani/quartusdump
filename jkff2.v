module jkff2(j,k,q,cl);
input j,k,cl;
output q;

reg q;
always@(posedge cl)
	case({j,k})
	
	2'b00:q<=q;
	2'b01:q<=1'b0;
	2'b10:q<=1'b1;
	2'b11:q<=(~q);
	
	endcase
endmodule 

module jkfftestbench;
reg j,k,cl;
wire q;
jkff2 DUT(j,k,q,cl);
initial 
begin

#10 cl=0; j=0; k=0;
#10 cl=1; j=0; k=1;
#10 cl=0; j=1; k=0;
#10 cl=1; j=1; k=1;
#100;
end
endmodule 