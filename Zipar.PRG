PARAMETERS mNuevozip,mIncluir,mClave,mComentario
mNuevozip=mNuevozip+'.ZIP'
*SET PATH TO FULLPATH(CURDIR())
SET CLASSLIB TO 'zip\zip.vcx' ADDITIVE 


*!* Creamos el objeto
oZip=CREATEOBJECT('Zip.Zip')


*!* CREAR UN ARCHIVO ZIP
WITH oZip
*   .ArchivoZip='C:\Users\guillermo.betancur\GBPruebas\PRUEBA.ZIP'   && Ruta y nombre del archivo ZIP
   .ArchivoZip=mNuevozip   && Ruta y nombre del archivo ZIP
   
   NOTE : archivos a incluir en el zip, ara mas de uns archivo separar por | , CHR(124) ;
         si se tratara de un solo archivo seria asi :   .ArchivosIncluir='C:\ARCHIVO1.TXT';
         para incluir todos los archivos que empiecen con la letra "A" usariamos algo asi;
         .ArchivosIncluir='C:\A*.TXT', si quicieramos ingresar todos los archivos de una carpeta;
         seria asi .ArchivosIncluir='C:\MiCarpeta\*.*'
         
*   .ArchivosIncluir='C:\Fuente2020\FACTURAS\mvfactur.scx|C:\Fuente2020\FACTURAS\mvfactur.sct|C:\Fuente2020\COMPRAS\mvcompra.SCT|C:\Fuente2020\COMPRAS\mvcompra.SCX'   && Archivos a inlcuir 
   .ArchivosIncluir=mIncluir   && Archivos a inlcuir 
   
*   .Contraseña='swordfish'   && Proteger el zip con una contraseña, Opcional
   .Contraseña=mclave   && Proteger el zip con una contraseña, Opcional
*   .Comentario='Archivos de prueba'   && Comentario del ZIP
   .Comentario=mComentario   && Comentario del ZIP
   
*   ?'---------------------'
*   ?'Comprimiendo archivo ZIP '
*   ?.Comprimir()   && Crear el zip y mostrar en pantalla la cantidad de archivos procesoados 
   .Comprimir()   && Crear el zip y mostrar en pantalla la cantidad de archivos procesoados 
*   ?'---------------------'
   MESSAGEBOX("Archivos generados en "+mNuevozip,0+48,"ZIP Generado")
ENDWITH 


*!* DESCOMPRIMIR UN ARCHIVO ZIP
*WITH oZip
*   .ArchivoZip='C:\Users\guillermo.betancur\GBPruebas\PRUEBA.ZIP'   && Ruta y nombre del archivo ZIP
*   .DirectorioDestino='C:\TEMP'   && Directorio de destino del contenido del ZIP
*   .Contraseña='swordfish'   && Contraseña para desproteger el zip
*   
*   ?'---------------------'
*   ?'Descomprimiendo archivo ZIP'
*   ? .Descomprimir()   && Descomprimir el zip y mostrar en pantalla la cantidad e archivos procesoados 
*   ?'---------------------'
*ENDWITH
SET CLASSLIB TO 