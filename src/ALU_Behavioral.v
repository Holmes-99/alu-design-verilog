module ALU_Behavioral( input [3:0] A , B, input [2:0] OpCode , output reg [3:0] Result , output reg Cout , Overflow);
    wire [3:0] sum, sub, or_result, and_result;
    wire cout_add, cout_sub, overflow_add, overflow_sub;

    
    fourBitAdder adder(A, B, 1'b0, sum, cout_add, overflow_add);
    fourBitSubtractor subtractor(A, B, 1'b0, sub, cout_sub, overflow_sub);
    BitWise_Or OR(A, B, or_result);
    BitWise_And AND(A, B, and_result);

    always @(*) begin
        case (OpCode)
            3'b000: {Result, Cout, Overflow} = {sub, cout_sub, overflow_sub}; 
            3'b001: {Result, Cout, Overflow} = {sum, cout_add, overflow_add};
            3'b010: {Result, Cout, Overflow} = {or_result, 1'b0, 1'b0};
            3'b011: {Result, Cout, Overflow} = {and_result, 1'b0, 1'b0};
            default:{Result, Cout, Overflow} = {4'bxxxx, 1'bx, 1'bx};
        endcase
    end
endmodule
