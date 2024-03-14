module testbench();
  reg CLK, reset, Start, Select;
  reg[63:0] DATA, KEY;
  wire [63:0] Cipher_text, KEY10;
  
  AES inst(CLK, reset, Start, Select, DATA, KEY, Cipher_text, KEY10 );
  initial 
  begin
    #0 CLK = 0; reset = 0; Start = 0; Select = 0;  DATA = 64'h3243f6a8885a308d ; KEY = 64'h2b7e151628aed2a6;
   
    #25 reset = 1; Start = 1; Select = 0;
    #10 Start = 0; DATA = 64'h 313198a2e0370734 ; KEY = 64'h abf7158809cf4f3c;
    #205 reset = 1;
    #100 reset = 1;
    #0 CLK = 0; reset = 1; Start= 0; Select = 1;  DATA = 64'h3925841d02dc09fb ; KEY = 64'hd014f9a8c9ee2589;
    
    #25 reset = 1; Start = 1; Select = 1;
    #10 Start = 0; DATA = 64'hdc118597196a0b32 ; KEY = 64'h e13f0cc8b6630ca6;
    #205 reset = 1;
  end
  always #10 CLK = ~CLK;
endmodule