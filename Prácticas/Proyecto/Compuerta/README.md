# Compuerta
Este periférico del dispositivo cuenta con:
- Entrada: Un contador interno en la FPGA con la función de temporizador, para que después de un determinado periodo de tiempo el servomotor se mueva (abriendo la compuerta y de salida de la comida), empleandose otro contador con un periodo más corto que mantenga abierta la compuerta y luego se vuelva a cerrar.
- Salida: Un servomotor SG90, quien tiene la función de actuar como una compuerta para dar paso a la comida al momento en que esta se abre, dependiendo de la señal del contador.

## Desarrollo
Para realizar esta parte del dispositivo se implementó el código empleado para la segunda práctica, donde fue usado este servomotor, el cual era accionado por un switch de la FPGA. Pudiendose acoplar esta misma función pero ahora con una señal de entrada automática y sin necesidad de un actor externo al dispositivo para que lo accionara. Siendo añadido dos módulos nuevos, donde se encontraba la señal de entrada switch, siendo uno donde se realizara una división de frecuencia y de este modo fuera más facil trabajar para escoger la cantidad de tiempo en que el servomotor actuara. Seguido este módulo de otro, con el cual se realizaran los procesos automáticos ya mencionados, en que luego de que un primer contador mandara una señal para que el servomotor se abriera, hubiera otro contador secundario el cual mantuviera el servo abierto hasta otro periodo de tiempo más corto.
Finalmente el servomotor pudo funcionar con una apertura de 180°, a partir de los parametros de sus especificaciones, con una señal de 100us para que se activara con un ángulo de 0° y luego siendo con un rango de 2.1ms con el cual el servo giraba los 180° esperados. Y por el lado de los contadores, se escogió un tiempo de 26s mientras la compuerta se mantenía cerrada, para luego ser 3s en los cuales el servo se mantenía abierto y nuevamente se cerraba.

## Problemas
Como inconvenientes generales, fueron a la hora de sincronizar el tiempo en que el servomotor actuara, con la cantidad de bits que se debían contar para que este actuara de una forma correcta, en el módulo automatico.v, ya que al implentar una frecuencia en la división de frecuencia alta, el servomotor actuaba (como era esperado) rápidamente en su accionamiento. Llevandose a un valor considerable de 300Hz para que realizara un conteo adecuado y que el servomotor se abriera y cerrara en unos periodos de tiempos razonables para ser un prototipo de muestra.

## Comentarios finales
Luego de esta serie de inconvenientes, se logró ajustar los valores para los cuales la compuerta actuara y se pudiera ver el correcto funcionamiento de este periférico.


