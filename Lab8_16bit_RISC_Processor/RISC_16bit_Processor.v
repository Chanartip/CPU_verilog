`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:58:44 07/02/2017 
// Design Name: 
// Module Name:    RISC_16bit_Processor 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module RISC_16bit_Processor(clk, reset, Step, 
ANODE, A,B,C,D,E,F,G);

   // CPU_EU
   //
   //              clk, reset,    din, address,    dout, adr_sel, s_sel, pc_ld, pc_inc, reg_w_en, ir_ld, n,z,c
   CPU_EU u0 (step_clk, reset, CPU_in,    Addr, CPU_out, );
   
   // CU
   //
   //
   
   
   // Memory
   //
   //             clk, we, addr,     din,   dout
   ram_16x256 u2 (clk, We, Addr, CPU_out, CPU_in);
   
   // Display Controller
   //
   //                     clk, reset, seg, ANODE, A,B,C,D,E,F,G
   Display_Controller u3 (clk, reset, );
   
   // Switch Filter
   //
   //                clk, reset, Step_in, Step_out
   switch_filter u4 (clk, reset,    Step, step_clk);
   

endmodule
