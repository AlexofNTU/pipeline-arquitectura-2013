`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:51:35 12/28/2013 
// Design Name: 
// Module Name:    MuxReg 
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
module MuxReg(
			input [31:0] registro,forwarding,
			input selector,
			output reg [31:0] salida
    );
always@(*)
		begin
			case(selector)
				2'b00: salida <= registro;
				2'b01: salida <= forwarding;
				default: salida <= registro;
			endcase
				
		end


endmodule
