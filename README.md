# ZIPAR
Programa para comprimir archivos de varias carpetas diseñado en Visual Foxpro
ZIPAR
Programas:
Inicio – Programa de configuración y ajuste de variables iniciales
Zipar – Programa para llamar la clase para la compactación de los archivos seleccionados.
 
Clases:
Interface – Interfase gráfica para compresión de archivos.
Zip – Clase para compactar los archivos con los parámetros solicitados.
 
Tablas:
Zipar_app – Tabla que contiene todas las propiedades de los archivos a comprimir.
 
Cursor:
Archivos – Cursor que contiene la selección de archivos.
Formularios:
Multiple – FormSet que contiene los formularios que permiten hacer la selección de archivos para comprimir y generarlo en una ruta personalizada.
 
Procedimientos y funciones:
Armardir: Construye la estructura de directorios de acuerdo a los archivos seleccionados
CrearDirs: Crea físicamente los directorios en la ruta seleccionada antes de copiar los archivos.
OrdenarColumna: Permite ordenar las columnas ascendente o descendentemente.
El programa permite hacer una copia de seguridad en formato ZIP de todos los archivos seleccionados.
La diferencia con cualquier otro programa que cumple con esta función, es que puedo acumular en una sola pantalla todos los archivos de diferentes carpetas haciendo la construcción final conservando la misma estructura sin perder de vista los archivos seleccionados. 

TIPS:
El truco es presionar el botón <BUSCAR> por cada directorio del que se comprimirán archivos.
