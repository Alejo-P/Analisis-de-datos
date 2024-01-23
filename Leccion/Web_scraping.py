from bs4 import BeautifulSoup
import requests, os, time
from pymongo import MongoClient

#URLS
url="https://sitios.mineduc.cl/lenguajesdigitales/desarrollo-web-html-css.html"
url2="https://sitios.mineduc.cl/lenguajesdigitales/phyton.html"
url3="https://sitios.mineduc.cl/lenguajesdigitales/agenda.html"
url4="https://sitios.mineduc.cl/lenguajesdigitales/convocatorias.html"

# Contenido 1
pagina=requests.get(url)
contenido=pagina.content
sopa=BeautifulSoup(contenido, "html.parser")
Contenedor=sopa.find("div", id=False, class_=False)

# Contenido 2
pagina=requests.get(url2)
contenido=pagina.content
sopa=BeautifulSoup(contenido, "html.parser")
Contenedor2=sopa.find("div", id=False, class_=False)

# Contenido 3
Contenedor3=sopa.find_all("div", class_="card")
for elementos in Contenedor3:
    elementos.get_text()

# Contenido 4
pagina=requests.get(url3)
contenido=pagina.content
sopa=BeautifulSoup(contenido, "html.parser")
Contenedor4=sopa.find("p", id=False, class_="mb-4")

# Contenido 5
pagina=requests.get(url4)
contenido=pagina.content
sopa=BeautifulSoup(contenido, "html.parser")
Contenedor5=sopa.find("div", id=False, class_="col-md-8 offset-md-2 text-center")


Importacion= {
    "Contenido!": Contenedor.get_text(),
    "Contenido2": Contenedor2.get_text(),
    "Contenido3": Contenedor3[1].get_text(),
    "Contenido4": Contenedor4.get_text(),
    "Contenido5": Contenedor5.get_text()
    
}

#<------------------------------MONGO DB------------------------------>#
cliente = MongoClient("mongodb://localhost:27017/?readPreference=primary&appname=MongoDB%20Compass&ssl=false")
base_de_datos=cliente.Educativa
coleccion=base_de_datos.Coleccion1
coleccion.insert_one(Importacion)
# Cerrar la conexión con MongoDB después de un tiempo de espera
time.sleep(5)  # Ajusta el tiempo de espera según sea necesario
cliente.close()

