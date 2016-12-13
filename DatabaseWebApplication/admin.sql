-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2016 at 10:18 AM
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
(0, '184615110.jpg');

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
(0, '1.jpg');

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
('à¸•à¹‰à¸¡à¸¢à¸³à¸à¸£à¸°à¸”à¸¹à¸à¸«à¸¡à¸¹', '20', '2000', 50);

-- --------------------------------------------------------

--
-- Table structure for table `type2`
--

CREATE TABLE `type2` (
  `name` varchar(50) NOT NULL,
  `calorie` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type2`
--

INSERT INTO `type2` (`name`, `calorie`, `price`, `type`) VALUES
('à¹„à¸à¹ˆà¸—à¸­à¸”à¸™à¹‰à¸³à¸›à¸¥à¸²', '5002', 30, '10'),
('à¸«à¸¡à¸¹à¸—à¸­à¸”', '500', 35, '10'),
('à¸‹à¸µà¹ˆà¹‚à¸„à¸£à¸‡à¸«à¸¡à¸¹à¸—à¸­à¸”', '500', 60, '15');

-- --------------------------------------------------------

--
-- Table structure for table `type3`
--

CREATE TABLE `type3` (
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `calorie` varchar(45) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type3`
--

INSERT INTO `type3` (`name`, `type`, `calorie`, `price`) VALUES
('à¹à¸à¸‡à¸ªà¹‰à¸¡', '12', '22', 22),
('à¹à¸à¸‡à¸«à¸¡à¸¹à¹€à¸—à¹‚à¸ž', '30', '2000', 40);

-- --------------------------------------------------------

--
-- Table structure for table `type4`
--

CREATE TABLE `type4` (
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `calorie` varchar(45) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type4`
--

INSERT INTO `type4` (`name`, `type`, `calorie`, `price`) VALUES
('à¸œà¸±à¸”à¸à¸£à¸°à¹€à¸žà¸£à¸²à¸«à¸¡à¸¹', '20', '2000', 30),
('à¸œà¸±à¸”à¸à¸£à¸°à¹€à¸žà¸£à¸²à¸«à¸¡à¸¹à¹„à¸', '20', '2000', 35),
('à¸œà¸±à¸”à¸à¸£à¸°à¹€à¸žà¸£à¸²à¸à¸¸à¹‰à¸‡', '20', '3000', 40);

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

--
-- Indexes for table `type2`
--
ALTER TABLE `type2`
  ADD PRIMARY KEY (`price`);

--
-- Indexes for table `type3`
--
ALTER TABLE `type3`
  ADD PRIMARY KEY (`price`);

--
-- Indexes for table `type4`
--
ALTER TABLE `type4`
  ADD PRIMARY KEY (`price`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
