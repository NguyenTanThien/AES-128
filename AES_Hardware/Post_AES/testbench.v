`timescale 10ns/1ps
module testbench();
  reg CLK, reset, Start, Select;
  reg[63:0] DATA, KEY;
  reg[63:0] temp00, temp01, temp10, temp11;
  wire [63:0] Cipher_text, KEY10;
  integer file, file1, file2, file3, file4, file5;
  
  AES inst(CLK, reset, Start, Select, DATA, KEY, Cipher_text, KEY10 );
  initial 
  begin
  
    test;
    
  end
  always #10 CLK = ~CLK;
  
  task part1;
  begin
    #25 reset = 1; Start = 1; Select = 0;
  end
  endtask
  
  task part2;
  begin 
    #25 reset = 1; Start = 1; Select = 1;
  end
  endtask
  
  task test;
  begin
    /*
    DATA = 64'h3243f6a8885a308d ; KEY = 64'h2b7e151628aed2a6;
    $monitor("DATA = %h KEY = %h", DATA, KEY);
    #25 reset = 1; Start = 1; Select = 0;
    #10 Start = 0; DATA = 64'h 313198a2e0370734 ; KEY = 64'h abf7158809cf4f3c;
    #205 reset = 1;
    #100 reset = 1;
    
    #0 CLK = 0; reset = 1; Start= 0; Select = 1;  DATA = 64'h3925841d02dc09fb ; KEY = 64'hd014f9a8c9ee2589;
    
    #25 reset = 1; Start = 1; Select = 1;
    #10 Start = 0; DATA = 64'hdc118597196a0b32 ; KEY = 64'h e13f0cc8b6630ca6;
    #205 reset = 1;
    */
    file = $fopen("Plain_text.txt","r");
    file1 = $fopen("Key.txt", "r");
    file2 = $fopen("Cipher_text.txt", "w");
    file3 = $fopen("Key10.txt", "w");
    file4 = $fopen("DATA_OUT.txt", "w");
    file5 = $fopen("KEY_OUT.txt", "w");
    while(! $feof(file)) begin
      #0 CLK = 0; reset = 0; Start = 0; Select = 0;
      $fscanf(file, "%h\t", DATA);
      $fscanf(file1, "%h\t", KEY);
      part1;
      #15 Start = 0;
      $fscanf(file, "%h\n", DATA);
      $fscanf(file1, "%h\n", KEY);
      #220 
      $fdisplay(file2, "%h", Cipher_text);
      temp00 = Cipher_text;
      $fdisplay(file3, "%h", KEY10);
      temp10 = KEY10;
      #20 
      $fdisplay(file2, "%h", Cipher_text);
      temp01 = Cipher_text;
      $fdisplay(file3, "%h", KEY10);
      temp11 = KEY10;
      #0 CLK = 0; reset = 1; Start= 0; Select = 1; DATA = temp00; KEY = temp10;
      part2;
      #15 Start = 0; DATA = temp01; KEY = temp11;
      #220
      $fdisplay(file4, "%h", Cipher_text); 
      $fdisplay(file5, "%h", KEY10);
      #20
      $fdisplay(file4, "%h", Cipher_text); 
      $fdisplay(file5, "%h", KEY10);
    end
    
    $fclose(file);
    $fclose(file1);
    $fclose(file2);
    $fclose(file3);
    $fclose(file4);
    $fclose(file5);
    #100;
    $stop;
end
endtask
endmodule