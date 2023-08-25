# ¿Por qué usar linux sobre otros sistemas operativos?
 
Linux es un sistema operativo de código abierto que ofrece varias ventajas sobre otros sistemas operativos, como Windows o Mac OS. Algunas de estas ventajas son:

- Linux es gratuito y se puede descargar, instalar y modificar libremente, sin necesidad de pagar licencias o derechos de autor.
  
- Linux es más seguro y estable que otros sistemas operativos, ya que tiene menos vulnerabilidades y errores, y se actualiza constantemente por una gran comunidad de desarrolladores y usuarios.
  
- Linux es más flexible y personalizable que otros sistemas operativos, ya que permite elegir entre diferentes distribuciones, entornos de escritorio, aplicaciones y configuraciones, según las preferencias y necesidades de cada usuario.
  
- Linux es más eficiente y rápido que otros sistemas operativos, ya que consume menos recursos y optimiza el rendimiento del hardware, lo que se traduce en un menor consumo de energía y una mayor duración de la batería.
  
- Linux es más compatible y versátil que otros sistemas operativos, ya que se puede instalar en una gran variedad de dispositivos, desde ordenadores hasta smartphones, pasando por consolas, servidores o sistemas embebidos.

# Instalación de Linux Mint 

Como primer paso, se realizó la descarga e instalación de una máquina virtual, Virtualbox, desde el sitio web oficial de Oracle. De igual forma, se obtuvo el archivo .iso de Linux Mint Xfce Edition.
Posteriormente, se procedió a configurar el Virtualbox, estableciendo los siguientes parámetros:

imagen

A continuación, se ejecutó el instalador de Linux en la máquina virtual, siguiendo los pasos indicados: selección del idioma, ubicación, entre otras especificaciones. Al finalizar este proceso, se reinició la máquina virtual y se verificó que Linux estuviera instalado correctamente.

imagen

Luego, se procedio a instalar Minianaconda y de este modo poder instalar los recursos necesarios para desarrollar el laboratorio de Digital I

# Errores encontrados (Instalación de Linux Mint particionando en un computador con sistema operativo MacOS)

Como se vio en la descripción anterior, sobre la instalación de Linux Mint, empleando una VirtulBox como medio, no se encontraron obstáculos o errores importantes en todo este procedimiento.

Ahora bien, para esta instalación, en un caso particular, se quizo tener Linux particionado en un computador Mac, realizandose los mismos pasos que en el caso de la máquina virtual, pero a diferencia, teniendose ciertos pasos adicionales ya que el hardware iba a ser uno real y no uno virtual. Se requirió una USB de 8GB con el fin de emplearla como una USB booteable y dentro de esta, poder almacenar los archivos necesarios para usar este Pendrive como medio de instalación dentro de la Mac. 

Como pasos adicionales se tuvo que, particionar el disco duro para que en una parte (aproximadamente 40GB) se empleara para todo lo correspondiente al espacio de almacenamiento del sistema operativo Linux Mint y una segunda partición (1GB) para emplearse como Swap y de este modo a la hora de encender el equipo, se pudiera elegir con que sistema operativo arrancar al prenderlo.

Luego de realizar todo el proceso de instalación correspondiente y aparecer los mismos pasos que en el caso de la máquina virtual, se inició el computador con Linux Mint de manera correcta.
<img src='Img Mac/'
