module JK(j,k,clk,reset,q,qn);

input j,k,clk,reset;
output q,qn;

reg q,qn;

always@(negedge clk)
begin
	case({reset,j,k})
	3'b 100:begin q<=q;qn=(~q); end
	3'b 101:begin q<=0;qn=(~q); end
	3'b 110:begin q<=1;qn=(~q); end
	3'b 111:begin q<=(~q);qn=(~qn);end
	default
	q<=0;
	endcase
	
	end
endmodule
	