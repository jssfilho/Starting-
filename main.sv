module main(as, bs, sai);
	input [3:0] as;
	input [3:0] bs;
	output [0:6] sai;
	wire [3:0] fio;
	somador sum(as, bs, 1'b0, fio);
	decode7seg dc(fio, saida);
endmodule 