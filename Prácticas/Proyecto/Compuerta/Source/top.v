module top(
	input clk,
	output servo
);

wire clk1Hz, mover;
wire [18:0]clk_to_comp;
wire [18:0]duty_to_comp;

div_frecuencia frec1Hz(.clk(clk), .clk_out(clk1Hz));
automatico auto(.clk_in(clk1Hz), .mover_servo(mover));
contador contador1(.clk_in(clk), .count(clk_to_comp));
duty duty1(.switch(mover), .clk_in(clk) , .angle_out(duty_to_comp));
comparador comparador1(.duty(duty_to_comp), .contador(clk_to_comp),.pulse(servo));

endmodule 
