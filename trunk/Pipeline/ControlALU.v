`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:40:47 11/28/2013 
// Design Name: 
// Module Name:    ControlALU 
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
module ControlALU(
			input [5:0] instruccion,
			input [1:0] ALUOp,
			output reg [3:0] ALUctl
    );
	 
always @*
	begin
	
		if(ALUOp == 0)
				ALUctl <= 4'b0010; 
		else if(ALUOp[0] == 1)
				ALUctl <= 4'b0110;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b100000)) //ADD
				ALUctl <= 4'b0010;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b100010)) //SUB
				ALUctl <= 4'b0110;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b100100)) //AND
				ALUctl <= 4'b0000;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b100101)) //OR
				ALUctl <= 4'b0001;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b100111)) //NOR
				ALUctl <= 4'b0011;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b100110)) //XOR
				ALUctl <= 4'b1000;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b101010)) //SLT
				ALUctl <= 4'b0111;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b000000)) //SLL
				ALUctl <= 4'b0100;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b000010)) //SRL
				ALUctl <= 4'b0101;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b000011)) //SRA
				ALUctl <= 4'b1010;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b000110)) //SRLV
				ALUctl <= 4'b1001;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b000111)) //SRAV
				ALUctl <= 4'b1010;
		else if((ALUOp[1] == 1) && (instruccion[5:0] == 6'b000100)) //SLLV
				ALUctl <= 4'b0100;
		else
				ALUctl <= 4'b0000;
	end


endmodule
