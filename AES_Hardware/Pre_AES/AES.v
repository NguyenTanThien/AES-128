module AES(CLK, reset, Start, Select, DATA, KEY, Cipher_text, KEY10);
  input CLK, reset, Start, Select;
  input [63:0] DATA, KEY;
  output [63:0] Cipher_text;
  output [63:0] KEY10;
  wire ENB, LOAD,  rst, LOOP, tri_text, tri_key, tri_keyex, tri_shift, tri_Mix, 
       tri_invMix, tri_invshift, tri_invSub, tri_out_text1,tri_outkey,tri_out_text2;
  wire [3:0] Count;
  CONTROL inst1(CLK, reset, Start, Select, Count, LOAD, ENB, rst, tri_text, tri_key, tri_keyex, tri_shift, tri_Mix,
                tri_invMix, tri_invshift, tri_invSub, tri_out_text1,tri_out_text2, LOOP);
  DATAPATH inst(CLK, reset, ENB, LOOP, LOAD, rst, tri_text, tri_key, tri_keyex, tri_shift, tri_Mix, tri_invMix, 
                tri_invshift, tri_invSub, tri_out_text1,tri_out_text2, DATA, KEY, Cipher_text,Count,KEY10);
  endmodule

  
