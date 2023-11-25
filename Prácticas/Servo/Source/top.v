module top(
	input clk,
	input switch,
	output servo
);

wire [19:0]clk_to_comp;
wire [19:0]duty_to_comp;

contador contador1(.clk_in(clk), .count(clk_to_comp));
duty duty1(.switch(switch), .clk_in(clk) , .angle_out(duty_to_comp));
comparador comparador1(.duty(duty_to_comp) , .contador(clk_to_comp),.pulse(servo));

endmodule 
