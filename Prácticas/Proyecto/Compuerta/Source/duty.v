module duty(
	input switch,
	input clk_in,
	output [18:0] angle_out 	
);

//Rango de servo 1 - 2ms: 20 ms son 500000 entonces 2ms cuanto sera? son 50000
//2.1 ms (52500) es el 180°

always@(posedge clk_in)
begin
	if (switch == 1'b0)
	begin
		//Se quiere estipular un angulo de inclinación de 0 grados
		//100 us = 10 kHz , 25MHz / 10 kHz =  2500
		angle_out <= 20'd7000;
	end	
else
	begin
		//Se quiere estipular un angulo de inclinación de 180
		angle_out <= 20'd52500;
	end
end
endmodule
