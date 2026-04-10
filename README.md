# 4-bit ALU Design using Verilog HDL

This project implements a simple 4-bit Arithmetic Logic Unit (ALU) using Verilog HDL, developed as part of a Digital Design course.

## Overview
The ALU performs basic arithmetic and logic operations on two 4-bit inputs using a control signal (OpCode).

## Features
- 4-bit input operands (A and B)
- 3-bit control signal (OpCode)
- Supports:
  - Addition
  - Subtraction
  - Bitwise AND
  - Bitwise OR

## Operations

| OpCode | Operation        |
|--------|-----------------|
| 000    | Subtraction     |
| 001    | Addition        |
| 010    | Bitwise OR      |
| 011    | Bitwise AND     |

## Modules

### Adder
- Implements 4-bit addition using structural modeling

### Subtractor
- Performs subtraction using structural logic

### AndGate / OrGate
- Implements bitwise logic operations

### ALU (Top Module)
- Uses behavioral modeling
- Selects operation based on OpCode

## Design Approach
- Structural Modeling → Adder, Subtractor, Logic Gates
- Dataflow Modeling → Interconnections
- Behavioral Modeling → ALU control logic

## Simulation
- All modules tested individually
- Full ALU tested with multiple input combinations
- Waveforms included in `/simulations`

## How to Run
1. Open project in Quartus
2. Compile the design
3. Run simulation using ModelSim (or Quartus simulator)
4. Apply test cases to verify functionality

## Example
A = 0101, B = 0011

- OpCode = 001 → Result = 1000 (Addition)
- OpCode = 000 → Result = 0010 (Subtraction)

## Key Concepts
- Verilog HDL
- Digital Logic Design
- Modular Design
- Simulation and Verification

## Files Included
- Verilog source code (`/src`)
  ## File Structure

- ALU_Behavioral.v → Top-level ALU module (behavioral modeling)
- ALU_Dataflow.v → Dataflow implementation connecting components
- fourBitAdder.v → 4-bit adder module
- full_adder.v → 1-bit adder used inside 4-bit adder
- fourBitSubtractor.v → 4-bit subtraction module
- BitWise_And.v → Bitwise AND operation
- BitWise_Or.v → Bitwise OR operation
  
- Simulation waveforms (`/simulations`)
- Design schematic (`/schematic`)
- Full project report (`/report`)

## Course Info
- Course: Digital Design / Computer Engineering
- University: Birzeit University
