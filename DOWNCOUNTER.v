`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2021 20:17:38
// Design Name: 
// Module Name: DOWNCOUNTER
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DOWNCOUNTER(input rst,
    input clk,
   output [3:0] count
    );
    
   reg [3:0]r;
   assign count=r ;
   initial
   begin 
   r=15;
   end
    
    always@(clk,rst)
  begin
  
    if (rst==1)
    r<=15;
    else
    r= r-1; 
    if (r==-1)
    r<=15;
    end
    
    
 endmodule
        
  
        
