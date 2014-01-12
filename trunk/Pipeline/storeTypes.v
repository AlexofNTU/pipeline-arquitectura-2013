`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:24:50 01/11/2014 
// Design Name: 
// Module Name:    storeTypes 
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
module storeTypes(
			input [5:0] instruccion,
			input [31:0] dataIN,
			output reg [31:0] dataOUT
    );

//reg [7:0] data8;
//reg [15:0] data16;
always @*
begin
	case(instruccion)
			6'b101000: //SB
					begin
						if(dataIN[7] == 0)
								dataOUT = dataIN[7:0];
						else
								dataOUT = dataIN[7:0] + 32'hFFFFFF00;
					end
			6'b101001: //SH
					begin
						if(dataIN[15] == 0)
								dataOUT = dataIN[15:0];
						else
								dataOUT = dataIN[15:0] + 32'hFFFFFF00;
					end
			default:
					begin
						dataOUT = dataIN;
					end
		endcase	
end


endmodule
