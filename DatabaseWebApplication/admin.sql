-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2016 at 03:54 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'nawakarn', 1234),
(2, 'golfzaptw', 1435);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `d_id` int(10) NOT NULL,
  `o_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `d_qty` int(11) NOT NULL,
  `d_subtotal` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`d_id`, `o_id`, `p_id`, `d_qty`, `d_subtotal`) VALUES
(1, 1, 1, 11, 3839),
(2, 2, 1, 2, 0),
(3, 2, 4, 2, 0),
(4, 2, 2, 2, 0),
(5, 2, 3, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_head`
--

CREATE TABLE `order_head` (
  `o_id` int(10) NOT NULL,
  `o_dttm` datetime NOT NULL,
  `o_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `o_addr` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `o_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `o_phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `o_qty` int(11) NOT NULL,
  `o_total` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_head`
--

INSERT INTO `order_head` (`o_id`, `o_dttm`, `o_name`, `o_addr`, `o_email`, `o_phone`, `o_qty`, `o_total`) VALUES
(1, '2016-11-20 20:49:57', 'Neil P. Whittaker', '548 Bluff Street Annapolis Junction', 'software.engi@hotmail.com', '0918434806', 0, 0),
(2, '2016-12-25 12:52:31', 'golfzaptw', '121', 'beam_Peam2009@hotmail.com', '0000', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image`
--

CREATE TABLE `tbl_image` (
  `image_id` tinyint(4) NOT NULL,
  `image_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_image`
--

INSERT INTO `tbl_image` (`image_id`, `image_name`) VALUES
(0, '184615110.jpg'),
(0, 'YYYYYYYYY.jpg'),
(0, 'YYYYYYYYY_1.jpg'),
(0, 'YYYYYYYYY_2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image2`
--

CREATE TABLE `tbl_image2` (
  `image_id` tinyint(4) NOT NULL,
  `image_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_image2`
--

INSERT INTO `tbl_image2` (`image_id`, `image_name`) VALUES
(0, '1.jpg'),
(0, 'YYYYYYYYY.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image3`
--

CREATE TABLE `tbl_image3` (
  `image_id` tinyint(4) NOT NULL,
  `image_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_image3`
--

INSERT INTO `tbl_image3` (`image_id`, `image_name`) VALUES
(0, '2.jpg'),
(0, '2_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image4`
--

CREATE TABLE `tbl_image4` (
  `image_id` tinyint(4) NOT NULL,
  `image_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_image4`
--

INSERT INTO `tbl_image4` (`image_id`, `image_name`) VALUES
(0, '3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userID` int(11) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `userProfession` varchar(50) NOT NULL,
  `userPic` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userID`, `userName`, `userProfession`, `userPic`) VALUES
(42, 'dwayne johnson', 'actor, wrestler', '380289.jpg'),
(43, 'justin bieber', 'singer', '995062.jpg'),
(44, 'chris hemsworth', 'actor', '171544.jpg'),
(41, 'john cena', 'wrestler', '549279.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `type1`
--

CREATE TABLE `type1` (
  `t1_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `calorie` varchar(45) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type1`
--

INSERT INTO `type1` (`t1_id`, `name`, `type`, `calorie`, `price`) VALUES
(1, 'ต้มยำกุ้ง', '23', '3333', 50),
(2, 'ต้มยำทะเล', '34', '3344', 40),
(3, 'ต้มข่าไก่', '30', '2000', 50),
(4, 'ต้มแซบหมู', '34', '3444', 34);

-- --------------------------------------------------------

--
-- Table structure for table `type2`
--

CREATE TABLE `type2` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `calorie` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type2`
--

INSERT INTO `type2` (`id`, `name`, `calorie`, `price`, `type`) VALUES
(1, 'à¸«à¸¡à¸¹à¸—à¸­à¸”', '500', 60, '10'),
(2, 'à¸‚à¸²à¸à¸šà¸—à¸­à¸”à¸à¸£à¸°à¹€à¸—à¸µà¸¢à¸¡', '333', 50, '23'),
(3, 'à¸‹à¸µà¹ˆà¹‚à¸„à¸£à¸‡à¸«à¸¡à¸¹à¸—à¸­à¸”', '500', 60, '15'),
(4, 'à¹„à¸à¹ˆà¸—à¸­à¸”à¸™à¹‰à¸³à¸›à¸¥à¸²', '5002', 30, '10');

-- --------------------------------------------------------

--
-- Table structure for table `type3`
--

CREATE TABLE `type3` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `calorie` varchar(45) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type3`
--

INSERT INTO `type3` (`id`, `name`, `type`, `calorie`, `price`) VALUES
(1, 'à¹à¸à¸‡à¸ªà¹‰à¸¡', '12', '22', 22),
(2, 'à¹à¸à¸‡à¸«à¸¡à¸¹à¹€à¸—à¹‚à¸ž', '30', '2000', 40),
(3, 'à¹à¸à¸‡à¹€à¸«à¸¥à¸·à¸­à¸‡', '34', '33333', 33),
(4, 'à¹à¸à¸‡à¹€à¸‚à¸µà¸¢à¸§à¸«à¸§à¸²à¸™', '34', '3000', 34);

-- --------------------------------------------------------

--
-- Table structure for table `type4`
--

CREATE TABLE `type4` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `calorie` varchar(45) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type4`
--

INSERT INTO `type4` (`id`, `name`, `type`, `calorie`, `price`) VALUES
(1, 'à¸à¸£à¸°à¹€à¸žà¸£à¸²à¸›à¸¥à¸²à¸«à¸¡à¸¶à¸', '23', '2323', 30),
(2, 'à¸œà¸±à¸”à¸à¸£à¸°à¹€à¸žà¸£à¸²à¸à¸¸à¹‰à¸‡', '20', '3000', 40),
(3, 'à¸œà¸±à¸”à¸à¸£à¸°à¹€à¸žà¸£à¸²à¸«à¸¡à¸¹', '20', '2000', 30),
(4, 'à¸œà¸±à¸”à¸à¸£à¸°à¹€à¸žà¸£à¸²à¸«à¸¡à¸¹à¹„à¸', '20', '2000', 35);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `order_head`
--
ALTER TABLE `order_head`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `type1`
--
ALTER TABLE `type1`
  ADD PRIMARY KEY (`t1_id`);

--
-- Indexes for table `type2`
--
ALTER TABLE `type2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type3`
--
ALTER TABLE `type3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type4`
--
ALTER TABLE `type4`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `d_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `order_head`
--
ALTER TABLE `order_head`
  MODIFY `o_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `type1`
--
ALTER TABLE `type1`
  MODIFY `t1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `type2`
--
ALTER TABLE `type2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `type3`
--
ALTER TABLE `type3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `type4`
--
ALTER TABLE `type4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
