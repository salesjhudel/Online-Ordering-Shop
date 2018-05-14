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
-- Database: `blogging`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_members`
--

CREATE TABLE `blog_members` (
  `memberID` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_members`
--

INSERT INTO `blog_members` (`memberID`, `username`, `password`, `email`) VALUES
(1, 'jhudel', '$2y$10$qd653sGimzEWjFeFMENYfeo1199yFhS3jdwTpWFoFBsapVhSgiMfG', 'jhudelsales@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `postID` int(11) UNSIGNED NOT NULL,
  `postTitle` varchar(255) DEFAULT NULL,
  `postDesc` text,
  `postCont` text,
  `postDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`postID`, `postTitle`, `postDesc`, `postCont`, `postDate`) VALUES
(1, 'das', '<p>asd</p>', '<p>asd</p>', '2018-01-25 15:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `following`
--

CREATE TABLE `following` (
  `id` int(11) NOT NULL,
  `user1_id` int(11) DEFAULT NULL,
  `user2_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `following`
--

INSERT INTO `following` (`id`, `user1_id`, `user2_id`) VALUES
(1, 2, 1),
(2, 1, 2),
(3, 5, 1),
(4, 5, 2),
(5, 1, 5),
(6, 2, 5),
(7, 9, 1),
(8, 9, 5),
(9, 9, 2),
(10, 2, 9),
(35, 31, 1),
(37, 34, 1),
(46, 1, 35),
(47, 1, 31);

-- --------------------------------------------------------

--
-- Table structure for table `tweets`
--

CREATE TABLE `tweets` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `tweet` varchar(140) NOT NULL,
  `timestamp` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` (`id`, `username`, `user_id`, `tweet`, `timestamp`) VALUES
(1, 'jhudel', 1, 'dasd', 1502878658),
(2, 'jhudel', 1, 'asd', 1502878660),
(3, 'jhudel', 1, 'wad', 1502878663),
(4, 'jhudel', 1, 'dwa', 1502878664),
(5, 'jhudel', 1, 'dasg', 1502878666),
(6, 'jhudel', 1, 'wareq', 1502878668),
(7, 'jhudel', 1, 'x', 1502878669),
(8, 'karen', 2, 'asdasd', 1502878767),
(9, 'karen', 2, 'asd', 1502878769),
(10, 'karen', 2, 'asd', 1502878770),
(11, 'karen', 2, '@jhudel', 1502878775),
(12, 'jhudel', 1, '@karen', 1502881505),
(13, 'kenneth', 5, 'das', 1502928036),
(14, 'kenneth', 5, '@karen', 1502928075),
(15, 'kenneth', 5, '@jhudel hoy', 1502928311),
(16, 'jhudel', 1, '@kenneth', 1502928354),
(17, 'jhudel', 1, '@kenneth bakit', 1502928386),
(18, 'kenneth', 5, '@jhudel wala', 1502928401),
(19, 'karen', 2, '#das', 1502929135),
(20, 'jb', 9, '@jhudel@kenneth@karen', 1502930469),
(21, 'jb', 9, 'hello', 1502930484),
(22, 'karen', 2, '@jb', 1502930499),
(23, 'kaye', 10, 'hello', 1503129205),
(24, 'kaye', 10, 'hoy', 1503129244),
(25, 'kaye', 10, 'asd', 1503129421),
(26, 'kaye', 10, '@cardo', 1503129552),
(27, 'kaye', 10, 'das', 1503155098),
(28, 'kaye', 10, 'dsa', 1503155451),
(29, 'kaye', 10, 'das', 1503156943),
(30, 'kaye', 10, 'asd', 1503156948),
(31, 'kaye', 10, '@jhudel', 1503156984),
(32, 'jhudelsales', 12, 'das', 1505103835),
(33, 'jhudel', 1, 'wooo sa wakas', 1505262151),
(34, 'jhudel', 1, 'sadsa', 1505267785),
(35, 'jhudel', 1, 'dasd', 1505267789),
(36, 'jhudel', 1, 'asdas', 1505267793),
(37, 'jhudel', 1, 's', 1505545367),
(38, 'jhudel', 1, 'aw', 1505545372),
(39, 'jhudel', 1, 'dsa', 1505545632),
(40, 'jhudel', 1, 'yes', 1505545829),
(41, 'jhudel', 1, 'maglalaro muna ko men', 1505545869),
(42, 'jhudel', 1, 'uki na doi', 1505546187),
(43, 'jhudel', 1, 'asd', 1505609094),
(44, 'jhudel', 1, 'ds', 1505609838),
(45, 'jhudel', 1, 's', 1505611686),
(46, 'jhudel', 1, 'd', 1505611687),
(47, 'jhudel', 1, 'd', 1505618909),
(48, 'jhudel', 1, '#dsa', 1505620570),
(49, 'jhudel', 1, '#dsadas', 1505620580),
(50, 'jhudel', 1, 'dsadsadsadasdasd\r\nadsdsadasdsadsadas', 1505622978),
(51, 'jhudel', 1, 'sadds\r\nsadds\r\nsadds', 1505622991),
(52, 'jhudel', 1, '@kenneth', 1505676829),
(53, 'sales', 31, 'hello', 1505683150),
(54, 'jhudel', 1, '@sales', 1505688108),
(55, 'sam', 33, 's', 1505702754),
(56, 'sam', 33, 'das', 1505703322),
(57, 'sam', 33, 'ads', 1505703324),
(58, 'sam', 33, 'xcz', 1505703325),
(59, 'sam', 33, 'da', 1505703326),
(60, 'sam', 33, 'vxz', 1505703327),
(61, 'sam', 33, 'xzc', 1505703330),
(62, 'sam', 33, 'dw', 1505703332),
(63, 'sales', 31, '@jhudel', 1505707554),
(64, 'jhudel', 1, 'dsa', 1505773162),
(65, 'louise', 34, 'hello', 1505773526),
(66, 'louise', 34, '@jhudel', 1505773531),
(67, 'jhudel', 1, '@kristel', 1505787754),
(68, 'jhudel', 1, 'das', 1505797033),
(69, 'jhudel', 1, '#dsadsa', 1506606216),
(70, 'kokofi', 51, 'hello', 1506765471),
(71, 'kokofi', 51, '123456789123456789123456789123456789123456789', 1506765516),
(72, 'kokofi', 51, '123456789123456789123456789123456789', 1506765524),
(73, 'kokofi', 51, '36 letters lang', 1506765562),
(74, 'kokofi', 51, 'including the spaces', 1506765571),
(75, 'kokofi', 51, '', 1506767037),
(76, 'kokofi', 51, '', 1506767044),
(77, 'kokofi', 51, '', 1506767123),
(78, 'kokofi', 51, '', 1506767132),
(79, 'kokofi', 51, '', 1506767153),
(80, 'kokofi', 51, '', 1506767241),
(81, 'kokofi', 51, '', 1506767283),
(82, 'kokofi', 51, '', 1506767321),
(83, 'kokofi', 51, '', 1506767362),
(84, 'kokofi', 51, '', 1506767393),
(85, 'kokofi', 51, '', 1506767503),
(86, 'kokofi', 51, '', 1506767602),
(87, 'kokofi', 51, '', 1506767605),
(88, 'kokofi', 51, '', 1506767607),
(89, 'kokofi', 51, '', 1506767643),
(90, 'kokofi', 51, '', 1506767742),
(91, 'kokofi', 51, '', 1506767745),
(92, 'kokofi', 51, '', 1506767830),
(93, 'kokofi', 51, '', 1506767835),
(94, 'kokofi', 51, '', 1506767837),
(95, 'kokofi', 51, '', 1506767839),
(96, 'kokofi', 51, '', 1506767863),
(97, 'kokofi', 51, '', 1506767896),
(98, 'kokofi', 51, '', 1506768042),
(99, 'kokofi', 51, 'ddddddddddd', 1506768081),
(100, 'kokofi', 51, 'ddddddddddd', 1506768082),
(101, 'kokofi', 51, 'aaaaaaaaaaaa', 1506768118),
(102, 'kokofi', 51, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 1506768132),
(103, 'kokofi', 51, 'adws', 1506768175),
(104, 'januar', 71, 'bakla', 1515236302),
(105, 'januar', 71, 'adsd', 1517061822),
(106, 'januar', 71, 'dasd', 1517063173),
(107, 'januar', 71, 'ads', 1517102954),
(108, 'januar', 71, 'a', 1517147269);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(32) NOT NULL,
  `followers` int(11) DEFAULT '0',
  `following` int(11) DEFAULT '0',
  `tweets` int(11) DEFAULT '0',
  `email` varchar(64) NOT NULL,
  `fullname` varchar(64) NOT NULL,
  `contactnumber` varchar(15) NOT NULL,
  `gender` varchar(16) NOT NULL,
  `language` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `followers`, `following`, `tweets`, `email`, `fullname`, `contactnumber`, `gender`, `language`) VALUES
(71, 'januar', '7815696ecbf1c96e6894b779456d330e', 0, 0, 5, 'januar@gmail.com', 'januar cacnio', '0921-330-8912', 'male', 'English'),
(79, 'sales', '36149a4fed1c2eedb7f7a50189b06e69', 0, 0, 0, 'jhudelsales06@gmail.com', 'sales', '9092-123-1234', 'male', 'English'),
(80, 'joshua', 'd1133275ee2118be63a577af759fc052', 0, 0, 0, 'salesmanuel06@gmail.com', 'joshua', '0921-330-8912', 'male', 'BSIT'),
(81, 'janaur', '8e21b4f0d36b6f53570e689244656f36', 0, 0, 0, 'januar@gmail.com', 'januar', '0921-330-8912', 'female', 'BSIT'),
(82, 'januar', '6b9b5ed5551ff172228c90180d648d97', 0, 0, 0, 'januar@gmail.com', 'ja', '0921-330-8912', 'male', 'BSIT'),
(83, 'januar', '8e21b4f0d36b6f53570e689244656f36', 0, 0, 0, 'januar@gmail.com', 'dasd', '0921-330-8912', 'female', 'BSIT'),
(84, 'eden', 'da897ba0fe30eff270424ac0e768840f', 0, 0, 0, 'eden@gmail.com', 'eden senobin', '0921-330-8912', 'female', 'BSIT'),
(85, 'develles', 'd88cb6ae188322173e0e04df2b9c4fc9', 0, 0, 0, 'jhudelsales06@gmail.com', 'kristeldevelles', '0921-330-8912', 'male', 'English');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_members`
--
ALTER TABLE `blog_members`
  ADD PRIMARY KEY (`memberID`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `following`
--
ALTER TABLE `following`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_members`
--
ALTER TABLE `blog_members`
  MODIFY `memberID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `postID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `following`
--
ALTER TABLE `following`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
