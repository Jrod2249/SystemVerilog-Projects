//=========================================================
//  ALU (Device Under Test)
//=========================================================
module alu (
    input  logic [3:0] A,
    input  logic [3:0] B,
    input  logic [1:0] opcode,   // 00=ADD, 01=SUB, 10=AND, 11=OR
    output logic [3:0] result
);

    always_comb begin
        case (opcode)
            2'b00: result = A + B;
            2'b01: result = A - B;
            2'b10: result = A & B;
            2'b11: result = A | B;
            default: result = 4'b0000;
        endcase
    end

endmodule
