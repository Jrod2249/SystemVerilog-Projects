🔧 SystemVerilog UVM Testbench — Custom ALU Verification
🧩 Overview

This project demonstrates a SystemVerilog verification environment built to test a custom Arithmetic Logic Unit (ALU) design.
It applies UVM-style verification principles—including randomized stimulus, a driver, monitor, and scoreboard—to validate ALU functionality.

The goal is to showcase a structured verification flow suitable for ASIC/FPGA design validation, highlighting testbench modularity and automation.

⚙️ Features

✅ Custom ALU Design — Implements basic arithmetic and logic operations (ADD, SUB, AND, OR)

✅ SystemVerilog Testbench — Self-checking, object-oriented verification environment

✅ UVM-style Components — Transaction, Driver, Monitor, and Scoreboard

✅ Randomized Stimulus Generation — Uses constrained random values for operands and opcodes

✅ Simulation-Ready — Verified using Vivado Simulator 2024.2 (compatible with ModelSim/QuestaSim)

🧠 Project Structure
├── alu.sv                 # ALU RTL (Device Under Test)
├── alu_if.sv              # DUT interface definition
├── alu_transaction.sv     # Transaction class (randomized test data)
├── alu_driver.sv          # Drives input signals to DUT
├── alu_monitor.sv         # Observes DUT outputs
├── alu_scoreboard.sv      # Compares DUT vs expected results
├── tb_alu.sv              # Top-level testbench connecting all components
└── README.md              # Project documentation

🧪 Simulation Instructions
Vivado Simulator (Recommended)

Open Vivado 2024.2

Create a new RTL project

Add all .sv files as Simulation Sources

Set tb_alu.sv as the top module

Run Behavioral Simulation

ModelSim / QuestaSim (Alternative)
vlog *.sv
vsim tb_alu
run -all

📊 Expected Output

Console messages should show randomized ALU operations and self-checking results:

[OK] A=5 B=3 opcode=00 result=8
[OK] A=7 B=4 opcode=01 result=3
[OK] A=2 B=5 opcode=10 result=0


If an error occurs, mismatches are reported automatically:

[ERROR] Mismatch! A=9 B=3 opcode=00 DUT=11 EXP=12

🧩 Future Improvements

Add functional coverage and assertions

Expand ALU to include XOR, shift, and comparison operations

Integrate with UVM base classes for reusable components

Build waveform automation for regression testing

👤 Author

Jerrod Eanes
Computer Engineering Student, University of Central Florida
