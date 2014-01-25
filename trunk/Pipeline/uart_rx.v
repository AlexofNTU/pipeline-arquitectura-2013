`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:00:30 01/25/2014 
// Design Name: 
// Module Name:    uart_rx 
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
module uart_rx
	#(
		parameter DBIT = 8,
					 SB_TICK = 16
	 )

	(
		input rx, s_tick, clk, rst,
		output [7:0] dout,
		output reg rx_done_tick
	);

localparam [1:0]  IDLE = 2'b00,
						START = 2'b01,
						DATA = 2'b10,
						STOP = 2'b11;

reg [1:0] current_state, next_state;
reg [3:0] s, s_next;
reg [2:0] n, n_next;
reg [7:0] b, b_next;

always @(posedge clk, posedge rst)
	begin
		if(rst)
			begin
				current_state <= IDLE;
				s <= 0;
				n <= 0;
				b <= 0;
			end
		else
			begin
				current_state <= next_state;
				s <= s_next;
				n <= n_next;
				b <= b_next;
			end
	end


always @*
		begin
		next_state = current_state;
		s_next = s;
		n_next = n;
		b_next = b;
		rx_done_tick = 0;
		
          case(current_state)
             IDLE: if(~rx)
							begin
								s_next = 0;
								next_state = START;
							end
				 START: if(s_tick)
								begin
									if (s == 7)
										begin
											s_next = 0;
											n_next = 0;
											next_state = DATA;
										end
									else
										begin
											s_next = s + 1;
										end
								end					
				 DATA: if(s_tick)
								begin
									if(s == (SB_TICK-1))
										begin
											s_next = 0;
											b_next = { rx, b[7:1]} ;
											if(n == (DBIT-1)) 
												begin
													next_state = STOP;
												end
											else
												begin
													n_next = n + 1;
												end
										end
									else
										begin
											s_next = s + 1;
										end	
								end
					 STOP: if(s_tick)
								begin
									if(s == (SB_TICK-1))
										begin
											rx_done_tick = 1;
											next_state = IDLE;
										end
									else
										begin
											s_next = s + 1;
										end
								end
				 endcase
     
		end
		assign dout =  b;
	
endmodule