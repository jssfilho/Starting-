module somador_8bits(a, b, c0, s, c32);
	input [31:0] a, b;
	input c0;
	output [31:0] s;
	output c32;
	wire [31:1] c;
	somador_completo sc_zero(a[0], b[0], c0, s[0], c[1]),
							sc_um(a[1], b[1], c[1], s[1], c[2]),
							sc_dois(a[2], b[2], c[2], s[2], c[3]),
							sc_tres(a[3], b[3], c[3], s[3], c[4]),
							sc_quatro(a[4], b[4], c[4], s[4], c[5]),
							sc_cinco(a[5], b[5], c[5], s[5], c[6]),
							sc_seis(a[6], b[6], c[6], s[6], c[7]),
							sc_sete(a[7], b[7], c[7], s[7], c[8]),
							sc_oito(a[8], b[8], c[8], s[8], c[9]),
							sc_nove(a[9], b[9], c[9], s[9], c[10]),
							sc_dez(a[10], b[10], c[10], s[10], c[11]),
							sc_onze(a[11], b[11], c[11], s[11], c[12]),
							sc_doze(a[12], b[12], c[12], s[12], c[13]),
							sc_treze(a[13], b[13], c[13], s[13], c[14]),
							sc_quatorze(a[14], b[14], c[14], s[14], c[15]),
							sc_quinze(a[15], b[15], c[15], s[15], c[16]),
							sc_dezenseis(a[16], b[16], c[16], s[16], c[17]),
							sc_dezessete(a[17], b[17], c[17], s[17], c[18]),
							sc_dezoito(a[18], b[18], c[18], s[18], c[19]),
							sc_dezenove(a[19], b[19], c[19], s[19], c[20]),
							sc_vinte(a[20], b[20], c[20], s[20], c[21]),
							sc_vinteUm(a[21], b[21], c[21], s[21], c[22]),
							sc_vinteDois(a[22], b[22], c[22], s[22], c[23]),
							sc_vinteTres(a[23], b[23], c[23], s[23], c[24]),
							sc_vinteQuatro(a[24], b[24], c[24], s[24], c[25]),
							sc_vinteCinco(a[25], b[25], c[25], s[25], c[26]),
							sc_vinteSeis(a[26], b[26], c[26], s[26], c[27]),
							sc_vinteSete(a[27], b[27], c[27], s[27], c[28]),
							sc_vinteOito(a[28], b[28], c[28], s[28], c[29]),
							sc_vinteNove(a[29], b[29], c[29], s[29], c[30]),
							sc_Trinta(a[30], b[30], c[30], s[30], c[31]),
							sc_TrintaUm(a[31], b[31], c[31], s[31], c32);
endmodule


