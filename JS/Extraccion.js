// Importar las bibliotecas necesarias (cheerio y axios)
// para poder realizar peticiones http a través de JavaScript.
const fs = require('fs');
const axios = require('axios'); 
const cheerio = require('cheerio');
// Para trabajar con rutas
const path = require('path');

// Definir variables necesarias
const URLmusica="https://books.toscrape.com/catalogue/category/books/music_14/index.html"

// Definir la ruta de trabajo actual
const ruta = path.join(process.cwd(), 'Analisis-de-datos', 'JS');

// Declarar un arreglo para almacenar la info de la musica
Info_musica=[]

// Funcion para realizar la peticion a la pagina web y obtener los detalles de las musicas
async function Obtener_info(url)
{
    try
    {
        const respuesta=await axios.get(url);
        const $=cheerio.load(respuesta.data);
        const musica=$("article");
        musica.each(function()
        {
            // Extraer el nombre del libro de la cancion
            nombre=$(this).find("h3 a").text();
            // Extraer el precio del libro
            precio=$(this).find(".price_color").text();
            // Extraer la disponibilidad del libro
            strock=$(this).find(".instock").text().trim();

            // Añadir la informacion extraida al arreglo
            Info_musica.push({nombre,precio,strock});
        });
        // Imprimir la informacion en la consola
        console.log(Info_musica);
        // Guardar en archivo CSV
        guardarCSV(Info_musica);
    }
    catch (error)
    {
        // Imprimir en consola el error
        console.error("El error fue: ", error);
    }
}

// Funcion para crear y guardar los datos obtenidos en un archivo CSV
function guardarCSV(datos) {
    // Estructurar el contenido del archivo (establecer delimitadores)
    const contenido = "Nombre;Precio;Stock\n" +
        datos.map(musica => `${musica.nombre};${musica.precio};${musica.strock}`).join("\n");

    // Especificar la ruta del archivo CSV
    const ruta_archivo = path.join(ruta,"musica.csv");

    // Crear y guardar informacion en el archivo CSV
    fs.writeFile(ruta_archivo, contenido, 'utf8', (err) => {
        if (err) {
            console.error("Error al escribir en el archivo CSV:", err);
        } else {
            console.log(`Los datos se han guardado correctamente en ${ruta_archivo}`);
        }
    });
}

// Iniciar con la llamada a la funcion para obtener los datos
Obtener_info(URLmusica);