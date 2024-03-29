module REG #(parameter n = 128)(CLK, RESET, IN, OUT);
  input wire [n-1:0] IN;
  input wire CLK, RESET;
  output reg [n-1:0] OUT;
  always @(posedge CLK or negedge RESET)begin
    if (!RESET) OUT = 0;
    else OUT <= IN;
  end
endmodule