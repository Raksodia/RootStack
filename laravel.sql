-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2021 at 06:30 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cats`
--

CREATE TABLE `cats` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cats`
--

INSERT INTO `cats` (`id`, `category`) VALUES
(19, 'Motor'),
(20, 'Inmobiliaria'),
(21, 'Empleo'),
(22, 'Formación y libros'),
(23, 'Servicios'),
(24, 'Negocios'),
(25, 'Informática'),
(26, 'Imagen y Sonido');

-- --------------------------------------------------------

--
-- Table structure for table `subcats`
--

CREATE TABLE `subcats` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `subcategory` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcats`
--

INSERT INTO `subcats` (`id`, `cat_id`, `subcategory`) VALUES
(1, 19, 'Coches de segunda mano'),
(2, 19, 'Motos de segunda mano'),
(3, 19, 'Furgonetas de segunda mano'),
(4, 19, 'BMW Serie 1'),
(5, 19, 'Quads'),
(6, 19, 'Mercedes-Benz Clase A'),
(7, 19, 'Porsche Cayenne'),
(8, 19, 'Suzuki Vitara de segunda mano'),
(9, 19, 'Tractores'),
(10, 19, 'Caravanas de segunda mano'),
(11, 19, 'Neumáticos'),
(12, 19, 'BMW X6 de segunda mano'),
(13, 19, 'Motos 125cc de segunda mano'),
(14, 19, 'Yamaha MT 125'),
(15, 19, 'Remolques'),
(16, 19, 'Recambios y accesorios'),
(17, 20, 'Venta de pisos'),
(18, 20, 'Alquiler de pisos'),
(19, 20, 'Áticos'),
(20, 20, 'Chalets'),
(21, 20, 'Lofts'),
(22, 20, 'Apartamentos'),
(23, 20, 'Casas prefabricadas'),
(24, 20, 'Fincas rústicas'),
(25, 20, 'Casas en venta'),
(26, 20, 'Compartir piso'),
(27, 20, 'Alquiler de locales comerciales'),
(28, 20, 'Oficinas'),
(29, 20, 'Trasteros'),
(30, 20, 'Plazas de garajes'),
(31, 21, 'Marketing'),
(32, 21, 'Comerciales'),
(33, 21, 'Transportistas'),
(34, 21, 'Administrativos'),
(35, 21, 'Diseño gráfico'),
(36, 21, 'Informáticos'),
(37, 21, 'Construcción'),
(38, 21, 'Finanzas'),
(39, 21, 'Recursos Humanos'),
(40, 21, 'Cocineros y Camareros'),
(41, 21, 'Traductores'),
(42, 21, 'Diseño web'),
(43, 22, 'Cursos'),
(44, 22, 'Másters'),
(45, 22, 'Cursos de guitarra'),
(46, 22, 'Cursos de inglés'),
(47, 22, 'Cursos de fotografía'),
(48, 22, 'Autoescuelas'),
(49, 22, 'Escuelas de baile'),
(50, 22, 'Libros Harry Potter'),
(51, 22, 'Novelas'),
(52, 22, 'Libros'),
(53, 22, 'Cómics Superlópez'),
(54, 23, 'Traductores'),
(55, 23, 'Reformas'),
(56, 23, 'Fontaneros'),
(57, 23, 'Mudanzas'),
(58, 23, 'Psicólogos'),
(59, 23, 'Pintores'),
(60, 23, 'Gimnasios'),
(61, 23, 'Belleza y cosmética'),
(62, 23, 'Cerrajeros'),
(63, 23, 'Carpinteros'),
(64, 23, 'Empresas de limpieza'),
(65, 23, 'Dentistas'),
(66, 23, 'Climatización'),
(67, 24, 'Traspasos'),
(68, 24, 'Franquicias'),
(69, 24, 'Oportunidades de negocio'),
(70, 24, 'Mayoristas'),
(71, 24, 'Financiación'),
(72, 24, 'Mobiliario oficina'),
(73, 24, 'Préstamos'),
(74, 24, 'Alquiler de negocios'),
(75, 24, 'Venta de empresas'),
(76, 24, 'Abogados'),
(77, 25, 'iPad Air 3'),
(78, 25, 'Acer Aspire One'),
(79, 25, 'Macbook Pro'),
(80, 25, 'Magic Mouse'),
(81, 25, 'Mini portátiles'),
(82, 25, 'Gaming'),
(83, 25, 'HP Elitebook'),
(84, 25, 'HP pavilion DV6'),
(85, 25, 'Disqueteras externas usb'),
(86, 25, 'iPad Pro'),
(87, 25, 'Ordenadores Spectrum'),
(88, 25, 'Pantallas de ordenador'),
(89, 25, 'Portátiles Toshiba'),
(90, 26, 'Micrófonos inalámbricos'),
(91, 26, 'Cámaras digitales Nikon D3200'),
(92, 26, 'Mesas de mezclas'),
(93, 26, 'GoPro Hero Black 7'),
(94, 26, 'Chromecast'),
(95, 26, 'Cámaras de fotos analógicas'),
(96, 26, 'Proyectores Xiaomi'),
(97, 26, 'Televisores'),
(98, 26, 'Cajones flamencos'),
(99, 26, 'Auriculares Apple'),
(100, 26, 'Pianos eléctricos'),
(101, 26, 'Panasonic Viera'),
(102, 26, 'Guitarras flamencas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcats`
--
ALTER TABLE `subcats`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cats`
--
ALTER TABLE `cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `subcats`
--
ALTER TABLE `subcats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
