![IronHack Logo](https://s3-eu-west-1.amazonaws.com/ih-materials/uploads/upload_d5c5793015fec3be28a63c4fa3dd4d55.png)

# Project: Data Cleaning and Manipulation with Pandas

Alberto Suarez

Ironhack DAFT Mexico JAN 2021

## Content
- [Descripcion](#project-description)
- [Pasos](#rules)

## Descripcion
En este proyecto se trabajo con un archivo .CSV que contenia informacion sobre ataques de tiburones.
El objetivo del proyecto es realizar una limpieza de los datos contenido en el archivo

## Pasos
Se resumen los pasos que se implementaron en un notebook de jupyter para realizar la limpieza del archivo:

#### 1 - Importar librerias y set configuracion
    - Se importaron todas las librerias necesarias para el proyecto: pandas, regex, numpy
    - Se aplicaron algunas configuraciones en pandas para ver mas registros
    - Se cargo el archivo CSV en un dataframe de pandas
#### 2 - Revisar tipos de datos de columnas
    - Se verifico los tipos de datos que pandas asigno a las columnas del dataframe al momento de cargar el CSV
    - Al comprobar el tipo de datos de columnas se encontro que los nombres de columnas tenian errores y caracteres especiales
    - Se limpio los espacios en blanco y palabras de los nombres de columnas
#### 3 - Cantidad de valores null
    - Se examino la cantidad de valores null contenidas en el dataframe 
#### 4 - Limpieza de nulls
    - Despues de algunas pruebas se fijo que si una fila debe tener al menos 12 valores No-Nulls para no ser eliminada
#### 5 - Llenar valores nulls
    - Aun quedan valores null dispersos entre varios registros, pero representan una cantidad menor
    - Se llena esos valores null por un valor que se usara por defecto ( en este caso se llamno "unknown") para seguir trabajando con la columnas sin errores al momento de limpiar valores.
#### 6 - Cambiar tipo de datos de columnas
    - Algunas columnas tienen valores decimales cuando representan un int, por lo que se cambiaron su tipos de datos
#### 7 - Limpieza de columnas
    - Se creo una copia del dataframe para realizar la limpieza de las columnas sin afectar el original 
    - Se evaluo los valores contenido en las columnas de mayor interes
    - Aplicacion de regex para obtener substring o reemplazar valores en las columnas
    - Los cambios se guardaron en una nueva columno en el dataframe para no afectar la columna original durante el proceso de limpieza
#### 8 - Comparacion de columnas
    - Se comparo los valores de las columnas que parecian tener relacion
    - Si la comparacion da un alto numero de valores iguales, se elimina una de las columnas para evitar valores duplicados
    - Eliminacion de las columnas originales que se utilizaron para la limpieza
#### 9 - Reestructuracion
    - Se realizo una copia del dataframe con las columnas limpias y sin columnas con valores duplicados
    - Se reasigno la posicion de las columnas
    - Como ahora existen menos columnas que en el dataframe original, hay que volver a verificar la cantidad de nulls, para esto se volvio a remplazar todo los campos unknown por NaN
    - Se fijo que se eliminarian todas las filas que no tengan al menos 14 campos con valores No-Nulls
#### 10 - Export CSV
    - El dataframe resultante de todo este proceso se exporto a un archivo CSV
#### 11 - Graficas
    - Relizacion de algunas graficas de ejemplo donde se exponen algunos valores significativos dentro del dataframe