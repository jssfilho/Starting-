module DPCM(input signed [7:0] prdata, input pclk, preset, input pSel, pEnable, pWrite,output signed [7:0] out,
output pReady, output [1:0] estado);
	
	
	reg signed [7:0] ant;
	
	enum  reg [1:0] {IDLE,SETUP,ACCESS} state;
	
	wire signed [8:0] xIn;
	wire signed [7:0] yOut;
	
	sat s(preset, xIn, yOut);
	
	assign estado = state;
	assign xIn = prdata - ant;
	
	always @ (posedge pclk or posedge preset) begin
		if (preset)begin
			state <= IDLE;
		end
		else
			case (state)
				IDLE:begin
					if(pSel) begin
						state<=SETUP;
					end
					else
						state<=IDLE;
				end
				SETUP:begin
					if(pEnable)begin
						pReady<=1;
						state<=ACCESS;
					end
					else
						state<=ACCESS;
				end
				ACCESS:begin
					if(pWrite & pSel) begin
						pReady<=0;
						out <= yOut;
						ant <= prdata;
						state <= SETUP;
					end
					
					//else if(pSel) begin state <= SETUP;end
					else
						
						state<=IDLE;
				end
			endcase
	end

endmodule