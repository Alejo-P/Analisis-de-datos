-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-01-2024 a las 01:52:14
-- Versión del servidor: 8.0.36
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `analisis_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `extraccion`
--

CREATE TABLE `extraccion` (
  `id` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `detalle` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `extraccion`
--

INSERT INTO `extraccion` (`id`, `nombre`, `detalle`) VALUES
(1, 'Consulta 1', 'Google Drive dejará de funcionar en algunas versiones de Windows desde agosto\nElon Musk y  Jack Dorsey señalan que Threads recolecta datos muy sensibles\nEl declive de Skype: de ser la plataforma favorita de videollamadas a verse eclipsada por Teams y Zoom\nComputadora de Cristina Reyes fue robada; pide que le devuelvan sus poemas\nRestricciones de Twitter son para proteger los datos de la IA\nLa historia de la joven que vende sus fotos en OnlyFans para pagar tratamiento del cáncer\n¿Qué son los cálculos renales?\nGerard Piqué y Shakira tenían una relación abierta, según la prensa española\n¿PESO PLUMA flechó a BELINDA?\nDespiden enfermera al no reportar la muerte de un paciente con el que tenía sexo\nBartender representa a Ecuador en concurso en Francia\nBlackpink\nLos estrenos de Netflix, Disney+ y HBO Max en julio\nEstos famosos enfrentan enfermedades y trastornos que alteran su cotidianidad\n'),
(2, 'Consulta 2', 'Uno de los servicios más utilizados para almacenar es Google Drive, pero  dejará de funcionar en ciertas versiones de Windows.\nLa exasambleísta Cristina Reyes denunció en redes sociales que le robaron cosas de su casa, entre ellas, su computadora\nLa joven estadounidense, Mya Richardson, continúa ganando adeptos en la red social OnlyFans.\nEn una entrevista, Shakira como se enteró que era traicionada por el exfutbolista del Barcelona FC.\nEl rumor surge tras la afirmación de BELINDA de estar interesada en una colaboración musical con el también mexicano Peso Pluma.\nEl bartender del restuarante Tributo, Marco Antonio Trujillo, participa en un certamen internacional en Francia.\nEstos son los estrenos de series y películas que Netflix, Disney y HBO Max tienen preparados para este mes de julio de 2023.\nInfluencers, músicos y  actores lidian con enfermedades y trastornos que complican su día a día. Lewis Capaldi suspendió su gira.\n'),
(3, 'Consulta 3', 'Conozca a las 22 aspirantes al Miss Ecuador 2020\n'),
(4, 'Consulta 4', 'Actualidad\nÚltima hora\n\nTendencias\nSúper Pandilla\nEducacción\nAfull\n\nDeportes\nConexión Mundial 593\n\nOpinión\nEditorial\nCaricaturas\nColumnistas\nCartas al Director\n\nVideo\n\nPodcasts\n\nBlogs\n\nServicios\nTarifario\nSuscripción\nEdición Impresa\nRSS\nApps móviles\nEdiciones Anteriores\nSíntesis noticiosa\nFacturación\nPuntos de Servicio\n\n'),
(5, 'Consulta 5', 'La historia de la joven que vende sus fotos en OnlyFans para pagar tratamiento del cáncer\n'),
(6, 'Consulta 6', 'La\njoven estadounidense\n, Mya Richardson, continúa ganando adeptos en la red social\nOnlyFans,\nluego de que decidiera vender sus fotos para pagar su tratamiento de cáncer.\nSu historia comenzó cuando se enteró de que padecía un\nraro cáncer\nen septiembre de 2022. En ese entonces con\n21 años\ny residente en el estado de Michigan y notó un bulto de 12 centímetros en la zona lumbar.\nLa joven acudió al especialista y le diagnosticando\nsarcoma de células fusiformes\n, un tumor que puede desarrollarse en el hueso o en los tejidos blandos.\nGana 80 000 dólares en Onlyfans\nCon la intención de pagar las sesiones de quimioterapia y radioterapia que le correspondían, decidió recurrir a v\nender sus desnudos en OnlyFans.\nAunque\nya tenía presencia\nen esta red social antes de ser diagnosticada, mantuvo la noticia en secreto y usaba pelucas.\nHasta que se dio cuenta que a sus seguidores les gustaba verla sin pelo. En apenas unos meses, Mya consiguió\n80 000 dólares\n, con los que se ha costeado cuatro sesiones de quimioterapia y 25 sesiones de radioterapia.\nMás noticias en:\nConductora que manejó Metro de Quito abre cuenta en OnlyFans\nBoxeadora pasa de UFC a Onlyfans; La historia de la \'Mujer Maravilla\'\nAsí se puede acceder gratis a OnlyFans\nVisita nuestros portales:\nLas noticias de Quito en\nwww.ultimasnoticias.ec\nLo mejor del fútbol solo\nwww.benditofutbol.com\nNegocios y emprendimientos\nwww.revistalideres.ec\nMás sobre el hogar en\nwww.revistafamilia.ec\nSigue a EL COMERCIO en Google News\nCLIC AQUÍ\n'),
(7, 'Consulta 7', '\n© Derechos reservados 2022 Grupo EL COMERCIO. Queda prohibida la reproducción total o\n                                parcial, por\n                                cualquier medio, de todos los contenidos sin autorización expresa de Grupo EL COMERCIO.\n\n'),
(8, 'Consulta 8', '\nTendencias\n\nRedes sociales\n\n');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `extraccion`
--
ALTER TABLE `extraccion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `extraccion`
--
ALTER TABLE `extraccion`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
