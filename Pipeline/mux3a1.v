`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:08:40 12/20/2013 
// Design Name: 
// Module Name:    mux3a1 
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
module mux3a1(
		input [31:0] registro,forMem,forWb,
		input [1:0]  selector,
		output reg [31:0] valor
		);
		
always@(*)
		begin
			case(selector)
				2'b00: valor <= registro;
				2'b01: valor <= forWb;
				2'b10: valor <= forMem;				
				default: valor <= registro;
			endcase
				
		end


endmodule
