`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:43:53 11/28/2013 
// Design Name: 
// Module Name:    memoriaDeInstrucciones 
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
module memoriaDeInstrucciones(
			input [9:0] direccion,
			output [31:0] instruccion,
			input clk
    );
	 
	integer i; 
	reg [31:0] rom [1023:0];
	reg [31:0] auxData;
	
initial begin
		//rom[0] = 32'b00010000001000000000000000000001; //BEQ r1, r1, 2
		rom[0] = 32'b00000000001000100001100000100000; // ADD r3, r2, r1
		rom[1] = 32'b00000000001000100010000000100000; // ADD r4, r2, r1
		rom[2] = 32'b00000000001000100010100000100000; // ADD r5, r2, r1
		rom[3] = 32'b00000000001000100011000000100000; // ADD r6, r2, r1
		rom[4] = 32'b10101100001000110000000000000000; // SW r3, 1(0)
		rom[5] = 32'b10001100001000100000000000000000; // LW r2, 1(0)
		for (i=6; i < 1024; i = i + 1)  // llenamos la memoria con 0
			begin
				rom[i] = 32'b0; //HLT				
			end
end

always @ (negedge clk)
begin
		auxData = rom [direccion];
end

assign instruccion = auxData;

endmodule
