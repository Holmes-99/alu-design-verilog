module fourBitSubtractor(input [3:0] A, B, input Cin, output [3:0] Sub, output Cout, output Overflow);
    wire [3:0] B_1s;  // 1's complement of B
    wire [2:0] Carry;

    assign B_1s = ~B;

    
    FullAdder S0(A[0], B_1s[0], Cin, Sub[0], Carry[0]);
    FullAdder S1(A[1], B_1s[1], Carry[0], Sub[1], Carry[1]);
    FullAdder S2(A[2], B_1s[2], Carry[1], Sub[2], Carry[2]);
    FullAdder S3(A[3], B_1s[3], Carry[2], Sub[3], Cout);

    // Overflow detection logic
    assign Overflow = (A[3] ^ B[3]) & (A[3] ^ Sub[3]);
endmodule
