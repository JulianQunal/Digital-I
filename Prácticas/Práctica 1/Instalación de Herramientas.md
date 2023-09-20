# ¿Por qué usar Linux sobre otros sistemas operativos?
 **Integrantes:** Andrés Eduardo Guzmán Cuberos, Julián Antonio Quintero Aldana, Juan José Galvis Torres
 
Linux es un sistema operativo de código abierto que ofrece varias ventajas sobre otros sistemas operativos, como Windows o Mac OS. Algunas de estas ventajas son:

- Linux es gratuito y se puede descargar, instalar y modificar libremente, sin necesidad de pagar licencias o derechos de autor.
  
- Linux es más seguro y estable que otros sistemas operativos, ya que tiene menos vulnerabilidades y errores, y se actualiza constantemente por una gran comunidad de desarrolladores y usuarios.
  
- Linux es más flexible y personalizable que otros sistemas operativos, ya que permite elegir entre diferentes distribuciones, entornos de escritorio, aplicaciones y configuraciones, según las preferencias y necesidades de cada usuario.
  
- Linux es más eficiente y rápido que otros sistemas operativos, ya que consume menos recursos y optimiza el rendimiento del hardware, lo que se traduce en un menor consumo de energía y una mayor duración de la batería.
  
- Linux es más compatible y versátil que otros sistemas operativos, ya que se puede instalar en una gran variedad de dispositivos, desde ordenadores hasta smartphones, pasando por consolas, servidores o sistemas embebidos.


# Instalación de Linux Mint 

Debido a inconvenientes explicados mas adelante en este README se decidió realizar la insalación de Linux en una maquina virtual.
Como primer paso, se realizó la descarga e instalación de una máquina virtual, Virtualbox, desde el sitio web oficial de Oracle.

<image src='Img Instalación/virtualbox pagina.jpg' width='70%'>

<image src='Img Instalación/virtualboxdescargas.jpg' width='70%'>

Se ejecutó el instalador de la maquina virtual, la instalación es sencilla: "Next, Next, Install"

<image src='Img Instalación/virtualbox setup.jpg' width='70%'>
<image src='Img Instalación/virtualbox setup 2.jpg' width='70%'>
<image src='Img Instalación/vm aplicacion.jpg' width='70%'>

De igual forma, se obtuvo el archivo .iso de Linux Mint Xfce Edition.

<image src='Img Instalación/linux mint.jpg' width='70%'>
<image src='Img Instalación/linux mint descargas.jpg' width='70%'>
 
Posteriormente, se procedió a configurar el Virtualbox, estableciendo los siguientes parámetros:

<image src='Img Instalación/virtual machine resultado.png' width='70%'>

A continuación, se ejecutó el instalador de Linux en la máquina virtual, siguiendo los pasos indicados: selección del idioma, ubicación, entre otras especificaciones. Al finalizar este proceso, se reinició la máquina virtual y se verificó que Linux estuviera instalado correctamente.

<image src='Img Instalación/linux mint boot menu.jpg' width='70%'>
<image src='Img Instalación/linux mint escritorio.jpg' width='70%'>
<image src='Img Instalación/linux mint instalador.jpg' width='70%'>
<image src='Img Instalación/linux mint instalador terminado.jpg' width='70%'>
 
Luego de reiniciar la maquina Linux quedo listo para usarse, e instalar las otra herramientas requeridas

# Instalación de Miniconda

Usando el navegador Firefox que viene pre-instalado en Linux se buscó el sitio web de Miniconda para instalarlo, se descargó la siguiente versión:

<image src='Img Instalación/miniconda descarga.png' width='70%'>

Esta instalación se debe realizar desde el terminal, como se muestra en la siguiente imagen

<image src='Img Instalación/miniconda instalador.png' width='70%'>

El comando "pwd" sirve para ver la dirección en la que se esta, el comando "ls" muestra las carpetas y archivos en esa dirección, el comando "cd Descargas" sirve para moverse a la carpeta Descargas, ya que esa es la ubicación donde se encuentra el .sh recien descargado.

Ya en la carpeta de descargas se ejectuta el codigo bash Miniconda3 -(version), se puede escribir "bash mini" y presionar la tecla TAB para que el terminal complete la instrucción y se le da Enter para iniciar la instalación.

<image src='Img Instalación/miniconda licencia.png' width='70%'>

Poner en la consola "yes" para aceptar los terminos y condiciones y proceder con la instalación.

<image src='Img Instalación/miniconda ubicacion.png' width='70%'>

Pulsando enter se instala miniconda en la ubicación por defecto.

<image src='Img Instalación/miniconda instalacion terminada.png' width='70%'>

