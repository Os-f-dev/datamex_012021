![Ironhack logo](https://i.imgur.com/1QgrNNw.png)

# Lab-Web-Project | Objetos cercanos a la Tierra

Mileixis Serrano

## Introduccion

En busca de todas las apis disponibles, decidi utilizar la api de la Nasa, para ello solicite la Key, y luego ver que tipo de informacion pudiese querer para buscar paginas web y hacer WeScrapping.

## Proceso

Primero comence con la api y ver que respondiera un codigo satisfactorio (con codigo: 200) mediante el comando requests.get(api), luego lo interprete ya que es un json y observe las keys.
 
Debido a que la api contiene toda la informacion relevante mi enfoque fue en ello, utilice la funcion .json para interpretar el requests.get de la api añadiendole la key que habia solicitado, luego me fui al endpoint near_earth_objects que contiene la informacion a usar y luego hice un DataFrame. Luego utilice la funcion flatten en varias columnas que tenian informacion anidada para que la misma se me agregara como otro columna en mi DataFrame y use la funcion Drop dentro de la misma funcion para eliminar la columna origen(a la que se le aplico la funcion flatten), hice un copia de mi DataFrame y comence a eliminar las columnas que no queria analizar, posteriormente renombre mis columnas y ya luego saque algunos datos importantes y realice un csv de mi DataFrame.

Luego busque una pagina donde me trajera la persona que descubrio el asteroide y , solo consegui los primeros mil asteroides asi que empece a trabajar con ello utilice la libreria de requests con el contenido de la pagina y utilice BeautifulSoup tambien, luego saque todos mis td de mi sopa y empece a limpiarlos primero quite los saltos de lineas. Me di cuenta que dentro de mi informacio tenia (n) donde n es el numero del asteroide y como no lo queria use un bucle for para quitarlo. Luego use otro for para listar cada 4 posiciones en mi lista donde tengo todos mis elementos. Elimine mi primera lista vacia con pop y defini 'cabe' los nombres que van a tener las columnas del DataFrame. Luego hice mi DataFrame y agregue una columna 'id' con una lista de comprension en un rango de 1 a 1000 que son los numeros de los asteroides y la agregue con reindex. Exporte mi csv y ya luego hice dos analisis del descubridor de mas asteroides y donde se han observado mas los asteroides descubiertos.

Para mi ultimo WeScrapping busque un top 10 de los impactos mas significativos en la tierra y me traje solo la informacion relevante en la pagina aqui igual utilice requests y BeautifulSoup busque todos mis 'p' y me di cuenta que los nobres los tenia en 'strong' asi que cree una lista con estos y los limpie quitandole primero los saltos de lineas, y reemplazando por nada algunos caracteres que no queria, luego si busque todos mis 'p' y cree una lista limpiando los saltos de lineas. Luego saque la informacion que necesitaba en 3 listas y con replace quitelo que no queria de cada una de ellas. Luego estructure mi data en una lista de diccionario. Por ultimo cree un DataFrame y lo exporte como csv. Este ultimo DataFrame es solo informativo.

Luego ya se pudieran sacar analisis de los datos que me traje de la api y del WeScrapping.

## Links

- [Nasa APIs](https://api.nasa.gov/)
- [Asteroides (1)-(1000)](https://es.wikipedia.org/wiki/Anexo:Asteroides_(1)-(1000))
- [Top 10 impactos de asteroides contra la tierra](https://www.nationalgeographic.es/espacio/top-10-impactos-de-asteroides-contra-la-tierra)