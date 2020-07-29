-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2020 at 10:39 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `purchase`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `items_name` varchar(20) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `items_name`, `price`) VALUES
(1, 'Internet 1GB 30 Hari', 30000),
(2, 'Internet 2GB 30 Hari', 45000),
(3, 'Internet 4GB 30 Hari', 60000),
(4, 'Internet 1GB 14 Hari', 15000),
(5, 'Internet 2GB 14 Hari', 23000),
(6, 'Internet 1GB 7 Hari', 10000),
(7, 'Internet 500mb 7 Har', 7000);

-- --------------------------------------------------------

--
-- Table structure for table `sales_records`
--

CREATE TABLE `sales_records` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `gender` char(1) NOT NULL,
  `item_name` varchar(20) NOT NULL,
  `item_price` int(10) NOT NULL,
  `purchased_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_records`
--

INSERT INTO `sales_records` (`id`, `name`, `phone`, `gender`, `item_name`, `item_price`, `purchased_at`) VALUES
(72, 'a', '+62 858-0845', 'L', 'Internet 2GB 14 Hari', 0, '2020-07-29'),
(73, 'b', '085808457660', 'L', 'Internet 2GB 14 Hari', 0, '2020-07-29'),
(74, 'c', '085808457660', 'P', 'Internet 500mb 7 Har', 0, '2020-07-29'),
(75, 'e', '085808457660', 'P', 'Internet 4GB 30 Hari', 0, '2020-07-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_records`
--
ALTER TABLE `sales_records`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales_records`
--
ALTER TABLE `sales_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
