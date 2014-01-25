`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:02:09 01/25/2014 
// Design Name: 
// Module Name:    fifo 
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
module fifo
	#( parameter 	B = 8,
						W = 1
	)

	(
				input clk, rst, wr, rd,
				input [B-1:0] w_data, 
				output [B-1:0] r_data,
				output full, empty
    );

reg [B-1:0] array [2**W-1:0];
reg [W-1:0] w_ptr, w_ptr_sig, w_ptr_next;
reg [W-1:0] r_ptr, r_ptr_sig, r_ptr_next;
reg full_reg, empty_reg, full_next, empty_next;

wire wr_en;

always @(posedge clk)
	begin
		if (wr_en)
			array[w_ptr] <= w_data;	
	end

assign r_data = array[r_ptr];
assign wr_en = wr & ~full_reg;

always @(posedge clk, posedge rst)
	begin
		if(rst)
			begin
				r_ptr <= 0;
				w_ptr <= 0;
				full_reg <= 0;
				empty_reg <= 1;
			end
		else
			begin
				r_ptr <= r_ptr_next;
				w_ptr <= w_ptr_next;
				empty_reg <= empty_next;
				full_reg <= full_next;
			end
	end


always @*
	begin
	r_ptr_sig = r_ptr + 1;
	w_ptr_sig = w_ptr + 1;
	
	// Por default
	empty_next = empty_reg;
	full_next = full_reg;
	r_ptr_next = r_ptr;
	w_ptr_next = w_ptr;
	
		case({wr, rd})
			2'b01:
				if (~empty_reg)
					begin
						r_ptr_next = r_ptr_sig;
						full_next = 0;
						if (r_ptr_sig == w_ptr)
							empty_next = 1;
							
					end
			2'b10:
				if(~full_reg)
					begin
						w_ptr_next = w_ptr_sig;
						empty_next = 0;
						if (w_ptr_sig == r_ptr)
							full_next = 1;
					end
			2'b11:
				begin
					r_ptr_next = r_ptr_sig;
					w_ptr_next = w_ptr_sig;
				end
		endcase
	end

	assign full = full_reg;
	assign empty = empty_reg;

endmodule
