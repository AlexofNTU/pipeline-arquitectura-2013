`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:41:44 11/28/2013 
// Design Name: 
// Module Name:    ALU 
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
module ALU( input [3:0] ALUctl,
				input [31:0] A,B, 
				output reg [31:0] ALUOut,
				output zero
    );

always @(ALUctl, A, B) 
 case (ALUctl)
	 4'b0000: ALUOut <= A & B;
	 4'b0001: ALUOut <= A | B;
	 4'b0010: ALUOut <= A + B; 
	 4'b0110: ALUOut <= A - B; 
	 4'b0111: ALUOut <= A < B ? 1:0;  
	 default: ALUOut <= 0;
 endcase

assign zero = (ALUOut==0);
 
endmodule
