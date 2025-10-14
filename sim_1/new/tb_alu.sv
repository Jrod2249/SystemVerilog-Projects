`timescale 1ns/1ps
//=========================================================
//  ALU Testbench (UVM-style but simplified)
//=========================================================
`include "alu_transaction.sv"
`include "alu_driver.sv"
`include "alu_monitor.sv"
`include "alu_scoreboard.sv"
`include "alu.sv"

module tb_alu;

    alu_if alu_vif();
    alu dut (
        .A(alu_vif.A),
        .B(alu_vif.B),
        .opcode(alu_vif.opcode),
        .result(alu_vif.result)
    );

    alu_driver      driver;
    alu_scoreboard  scoreboard;
    alu_transaction tr;

    initial begin
        driver = new(alu_vif);
        scoreboard = new();
        tr = new();

        // Run 10 randomized tests
        repeat (10) begin
            assert(tr.randomize());
            driver.drive(tr);
            scoreboard.check(tr);
        end

        $finish;
    end

endmodule
