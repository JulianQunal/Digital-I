module duty(
	input switch,
	input clk_in,
	output [19:0] angle_out 	
);

//Rango de servo 1 - 2ms: 20 ms son 1000000 entonces 2ms cuanto sera? son 100000

always@(posedge clk_in)
begin
if (switch == 1'b0)
begin
	//Se quiere estipular un angulo de inclinación de 0 grados
	//1/(500us) = 2000 Hz , 25MHz / 2000Hz =  12500
	angle_out <= 14'd12500;
end	
else
begin
	
	//Se quiere estipular un angulo de inclinación de 90 grados
	//Si para 180 grados se requieren 2400us, 90 grados se requeriran 1200us
	//1/(1200us)= 833.33Hz, 25MHz/833.33Hz = 30000
	angle_out <= 15'd30000;
end
end
endmodule
