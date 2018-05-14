-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2018 at 03:05 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbgadget`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `ID` int(11) NOT NULL,
  `Product` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`) VALUES
(1, 'Laptops'),
(2, 'Computer Set'),
(3, 'Hard Disk'),
(4, 'CCTV'),
(5, 'Mouse'),
(6, 'Keyboard'),
(11, 'Memory');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `item` text NOT NULL,
  `amount` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `dateOrdered` varchar(100) NOT NULL,
  `dateDelivered` varchar(100) NOT NULL,
  `refcode` varchar(30) NOT NULL,
  `amount2` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `contact`, `address`, `email`, `item`, `amount`, `status`, `dateOrdered`, `dateDelivered`, `refcode`, `amount2`) VALUES
(46, 'asd', 'd', 'a', 'asd@gmail.com', '(1) ads (size: large ), ', '0', 'unconfirmed', '01/14/18 06:54:09 PM', '', '8277e0910d750195b448797616e091', '0'),
(60, 'asds', 'a', 'a', 'asd@gmail.com', '(4) ads (size: large ), (1) ads (size: large ), ', '1,065.00', 'unconfirmed', '01/21/18 12:43:11 AM', '', '8277e0910d750195b448797616e091', '1,065.00'),
(61, 'asd', 'd', 'a', 'asd@gmail.com', '(1) ads (size: large ), (1) ads (size: large ), (1) ads (size: large ), ', '639.00', 'unconfirmed', '01/21/18 12:45:43 AM', '', '8277e0910d750195b448797616e091', '639.00'),
(62, 'asd', 'd', 'a', 'asd@gmail.com', '(1) ads (size: large ), (1) ads (size: large ), (1) ads (size: large ), (1) ads (size: large ), ', '852.00', 'unconfirmed', '01/21/18 12:52:57 AM', '', '8277e0910d750195b448797616e091', '852.00'),
(63, 'asd', 'a', 'adasd', 'asd@gmail.com', '(1) ads (size: large ), (1) ads (size: large ), (1) ads (size: large ), (4) ads (size: large ), ', '1,491.00', 'unconfirmed', '01/21/18 12:57:45 AM', '', '8277e0910d750195b448797616e091', '1,491.00'),
(64, 'adsdasd', 'd', 'asd', 'asd@gmail.com', '(1) wer (size: medium ), (1) wer (size: medium ), (1) wer (size: medium ), ', '10,200.00', 'unconfirmed', '01/21/18 01:00:28 AM', '', '8277e0910d750195b448797616e091', '10,200.00'),
(65, 'sales', '09213308912', 'asdasd', 'asd@gmail.com', '(3) wer (size: large ), (4) wer (size: medium ), ', '23,800.00', 'unconfirmed', '01/25/18 09:41:53 PM', '', '8e21b4f0d36b6f53570e689244656f', '23,800.00'),
(66, 'da', '2', 'ad', 'asd@gmail.com', '(3) wer (size: large ), (4) wer (size: medium ), ', '23,800.00', 'unconfirmed', '01/25/18 09:51:17 PM', '', '7815696ecbf1c96e6894b779456d33', '23,800.00'),
(67, 'johnloud', '01303', 'adsd', 'asd@gmail.com', '(3) wer (size: large ), (4) wer (size: medium ), ', '23,800.00', 'unconfirmed', '01/25/18 10:07:37 PM', '', 'a8f5f167f44f4964e6c998dee82711', '23,800.00'),
(68, 'asd', '132', 'dasd', 'asd@gmail.com', '(3) wer (size: large ), (4) wer (size: medium ), ', '23,800.00', 'unconfirmed', '01/25/18 10:14:22 PM', '', '196b0f14eba66e10fba74dbf9e99c2', '23,800.00'),
(69, 'asd', '132', 'da', 'asd@gmail.com', '(1) ads (size: large ), (1) ads (size: large ), ', '426.00', 'unconfirmed', '01/25/18 10:15:32 PM', '', '5ca2aa845c8cd5ace6b016841f100d', '426.00'),
(70, 'ads', '21', 'ad', 'asd@gmail.com', '(1) ads (size: large ), (1) ads (size: large ), (1) ads (size: large ), ', '639.00', 'unconfirmed', '01/25/18 10:16:46 PM', '', '8277e0910d750195b448797616e091', '639.00'),
(71, 'asd', '09213308912', 'ad', 'asd@gmail.com', '(1) wer (size: large ), (1) wer (size: large ), ', '6,800.00', 'unconfirmed', '01/25/18 10:19:19 PM', '', '8277e0910d750195b448797616e091', '6,800.00'),
(72, 'dasd', '09213308912', 'asdsad', 'asd@gmail.com', '(1) ads (size: large ), ', '213.00', 'unconfirmed', '01/25/18 10:20:51 PM', '', '8277e0910d750195b448797616e091', '213.00'),
(73, 'adasd', '09213308912', 'ads', 'asd@gmail.com', '(1) Product 202 (size: large ), (1) Product 202 (size: large ), ', '200.00', 'delivered', '01/25/18 10:22:26 PM', '01/28/18 09:32:44 PM', '8277e0910d750195b448797616e091', '200.00'),
(74, 'asdasd', '09213308912', 'asd', 'asd@gmail.com', '(3) ads (size: large ), (1) ads (size: large ), (1) ads (size: large ), ', '1,065.00', 'confirmed', '01/25/18 10:24:19 PM', '01/28/18 09:32:31 PM', '37f31694ce2528a64cfacc73c612ef', '1,065.00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `imgUrl` text NOT NULL,
  `Product` text NOT NULL,
  `Description` text NOT NULL,
  `Price` double NOT NULL,
  `Category` text NOT NULL,
  `sizes` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `imgUrl`, `Product`, `Description`, `Price`, `Category`, `sizes`) VALUES
(80, 'Hydrangeas.jpg', 'ads', 'd', 213, 'Laptops', 'large'),
(81, 'Penguins.jpg', 'wer', 'dsf', 3400, 'Keyboard', 'large'),
(82, 'C360_2014-07-23-12-19-43-367.jpg', 'Product 202', 'Quick description', 100, 'Laptops', 'large'),
(83, 'tinamad fail.jpg', 'asdasd', 'asdasd', 45, 'Laptops', 'small'),
(84, 'desktop-backgrounds-27.jpg', 'asd', 'as', 231, 'Laptops', 'medium');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(30) NOT NULL,
  `mgalaki` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `mgalaki`) VALUES
(1, 'small'),
(2, 'medium'),
(3, 'large');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'administrator', 'bobby'),
(2, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
