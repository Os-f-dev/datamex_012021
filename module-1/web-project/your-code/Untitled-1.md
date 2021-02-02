
![IronHack Logo](https://s3-eu-west-1.amazonaws.com/ih-materials/uploads/upload_d5c5793015fec3be28a63c4fa3dd4d55.png)

# Project: API and Web Data Scraping

## Acciones de la bolsa

Para este proyecto escogí como tema, un top 3 de las empresas con mayor actividad en la bolsa, en este ocasión escogí **[Apple : "AAPL", TESLA :"TSLA" y GameStop Corp:"GME"].** Mi principal objetivo se enfocó en tener información de calidad que más adelante me ayude a sacar distintos tipos de análisis. Encontrarán 3 archivos .CSV, data_hist,data_cons y table_ranking.
data_hist : contiene un historico de 3 meses para cada empresa, donde podemos ver los diferentes valores de la acción en [open,high,low,close,volumen], que basicamente son precio al momento de la apertura, la alta del día, la baja, el cierre y el volumen de acciones, es una data que nos aporta mucha información relevante para hacer un análisis especifico a cada una de las empresas.
data_cons : en esta tabla podemos encontrar 30 columnas donde hay datos estadísticos, como promedios, cantidad de acciones, entre otros, donde tenemos un analisis más específico de nuestras 3 empresas, pero donde existe una columna llamada siglas, donde encontramos los acronimos de las empresas y nos sirve para poder realizar un join con nuesta tabla de data_hist, para ejecutar cualquier tipo de estudio.
table_ranking: este es un plus a nuestra dos tabla donde nos muestra el ranking para el momento de la extracción de como se encontraban las pocisiones de las empresas más activas en la bolsa.



**Conozcamos el codigo!!**

---


## Stock Exchange Project


* **Conexión y Response:** realizamos la conexión con el api, la pagina de rapid api, te facilita una keys para realizar tu conexión.

* **Response AAPL:** En esta parte fue donde realizamos el mayor esfuerzo de análisis y limpieza de los datos, nos encontramos con diccionarios anidados, la solución mas viable que conseguí fué, eliminar 'Meta Data' y 'Time Series(Daily)', porque?? time series, solo tenia los títulos, de lo que mas adelante serán mis columnas, pero para este caso podemos agregarlo más adelante como lo hice.
adicional estaba un diccionario de fechas que contenia la informción, realice dos lista de comprensión, una para obtener las fechas y otra para almacenar los datos que estaban contenidas en ellas.
luego realicé un for para agregar el acronimo de la empresa en la que estaba trabajando( tomando en cuenta, que extraería información de otras dos más).
realicé dos DataFrame, uno para la lista de valores y otro para las fechas y luego realice una concatenación.
teniendo un DF listo y limpio aplique el mismo procedimiento para **TSLA y GME**

* **Ajustes:** aquí renombre las columnas para cada uno de mis DF y luego concatené los 3 DF y obtuvé mi **df_finalalph**

* **Api Yahoo APPL:** al igual que con la API pasada aplique el esfuerzo para una sola empresa y para el resto aplique lo mismo, primero encontraremos la instalación de **yfinance** que es la API de Yahoo Finance,luego realizó un .get_info() con ello extraigo toda la información relevante que se encuentra en la API.
cuando comienzo con la limpieza realicé una lista de tuplas, para unir los valores, luego tome solo desde la indexación 12 en adelante. Cree dos listas de comprensión donde en una agrego una lista de indicadores y otra de valores,(realicé este procedimiento de esta manera, porque había probado pasar la **api_d** a un df y me eliminaba los valores) una vez teniendo esas dos listas cree un DFrame donde data es la lista de valores y mi index es la lista de indice, y renombre la columna 0 por su acronimo APPL.
estando en este punto necesitaba quedarme con filas especificas, invertí mi tabla como la queria originalmente, y luego ordené las columnas.
**mismo procedimiento para TSLA Y GME**
* Concateno las 3 tablas y obtengo **df_finaly**

* **Web Scarping:** escogí una pagina para extraer un top ranking de los mas activos, realizo mi request, utilizo beautifulsoup, extraigo en una variable en text, luego basicamente es limpieza, saltos de linea, limpieza de espacios, separación. etc.
en una parte de la limpieza, me tropecé con unos datos que no sabía como separarlos, lo que realicé fue acceder a ellos con una lista, luego los separé  los agregue a una lista diferente, uní la lista original con esta nueva lista una a una, es decir el elemento 1 de una con el 1 de la otra, para que sean sus mismos datos, luego cree un DFrame y renombre las columnas y la columna que corregí en el paso anterior eliminé la que está sin corregir.

* **Esportación de CSV:** por ultimo exporté las 3 tablas, aparece un error, porque exporte y corrí de nuevo el codigo.

---

## Recursos

Para la realización de este proyecto me fue de utilidad los laboratorios que ya había realizado y la web.

## Fuentes

* [API Alpha Vantange](https://alpha-vantage.p.rapidapi.com/query)
* [API Yahoo Fiance](Import yfinance)
* [Url WebScraping](https://www.marketwatch.com/tools/screener/premarket)