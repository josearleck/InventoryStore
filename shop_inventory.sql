-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-08-2020 a las 21:44:47
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shop_inventory`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `fullName` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `phone2` int(11) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `district` varchar(30) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `customer`
--

INSERT INTO `customer` (`customerID`, `fullName`, `email`, `mobile`, `phone2`, `address`, `address2`, `city`, `district`, `status`, `createdOn`) VALUES
(4, 'Miriam Vasquez', 'mvasquez@cweb.com', 2147483647, 772484884, 'Calle 56 N 123 12', 'Valle del Cauca', 'Cali', 'Versalles', 'Active', '2018-04-30 15:14:02'),
(14, 'Alejandro Mendez', 'amendez@cweb.com', 333829832, 0, 'Av 34 N 23 13', 'Valle del Cauca', 'Cali', 'Aguacatal', 'Disabled', '2018-05-01 12:03:10'),
(18, 'Roberto Perez', 'rperez@cweb.com', 777987654, 0, 'Carrera 90 N 13 20', 'Valle del Cauca', 'Cali', 'Santarita', 'Active', '2018-05-02 09:52:28'),
(24, 'Daniela Torres', 'dtorres@cweb.com', 338393932, 413837293, 'Calle 43 N 13 23', 'Valle del Cauca', 'Cali', 'Las Ceibas', 'Active', '2018-05-02 10:48:37'),
(25, 'Teresa Gomez', 'tgomez@cweb.com', 2147483647, 777833737, 'Carrera 23 N 19 19', 'Valle del Cauca', 'Cali', 'Paseo de Los Almendros', 'Activo', '2018-05-03 02:28:07'),
(26, 'Alberto Coral', 'acoral@cweb.com', 444958303, 84792838, 'Av 18 45 12', 'Valle del Cauca', 'Cali', 'Villa del Prado - El Guabito', 'Active', '2018-05-03 02:28:38'),
(38, 'Darío Florez', 'dflorez@cweb.com', 839378202, 0, 'Calle 45 N 13 09', 'Valle del Cauca', 'Cali', 'San Luis', 'Active', '2018-05-05 11:17:49'),
(39, 'Gabriel Borja', 'gborja@cweb.com', 232345676, 0, 'Carrera 90 N 29 81', 'Valle del Cauca', 'Cali', 'Los Alcázares', 'Active', '2018-05-05 13:27:06'),
(40, 'Alvaro Asprilla', 'aasprilla@cweb.com', 123, 0, 'Carrera 45 N 87 82', 'Valle del Cauca', 'Cali', 'Los Guaduales', 'Disabled', '2018-05-13 01:20:23'),
(41, 'Juana Castro', 'jcastro@cweb.com', 111, 0, 'Calle 12 N 23 24', 'Valle del Cauca', 'Cali', 'Puerto Nuevo', 'Active', '2018-05-13 01:24:54'),
(42, 'Gilberto Prado', 'gprado@cweb.com', 333829832, 0, 'Calle 87 N 13 16', 'Valle del Cauca', 'Cali', 'Pasoancho', 'Disabled', '2018-05-13 02:39:41'),
(43, 'Camilo Cardona', 'ccardona@cweb.com', 2147483647, 2147483647, 'Calle 34 N 23 12', 'Valle del Cauca', 'Cali', 'San Marino', 'Active', '2020-08-27 20:41:41'),
(44, 'Teresa G&oacute;mez', 'tgomez@cweb.com', 2147483647, 2147483647, 'Carrera 23 N 19 19', 'Valle del Cauca', 'Cali', 'Paseo de Los Almendros', 'Activo', '2020-08-28 20:01:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `item`
--

CREATE TABLE `item` (
  `productID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `discount` float NOT NULL DEFAULT 0,
  `stock` int(11) NOT NULL DEFAULT 0,
  `unitPrice` float NOT NULL DEFAULT 0,
  `imageURL` varchar(255) NOT NULL DEFAULT 'imageNotAvailable.jpg',
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `item`
--

