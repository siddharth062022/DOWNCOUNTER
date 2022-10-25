`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2021 20:22:17
// Design Name: 
// Module Name: DOWNCOUNTER_TB
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


module DOWNCOUNTER_TB;
    reg RST;
    reg CLK;
    wire [0:3]COUNT;
    DOWNCOUNTER uut(.rst(RST),.clk(CLK),.count(COUNT));  
    initial
      begin 
      CLK <=0;
      end
    always #10 CLK=~CLK;
    initial
    begin
    RST=1;
    #20
    RST=0;
    #250
    RST=1;
    end
    
endmodule

    

