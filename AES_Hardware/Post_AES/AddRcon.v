module AddRcon(count,Rcon);
  input wire [3:0] count;
  output reg [31:0] Rcon;
  always @(count)begin
  case (count)
		4'd1:	Rcon[31:0] = 32'h01000000;
		4'd2:	Rcon[31:0] = 32'h02000000;
		4'd3:	Rcon[31:0] = 32'h04000000;
		4'd4:	Rcon[31:0] = 32'h08000000;
		4'd5:	Rcon[31:0] = 32'h10000000;
		4'd6:	Rcon[31:0] = 32'h20000000;
		4'd7:	Rcon[31:0] = 32'h40000000;
		4'd8:	Rcon[31:0] = 32'h80000000;
		4'd9:	Rcon[31:0] = 32'h1b000000;
		4'd10:	Rcon[31:0] = 32'h36000000;
		default: Rcon[31:0] = 32'h36000000;
	endcase
	end
endmodule