//Declare the ports of Half adder module
module half_adder(
    A,
    B,
    Sum,
    Carry
    );

    //what are the input ports.
    input A,B;
  
    //What are the output ports.
    output Sum,Carry;
    
     
     //Implement the Sum and Carry equations using Verilog Bit operators.
     assign Sum = A ^ B;  //XOR operation
     assign Carry = A & B; //AND operation
    
endmodule
