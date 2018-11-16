module contadorBits
(
	input	clk, valid_in, reset,
	input [7:0] data_in,
	output reg [2:0] data_out,
	output reg ready_in,
	output reg [1:0] outState
);

	enum  reg [1:0] {IDLE, DATA_IN, COUNT, OUT} state;
	
	reg [2:0] out[1:0];
	reg [7:0] ultInput;
	
	assign outState = state;
	
	always @ (posedge clk or posedge reset) begin
		if (reset)
			state <= IDLE;
		else
			case (state)
				IDLE:
				begin
					if(valid_in)
						begin
							state <= DATA_IN;
							ready_in <= 1'b1;
							out[0]+=3'b0;
							out[1]+=3'b0;
						end
				end
				DATA_IN:
				begin
					ultInput<=data_in;
					state <= COUNT;
					ready_in <= 1'b0;
				end
				COUNT:
				begin
					for(int i = 1; i < 8; i++) 
						begin
						if(data_in[i])
							begin
								out[1]+=1'b1;
							end
						else
							begin
								out[0]+=1'b1;
							end
						end
					state <= OUT;
				end
				OUT:
				begin
					data_out <= out[ultInput[0]];
					state <= IDLE;
				end
			endcase
	end
	

endmodule
