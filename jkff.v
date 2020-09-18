module jkff(j,k,q,cl);
input j,k,cl;
output q;

reg q;
always@(posedge cl)
	case({j,k})
	
	2'b00: begin q<=q; end
	2'b01: begin q<=1'b0; end
	2'b10: begin q<=1'b1; end
	2'b11: begin q<=(~q); end
	endcase
endmodule 