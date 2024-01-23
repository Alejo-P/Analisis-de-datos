# Importar las bibliotecas necesarias
from bs4 import BeautifulSoup
import requests, os

# Definir la ruta para guardar el archivo txt y la url de la pagina por analizar
ruta=os.getcwd()+"/Analisis-de-datos/Web Scraping"
url="https://books.toscrape.com/catalogue/the-cookies-cups-cookbook-125-sweet-savory-recipes-reminding-you-to-always-eat-dessert-first_841/index.html"

# Realizar la peticion y obtener el contenido
respuesta=requests.get(url)
contenido=respuesta.text

# Utilizar BeautifulSoup para obtener el contenido
sopa=BeautifulSoup(contenido, "lxml")
# Buscar la etiqueta 'div' con clase 'col-sm-6 product_main'
texto=sopa.find("div", class_="col-sm-6 product_main")
# Extraer de la busqueda solo el contenido de la etiqueta 'h1'
titulo=sopa.find("h1").get_text()
#print(titulo)

# Buscar la etiqueta 'div' con id 'content_inner'
desc=sopa.find("div", id="content_inner")
# Extraer de la busqueda solo el contenido de la etiqueta 'p' sin clase ni Id
descripcion=desc.find('p', class_=False, id=False).get_text()
print(descripcion, "<Marcelo Pinzon>")

# Separar los valores por comas (usando .split()) para guardarlos en el archivo
lista=descripcion.split(",")

# Guardar el contenido de la lista en un archivo txt
with open(ruta+'/descripcion.txt','w', encoding='utf-8') as archivo:
    for elemento in lista:
        # Agregar al archivo cada elemento de la lista eliminando los espacios a los extremos
        archivo.write(elemento.strip()+"\n")