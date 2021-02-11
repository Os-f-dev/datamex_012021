<img src="https://bit.ly/2VnXWr2" alt="Ironhack Logo" width="100"/>

# Vizualitation Project
*Alberto Suarez*

*DAFT Mexico Enero 2021*

## Content
- [Project Description](#project-description)
- [Alcance](#alcance)
- [Explicación de mi análisis ](#explicacion-de-mi-analisis)

## Project Description
Proyecto de la semana 4 del bootcamp Data Analityc de Ironhack Mexico.

El objetivo de este proyecto es partir de una base de datos en formato json insertada en Mongodb, y utilizarla como fuente inicial de datos para responder una pregunta a situación hipotética, en este caso la situación es: Si crearas una empresa, ¿ En que categoría y en donde la ubicarías ?

## Alcance
Para resolver la pregunta del proyecto yo definí mi solución de la siguiente manera: 
- Mi propuesta de negocio sería una start-ups, por lo que analizaría los datos de las empresas pequeñas (entre 5 a 75 empleados)
- Analizaría la tendencia del mercado para determinar la categoría en que se especializaría mi empresa
- Basado en la agrupación de varias empresas pertenecientes al mismo sector, determinaría la futura ubicación de mi empresa debido a que en esa zona debería existir una alta demanda y por esto hay una alta cantidad de empresas de la misma categoría.

## Explicación de mi análisis

### Paso 0: Importar Librerías y establecer conexión con mongodb

- Primero importe todas las librerías que necesitaría para comenzar, pandas, pymongo, etc. A medida que el proyecto avanzo fui agregando más.
- Se descargó el archivo de json que contenía los registros de prueba para el proyecto y se insertó en un servidor local de Mongodb
- Se estableció una conexión entre Mongodb y python, usando la librería pymongo

### Paso 1: Encontrar la categoría con mayor tendencia en el mercado

- Escribí un query inicial en python para consultar la colección de Mongodb y traerme los datos necesarios para explorarlos.
- En el query especifique solo algunas columnas y fije como condición que la cantidad de empleados de esas empresas sea entre 5 y 75 para medir aquellas que puedan tener un parecido en cuanto a tamaño con una start-up
- Los datos fueron obtenidos como un json y con ellos se creó un dataframe en pandas.
- A través de graficas se estableció cuáles eran las categorías con mayor aparición en mi dataframe, como existían categorías con porcentajes parecidos de aparición decidí ver un promedio de las ganancias de las empresas agrupando por categoría de esta forma escoger la categoría con mayor porcentaje de aparición en el dataset y mayores ganancias.
- Para realizar métricas con las ganancias, primero limpie la columna sobre las ganancias de cada empresa debido a que no estaba en formato numérico, se esa columna cree dos nuevas columnas en mi dataframe una que tenía los valores string convertidos a numéricos y otra que especificaba el tipo de moneda que usaba cada empresa para medir sus ganancias
- Con mis dos columnas nuevas realice gráficas para visualizar mi distribución de datos, y fui ajustando hasta tener una distribución sin datos outliner.
- Aplique un gráfico de barras con el promedio de ganancias de cada categoría y determine que la categoría 'Software' cumplía con mis criterios

### Paso 2: Encontrar la localización de la mayoría de las empresas de ese sector

- Con la categoría de mi empresa decidida, ahora solo me resta averiguar cuál sería un buen lugar donde posicionar mi empresa.
- Decido revisar las ubicaciones donde se concentren el mayor número de empresas de ese mismo tipo
- Realizando un nuevo query a mi base de datos de Mongodb, pero ahora filtrando solo la información de las oficinas de las empresas en la categoría de 'Software', creo un nuevo dataframe para analizar
- Primero reviso el top de países, veo que USA tiene el mayor número de empresas
- Luego discrimino por cuantas oficinas existen en cada Ciudad de Usa, mi graficas determinan que en Nueva York existe la mayor concentración de empresas pequeñas relacionadas a 'Software'
- Usando la librería de folium, dibujo un mapa de la ciudad y asigno marcadores a todas las ubicaciones de las oficinas para ver de forma visual la distribución.
- Finalmente genero un radio utilizando la media de las coordenadas de las distintas oficinas como guía, para establecer una zona donde puedo buscar para crear mi nueva empresa.


