import requests
from bs4 import BeautifulSoup
from pymongo import MongoClient
from pprint import pprint


url="https://www.clarin.com/rss/lo-ultimo/"
#url2="https://www.pagina12.com.ar/rss/portada"

pagina=requests.get(url)
contenido=pagina.content
sopa=BeautifulSoup(contenido, "html.parser")
Contenedor=sopa.find(id="resultContainer")
rss=sopa.rss
canal=rss.channel
noticias=sopa.rss.channel.find_all("item")
pprint(noticias[1].title)
#contenido=pagina.text
for noticia in noticias:
    print("Nombre: ", noticia.title.text, "\nFecha: ", noticia.pubdate.text)

# Conectarse a mongo DB Server
cliente = MongoClient("mongodb://localhost:27017/?readPreference=primary&appname=MongoDB%20Compass&ssl=false")
Base_de_datos=cliente.Noticias_en_vivo # Extraer la base de datos
Coleccion=Base_de_datos.Noticias1 # Extraer la coleccion de la base de datos
# Definir un diccionario para la insercion de valores a la base de datos
noticia = {"titulo": "Clase de analisis de datos - Marcelo Pinzon",
           "Fecha de publicacion": "16/1/2024",
           "Fuente": "3 de desarrollo de software"}
Coleccion.insert_one(noticia) #Insertar un solo dato (diccionario)