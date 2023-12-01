# Formulación del proyecto (Dispensador automático para comida de perro) 
## Identifique el problema a resolver:
Este proyecto va enfocado en facilitar la tarea de alimentar a las mascotas, en específico, los perros. Con el diseño y fabricación de un prototipo de comedero para perros que automatice la tarea de alimentarlos y que además indique al dueño la cantidad de comida disponible, para preparar con antelación y sin estar revisando activamente la cantidad de comida restante; incluyendo una alarma no muy ruidosa para llamar al perro, haciendo muy mínimo el esfuerzo que el dueño tiene que hacer para esta tarea.
## Datos y contexto:
A continuación se brindarán algunos datos en torno a la problemática de la alimentación para perros callejeros tanto de Colombia como en Bogotá, pudiendo ser un paradigma a tomar en cuenta donde este proyecto puede tener un alto impacto.

En Colombia este año se a dado el dato de que aproximadamente 3 millones de perros y gatos se encuentran en situación de abandono en el país, contando con único medio de alimentación los que encuentren en las calles o lo que la comunidad les brinde y para afrontar este problema la senadora Andrea Padilla a propuesto un plan nacional nombrado “Plan para cambiar la dura realidad de los animales en Colombia”, teniendo como bandera el lema “Adopta, no compres”, pudiendo ser un paralelo a esta ayuda, este dispositivo de dispersión alimenticia, tanto para perros domésticos, como aquellos que se encuentren en este estado de abandono o que estén en este proceso de ser adoptados. [1] 

Como dato de la capital, en Bogotá las localidades de Ciudad Bolívar, Usme, Bosa, Kennedy, San Cristóbal y Suba cuentan con el mayor número de perros en esta condición de abandono, calculando alrededor de 66.000 de caninos en todo el territorio capitalino. Siendo propuestas diferentes iniciativas como el Día Internacional del Perro Callejero, donde se busca estos mecanismos de adopción y alimentación para estos animales. [2]
## Antecendentes:
Para este proyecto, los antecedentes previos son los enunciados en el apartado de datos, siendo el caso de la alimentación para los perros callejeros. Incluido un antecedente (para perros domésticos) de búsqueda de optimizar y automatizar las tareas que el usuario tenga que hacer en su día a día y facilitar en esta medida los procesos y actividades de la persona.
## Objetivo Principal y Secundario:
- Principal: Diseñar e implementar un dispensador de comida para perros que resuelva las problemáticas planteadas haciendo uso de electrónica digital, y de los conocimientos adquiridos en clase.

- Secundario: Se pueda extender este dispositivo al ámbito de los animales en estado de abandono y permita mejorar su calidad de vida.

- Específicos: Cumplir con los requisitos mínimos del proyecto en cuanto al número de entradas y salidas mínimas. Y el correcto funcionamiento del dispositivo, con las ideas principales que fueron planteadas.
Diseñar un prototipo funcional y energéticamente eficiente para la resolución del problema.
## Entradas y salidas del dispositivo:
- 2 Entradas:
  * Sensor de distancia (Ultrasonido): Su rol es identificar el nivel de comida en el recipiente.
  * Reloj (Temporizador): Abre y cierra la compuerta del alimento en periodos de tiempo definidos.
- 2 Salidas:
  * Compuerta (Servomotor): Dispensa o no el alimento acorde al tiempo que se establezca.
  * Indicadores (Leds): Indican la cantidad o el nivel de alimento dentro del recipiente de almacenamiento.
<p align="center">
  <img src='Images/RTL Completo.png' width='80%'/>
</p> 
 
## Presupuesto:
Para la realización del proyecto se contempla la siguiente tabla de datos que engloba los gastos que se esperan.
<image src='Images/Presupuesto.png' width='60%'>

## Implementación del proyecto:
En el desarrollo de este dispositivo se crearon cada uno de los códigos de los dos periféricos por separado, lograndose el objetivo de sus correctos funcionamientos <strong>(como se puede ver en las carpetas Compuerta y Ultrasonido)</strong> con los parámetros escogidos para que se pudieran acoplar a las dimensiones del recipiente y la base que formaron el dispensador.

## Videos del funcionamiento final:
### Dispensador
[![Alt text](https://img.youtube.com/vi/ANsUb3qysKk/0.jpg)](https://www.youtube.com/watch?v=ANsUb3qysKk)
###
[![Alt text](https://img.youtube.com/vi/ANsUb3qysKk/0.jpg)](https://www.youtube.com/watch?v=ANsUb3qysKk)

## Problemas:
Como problema principal y que no pudo ser solucionado fue a la hora de acoplar los dos periféricos en un solo directorio y que de ese modo el dispositivo pudiera contar con estas dos partes actuando simultaneamente. Pudiendose ver en el RTL las conexiones puestas de forma correcta, además de ser revisado cada uno de los archivos verilog por separado y observandose sus RTL's con conexiones igualmente sin ningún tipo de error. Siendo luego de corregir ciertas sintaxis y errores de interpretación de la FPGA, que ha la hora de compilar y ejecutar el programa el servomotor empezaba a tener problemas, con un pitido indicando una sobreexigencia en su funcionamiento y resultando con la prueba de dos servomotores los cuales resultaron dañados y sin poder ser usados nuevamente. Por esas complicaciones, además de tiempo y costos por nuevos servomotores se consideró realizar la muestra del prototipo con el funcionamiento de cada periférico de forma independiente.

## Conclusiones:
Gracias al desarrollo de este dispensador automático para comida de perros se pudo afianzar más los conocimientos vistos en la clase teórica y como pudo crearse desde cero un dispositivo con parámetros escogidos por el grupo, igual que el desarrollo y aprendizaje del lenguaje de descripción de hardware Verilog, con el cual se pudo dar vida a este dispositivo.

Como único objetivo que no se pudo conseguir de una forma satisfactoria fue el acople de los dos periféricos de forma simultánea en el dispositivo, pudiendose a futuro poder dar solución a esto en las siguientes asignaturas en la carrera o en algún dispositivo que se deba desarrollar en el ámbito laboral.

## Bibliografía:
[1] Chacón, P. “Hay 3 millones de perros y gatos abandonados en Colombia: este es el plan que propone la senadora Andrea Padilla para cambiar esta realidad”, infobate. Consultado el 6 de Octubre de 2023. Disponible [en línea] : https://www.infobae.com/colombia/2023/01/31/hay-3-millones-de-perros-y-gatos-abandonados-en-colombia-este-es-el-plan-que-propone-la-senadora-andrea-padilla-para-cambiar-esta-realidad/ 
[2] Redacción Semana. “Día del Perro Callejero: más de 66.000 caninos deambulan por las calles de Bogotá”, Semana. Consultado el 6 de Octubre de 2023. Disponible [en línea] : https://www.semana.com/nacion/articulo/dia-del-perro-callejero-mas-de-66000-caninos-deambulan-por-las-calles-de-bogota/202306/  
