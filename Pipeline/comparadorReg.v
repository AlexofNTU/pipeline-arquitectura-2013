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
			output reg salto,
			input [5:0] opCode
    );

always @*
begin
	case(opCode)
		
			6'b000100: //instruccion BEQ
				begin 
					if(A == B)
						salto <= 1;
					else
						salto <= 0;
				end
			6'b000101: //instruccion BEQ
				begin 
					if(A != B)
						salto <= 1;
					else
						salto <= 0;
				end
	endcase
					
	
end
endmodule
