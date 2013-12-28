`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:12:29 12/28/2013 
// Design Name: 
// Module Name:    comparadorReg 
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
module comparadorReg(
			input [31:0] A,B,
			output reg igual
    );

always @*
begin
	if(A == B)
		igual <= 1;
	else
		igual <= 0;
	
end
endmodule
