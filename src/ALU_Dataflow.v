module ALU_Dataflow(input [3:0] A , B , input [2:0] OpCode , output [3:0] Result , output Cout , Overflow);

    wire [3:0] sum, sub, or_result, and_result;
    wire cout_add, cout_sub, overflow_add, overflow_sub;

    fourBitAdder adder(A, B, 1'b0, sum, cout_add, overflow_add);
    fourBitSubtractor subtractor(A, B, 1'b0, sub, cout_sub, overflow_sub);
    BitWise_Or OR(A, B, or_result);
    BitWise_And AND(A, BS, and_result);

    assign {Result, Cout, Overflow} = (OpCode == 3'b000) ? {sub, cout_sub, overflow_sub} :
                                      (OpCode == 3'b001) ? {sum, cout_add, overflow_add} :
                                      (OpCode == 3'b010) ? {or_result, 1'b0, 1'b0} :
                                      (OpCode == 3'b011) ? {and_result, 1'b0, 1'b0} :
                                                          {4'b0000, 1'b0, 1'b0};
endmodule
