`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//
// Author:	   Chanartip Soonthornwan
// Email: 	   Chanartip.Soonthornwan@student.csulb.edu
// Filename:	IDP.v
// Date: 		October 23, 2016
// Version: 	1.0
//
// Purpose: 	Calculating Data memorized in Register File through to ALU mode.
//             IDP's clock changed by RegFile_Step(or Button Down), and rememorize
//             the output into the Register File and then outputs to Display 
//             Controller to display the output.
//
// Notes:		Switching input between Register File output(S) and DataIn(DS)
//             by S_Sel and then displaying output on 7segment display where
//             MSByte of Reg_out is displayed at two-most significant digits,
//             and LSByte of Alu_out is displayed at two-least significant digits.
//
// Revision date: June 22, 2017
// Version      : 1.1
// Update       : re-arrange comments and change some variables names.
//
////////////////////////////////////////////////////////////////////////////////////
module Integer_Data_Path
(clk, reset, W_En, S_Sel, W_Adr, R_Adr, S_Adr, ALU_OP, DS, N,Z,C, Reg_Out, Alu_Out);

   input              clk, reset;      // On-board clock, reset signal
   input                    W_En;      // Write Enable
   input                   S_Sel;      // S_MUX input select
   input        [2:0]      W_Adr;      // Write Address
   input        [2:0]      R_Adr;      // R Address
   input        [2:0]      S_Adr;      // S Address
   input        [3:0]     ALU_OP;      // Arithmatic Logic Unit(ALU) Operation
   input        [15:0]        DS;      // Data Input
   
   output                N, C, Z;      // Negative, Carry, Zero flags
   output       [15:0]   Reg_Out;      // Register_Files output
   output       [15:0]   Alu_Out;      // ALU output
   
   wire         [15:0]  S_MUX_IN;      // Data from Register_File to S_MUX
   wire         [15:0] S_MUX_OUT;      // Data from S_MUX to ALU

   // Register File is the memory of IDP.
   // It will recieve 16-bit input from Alu unit output, and it will
   // Read/Write on the addresed register on W_Adr, R_Adr, and S_Adr when
   // write enable is on/off(W_En). Then output to R, S
   //
   //                  clk, reset,   we,       W, W_Adr, R_Adr, S_Adr,       R,        S
   Register_File idp0 (clk, reset, W_En, Alu_Out, W_Adr, R_Adr, S_Adr, Reg_Out, S_MUX_IN);
   
   // Arithmetic Logic Unit
   // Recieve outputs from Register File and S_Mux and Arithmetic Mode(ALU_OP), and then
   // make a decision to calculate the input to output based on the Arithmetic mode.
   //
   //              R,         S, Alu_Op,       Y, N, Z, C
   ALU idp1 (Reg_Out, S_MUX_OUT, ALU_OP, Alu_Out, N, Z, C);

   // S_Mux 
   // Selecting either the output from Register File or DS to be ALU input.
   //
   assign   S_MUX_OUT = S_Sel ? DS : S_MUX_IN;


endmodule
