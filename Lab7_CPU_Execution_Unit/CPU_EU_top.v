`timescale 1ns / 1ps
/***************************************************************
*
* Author:	Chanartip Soonthornwan
* Email: 	Chanartip.Soonthornwan@student.csulb.edu
* Filename:	TopLevel_7.v
* Date: 		November 11, 2016
* Version: 	1.0
*
* Purpose: 	- To wire modules together to work properly and to provide the top-view
*           perspective of this project.
*           - There are three main components at the top level; CPU_EU, Memory, 
*           and DisplayController.
*           - The CPU_EU will be execute instructions received from Memory, then 
*           do arithmatic logic calculation before sending back to Memory and 
*           Display Controller to display the Data Out and Address on 7-segment Display
* 
* Notes:		For this project, the clock signal that goes into CPU_EU is a clock step 
*           from debounced button down.
*
****************************************************************/
module CPU_EU_top(clk, reset, Mem_w_en, Step_clk, 
A_d_sel, Adr_sel, S_sel, Pc_ld, Pc_inc, Reg_w_en, Ir_ld, 
Anode, A,B,C,D,E,F,G, n,z,c);

   input          clk, reset;
   input            Mem_w_en;
   input            Step_clk;
   input   A_d_sel,  Adr_sel, 
             S_sel,    Pc_ld, 
            Pc_inc, Reg_w_en, 
                       Ir_ld;

   output     [3:0]    Anode;
   output      A,B,C,D,E,F,G;
   output              n,z,c;
   
   wire   cpu_step, mem_w_en;
   wire      [15:0]  Address;
   wire      [15:0]  CPU_in ;
   wire      [15:0]  CPU_out;
   wire      [15:0]      seg;
   
   
   // CPU_EU
   // execute instructions provided by memeory by passing
   // the input data into Arithmatic Logic Unit and
   // return address or location to the memory and also
   // return output data to the memory.
   //   
   //             clk, reset,    din, address,    dout, adr_sel, s_sel, pc_ld, pc_inc, reg_w_en, ir_ld, n,z,c
   CPU_EU c0(cpu_step, reset, CPU_in, Address, CPU_out, Adr_sel, S_sel, Pc_ld, Pc_inc, Reg_w_en, Ir_ld, n,z,c);
   
   // Memory
   // 256x16 ram from Coregen provides Instructions to CPU_EU
   // and also memorized the data to the provided address from CPU_EU.
   //     
   //     clk,       we,         addr,     din,   dout
   ram r0(clk, mem_w_en, Address[7:0], CPU_out, CPU_in);
   
   // Display Controller
   // displays the selected output from mux
   // which is either Address or Data Out(D_out) from CPU_EU
   // 
   //                    clk, reset, seg, ANODE, A,B,C,D,E,F,G
   Display_Controller dc(clk, reset, seg, Anode, A,B,C,D,E,F,G);
   
   // A mux for Display controller to selected which data to display
   // on 7-segment display
   // if on-board switches[7] (or sw[6] here and or ad_sel) 
   //     is 1, selects Address from CPU_EU
   //        0, selects D_out   from CPU_EU. 
   //
   assign seg = A_d_sel ? Address: CPU_out;
   
   // Switch Filter
   // stablizes an input from a push button
   // by debouced module that needs 500Hs clock signal from
   // integrated clock divider module.
   //
   //                 clk, reset,  Step_in, Step_out
   switch_filter sf0 (clk, reset, Step_clk, cpu_step),
                 sf1 (clk, reset, Mem_w_en, mem_w_en);
   
   

endmodule
