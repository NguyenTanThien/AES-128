module addW(IN1, IN2, outW);
  input wire [31:0] IN1, IN2;
  output wire [31:0] outW;
  assign outW[31:0] = IN1[31:0] ^ IN2[31:0];
endmodule