INSERT INTO `item` (`productID`, `itemNumber`, `itemName`, `discount`, `stock`, `unitPrice`, `imageURL`, `status`, `description`) VALUES
(34, '1', 'Celular Motorola One Hyper 128GB', 3, 114, 769900, '1598710938_Celular Motorola One Hyper 128GB.jpg', 'Active', 'Tama&ntilde;o de la pantalla: 6.5 pulgadas\nC&aacute;mara posterior: 64MP + 8MP (video wide) + ToF(8x8)\nC&aacute;mara frontal: 32 MPX + C&aacute;mara POP UP\nMemoria interna: 128GB\nN&uacute;cleos del procesador: Octa Core'),
(35, '2', 'Celular Motorola One Action 128GB', 3, 55, 679900, '1598711179_Celular Motorola One Action 128GB.jpg', 'Active', 'Tama&ntilde;o de la pantalla: 6.3 pulgadas\nC&aacute;mara posterior: 12 + 5 + 4 MPX\nC&aacute;mara frontal: 12MP\nMemoria interna: 128GB\nN&uacute;cleos del procesador: Octa Core'),
(36, '3', 'Celular Motorola One Fusion Plus 128GB', 3, 50, 1149900, '1598711398_Celular Motorola One Fusion Plus 128GB.jpg', 'Active', 'Tama&ntilde;o de la pantalla: 6.5 pulgadas\nC&aacute;mara posterior: 64MP+ 8MP (wide angle) + 5MP (macro) + 2MP (depth)\nC&aacute;mara frontal: 16MP\nMemoria interna: 128GB\nBater&iacute;a: 5000 mAh'),
(37, '4', 'Celular vivo Y50 128GB + Parlante', 3, 61, 779900, '1598711604_Celular vivo Y50 128GB + Parlante.jpg', 'Active', 'Tama&ntilde;o de la pantalla: 6.5 pulgadas\nC&aacute;mara posterior: 13MP\nC&aacute;mara frontal: 16MP\nMemoria interna: 128GB\nCapacidad de la bater&iacute;a (mAh): 5000 mAh'),
(38, '5', 'Celular xiaomi mi 9t 64 gb rojo', 3, 50, 1399900, '1598717158_Celular xiaomi mi 9t 64 gb rojo.jpg', 'Active', 'Tama&ntilde;o de la pantalla	6.3 pulgadas\nC&aacute;mara posterior	Sobre 40MP\nC&aacute;mara frontal	13MP\nMemoria interna	64GB\nN&uacute;cleos del procesador	Octa Core\nCarga r&aacute;pida	S&iacute;'),
(39, '6', 'Celualr Xiaomi Note Pro 128 Gb Gris', 3, 50, 1245900, '1598717144_Celualr Xiaomi Note Pro 128 Gb Gris.jpg', 'Active', 'Tama&ntilde;o de la pantalla	6.5 pulgadas\nC&aacute;mara posterior	Sobre 40MP\nC&aacute;mara frontal	16MP\nMemoria interna	128GB\nN&uacute;cleos del procesador	Octa Core\nCarga r&aacute;pida	S&iacute;'),
(40, '7', 'Celular xiaomi redmi note 8 pro 64 blanco', 3, 110, 1249900, '1598717847_Celular xiaomi redmi note 8 pro 64 blanco.jpg', 'Active', 'Tama&ntilde;o de la pantalla	6.5 pulgadas\nC&aacute;mara posterior	Sobre 40MP\nC&aacute;mara frontal	16MP\nMemoria interna	128GB\nCarga r&aacute;pida	S&iacute;');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchase`
--

CREATE TABLE `purchase` (
  `purchaseID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `purchaseDate` date NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `unitPrice` float NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `vendorName` varchar(255) NOT NULL DEFAULT 'Test Vendor',
  `vendorID` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `purchase`
--

INSERT INTO `purchase` (`purchaseID`, `itemNumber`, `purchaseDate`, `itemName`, `unitPrice`, `quantity`, `vendorName`, `vendorID`) VALUES
(57, '1', '2020-08-31', 'Celular Motorola One Hyper 128GB', 768250, 5, 'Almacenes Exito', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sale`
--

CREATE TABLE `sale` (
  `saleID` int(11) NOT NULL,
  `itemNumber` varchar(255) NOT NULL,
  `customerID` int(11) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `saleDate` date NOT NULL,
  `discount` float NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `unitPrice` float(10,0) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sale`
--

INSERT INTO `sale` (`saleID`, `itemNumber`, `customerID`, `customerName`, `itemName`, `saleDate`, `discount`, `quantity`, `unitPrice`) VALUES
(23, '1', 14, 'Alejandro Mendez', 'Celular Motorola One Hyper 128GB', '2018-05-24', 3, 12, 769900);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`userID`, `fullName`, `username`, `password`, `status`) VALUES
(5, 'configuroweb', 'configuroweb', '4b67deeb9aba04a5b54632ad19934f26', 'Active');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vendor`
--

CREATE TABLE `vendor` (
  `vendorID` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` int(11) NOT NULL,
  `phone2` int(11) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `district` varchar(30) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `createdOn` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `vendor`
--

INSERT INTO `vendor` (`vendorID`, `fullName`, `email`, `mobile`, `phone2`, `address`, `address2`, `city`, `district`, `status`, `createdOn`) VALUES
(1, 'Samsung', 'hola@samsung.com', 2147483647, 2147483647, 'Calle 13 N 24 21', 'Valle del Cauca', 'Cali', 'Alameda', 'Disabled', '2018-05-05 05:48:44'),
(2, 'Xiaomi', 'hola@xiaomi.com', 2147483647, 2147483647, 'Calle 97 N 16 78', 'Valle del Cauca', 'Cali', 'La Libertad', 'Active', '2018-05-05 06:12:02'),
(9, 'Super Molinillo', 'superm@cweb.com', 2147483647, 2147483647, 'Carrera 34 Calle 23 12', 'Valle del Cauca', 'Cali', 'Matale', 'Active', '2020-08-27 20:39:15'),
(10, 'Almacenes Exito', 'hola@exito.com', 2147483647, 2147483647, 'Calle 34 N 14 21', 'Valle del Cauca', 'Cali', 'El Dorado', 'Active', '2020-08-29 17:29:50');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indices de la tabla `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`productID`);

--
-- Indices de la tabla `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchaseID`);

--
-- Indices de la tabla `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`saleID`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- Indices de la tabla `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendorID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `item`
--
ALTER TABLE `item`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchaseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `sale`
--
ALTER TABLE `sale`
  MODIFY `saleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
