module increment4bit(
    input [3:0] A,
    output [3:0] S,
    output ca_out
    );
    wire [2:0] carry;

    fulladder1 FA0(.a(A[0]), .b(1'b1), .cin(1'b0), .sum(S[0]), .cout(carry[0]));
    fulladder1 FA1(.a(A[1]), .b(1'b0), .cin(carry[0]), .sum(S[1]), .cout(carry[1]));
    fulladder1 FA2(.a(A[2]), .b(1'b0), .cin(carry[1]), .sum(S[2]), .cout(carry[2]));
    fulladder1 FA3(.a(A[3]), .b(1'b0), .cin(carry[2]), .sum(S[3]), .cout(ca_out));
endmodule
