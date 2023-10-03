# Sumador y Restador de 4 bits
**Integrantes:** Andrés Eduardo Guzmán Cuberos, Julián Antonio Quintero Aldana, Juan José Galvis Torres
## Sumador de 4 bits
Un sumador de 4 bits es un componente electrónico que se utiliza para sumar dos números binarios de 4 dígitos cada uno. El resultado también es un número binario de 4 dígitos. Puede generar un bit extra llamado "acarreo". Este tipo de sumador es fundamental en circuitos digitales para realizar operaciones de adición.
### Medio sumador
```
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
## Restador de 4 bits
Un restador de 4 bits es un componente electrónico que se utiliza para restar dos números binarios de 4 dígitos cada uno. El resultado también es un número binario de 4 dígitos. Es esencial en circuitos digitales para realizar operaciones de resta.
