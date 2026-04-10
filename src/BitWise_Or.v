module BitWise_Or(input [3:0] A,B,output [3:0] Result);
 
    or (Result[0], A[0], B[0]);
    or (Result[1], A[1], B[1]);
    or (Result[2], A[2], B[2]);
    or (Result[3], A[3], B[3]);

endmodule
