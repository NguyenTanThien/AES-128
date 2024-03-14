module Counter(CLK, rst, LOAD, ENB, Count);
	input wire CLK, rst, ENB, LOAD;
	output reg [3:0] Count;
	always @(negedge CLK or negedge rst)begin
		if(!rst) Count = 0;
		else if(LOAD == 1 && ENB == 0) Count = 1;
		else if(LOAD ==1 && ENB == 1) Count = 10;
		else if(ENB == 0 && LOAD == 0) Count = Count +1;
		else  Count = Count -1;
	end
endmodule