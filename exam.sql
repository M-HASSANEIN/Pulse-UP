-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2021 at 07:43 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `OrderDate` date NOT NULL,
  `UserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id_order`, `OrderDate`, `UserId`) VALUES
(1, '2021-01-12', 123456789),
(2, '2021-02-02', 123456789),
(3, '2021-03-15', 123456789),
(4, '2021-03-16', 123456789),
(5, '2021-04-20', 987654321),
(6, '2021-08-16', 123456789),
(7, '2021-09-01', 123456789),
(8, '2021-11-15', 123456789),
(9, '2021-12-31', 123456789);

-- --------------------------------------------------------

--
-- Table structure for table `ordersdetails`
--

CREATE TABLE `ordersdetails` (
  `id_order_Details` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `ProductName` varchar(255) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordersdetails`
--

INSERT INTO `ordersdetails` (`id_order_Details`, `id_order`, `ProductName`, `Quantity`) VALUES
(1, 1, 'PRODUIT 1', 5),
(2, 1, 'PRODUIT 2', 2),
(3, 1, 'PRODUIT 3', 10),
(4, 1, 'PRODUIT 4', 7),
(5, 2, 'PRODUIT 1', 1),
(6, 2, 'PRODUIT 2', 1),
(7, 2, 'PRODUIT 3', 11),
(8, 2, 'PRODUIT 4', 3),
(9, 3, 'PRODUIT 1', 3),
(10, 3, 'PRODUIT 2', 1),
(11, 3, 'PRODUIT 3', 12),
(12, 3, 'PRODUIT 4', 2),
(13, 4, 'PRODUIT 1', 2),
(14, 4, 'PRODUIT 2', 0),
(15, 4, 'PRODUIT 3', 15),
(16, 4, 'PRODUIT 4', 1),
(17, 5, 'PRODUIT 1', 1),
(18, 5, 'PRODUIT 2', 7),
(19, 5, 'PRODUIT 3', 22),
(20, 5, 'PRODUIT 4', 0),
(21, 6, 'PRODUIT 1', 2),
(22, 6, 'PRODUIT 2', 0),
(23, 6, 'PRODUIT 3', 0),
(24, 6, 'PRODUIT 4', 1),
(25, 7, 'PRODUIT 1', 1),
(26, 7, 'PRODUIT 2', 1),
(27, 7, 'PRODUIT 3', 11),
(28, 7, 'PRODUIT 4', 3),
(29, 8, 'PRODUIT 1', 3),
(30, 8, 'PRODUIT 2', 1),
(31, 8, 'PRODUIT 3', 12),
(32, 8, 'PRODUIT 4', 2),
(33, 9, 'PRODUIT 1', 7),
(34, 9, 'PRODUIT 2', 9),
(35, 9, 'PRODUIT 3', 8),
(36, 9, 'PRODUIT 4', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `ordersdetails`
--
ALTER TABLE `ordersdetails`
  ADD PRIMARY KEY (`id_order_Details`),
  ADD KEY `id_order` (`id_order`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ordersdetails`
--
ALTER TABLE `ordersdetails`
  MODIFY `id_order_Details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ordersdetails`
--
ALTER TABLE `ordersdetails`
  ADD CONSTRAINT `ordersdetails_ibfk_1` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id_order`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
