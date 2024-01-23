// Importar las bibliotecas necesarias (cheerio y axios)
// para poder realizar peticiones http a través de JavaScript.
const fs = require('fs');
const axios = require('axios'); 
const cheerio = require('cheerio');
// Para trabajar con rutas
const path = require('path');

// Definir variables necesarias
const misterio="https://books.toscrape.com/catalogue/category/books/mystery_3/index.html"

// Definir la ruta de trabajo actual
const ruta = path.join(process.cwd(), 'Analisis-de-datos', 'JS');

// Declarar un arreglo
Dato_libro=[]

// Funcion para realizar la peticion a la pagina web y obtener libros
async function getLibros(url)
{
    try
    {
        const respuesta=await axios.get(url);
        const $=cheerio.load(respuesta.data);
        const libros=$( "article");
        libros.each(function()
        {
            titulo=$(this).find("h3 a").text();
            precio=$(this).find(".price_color").text();
            strock=$(this).find(".availability").text().trim();

            Dato_libro.push({titulo,precio,strock});
        });
        console.log(Dato_libro);
        // Guardar en archivo CSV
        guardarCSV(Dato_libro);
    }
    catch (error)
    {
        //Imprimir en consola el error
        console.error("El error fue: ", error);
    }
}

// Funcion para crear y guardar los datos obtenidos en un archivo CSV
function guardarCSV(datos) {
    // Estructurar el contenido del archivo (delimitadores)
    const csvContent = "Título;Precio;Stock\n" +
        datos.map(libro => `${libro.titulo};${libro.precio};${libro.strock}`).join("\n");

    // Especificar la ruta del archivo CSV
    const rutaArchivo = path.join(ruta,"libros.csv");

    // Crear y guardar informacion en el archivo CSV
    fs.writeFile(rutaArchivo, csvContent, 'utf8', (err) => {
        if (err) {
            console.error("Error al escribir en el archivo CSV:", err);
        } else {
            console.log(`Los datos se han guardado correctamente en ${rutaArchivo}`);
        }
    });
}

// llamada de la funcion para que se ejecute una vez cargado todo el html
getLibros(misterio)