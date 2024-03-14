module CURRENT(CLK,rst, D, Q);
  input CLK, rst;
  input [3:0] D;
  output reg [3:0] Q ;
  always @ (posedge CLK or negedge rst)
  begin
    if(!rst) Q <= 0;
	 else Q <= D;
  end
endmodule