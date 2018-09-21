module somador(b, a, c0, s, c4);
    input [3:0] b, a;
    input c0;
    output [3:0] s;
    output c4;
    wire [3:1] c;
    somador_completo SC0(b[0], a[0], c0, s[0], c[1]),
							SC1(b[1], a[1],c[1], s[1], c[2]),
							SC2(b[2], a[2],c[2], s[2], c[3]),
							SC3(b[3], a[3],c[3], s[3], c4);
endmodule


