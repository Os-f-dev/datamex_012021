<img src="https://bit.ly/2VnXWr2" alt="Ironhack Logo" width="100"/>

# Web Project
*Alberto Suarez*

*DAFT México Enero 2021*

## Content
- [Project Description](#project-description)
- [Alcance](#alcance)
- [Explicacion de mi analisis ](#explicacion-de-mi-analisis)

## Project Description
Proyecto de la semana 3 del bootcamp Data Analityc de Ironhack Mexico.

El objetivo de este proyecto es aplicar las técnicas de web scraping para obtener información de Apis o páginas web, a las cuales le aplicaremos un proceso de limpieza de datos y finalmente generaremos un archivo CSV con la información útil.

## Alcance
Para la temática de este proyecto escogí páginas de venta y compra P2P de criptomonedas: 
- Limite mi búsqueda a solo páginas de criptomonedas con mercado P2P en Venezuela y solo tome las ventas y compras de Bitcoin

<img src="https://es.wikipedia.org/wiki/Bitcoin#/media/Archivo:Bitcoin_logo.svg" alt="bitcoin Logo" width="100"/>

- Se obtuvieron 3 paginas para el análisis: Localbitcoin, Localcryptos y Binance
- En cada página se realizó un scraping a su sección de ofertas de ventas y compras, y se utilizaron técnicas de web scraping distintas

## Explicación de mi análisis

###  Importar Librerías 

- Primero importe todas las librerías que necesitaría para comenzar realizar los trabajos de web scraping y limpieza de datos: pandas, BeautifulSoup, requests, regex y selenium 

###  Localbitcoin

- Para obtener la información se hizo un request a la API publica que tiene la página.
- Se realizó un ciclo para enviar varios request, por cada request se obtenía una página de información en formato json
- La data en formato json fue normalizada y a partir de ella se crearon los dataframe.
- Se aplicó una limpieza a varias columnas, en especial a la que indicaba los bancos en donde se aceptaban las transacciones
- Aplique este procedimiento para las ofertas de compra y las ofertas de venta por separado debido a que están en dos secciones distintas de la página, al finalizar el procedimiento se crearon dos dataframe, uno para cada uno, que luego fueron unidos en uno global para la página

### Localcryptos

- Para obtener la información se hizo un request a la página para obtener su html.
- La data en formato html fue manejada con beatifulsoup donde se filtró por tags y clases que contenían la información de utilidad.
- Se aplicó una limpieza al string extraído y se colocaron separadores de campo para que sean correctamente interpretado por pandas.
- Se generó un un dataframe con la lista de string limpios, y se agregaron algunas columnas adicionales para identificar el origen de los datos, el tipo de oferta y la moneda ofertada.
- Aplique este procedimiento para las ofertas de compra y las ofertas de venta por separado debido a que están en dos secciones distintas de la página, al finalizar el procedimiento se crearon dos dataframe, uno para cada uno, que luego fueron unidos en uno global para la página.

### Binance

- Esta página tiene una api pero requiere autenticación y bloquea los request de html mediante python, por esto se decidió extraer la información con selenium
- al igual que las otras dos páginas tiene dos secciones una para las ofertas de venta y otra para las ofertas de compra
- se crearon algunas funciones para facilitar el proceso y automatizar el proceso de extracción de varias páginas de binance.
- se utilizó selenium para extraer listas en varias secciones de la página, que posteriormente fueron unidas para generar un dataframe
- se complementó la información creando columnas generales
- Como en las dos páginas anteriores (localbitcoin y localcryptos) se aplicó este procedimiento para las ofertas de compra y las ofertas de venta por separado debido a que están en dos secciones distintas de la página
- Se unifico estos dos dataframe en uno general para la página

### Archivo resultante
- Se concateno los dataframe generales de las 3 páginas para crear un dataframe con la información unificada
- Se exporto en formato CSV utilizando el carácter pipe como separador de campo.
