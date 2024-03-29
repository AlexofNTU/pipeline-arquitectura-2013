`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:30:27 12/07/2013 
// Design Name: 
// Module Name:    alu_prueba 
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
module alu_prueba(
				input [15:0] A,
				input [31:16] B, 
				output reg [15:0] ALUOut
    );

always @(A, B) 
		ALUOut <= A + B; 
 
endmodule
