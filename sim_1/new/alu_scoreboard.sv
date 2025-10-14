//=========================================================
//  Scoreboard
//=========================================================
class alu_scoreboard;
    task check(alu_transaction t);
        t.calc_expected();
        if (t.result !== t.expected_result)
            $display("[ERROR] Mismatch! A=%0d B=%0d opcode=%0b DUT=%0d EXP=%0d",
                     t.A, t.B, t.opcode, t.result, t.expected_result);
        else
            $display("[OK] A=%0d B=%0d opcode=%0b result=%0d",
                     t.A, t.B, t.opcode, t.result);
    endtask
endclass

