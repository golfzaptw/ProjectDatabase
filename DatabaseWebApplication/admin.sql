-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2016 at 10:24 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

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
(0, 'nawakarn', 1234);

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
(0, 'index1.jpg'),
(0, 'icon1.png'),
(0, '022.jpg'),
(0, 'icon6.png'),
(0, '03.jpg'),
(0, 'index4.jpg'),
(0, 'index4_1.jpg'),
(0, 'index3_1.jpg'),
(0, 'index3_2.jpg'),
(0, 'iconlogin.png'),
(0, 'YYYYYYYYYYYY.jpg'),
(0, 'YYYYYYYYYYYYYYYYY.jpg'),
(0, 'YYYYYYYYY.jpg'),
(0, 'YYYYYYY.jpg'),
(0, 'doc1.jpg'),
(0, 'plakrim.jpg'),
(0, 'plakrim_1.jpg'),
(0, 'plakrim_2.jpg'),
(0, 'plakrim_3.jpg'),
(0, '1.jpg'),
(0, 'icon2.png'),
(0, '5.jpg'),
(0, '5_1.jpg'),
(0, '4.jpg'),
(0, 'icon7.png'),
(0, 'test.png'),
(0, 'test_1.png'),
(0, 'doc2.jpg'),
(0, '11.jpg'),
(0, ''),
(0, '11_1.jpg'),
(0, '11_2.jpg'),
(0, '11_3.jpg'),
(0, 'icon1.png'),
(0, 'icon1_1.png'),
(0, 'icon13.png'),
(0, 'icon1_2.png'),
(0, 'icon1_3.png'),
(0, 'icon7_1.png'),
(0, 'icon7_2.png'),
(0, 'doc2_1.jpg'),
(0, 'doc2_2.jpg'),
(0, ''),
(0, '4_1.jpg'),
(0, 'icon10.png'),
(0, 'icon10_1.png');

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
(0, 'iconlogin_1.png'),
(0, 'iconlogin.png'),
(0, 'icon1.png'),
(0, 'icon1_1.png'),
(0, 'icon1_2.png'),
(0, 'icon2.png'),
(0, 'icon2_1.png'),
(0, 'icon2.png'),
(0, 'YYYYYYY.jpg'),
(0, 'YYYYYY.jpg'),
(0, 'YYYYYY2.jpg'),
(0, 'YYYYYY.jpg'),
(0, 'YYYYYY_1.jpg'),
(0, 'icon3.png'),
(0, 'icon3_1.png'),
(0, 'icon3_2.png'),
(0, 'icon3_3.png'),
(0, '5.jpg'),
(0, '5_1.jpg'),
(0, '5_2.jpg'),
(0, '5_3.jpg'),
(0, 'plakrim.jpg'),
(0, 'plakrim.jpg'),
(0, 'plakrim_1.jpg'),
(0, 'plakrim_2.jpg'),
(0, 'plakrim_3.jpg'),
(0, 'plakrim_4.jpg'),
(0, 'plakrim_5.jpg'),
(0, 'icon3.png'),
(0, 'icon13.png');

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
(0, '11.jpg'),
(0, '11_1.jpg'),
(0, '11_2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_image4`
--

CREATE TABLE `tbl_image4` (
  `image_id` tinyint(4) NOT NULL,
  `image_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_image4`
--

INSERT INTO `tbl_image4` (`image_id`, `image_name`) VALUES
(0, 'icon1.png'),
(0, 'icon2.png'),
(0, 'doc2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `type1`
--

CREATE TABLE `type1` (
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `calorie` varchar(45) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type1`
--

INSERT INTO `type1` (`name`, `type`, `calorie`, `price`) VALUES
('à¸•à¹‰à¸¡à¸¢à¸³', '2', '200', 3),
('à¸•à¹‰à¸¡', '30', '1000', 32),
('à¸•à¹‰à¸¡à¸¢à¸³à¸™à¹‰à¸³à¸‚à¹‰à¸™', '30', '3000', 44);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`password`,`id`);

--
-- Indexes for table `type1`
--
ALTER TABLE `type1`
  ADD PRIMARY KEY (`price`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
