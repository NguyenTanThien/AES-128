module OUTPUT(Q, ENB, LOAD,  rst, tri_text, tri_key, tri_keyex, tri_shift, tri_Mix, 
				  tri_invMix, tri_invshift, tri_invSub, tri_out_text1,tri_out_text2,LOOP);
  parameter [3:0] S0 = 4'b0000;
  parameter [3:0] S1 = 4'b0001;
  parameter [3:0] S2 = 4'b0010;
  parameter [3:0] S3 = 4'b0011;
  parameter [3:0] S4 = 4'b0100;
  parameter [3:0] S5 = 4'b0101;
  parameter [3:0] S6 = 4'b0110;
  parameter [3:0] S7 = 4'b0111;
  parameter [3:0] S8 = 4'b1000;/////
  parameter [3:0] S9 = 4'b1001;/////
  input [3:0] Q;
  output reg ENB,LOOP,tri_out_text2, LOAD, rst, tri_text, tri_key, tri_keyex, tri_shift, 
				 tri_Mix, tri_invMix, tri_invshift, tri_invSub, tri_out_text1;
  always @ (Q)
  begin
    case (Q)
      S0: begin
            ENB <= 0;
            LOAD <= 0;
            rst <= 0;
            tri_text <= 0;
            tri_key <= 0;
            tri_keyex <= 0;
            tri_shift <= 0;
            tri_Mix <= 0;
            tri_invMix <= 0;
            tri_invshift <= 0;
            tri_invSub <= 0;
            tri_out_text1 <= 0;
            tri_out_text2 <= 0;
            LOOP <= 1;
            
          end
      S1: begin
            ENB <= 0;
            LOAD <= 1;
            rst <= 1;
            tri_text <= 1;
            tri_key <= 1;
            tri_keyex <= 0;
            tri_shift <= 0;
            tri_Mix <= 0;
            tri_invMix <= 0;
            tri_invshift <= 0;
            tri_invSub <= 0;
            tri_out_text1 <= 0;
            tri_out_text2 <= 0;
            LOOP <= 1;
            
          end
      S2: begin
            ENB <= 0;
            LOAD <= 0;
            rst <= 1;
            tri_text <= 0;
            tri_key <= 0;
            tri_keyex <= 1;
            tri_shift <= 0;
            tri_Mix <= 1;
            tri_invMix <= 0;
            tri_invshift <= 0;
            tri_invSub <= 0;
            tri_out_text1 <= 0;
            tri_out_text2 <= 0;
            LOOP <= 1;
            
          end
      S3: begin
            ENB <= 0;
            LOAD <= 0;
            rst <= 1;
            tri_text <= 0;
            tri_key <= 0;
            tri_keyex <= 1;
            tri_shift <= 1;
            tri_Mix <= 0;
            tri_invMix <= 0;
            tri_invshift <= 0;
            tri_invSub <= 0;
            tri_out_text1 <= 0;
            tri_out_text2 <= 0;
            LOOP <= 0;
            
          end
      S4: begin
            ENB <= 1;
            LOAD <= 1;
            rst <= 1;
            tri_text <= 1;
            tri_key <= 1;
            tri_keyex <= 0;
            tri_shift <= 0;
            tri_Mix <= 0;
            tri_invMix <= 0;
            tri_invshift <= 0;
            tri_invSub <= 0;
            tri_out_text1 <= 0;
            tri_out_text2 <= 0;
            LOOP <= 1;
            
          end
      S5: begin
            ENB <= 1;
            LOAD <= 0;
            rst <= 1;
            tri_text <= 0;
            tri_key <= 0;
            tri_keyex <= 1;
            tri_shift <= 0;
            tri_Mix <= 0;
            tri_invMix <= 0;
            tri_invshift <= 1;
            tri_invSub <= 1;
            tri_out_text1 <= 0;
            tri_out_text2 <= 0;
            LOOP <= 1;
            
          end
      S6: begin
            ENB <= 1;
            LOAD <= 0;
            rst <= 1;
            tri_text <= 0;
            tri_key <= 0;
            tri_keyex <= 1;
            tri_shift <= 0;
            tri_Mix <= 0;
            tri_invMix <= 1;
            tri_invshift <= 0;
            tri_invSub <= 1;
            tri_out_text1 <= 0;
            tri_out_text2 <= 0;
            LOOP <= 1;
           
          end
      S7: begin
            ENB <= 1;
            LOAD <= 0;
            rst <= 1;
            tri_text <= 0;
            tri_key <= 0;
            tri_keyex <= 1;
            tri_shift <= 0;
            tri_Mix <= 0;
            tri_invMix <= 1;
            tri_invshift <= 0;
            tri_invSub <= 1;
            tri_out_text1 <= 0;
            tri_out_text2 <= 0;
            LOOP <= 0;
            
          end
      S8: begin
            ENB <= 1;
            LOAD <= 0;
            rst <= 1;
            tri_text <= 0;
            tri_key <= 0;
            tri_keyex <= 0;
            tri_shift <= 0;
            tri_Mix <= 0;
            tri_invMix <= 0;
            tri_invshift <= 0;
            tri_invSub <= 0;
            tri_out_text1 <= 1;
            tri_out_text2 <= 0;
            LOOP <= 0;
            
          end
      S9: begin
            ENB <= 1;
            LOAD <= 0;
            rst <= 1;
            tri_text <= 0;
            tri_key <= 0;
            tri_keyex <= 0;
            tri_shift <= 0;
            tri_Mix <= 0;
            tri_invMix <= 0;
            tri_invshift <= 0;
            tri_invSub <= 0;
            tri_out_text1 <= 0;
            tri_out_text2 <= 1;
            LOOP <= 0;
            
          end
    endcase
  end
endmodule
