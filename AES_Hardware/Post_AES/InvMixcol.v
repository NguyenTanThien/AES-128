module InvMixcol(in,invmixcol);
  input wire [31:0] in;
  output wire [31:0] invmixcol;
  wire [7:0] mul09,mul0B,mul0D,mul0E,mul09_1,mul0B_1,mul0D_1,mul0E_1,mul09_2,mul0B_2,mul0D_2,mul0E_2,mul09_3,mul0B_3,mul0D_3,mul0E_3;
  insmul inst(in[7:0],mul09,mul0B,mul0D,mul0E);
  insmul inst1(in[15:8],mul09_1,mul0B_1,mul0D_1,mul0E_1);
  insmul inst2(in[23:16],mul09_2,mul0B_2,mul0D_2,mul0E_2);
  insmul inst3(in[31:24],mul09_3,mul0B_3,mul0D_3,mul0E_3);  
  assign invmixcol[31:24] = mul0E_3 ^ mul0B_2 ^ mul0D_1 ^ mul09;
  assign invmixcol[23:16] = mul09_3 ^ mul0E_2 ^ mul0B_1 ^ mul0D;
  assign invmixcol[15:8] = mul0D_3 ^ mul09_2 ^ mul0E_1 ^ mul0B;
  assign invmixcol[7:0] = mul0B_3 ^ mul0D_2 ^ mul09_1 ^ mul0E;
endmodule