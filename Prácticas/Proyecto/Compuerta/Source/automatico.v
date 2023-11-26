module automatico(
	input clk_in,
	output reg mover_servo
);

reg [10:0] count_espera = 0;
reg [3:0] count = 0;

always @(posedge clk_in) begin
//500
	if (count_espera < 800) begin
		count_espera = count_espera+1;
	end
	else begin
		count_espera=0;
		if(count<10) begin
			count = count+1;
			mover_servo =1;
		end
		else begin
			count = 0;
			mover_servo =0;
		end
	end
end

endmodule

