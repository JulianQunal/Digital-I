# Sumador y Restador de 4 bits

**Integrantes:** Andrés Eduardo Guzmán Cuberos, Julián Antonio Quintero Aldana, Juan José Galvis Torres

## Sumador de 4 bits
Un sumador de 4 bits es un componente electrónico que se utiliza para sumar dos números binarios de 4 dígitos cada uno. El resultado también es un número binario de 4 dígitos. Puede generar un bit extra llamado "acarreo". Este tipo de sumador es fundamental en circuitos digitales para realizar operaciones de adición.
### Medio sumador
```systemverilog
// Declaración del módulo: Half Adder
module halfadder (
  input b, a,    // Entradas: a y b
  output co, s   // Salidas: co y s
);

// Descripción del comportamiento
assign s = a ^ b; // s es el resultado de a XOR b
assign co = a & b; // co es el resultado de a AND b

endmodule
```
### Sumador completo
```
module fulladder (
  // Inputs and output ports; 3 in, 2 out
  input in_b, in_a, in_ci,     // Tres entradas: in_b, in_a, in_ci
  output out_co, out_s       // Dos salidas: out_co, out_s
);

// Declaración de señales
wire s_s1_to_b_s2; // Una conexión de la salida s del sumador 1 a la entrada a del sumador 2
wire co_s1_to_or; // Una conexión desde el carry-out del sumador 1 a la compuerta OR
wire co_s2_to_or; // Una conexión desde el carry-out del sumador 2 a la compuerta OR

// Declaración de submódulos
// halfadder(b,a,co,s)
halfadder halfadder1(in_b, in_a, co_s1_to_or, s_s1_to_b_s2);  // Instancia del sumador medio 1
halfadder halfadder2(s_s1_to_b_s2, in_ci, co_s2_to_or, out_s); // Instancia del sumador medio 2

// Descripción del comportamiento
assign out_co = co_s1_to_or | co_s2_to_or; // out_co es la operación OR entre co_s1 y co_s2

endmodule
```
### Sumador de 4 bits
```
module fulladder4( 
	//Puertos entrada salida
	input wire [3:0]a,   // Cuatro bits de entrada a
	input wire [3:0]b,   // Cuatro bits de entrada b
	input wire cin,      // Entrada de acarreo de entrada
	output wire cout4,   // Salida de acarreo de salida
	output wire [3:0]s   // Cuatro bits de salida s
);
	//Nombre a los cables que unen los módulos
	wire cout1, cout2, cout3;

	//Declarar submódulos
	//fulladder(b,a,ci,co,s)
	fulladder fa0 (b[0], a[0], cin, cout1, s[0]);  // Instancia de sumador completo 0
	fulladder fa1 (b[1], a[1], cout1, cout2, s[1]); // Instancia de sumador completo 1
	fulladder fa2 (b[2], a[2], cout2, cout3, s[2]); // Instancia de sumador completo 2
	fulladder fa3 (b[3], a[3], cout3, cout4, s[3]); // Instancia de sumador completo 3
endmodule

```
### TestBench sumador de 4 bits
```
module testbech4;
// Generador de señales (Estímulos)
reg [8:0] inputs;  // Señal de entrada de 9 bits

integer i;  // Variable entera para bucle

initial
begin 
	for(i=0; i<256; i=i+1)
	begin
		inputs=i;  // Asigna el valor actual de i a la señal de entrada
		#1;  // Espera 1 unidad de tiempo
	end
end

// Cables para conectar a la salida
wire [4:0] outs;  // Señal de salida de 5 bits

// Instancia del módulo fulladder4
fulladder4 dut(
	.a(inputs[3:0]), .b(inputs[7:4]), .cin(1'b0), .cout4(outs[4]), .s(outs[3:0])
);

// Monitor (Comentado)
// initial 
// $monitor("Time: %t, a = %d, b = %d, c = %d, d = %d => x = %d",$time,a,b,c,d,cable_x);

// Configuración de forma de onda
initial
begin
	$dumpfile("top.vcd");  // Define el archivo de forma de onda como "top.vcd"
	$dumpvars(0, testbech4);  // Define las variables a monitorear
end

endmodule
```
### Circuito sumador de 4 bits
Despues de haber realizado todo el código correspondiente se obtuvo que la configuración que describe las operaciones realizadas para obtener el sumador de 4 bits fue la siguiente:
![Sumador de 4 bits](https://github.com/JulianQunal/Digital-I/assets/142944413/f9559e04-8ea5-44fe-9315-1ff0499e3dac)

### Simulaciones
Se realizaron algunas simulaciones con el fin de evaluar el rendimiendo del código y se obtuvieron los siguientes resultados
#### Simulación 1
![Simulación 1 sumador](https://github.com/JulianQunal/Digital-I/assets/142944413/c05d3ffb-a150-4844-a367-da1d8111e3a9)
#### Simulación 2
![Simulación 2 sumador](https://github.com/JulianQunal/Digital-I/assets/142944413/e370498d-89e2-4d22-9101-44772ff608bf)
#### Simulación 3
![Simulación 3 sumador](https://github.com/JulianQunal/Digital-I/assets/142944413/66f63066-eba9-4b96-b173-a6bad170bee8)





## Restador de 4 bits
Un restador de 4 bits es un componente electrónico que se utiliza para restar dos números binarios de 4 dígitos cada uno. El resultado también es un número binario de 4 dígitos. Es esencial en circuitos digitales para realizar operaciones de resta.

### Restador completo
```
module fullsubstract( 
	//Puertos entrada salida
	input a, b, ci,    // Tres entradas: a, b y ci (carry-in)
	output co, r       // Dos salidas: co (carry-out) y r (resultado)
);
	
// Descripción del comportamiento
assign r = a^(b^ci);  // La salida r se calcula como a XOR (b XOR ci)
assign co = (~a&ci)|(~a&b)|(b&ci);  // La salida co se calcula mediante una expresión lógica

endmodule
```
### Restador de 4 bits
```
module fullsubstract4 (
	// Puertos entrada salida
	input wire [3:0] a,   // Cuatro bits de entrada a
	input wire [3:0] b,   // Cuatro bits de entrada b
	input wire ci,       // Entrada de acarreo de entrada
	output wire co4,     // Salida de acarreo de salida
	output wire [3:0] r  // Cuatro bits de salida r
);

	// Nombre a los cables que unen los módulos
	wire co1, co2, co3;  // Tres señales de acarreo intermedias

	// Declarar submódulos
	// fullsubstract(a,b,ci,co,r)
	fullsubstract fs0 (a[0], b[0], ci, co1,  r[0]);  // Instancia del sustractor completo 0
	fullsubstract fs1 (a[1], b[1], co1, co2, r[1]);  // Instancia del sustractor completo 1
	fullsubstract fs2 (a[2], b[2], co2, co3, r[2]);  // Instancia del sustractor completo 2
	fullsubstract fs3 (a[3], b[3], co3, co4, r[3]);  // Instancia del sustractor completo 3

endmodule
```
### TestBench restador de 4 bits
```
module testbech4;
// Generador de señales (Estímulos)
// Estimulos
reg [8:0] inputs;  // Señal de entrada de 9 bits
integer i;  // Variable entera para bucle

initial
begin 
	for(i=0; i<256; i=i+1)
	begin
		inputs=i;  // Asigna el valor actual de i a la señal de entrada
		#1;  // Espera 1 unidad de tiempo
	end
end

// Cables para conectar a la salida
wire [4:0] outs;  // Señal de salida de 5 bits

// Instancia del módulo fullsubstract4
fullsubstract4 dut(
	.a(inputs[3:0]), .b(inputs[7:4]), .ci(inputs[8]), .r(outs[3:0]),  .co4(outs[4])
);

// Monitor (Comentado)
// initial 
// $monitor("Time: %t, a = %d, b = %d, c = %d, d = %d => x = %d",$time,a,b,c,d,cable_x);

// Configuración de forma de onda
initial
begin
	$dumpfile("top.vcd");  // Define el archivo de forma de onda como "top.vcd"
	$dumpvars(0, testbech4);  // Define las variables a monitorear
end

endmodule

```
### Circuito restador de 4 bits
Despues de haber hecho el código que describe el funcionamiento de un restador de 4 bits obtenemos los siguientes montajes:
#### Circuito restador completo
![Restador completo](https://github.com/JulianQunal/Digital-I/assets/142944413/5c8ec9c9-df20-4fba-bfdb-88b8c1c05ed9)
#### Circuito restador de 4 bits
![Restador de 4 bits](https://github.com/JulianQunal/Digital-I/assets/142944413/a95332e9-833d-44f8-b095-6955e0553652)

### Simulaciones del restador de 4 bits
Para evaluar el funcionamiento del restador se realizaron simulaciones para las cuales se obtuvieron los siguientes resultados:
#### Simulación 1
![Simulación 1 restador](https://github.com/JulianQunal/Digital-I/assets/142944413/6e88e7a3-31ca-47ca-800b-9eaa8617d647)
#### Simulación 2
![Simulación 2 restador](https://github.com/JulianQunal/Digital-I/assets/142944413/c5e1bf5f-7d66-4760-8205-648de8ee5d51)
#### Simulación 3
![Simulación 3 restador](https://github.com/JulianQunal/Digital-I/assets/142944413/604961ca-dba7-4f2f-b6e9-3cd375b80182)

