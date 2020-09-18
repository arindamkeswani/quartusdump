module full_adderlab6(Data_in_A, Data_in_B,Data_in_C,Data_out_Sum,Data_out_Carry);
	//what are the input ports.
    input Data_in_A;
    input Data_in_B;
     input Data_in_C;
    //What are the output ports.
    output Data_out_Sum;
     output Data_out_Carry;
     //Internal variables
     wire ha1_sum;
     wire ha2_sum;
     wire ha1_carry;
     wire ha2_carry;
     wire Data_out_Sum;
     wire Data_out_Carry;

     //Instantiate the half adder 1
    half_adder  ha1(
        .A(Data_in_A),
        .B(Data_in_B),
        .Sum(ha1_sum),
        .Carry(ha1_carry)
    );
    
    //Instantiate the half adder 2
    half_adder  ha2(
        .A(Data_in_C),
        .B(ha1_sum),
        .Sum(ha2_sum),
        .Carry(ha2_carry)
    );

    //sum output from 2nd half adder is connected to full adder output
    assign Data_out_Sum = ha2_sum;  
    //The carry's from both the half adders are OR'ed to get the final carry./
    assign Data_out_Carry = ha1_carry | ha2_carry;
    
endmodule