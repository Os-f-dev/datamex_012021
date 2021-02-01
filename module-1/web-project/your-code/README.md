
Escogí la api de la página Iexapis, la cual tenía mucha información de subyacente, por ejemplo, los dividendos en un años, los precios low high y close de los subyacentes en los últimos 30 días.

Decidí trabajar con las 10 acciones más pedidas en las notas estructurada especialmente notas Autocallables, las cuales fueron 'NFLX','AAPL','TSLA','BMRN','MRNA','UBER','AMZN-MM','CNC','NVDA','FDX'.

De cada una de ellas, hice un ciclo ya que para acceder a su api lo único que cambiara era el nombre del subyacente.

En el primer ciclo únicamente fue para extraer la fecha con un subyacente X, al final eliminaría esa columna.

Solo escogí que me trajera el precio Close de las acciones.

Al final tenía una tabla con 10 acciones y sus últimos 30 closing precios, a partir de esto utilice el método agg con el fin de obtener estadísticas descriptivas las cuales fueron las siguientes:

*Mean
*Min
*Max
*Var
*Kurtosis
*Skew
*Median
*Std

Se grafica Time series de los subyacente con respecto a los 30 días.
Se realiza un histograma para observar las frecuencias de  los valores de subyacentes.

En la parte de Web scrapping se decidió obtener los ISIN el cual es un identificador único de cada acción para los mismo 10 subyacentes.

Al final se unen los dos dataframes, el de las medidas estadísticas descriptivas y los ISIN respectivos.
