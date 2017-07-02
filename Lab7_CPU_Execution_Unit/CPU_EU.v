`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//
// Author:	   Chanartip Soonthornwan
// Email: 	   Chanartip.Soonthornwan@student.csulb.edu
// Filename:	CPU_EU.v
// Date: 		October 22, 2016
// Version: 	1.0
//
// Purpose: 	
//
// Notes:		
//
// Revision date: June 22, 2017
// Version      : 1.1
// Update       : re-arrange comments and change some variables names.
//
////////////////////////////////////////////////////////////////////////////////////
module CPU_EU(clk, reset, din, address, dout, adr_sel, s_sel, pc_ld, pc_inc, reg_w_en, ir_ld, n,z,c);

   input    clk      , reset  ;
   input    adr_sel  ,  s_sel , 
            pc_ld    , pc_inc , 
            reg_w_en , ir_ld  ;  
            
   input    [15:0]       din;
   
   output              n,z,c;
   output   [15:0]   address;
   output   [15:0]      dout;
   
   wire     [15:0]   reg_out;
   wire     [15:0]        IR;
   wire     [15:0]    pc_out;
   
   // Integer Datapath
   //
   //                    
   //                    clk, reset,     W_En, S_Sel,    ALU_OP,   W_Adr,   R_Adr,   S_Adr,  DS, N,Z,C, Reg_Out, Alu_Out
   Integer_Data_Path idp(clk, reset, reg_w_en, s_sel, IR[15:12], IR[8:6], IR[5:3], IR[2:0], din, n,z,c, reg_out,    dout);
   
   // Program Counter
   //                
   //                 clk, reset, pc_ld, pc_inc, pc_in, pc_out
   Program_Counter pc(clk, reset, pc_ld, pc_inc,  dout, pc_out);
   
   // Instruction Register
   //                      
   //                      clk, reset, ir_ld, ir_in, ir_out
   Instruction_Register ir(clk, reset, ir_ld,   din,    IR);
   
   // Address multiplexer
   //
   //
   assign   address = adr_sel ? reg_out : pc_out;
   
endmodule
