module teste(input [7:0] data_in, input clk, input reset, output [2:0] count, output [1:0] state);
	
	wire valid_in;
	reg ready_in;
	contadorBits cb(clk, valid_in, reset,data_in,count,ready_in,state);
	always @ (posedge clk or posedge reset) begin
		
		if(ready_in)
			valid_in<=1'b1;
		else
			valid_in<=1'b0;
	end
	
endmodule 