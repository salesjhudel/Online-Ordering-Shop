-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2018 at 12:46 PM
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
(1, 'T-Shirts'),
(2, 'Polo Shirts'),
(3, 'Jackets'),
(4, 'Pants'),
(5, 'Hats'),
(6, 'Sleepwear'),
(11, 'Shoes');

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
(74, 'asdasd', '09213308912', 'asd', 'asd@gmail.com', '(3) ads (size: large ), (1) ads (size: large ), (1) ads (size: large ), ', '1,065.00', 'confirmed', '01/25/18 10:24:19 PM', '01/28/18 09:32:31 PM', '37f31694ce2528a64cfacc73c612ef', '1,065.00'),
(75, 'john', '09085481807', 'san jose st', 'kaza@yahoo.om', '(1) Product 202 (size: large ), ', '100.00', 'unconfirmed', '01/31/18 01:48:43 AM', '', '2829fc16ad8ca5a79da932f910afad', '100.00'),
(76, 'John', '09085481807', 'san jose st', 'than@gmail.com', '(3) Men Wolverines James Logan Howlett (size: Medium ), (1) Unisex Bomber Jacket Style Varsity (size: Medium ), (1) Gildan Brand Cap NIKE red  (size: Normal ), ', '6,767.00', 'unconfirmed', '02/03/18 02:28:56 AM', '', '2829fc16ad8ca5a79da932f910afad', '6,767.00');

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
(80, 'SH1.png', 'High-top Fashion The Avengers Shos Children Shoes', 'For lining material: Chiffon\r\nClosing: Velcro\r\nVamp material: cloth\r\nMaterial: mesh cloth\r\nSole material: Rubber\r\nLining material:.\r\nOccasions: Daily\r\nStyle: the trend of youth', 921, 'Shoes', 'Small'),
(81, 'SH2.png', 'Sneakers Sports Shoes LED Shoes For Kids Boys', 'Color Description:7 kinds of static color,4 kinds of dynamic color changes,altogether 11 kinds of lighting patterns.\r\nChange the color of light through the hidden switch,if you do not need light, long press the button to turn off,one charge for 2~3 hours,can provide 8~11 hours of lighting time.\r\nHigh-quality synthetic leather and cloth combination of network, breathable, wear-resistant ', 1458, 'Shoes', 'Small'),
(82, 'SH3.png', 'Children Non-slip Soft Ground Breathable Shoes', 'Four seasons children''s shoes\r\nBreathable\r\ndamping\r\nMen and women apply\r\ncasual shoes\r\nComfortable\r\nNon-slip\r\nWild', 1067, 'Shoes', 'Large'),
(83, 'SH4.png', 'Air Mesh Kids Boy Shoes Sneakers Casual Sports Shoes', 'Toe style: round head\r\nClosed way: lace\r\nSole material: rubber foam\r\nUpper material: ultra-fine leather upper\r\nInside Material: Net yarn\r\nProduction process: Adhesive shoes\r\nHeel: thick bottom\r\nOccasion: daily\r\nSeason: Spring and Autumn', 1217, 'Shoes', 'Medium'),
(84, 'SH5.png', 'Autumn Kids Canvas Shoes Low Top Skateboard Shoes', 'Upper Material: Canvas\r\nLining Material: Linen\r\nOutsole Material: Rubber\r\nClosure Type: Elastic, Decorative Shoelace\r\nSize From: EU21-EU36\r\nColors: Black White Red', 819, 'Shoes', 'Small'),
(85, 'SH6.png', 'Fashion Outdoor Shoes Lighting Blade Shoes', 'Sole material: Rubber\r\nVamp material: cloth\r\nStyle: the trend of youth\r\nOccasions: Daily\r\nSeason: spring and Autumn\r\nStyle: outdoor leisure shoes\r\nFunction: light', 966, 'Shoes', 'Medium'),
(87, 'ST1.png', 'Gildan Brand WTLC Shirt', 'High quality original Gildan Shirt\r\n100% Premium Cotton\r\nRound neck\r\nHigh Quality Rubberized Vinyl Print\r\nUnisex\r\nLocal Size', 450, 'T-Shirts', 'Medium'),
(88, 'ST2.png', 'Gildan Brand Respect Jordan Shirt', 'High quality original Gildan Shirt\r\n100% Premium Cotton/\r\nRound neck\r\nHigh Quality Rubberized Vinyl Print\r\nUnisex', 399, 'T-Shirts', 'Medium'),
(89, 'ST3.png', '\r\nGildan Brand J1 Banned Red Shirt', 'High quality original Gildan Shirt\r\n100% Premium Cotton/\r\nRound neck\r\nHigh Quality Rubberized Vinyl Print\r\nUnisex', 450, 'T-Shirts', 'Medium'),
(90, 'ST4.png', '\r\nGildan Bran Garfrield J1 Shirt', 'High quality original Gildan Shirt\r\n100% Premium Cotton\r\nRound neck\r\nHigh Quality Rubberized Vinyl Print\r\nUnisex\r\nLocal Size', 450, 'T-Shirts', 'Medium'),
(91, 'ST5.png', '\r\nGildan Brand Jordan Jumpman Blue Shirt', 'High quality original Gildan Shirt\r\n100% Premium Cotton\r\nRound neck\r\nHigh Quality Rubberized Vinyl Print\r\nUnisex\r\nLocal Size', 499, 'T-Shirts', 'Medium'),
(92, 'ST6.png', '\r\nGIldan Brand Trasher Shirt', 'High quality original Gildan Shirt\r\n100% Premium Cotton\r\nRound neck\r\nHigh Quality Rubberized Vinyl Print\r\nUnisex\r\nLocal Size', 450, 'T-Shirts', 'Medium'),
(93, 'HT1.png', 'Cap Republic Fashion N/KE royal blue ', 'Quality Guaranteed\r\nUnisex\r\nAdjustable back strap\r\nTrendy\r\nComfortable to wear', 299, 'Hats', 'Medium'),
(94, 'HT2.png', 'Fancyqube New Style Hat Cartoon Crocodile', '100% Brand New and High Quality\r\nColor:Black\r\nSize:Adjustable\r\nMaterial:Cotton', 470, 'Hats', 'Large'),
(95, 'HT3.png', 'Men Pentagram Cap U.S. Army Camo', 'Pattern Type:Solid\r\nHat Size:One Size\r\nStyle:Casual\r\nMaterial:Cotton\r\nProduct categories:Baseball cap\r\nSuitable season:Spring, summer, autumn\r\nHat style:wide brim', 899, 'Hats', 'Medium'),
(96, 'HT4.png', 'Gildan Brand Cap NIKE red ', 'Quality Guaranteed\r\nUnisex\r\nAdjustable back strap\r\nTrendy\r\nComfortable to wear', 298, 'Hats', 'Small'),
(97, 'HT5.png', 'Cap Republic fashion Under/A black  ', 'Quality Guaranteed\r\nUnisex\r\nAdjustable back strap\r\nTrendy\r\nComfortable to wear', 299, 'Hats', 'Normal'),
(98, 'HT6.png', 'The Minions Casquette Steal Dads', 'Pattern Type:Character\r\nDepartment Name:Children\r\nStyle:Novelty\r\nGender:Unisex\r\nMaterial:Acrylic,Cotton\r\nStrap Type:Adjustable\r\nM average size,\r\nsuitable for 50cm ~ 55cm', 475, 'Hats', 'Large'),
(99, 'SL1.jpg', 'Nap Boys Fly Me To The Moon Pajama Set', 'Set of 2\r\n1 x muscle tee\r\n1 x pajama\r\nCotton blend\r\nSilk screen print\r\nRegular fit', 399, 'Sleepwear', 'Small'),
(100, 'SL2.jpg', 'Nap Boys Dinosaur Sleeves Pajama Set', 'Set of 2\r\n1 x long sleeves top\r\n1 x pajama\r\nCotton blend\r\nSilk screen print\r\nRegular fit', 399, 'Sleepwear', 'Small'),
(101, 'SL5.jpg', 'Puritan Jr. Boy''s Knitted Pajama Set', 'Recommended age:4 years to 16 years\r\nMaterial: Cotton\r\nSoft and comfortable fabrics\r\nWith Racer print', 400, 'Sleepwear', 'Small'),
(102, 'SL4.jpg', 'Nap Boys Robot Long Sleeves Pajama Set', 'Set of 2\r\n1 x long sleeves top\r\n1 x pajama\r\nCotton blend\r\nSilk screen print\r\nRegular fit', 399, 'Sleepwear', 'Small'),
(103, 'SL5.jpg', 'Nap Boys Zebra Long Sleeves Pajama Set', 'Set of 2\r\n1 x long sleeves top\r\n1 x pajama\r\nCotton blend\r\nSilk screen print\r\nRegular fit', 449, 'Sleepwear', 'Small'),
(104, 'SL6.jpg', 'Nap Boys Truck Pajama Set', 'Set of 2\r\n1 x short sleeves top\r\n1 x pajama\r\nCotton blend\r\nSilk screen print\r\nRegular fit', 399, 'Sleepwear', 'Small'),
(105, 'PT1.png', 'Treeco Fashion Men''s Cargo Jogger Platoon', 'Great -looking with fit Perfect style and Perfect length\r\nMaterial is stretch,Its fine quality, comfortable\r\nStylish calves and fitting skinning jeans with construction\r\nYou can see for sizes available', 599, 'Pants', 'Medium'),
(106, 'PT2.png', 'Bum Men''s Fleece Jog Pants Long Camo', 'Men''s Fleece Jog Pants With Print\r\nFabric: Fleece\r\nFashionable To Wear', 599, 'Pants', 'Medium'),
(107, 'PT3.png', 'Bobson Men''s Straight Pants', 'Material: Non-Denim\r\nLow Waist\r\nSlim Straight\r\nNon-Denim Pants\r\nComfortable to wear', 499, 'Pants', 'Medium'),
(108, 'PT4.png', 'Harem Low Crotch Hip-hop Pants', 'Polyester cotton material\r\nLow waist\r\nHigh quality\r\n', 699, 'Pants', 'Medium'),
(109, 'PT5.png', 'Bobson Men''s Okayama Original', 'Material: Fabric: 100% Cotton\r\nMid waist\r\nStraight cut denim pants', 599, 'Pants', 'Medium'),
(110, 'PT6.png', 'Mens Jogging Pants Tracksuit Bottoms', 'Material:Cotton\r\nSweatpants Jogging Tracksuit Bottoms\r\nHIP HOP Jogger Sport Sweat Pants\r\n', 599, 'Pants', 'Medium'),
(111, 'J1.png', 'Casual Coat Slim Fit Capped Man Jacket', 'Material: cotton 100%\r\nCollar: collar\r\nSize: M L 2XL XL 3XL\r\nApplicable objects: Youth\r\nStyle: Fashion', 1615, 'jackets', 'Medium'),
(112, 'J2.png', 'Men''s Reflective Hooded Jacket Coat', 'Placket: zipper\r\nComfortable fabric\r\nFit for crowds: Teenagers\r\nLeisure digital printing\r\nSuitable for the season: spring and autumn', 869, 'Jackets', 'Medium'),
(113, 'j3.png', 'Men Wolverines James Logan Howlett', 'Outerwear Type:Leather & Suede\r\nLining Material:Polyester\r\nClosure Type:Zipper\r\nFabric Type:Broadcloth\r\nClothing Length:Regular\r\nCollar:Mandarin Collar\r\nPattern Type:Solid\r\nType:Regular\r\nHooded:No\r\nColor Style:Solid\r\nCuff Style:Conventional', 1923, 'jackets', 'Medium'),
(114, 'j4.png', 'Mens Casual Leather Coat Stand Collar', 'Size is comparably smaller,So ignore lazada size chart,please kindly refer to our suggested chest and the actual measurement; If you do not know your measurement chest size or you prefer the "Less Tightly Fit",please order 1 SIZE UP than you normally wear\r\nFabric: High Quality PU Leather(Faux Leather); Lining: 100% Polyester\r\nZipper closure\r\nSoft Breathable', 1083, 'jackets', 'Medium'),
(115, 'j5.png', 'Plain Hoodie Jacket Grey w/ zipper', 'Plain Hoodie Jacket Fleece Grey w zipper', 609, 'jackets', 'Medium'),
(116, 'j6.png', 'Unisex Bomber Jacket Style Varsity', '100% Polyester Microfiber ( Water Repellant)\r\n With Lining\r\nKnitted collar and cuff\r\n With contrast colour stripes on the neckline, cuff and hem line', 700, 'jackets', 'Medium'),
(117, 'pl1.png', 'Mens Fine Cotton Giraffe Polo Shirts Navy blue', '100% Cotton \r\n Mens Casual Basic Polo Short Sleeve Shirts \r\n Soft Elastic Decent Slim Fit \r\n Button Placket \r\n Sleeve ribbed with contrast trim \r\n Machine Wash / Hand Wash Recommended', 599, 'Polo Shirts', 'Medium'),
(118, 'pl2.png', 'Men''s Sports POLO T-shirt Bead cotton Leisure', 'Pattern?Solid Color\r\nSuitable Season:All Season\r\nFabric:143% Cotton\r\nSuitable for all occasions\r\nFeel Comfortable and Casual\r\nPlease Choose the Size according to the Size Chart', 592, 'Polo Shirts', 'Medium'),
(119, 'pl3.png', 'Mens Fine Cotton Giraffe Polo Shirts White', '100% Cotton \r\nMens Casual Basic Polo Short \r\nSleeve Shirts Soft Elastic Decent \r\nSlim Fit Button placket \r\n Sleeve ribbed with contrast trim \r\n Machine Wash / Hand Wash Recommended', 599, 'polo shirts', 'Medium'),
(120, 'pl4.png', 'Summer Fashion Men T-shirt Men''s Polo Shirt', 'Standard European and American size and version size \r\n100 (%)Cotton\r\nSuitable for season: four seasons\r\nspecial Striped', 897, 'polo shirts', 'Medium'),
(121, 'pl5.png', 'Mens Fine Cotton Giraffe Polo Shirts Dark Grey', '100% Cotton \r\n Mens Casual Basic Polo Short Sleeve Shirts \r\n Soft Elastic Decent Slim Fit \r\n Button placket \r\n Sleeve ribbed with contrast trim \r\n Machine Wash / Hand Wash Recommended', 486, 'polo shirts', 'Medium'),
(122, 'pl6.png', 'Polo Shirt Patchwork Cotton Top Grade Shirt', 'Decoration:Embroidery\r\nPattern Type:Patchwork\r\nType:Wide-waisted\r\nFeature:Breathable', 599, 'polo shirts', 'Medium');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
