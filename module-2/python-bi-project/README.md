![IronHack Logo](https://s3-eu-west-1.amazonaws.com/ih-materials/uploads/upload_d5c5793015fec3be28a63c4fa3dd4d55.png)

# Project: Business Intelligence with Python

## Overview

En este proyecto trabajaremos con una data que contiene información de distintas compañias a nivel mundial, evaluaremos,graficaremos y conoceremos la data, para enbase a ella decidir donde y de que podemos crear una compañia según nuestro criterio personal


---

## ¿como realicé el proyecto?

* El primer paso fue importar las librerias necesarias que utilizaremos.
* conectarnos con nuestra Base de Datos NoSql, en esta oportunidad MongoDb
* los siguientes pasos fueron ir conociendo los campos que nos proporciono la BD
* una vez observado los distintos campos, realice un query donde obtuve la siguiente información: empresas fundadas a partir del año 2007 y  los campos( nombre, total de dinero recaudado,oficinas,año de fundado,descripccion,producto,números de empleados,categoria y competencias)
* a primera vista observamos que tenemos campos a lo cual tendremos que aplicar normalización.
* trabajamos con un primer df, donde utilizamos el campo Offices, de este DF eliminamos los otros dos campos que estan anidados, para que no nos cause problemas ni alteré los valores, seguidamente aplicamos json_normalize.
* luego observamos una grafica para ver la cantidad de empresas que hay en los diferentes paises, igualmente una grafica para observar las distintas categorias que existen en la data.
* Tomé la decisión de trabajar con el país de USA y con la categoria de Analytics, en base a eso realicé los filtros correspondientes.
* Teniendo eso en cuenta realicé Json_normalize con las columnas competitions y products y apliqué de igual forma los filtros necesarios, para manejar la misma data.
* para finalizar observamos 3 graficas, una donde podemos observar que empresa tiene mayor competencia, otra donde podemos ver que empresa ofrece mas productos y la ultima en que ciudad están distribuidas las distintas empresas.

## Conclución

Me enfocaría para mi empresa en ciudades estrategicas donde no esté concentrado el mayor volumen, pero cercana a otras para poder tener competencia de mercado