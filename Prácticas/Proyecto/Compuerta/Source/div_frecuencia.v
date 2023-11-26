module div_frecuencia(
	input clk, //Reloj de la FPGA 50MHz
	output reg clk_out //Reloj de 1Hz
);

parameter frecuencia = 25000000; //25MHz
parameter freq_out = 300; //300Hz
parameter max_count=frecuencia/(2*freq_out); //Maximo valor del contador 25MHz

//log_2(25000000)=24.57=25
reg[24:0] count; //Contador de flancos

initial begin
count = 0;
clk_out = 0;
end

always @(posedge clk) begin
	
	if (count==(max_count)) begin //Comparar el valor del contador con el maximo valor
	clk_out = ~clk_out; //Se cambia al estado contrario del reloj de slaida
	count=0; //Se resetea el contador
	end
	else begin
		count=count+1;
	end
end
endmodule
