module DATAPATH(CLK, reset, ENB, LOOP, LOAD, rst, tri_text, tri_key, tri_keyex, tri_shift, tri_Mix, tri_invMix, 
                tri_invshift, tri_invSub, tri_out_text1,tri_out_text2,DATA, KEY,Cipher_text,Count,KEY10);
  input CLK, reset, ENB, LOAD,LOOP, rst, tri_text, tri_key, tri_keyex, tri_shift, tri_Mix, tri_invMix,
        tri_invshift, tri_invSub, tri_out_text1, tri_out_text2;
  input [63:0] DATA, KEY;
  output [63:0] Cipher_text, KEY10;
  output [3:0] Count;
  wire [63:0] tmp_text,tmp_key10;
  wire [127:0] w,tmp_in,tmp_key,outtri1,outtri2,addround,outreg,subByte,outsh,mix,outM,outtri3,s1,invsub;
  Counter inst(CLK, rst, LOAD, ENB, Count);
  KeyExpansion inst1(CLK, reset, ENB, LOOP, Count, tmp_key, w);
  REG #64 inst10(CLK, reset, DATA[63:0],tmp_in[127:64]);
  REG #64 inst11(CLK, reset, KEY[63:0],tmp_key[127:64]);
  assign tmp_in[63:0] = DATA[63:0];
  assign tmp_key[63:0] = KEY[63:0];
  bufif1 b01[127:0](outtri1,tmp_in[127:0],tri_text);
  bufif1 b02[127:0](outtri2,tmp_key[127:0],tri_key);
  bufif1 b03[127:0](outtri2,w,tri_keyex);
  AddRoundKey inst2(outtri1,outtri2,addround);
  REG #128 inst3(CLK, reset,addround, outreg);
  REG #64 inst12(CLK, reset,outreg[63:0],tmp_text[63:0]);
  
  bufif1 b04[63:0](Cipher_text[63:0],outreg[127:64],tri_out_text1);
  bufif1 b11[63:0](Cipher_text[63:0],tmp_text[63:0],tri_out_text2);
  SubBytes inst4(outreg,subByte);
  ShiftRows inst5(subByte,outsh);
  bufif1 b05[127:0](outtri1,outsh,tri_shift);
  MixColumns inst6(outsh, mix);
  bufif1 b06[127:0](outtri1,mix,tri_Mix);
  
  InvMixColumns inst7(outreg,outM);
  bufif1 b07[127:0](outtri3,outreg,tri_invshift);
  bufif1 b08[127:0](outtri3,outM,tri_invMix);
  InvShiftRows inst8(outtri3,s1);
  InvSubBytes inst9(s1,invsub);
  bufif1 b09[127:0](outtri1,invsub,tri_invSub);
  REG #64 inst14(CLK, reset, w[63:0],tmp_key10[63:0]);
  bufif1 b10[63:0](KEY10[63:0], w[127:64], tri_out_text1);
  bufif1 b12[63:0](KEY10[63:0], tmp_key10[63:0], tri_out_text2);
 
endmodule
  