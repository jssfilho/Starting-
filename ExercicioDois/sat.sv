module sat(input reset, input reg signed [8:0] in,output reg signed [7:0] out);

	reg signed [7:0] limSup=120;
	reg signed [7:0] limInf=-120;
	
always @ (in or reset) begin
	if (reset) 
	begin
		out <= 8'b00000000;
	end
	else 
	begin
		if(in>limSup)begin
			out<=limSup;
			end
		else if(in<limInf)begin
			out<=limInf;
			end
		else begin
			out<=in;
			end
	end
end
endmodule 