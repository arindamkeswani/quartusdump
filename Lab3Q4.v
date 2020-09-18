module Lab3Q4(A,B,C,D,f);
	input A,B,C,D;
	output f;
	
	assign f= (~B&~C&D)|(A&~C&D)|(~A&B&~D)|(A&~B&D)|(~B&C&~D);
endmodule