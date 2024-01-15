# Importar la libreria beautiful soup
from bs4 import BeautifulSoup
import requests
import os

ruta=os.getcwd()+r"\Analisis-de-datos\Web Scraping"
# Asignar la URL de la pagina
sitio_web="https://subslikescript.com/movie/Titanic-120338"

resultado=requests.get(sitio_web)
contenido=resultado.text # Almacenar el contenido como texto

sopa=BeautifulSoup(contenido, "lxml") #Localiza elementos de una pagina web

# Buscar solo un elemento de la pagina
caja=sopa.find("article", class_="main-article")
titulo=caja.find("h1").get_text() # Buscar la etiqueta h1 en main-article

desc=caja.find("p").get_text() # Burcar la etiqueta p en main-article

transc=caja.find("div", class_="full-script").get_text(strip=True, separator="") # buscar la etiqueta div en main-article e ignorar el salto de linea

print(transc, "\n<Marcelo Pinzon>") #Imprimir de forma entendible la informacion

# Abrir el archivo con codificacion utf-8 y guardar la transcripcion
with open(ruta+"/titanic.txt", "w", encoding="utf-8") as archivo:
    archivo.write(transc)