// Importar las bibliotecas necesarias (cheerio y axios)
// para poder realizar peticiones http a través de JavaScript.
const axios = require('axios'); 
const cheerio = require('cheerio');

// Definir variables necesarias
const misterio="https://books.toscrape.com/catalogue/category/books/mystery_3/index.html"
// declarar un arreglo
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
            titulo=$(this).find("h1 a").text();
            precio=$(this).find(".price_color").text();
            strock=$(this).find(".availability").text().trim();

            Dato_libro.push({titulo,precio,strock});
        });
        console.log(Dato_libro);
    }
    catch (error)
    {
        //Imprimir en consola el error
        console.error("El error fue: ", error);
    }
}
// llamada de la funcion para que se ejecute una vez cargado todo el html
getLibros(misterio)