La instalacion esta terminada, poner "yes" en la consola para iniciar miniconda, y luego reiniciar el terminal.

Para comprobar la instalación se pone en la consola "python", y esta debe arrojar la version de python instalada en el miniconda

<image src='Img Instalación/miniconda version python.png' width='70%'>

Para comprovar la version de miniconda poner el codigo "conda":

<image src='Img Instalación/miniconda version.png' width='70%'>

# Instalación de Complementos

Según las instrucciones del profesor se ejecutan los siguientes codigos en el terminal para instalar los complementos

(base) $ conda update conda # Actualizar conda

(base) $ conda create -n digital python=3.10 # Configurar digital como variable de entorno y python3.10

(base) $ conda activate digital  # Activar la variable de entorno de conda denominada digital

(digital) $ python --version # Debe presentarse la version 3.10 para poder continuar

(base) $ conda activate digital  # Activar la variable de entorno de conda denominada digital

(digital) $ conda install -c conda-forge gtkwave 

(digital) $ conda install -c conda-forge graphviz

(digital) $ conda install -c symbiflow netlistsvg

(digital) $ conda install -c "litex-hub" yosys

(digital) $ conda install -c "litex-hub" iverilog

Corroborandose su correcta instalación al invocar la lista de paquetes instalados por miniconda

<image src='Img Instalación/herramientas.png' width='70%'>

<image src='Img Instalación/herramientas 2.png' width='70%'>

 
# Errores encontrados (Instalación de Linux Mint particionando en un computador con sistema operativo MacOS)

Como se vio en la descripción anterior, sobre la instalación de Linux Mint, empleando una VirtulBox como medio, no se encontraron obstáculos o errores importantes en todo este procedimiento.

Ahora bien, para esta instalación, en un caso particular, se quizo tener Linux particionado en un computador Mac, realizandose los mismos pasos que en el caso de la máquina virtual, pero a diferencia, teniendose ciertos pasos adicionales ya que el hardware iba a ser uno real y no uno virtual. Se requirió una USB de 8GB con el fin de emplearla como una USB booteable y dentro de esta, poder almacenar los archivos necesarios para usar este Pendrive como medio de instalación dentro de la Mac. 

Siendo estos pasos adicionales, la partición del disco duro para que en una parte (aproximadamente 40GB) se empleara para todo lo correspondiente al espacio de almacenamiento del sistema operativo Linux Mint y una segunda partición (1GB) como Swap y de este modo a la hora de encender el equipo, se pudiera elegir con que sistema operativo arrancar.

Luego de realizar todo el proceso de instalación correspondiente y aparecer los mismos pasos que en el caso de la máquina virtual, se inició el computador con Linux Mint de manera correcta.

<image src='Img Mac/Linux funcionamiento.jpeg' width='70%'>
 
Después, como primer error se pudo ver como a la hora de darle al botón Apagar dentro de Linux, la pantalla se apagaba como se hubiera esperado, pero luego se volvía la pantalla en blanco, sin apagarse el equipo en ningún momento. Teniendo que ser presionado el botón de apagado que se encontraba en el teclado, realizandose un apagado forzado para que realizara finalmente dicha acción.

<image src='Img Mac/Pantalla blanco.jpeg' width='70%'>
 
Y como error final y fatal, a la hora de encender nuevamente el equipo, aparecía la pantalla esperada del Swap, para poder escoger que sistema operativo usar, pudiendo ser usado Linux Mint (EFI Boot) sin ningún tipo de problema, siendo el único inconveniente, el mencionado anteriormente. Pero al momento de volver al menú de selección y escoger la opción de macOS, en la pantalla aparecía un simbolo de prohibido, sin poder realizar otra acción más que forzar el apagado del equipo. 

<image src='Img Mac/Swap.jpeg' width='70%'>
 
<image src='Img Mac/Error.jpeg' width='70%'>
 
Al investigar un poco, se pudo conocer que este simbolo al arrancar el equipo se presenta cuando se encuentra el Booter del sistema operativo y dicho archivo se muestra como corrupto, no pudiendo continuarse con el proceso de arranque, observandose en el disco de arranque, un sistema operativo de una versión de macOS que el computador Mac no puede usar. Esto siendo el problema final, posiblemente por la eliminación de algún archivo clave, ya que este computador ya presentaba la instalación de un sistema operativo no compatible, ya que para el año del computador, las nuevas versiones lo consideraban obsoleto, siendo esta instalación a partir de una aplicación externa y no oficial de Mac con la que se pudo tener una versión mas reciente de MacOS. 

Como única solución provisional, fue la instalación dentro de MacOS de la aplicación VirtualBox, realizando los mismos pasos que al inicio de este documento.
