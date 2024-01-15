from bs4 import BeautifulSoup
import requests, os
ruta=os.getcwd()+"/Analisis-de-datos/Web Scraping"
url="C:/Users/pinzo/OneDrive/Documentos/Proyectos/Proyecto DI/index.html"

# Leer el contenido del archivo HTML local
with open(url, "r", encoding="utf-8") as archivo_local:
    contenido = archivo_local.read()

notacion=BeautifulSoup(contenido, "lxml")
texto=notacion.find("ul", class_="menu").get_text(strip=True, separator=",").split(",")
for elemento in texto:
    print(elemento)
    
#Guardar el contenido en un archivo HTML
with open('{}/Salida.txt'.format(ruta),'w', encoding='utf-8') as archivo_salida:
    archivo_salida.write('\n'.join([str(i) for i in sorted(set(texto), key=texto.index)]))