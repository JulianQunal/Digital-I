# Ultrasonido
Este periférico del dispositivo cuenta con:
- Entrada: Un módulo Ultrasonido HC-SR04 con el cual se mide la distancia (almacenamiento) de la comida en el recipiente con el que cuenta el dispositivo.
- Salida: Tres luces LEDS de color:
  * Rojo: Indicar que queda poca comida o que ya no queda.
  * Amarillo: Indicar que hay comida aproximadamente a menos de la mitad del recipiente.
  * Verde: Indicar que el recipiente esta lleno o a más de la mitad de contenido.

<p align="center">
  <img src='Images/RTL Ultrasonido.png' width='80%'/>
</p> 

## Desarrollo
Para realizar esta parte del dispositivo se investigó acerca del funcionamiento de los sensores ultrasonido, con lo cuál se encontró que el trigger del dispositivo puede actuar de forma correcta con un tiempo de actuación de 20ms, haciendose un contador que se iba aumentando mientras en ese tiempo el ultrasonido actuaba, emitiendo la señal de ultrasonido para que revotara con la superficie que tuviera al frente.

### Video funcionamiento sensor de distancia:
[![Alt text](https://img.youtube.com/vi/pixdbLauMtA/0.jpg)](https://www.youtube.com/watch?v=pixdbLauMtA)

## Problemas
Como inconvenientes generales, fueron poder ajustar las distancias que se quisieran, para que en el recipiente de 40cm de largo se pudiera activar cada uno de los leds, acorde a la distancia del objeto (en nuestro caso del alimento). Finalmente las distancias escogidas fueron:
- Activación del led verde:  Menos de 10cm.
- Activación del led amarillo: Más de 10cm y menos de 20cm.
- Activación del led rojo: De 20cm a 40cm.
Como problema que no se pudo solucionar fue cierto titiléo de los leds amarillo y rojo a la hora de activarse el led rojo, esto posiblemente por los ajustes del trigger y el echo, pudiendo darse el problema a la hora de medirse a partir del conteo que realizaba la FPGA.

## Comentarios finales
Luego de esta serie de inconvenientes, se logró ajustar los valores para los cuales los leds actuaran y se pudiera ver el correcto funcionamiento de este periférico.
