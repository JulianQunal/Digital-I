module comparador(
  input [18:0]duty,
  input [18:0]contador,

  output pulse
);

assign pulse = (contador < duty) ? 1'b1 : 1'b0; //Se compara la señal de reloj con el angulo para mandar señal el servo y que este se mueva


endmodule
