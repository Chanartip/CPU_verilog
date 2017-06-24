`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//
// Author:	   Chanartip Soonthornwan
// Email: 	   Chanartip.Soonthornwan@student.csulb.edu
// Filename:	Lab6_TopLevel.v
// Date: 		October 22, 2016
// Version: 	1.0
//
// Purpose: 	Wiring each unit to work properly, where Integer Data Path(IDP) Unit
//             calculating data from Register File and output to Display Controller
//             to multiplexing the data output to 7segment display.
//
// Notes:		MSByte of Reg_out is displayed at two-most significant digits,
//             and LSByte of Alu_out is displayed at two-least significant digits.
//             IDP_clk is IDP step.
//             S_Sel   is switching ALU data_in from the RegFile output and DS
//             btn_Left, btn_Right are Write enable address on Register File.
//             SW is 8-switches input.
//
// Revision date: June 22, 2017
// Version      : 1.1
// Update       : re-arrange comments and change some variables names.
//
////////////////////////////////////////////////////////////////////////////////////
module Integer_Data_Path_Top
(clk, reset, S_Sel, Step, W_Adr, R_Adr, S_Adr, ALU_OP, Flags, Anode, A,B,C,D,E,F,G);
   
   input         clk, reset;      // On-board clock, reset signal
   input              S_Sel;      // S_MUX input select
   input               Step;      // Step clock
   input   [2:0]      W_Adr;      // Write Address
   input   [2:0]      R_Adr;      // R Address
   input   [2:0]      S_Adr;      // S Address
   input   [3:0]     ALU_OP;      // Arithmatic Logic Unit(ALU) Operation
   
   output     A,B,C,D,E,F,G;      // 7-segment display
   output  [2:0]      Flags;      // LEDS indicator for Negative, Carry, Zero flags
   output  [3:0]      Anode;      // 7-segment anode

   wire            Step_Out;      // Step clock from switch_filter to IDP
   wire   [15:0]    Reg_Out;      // Register_Files output
   wire   [15:0]    Alu_Out;      // ALU output
   wire   [15:0]   S_MUX_IN;      // Data from Register_File to S_MUX
   wire   [15:0]  S_MUX_OUT;      // Data from S_MUX to ALU
   wire   [15:0]         DS;      // Data Input


   // Integer Data Path Module(IDP)
   // Calculating Data memorized in Register File through to ALU mode.
   // IDP's clock changed by RegFile_Step(or Button Down). Switching input
   // between Register File output(S) and DataIn(DS) by S_Sel and then
   // Displaying output on 7segment display
   // where MSByte of Reg_out is displayed at two-most significant digits,
   // and LSByte of Alu_out is displayed at two-least significant digits.
   //
   //                         clk, reset, W_En, S_Sel,           
   Integer_Data_Path t0 (Step_Out, reset, 1'b1, S_Sel, 
   //
   //              W_Adr,              R_Adr,             S_Adr, 
      {1'b0, W_Adr[1:0]}, {1'b0, R_Adr[1:0]}, {1'b0, S_Adr[1:0]}, 
   //
   //  ALU_OP,       DS,        N,       Z,       C, Reg_Out, Alu_Out
       ALU_OP, 16'hAA55, Flags[2],Flags[1],Flags[0], Reg_Out, Alu_Out );
                            
                            
   // DisplayController Module
   // Displaying 16 bits input on 7segment display by multiplexing the data out 
   // to one digit of segment display at a time.
   //
   //                     clk, reset,                           seg,     
   Display_Controller t1 (clk, reset, {Reg_Out[15:8], Alu_Out[7:0]},
   //
   //  ANODE, A,B,C,D,E,F,G 
       Anode, A,B,C,D,E,F,G);
   
   // Switch filter
   // dividing on-board clock to 500Hz and stablized switch signal
   // and send one-pulse signal to IDP module
   //
   //                clk, reset, Step_in, Step_out
   switch_filter t2 (clk, reset,    Step, Step_Out);
   
   
endmodule
