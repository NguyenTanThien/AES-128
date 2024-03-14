module insmul(in,mul09,mul0B,mul0D,mul0E);
  input [7:0]in;
  output [7:0]mul0E,mul09,mul0B,mul0D;
  wire [7:0]result_mul2,result_mul4,result_mul8;
  mul2 inst(in[7:0],result_mul2);
  mul2 inst1(result_mul2,result_mul4);
  mul2 inst2(result_mul4,result_mul8);
  assign mul09[7:0]= result_mul8 ^ in[7:0];
  assign mul0B[7:0]= result_mul8 ^ in[7:0] ^ result_mul2;
  assign mul0E[7:0]= result_mul8 ^ result_mul4 ^ result_mul2;
  assign mul0D[7:0]= result_mul8 ^ result_mul4 ^ in[7:0];
endmodule