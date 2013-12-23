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
		rom[0] = 32'h8C010001; // ADD r3, r2, r1 1 + 7 
		rom[1] = 32'h00211020; // ADD r4, r2, r1 
		rom[2] = 32'h00441820;
		rom[3] = 32'h00622020;

		for (i=4; i < 1024; i = i + 1)  // llenamos la memoria con 0
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
