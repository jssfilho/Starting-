module somador_completo(a, b, cin, s, cout);
    input a, b, cin;
    output s, cout;
    wire sm, cm, ct;
    meio_somador MS1(a, b, sm, cm), MS2(sm, cin, s, ct);
    assign cout = ct | cm;
endmodule
