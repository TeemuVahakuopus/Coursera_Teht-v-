-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03.04.2024 klo 11:40
-- Palvelimen versio: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cousera_tehtävä`
--

-- --------------------------------------------------------

--
-- Rakenne taululle `inventory`
--

CREATE TABLE `inventory` (
  `ItemNum` int(11) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `QuantityOnHand` int(11) DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL,
  `PurchaseDate` date DEFAULT NULL,
  `Vendor` varchar(255) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `DateSold` date DEFAULT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `QuantitySold` int(11) DEFAULT NULL,
  `ItemType` varchar(50) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `Unit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Vedos taulusta `inventory`
--

INSERT INTO `inventory` (`ItemNum`, `Description`, `QuantityOnHand`, `Cost`, `PurchaseDate`, `Vendor`, `Price`, `DateSold`, `CustomerID`, `QuantitySold`, `ItemType`, `Location`, `Unit`) VALUES
(1000, 'Bennet Farm free-range eggs', 29, 2.35, '2022-02-01', 'Bennet Farms, Rt. 17 Evansville, IL 55446', NULL, NULL, NULL, 25, 'Dairy', 'D12', 'dozen'),
(1000, 'Bennet Farm free-range eggs', 27, NULL, NULL, NULL, 5.49, '2022-02-02', 198765, 2, 'Dairy', 'D12', 'dozen'),
(2000, 'Ruby\'s Kale', 3, NULL, NULL, NULL, 3.99, '2022-02-02', NULL, 2, 'Produce', 'p12', 'bunch'),
(1100, 'Freshness White beans', 13, NULL, NULL, NULL, 1.49, '2022-02-02', 202900, 2, 'Canned', 'a2', '12 ounce can'),
(1100, 'Freshness White beans', 53, 0.69, '2022-02-02', 'Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678', NULL, NULL, NULL, 40, 'Canned', 'a2', '12 oz can'),
(1000, 'Bennet Farm free-range eggs', 25, NULL, NULL, NULL, 5.99, '2022-02-04', 196777, 2, 'Dairy', 'D12', 'dozen'),
(1100, 'Freshness White beans', 45, NULL, NULL, NULL, 1.49, '2022-02-07', 198765, 8, 'Canned', 'a2', '12-oz can'),
(1222, 'Freshness Green beans', 59, 0.59, '2022-02-10', 'Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678', NULL, NULL, NULL, 40, 'Canned', 'a3', '12 ounce can'),
(1223, 'Freshness Green beans', 12, 1.75, '2022-02-10', 'Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678', NULL, NULL, NULL, 10, 'Canned', 'a7', '36 oz can'),
(1224, 'Freshness Wax beans', 31, 0.65, '2022-02-10', 'Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678', NULL, NULL, NULL, 30, 'Canned', 'a3', '12 ounce can'),
(1000, 'Bennet Farm free-range eggs', 21, NULL, NULL, NULL, 5.49, '2022-02-11', 277177, 4, 'Dairy', 'd12', 'dozen'),
(1100, 'Freshness White beans', 41, NULL, NULL, NULL, 1.49, '2022-02-11', NULL, 4, 'Canned', 'a2', '12 ounce can'),
(1222, 'Freshness Green beans', 47, NULL, NULL, NULL, 1.29, '2022-02-12', 111000, 12, 'Canned', 'a3', '12-oz can'),
(1224, 'Freshness Wax beans', 23, NULL, NULL, NULL, 1.55, '2022-02-12', NULL, 8, 'Canned', 'a3', '12-oz can'),
(2000, 'Ruby\'s Kale', 28, NULL, NULL, NULL, 3.99, '2022-02-12', 111000, 2, 'Produce', 'p12', 'bunch'),
(2001, 'Ruby\'s Organic Kale', 20, 2.19, '2022-02-12', 'Ruby Redd Produce, LLC, 1212 Milam St., Kenosha, AL, 34567', NULL, NULL, NULL, 20, 'Produce', 'po2', 'bunch'),
(1223, 'Freshness Green beans', 7, NULL, NULL, NULL, 3.49, '2022-02-13', 198765, 5, 'Canned', 'a7', '36 oz can'),
(2001, 'Ruby\'s Organic Kale', 19, NULL, NULL, NULL, 6.99, '2022-02-13', 100988, 1, 'Produce', 'po2', 'bunch'),
(2001, 'Ruby\'s Organic Kale', 7, NULL, NULL, NULL, 6.99, '2022-02-14', 202900, 12, 'Produce', 'po2', 'bunch'),
(1223, 'Freshness Green beans', 17, 1.80, '2022-02-15', 'Freshness, Inc., 202 E. Maple St., St. Joseph, MO 45678', NULL, NULL, NULL, 10, 'Canned', 'a7', '36 oz can'),
(2000, 'Ruby\'s Kale', 26, NULL, NULL, NULL, 3.99, '2022-02-15', 111000, 2, 'Produce', 'p12', 'bunch');

-- --------------------------------------------------------

--
-- Rakenne taululle `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Vedos taulusta `users`
--

INSERT INTO `users` (`id`, `username`, `email`) VALUES
(1, 'john_doe', 'john@example.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
