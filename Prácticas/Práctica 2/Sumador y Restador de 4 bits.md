# Sumador y Restador de 4 bits
**Integrantes:** Andrés Eduardo Guzmán Cuberos, Julián Antonio Quintero Aldana, Juan José Galvis Torres
## Sumador de 4 bits
Un sumador de 4 bits es un componente electrónico que se utiliza para sumar dos números binarios de 4 dígitos cada uno. El resultado también es un número binario de 4 dígitos. Puede generar un bit extra llamado "acarreo". Este tipo de sumador es fundamental en circuitos digitales para realizar operaciones de adición.
### Medio sumador
`// Declaración del módulo: Half Adder
module halfadder (
  input b, a,    // Entradas: a y b
  output co, s   // Salidas: co y s
);

// Descripción del comportamiento
assign s = a ^ b; // s es el resultado de a XOR b
assign co = a & b; // co es el resultado de a AND b

endmodule`

## Restador de 4 bits
Un restador de 4 bits es un componente electrónico que se utiliza para restar dos números binarios de 4 dígitos cada uno. El resultado también es un número binario de 4 dígitos. Es esencial en circuitos digitales para realizar operaciones de resta.
