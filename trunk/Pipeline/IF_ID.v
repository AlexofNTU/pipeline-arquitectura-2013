`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:00:03 12/06/2013 
// Design Name: 
// Module Name:    IF_ID 
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
module IF_ID(
			input clk,enable,flush,
			input [31:0] nextPcIN,instruccionIN,
			output reg [31:0] nextPcOUT,instruccionOUT
	 );
	 
always @ (posedge clk)
begin
		if(flush)
			begin
				nextPcOUT <=0;
				instruccionOUT <= 0;
			end
		
		else	if(enable == 1)
			begin
				nextPcOUT <= nextPcIN;
				instruccionOUT <= instruccionIN;
			end
end

endmodule
