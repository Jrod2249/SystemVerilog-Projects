//=========================================================
//  Interface
//=========================================================
interface alu_if;
    logic [3:0] A, B;
    logic [1:0] opcode;
    logic [3:0] result;
endinterface
