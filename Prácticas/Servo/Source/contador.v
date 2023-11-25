/* count = (clk_in / clk_out) */
/* Ejemplo 1 */
/* count = 25E6 = 25000000 = (25E6 Mhz)/(1 Hz) */
/* SIZE = 2^25 = 33.5E6 lo contiene */
/* Ejemplo 2 */
/* count = (50E6 Mhz)/(1 Hz) = 50E6 = 50000000 */
/* SIZE = 2^26 = 67.5E6 lo contiene */
/* Configuración a 50 Hz */
/* count = (25E6 Hz)/(33,33 Hz) = 750E3 = 750000 */
/* SIZE = 2^20 = 1'048576 lo contiene */

//Ciclo util = 20ms que son 50Hz 50MHz/50Hz= 1000000 log_2(1000000)=19.93=20

module contador(
  input clk_in,
  output reg [19:0] count = 0
);

parameter SIZE = 20;
parameter LIMIT = 20'd1000000;

always@(posedge clk_in)
begin
  if(count == LIMIT)
  begin
    count <= 0;
    // clk_out <= ~clk_out;
  end
  else
  begin
    count <= count + 1;
  end
end
endmodule
