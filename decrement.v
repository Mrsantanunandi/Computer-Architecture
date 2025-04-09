module decrement4bit(
    input [3:0] A,
    output [3:0] S,
    output ca_out
    );
    wire [3:0] B;
    assign B = 4'b1111; // Subtracting 1 by adding 2's complement of 1 = 1111

    wire [2:0] carry;

    fulladder1 FA0(.a(A[0]), .b(B[0]), .cin(1'b1), .sum(S[0]), .cout(carry[0]));
    fulladder1 FA1(.a(A[1]), .b(B[1]), .cin(carry[0]), .sum(S[1]), .cout(carry[1]));
    fulladder1 FA2(.a(A[2]), .b(B[2]), .cin(carry[1]), .sum(S[2]), .cout(carry[2]));
    fulladder1 FA3(.a(A[3]), .b(B[3]), .cin(carry[2]), .sum(S[3]), .cout(ca_out));
endmodule
