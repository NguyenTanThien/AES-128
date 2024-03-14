module CONTROL(CLK, reset, Start, Select, Count, LOAD, ENB, rstc, tri_text, tri_key, tri_keyex, tri_shift,
               tri_Mix, tri_invMix, tri_invshift, tri_invSub, tri_out_text1,tri_out_text2,LOOP);
  input CLK, Start, Select, reset;
  input [3:0] Count;
  output ENB, LOAD, rstc,tri_out_text2, tri_text, tri_key, tri_keyex, tri_shift, 
         tri_Mix, tri_invMix, tri_invshift, tri_invSub, tri_out_text1, LOOP;
  wire [3:0] Q, D;
  NEXT a(Start, Select, Count, Q, D);
  CURRENT b(CLK,reset, D, Q);
  OUTPUT o(Q, ENB, LOAD,  rstc, tri_text, tri_key, tri_keyex, tri_shift, tri_Mix, 
           tri_invMix, tri_invshift, tri_invSub, tri_out_text1,tri_out_text2, LOOP);
endmodule
