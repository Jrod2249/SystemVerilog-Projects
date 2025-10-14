//=========================================================
// alu_transaction.sv
//=========================================================
class alu_transaction;

    rand logic [3:0] A;
    rand logic [3:0] B;
    rand logic [1:0] opcode;
         logic [3:0] result;
         logic [3:0] expected_result;

    // Randomization constraints
    constraint valid_range {
        A inside {[0:15]};
        B inside {[0:15]};
    }

    // Calculate expected result
    function void calc_expected();
        case (opcode)
            2'b00: expected_result = A + B;
            2'b01: expected_result = A - B;
            2'b10: expected_result = A & B;
            2'b11: expected_result = A | B;
            default: expected_result = 4'b0000;
        endcase
    endfunction

    // Display helper
    function void display(string tag);
        $display("[%s] A=%0d B=%0d opcode=%0b DUT=%0d EXP=%0d",
                 tag, A, B, opcode, result, expected_result);
    endfunction

endclass
