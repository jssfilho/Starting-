module somador_completo(a,b, cin, s, cout);
	input a, b, cin;
	output s, cout;
	wire sm, cm, ct;
	meio_somador ms_um(a, b, sm, cm), ms_dois(sm, cin, s, ct);
	assign cout = ct | cm;
endmodule 
