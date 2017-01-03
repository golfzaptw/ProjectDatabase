-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2017 at 04:04 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `typefood`
--

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
(63, 'à¸•à¹‰à¸¡', 'à¸•à¹‰à¸¡à¸¢à¸³à¸—à¸°à¹€à¸¥', '91942.jpg'),
(62, 'à¸•à¹‰à¸¡', 'à¸•à¹‰à¸¡à¸‚à¹ˆà¸²à¹„à¸à¹ˆ', '479799.jpg'),
(64, 'à¸•à¹‰à¸¡', 'à¸•à¹‰à¸¡à¸¢à¸³à¸à¸¸à¹‰à¸‡', '65998.jpg'),
(65, 'à¸•à¹‰à¸¡', 'à¸•à¹‰à¸¡à¹à¸‹à¸šà¸«à¸¡à¸¹', '5420.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users2`
--

CREATE TABLE `tbl_users2` (
  `userID` int(11) NOT NULL,
  `userName` varchar(111) NOT NULL,
  `userProfession` varchar(111) NOT NULL,
  `userPic` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users2`
--

INSERT INTO `tbl_users2` (`userID`, `userName`, `userProfession`, `userPic`) VALUES
(2, 'à¸—à¸­à¸”', 'à¹„à¸à¹ˆà¸—à¸­à¸”à¸™à¹‰à¸³à¸›à¸¥à¸²', '107338.jpg'),
(3, 'à¸—à¸­à¸”', 'à¸«à¸¡à¸¹à¸—à¸­à¸”', '656502.jpg'),
(4, 'à¸—à¸­à¸”', 'à¸‹à¸µà¹ˆà¹‚à¸„à¸£à¸‡à¸«à¸¡à¸¹à¸—à¸­à¸”', '70815.jpg'),
(5, 'à¸—à¸­à¸”', 'à¸‚à¸²à¸à¸šà¸—à¸­à¸”à¸à¸£à¸°à¹€à¸—à¸µà¸¢à¸¡', '463519.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users3`
--

CREATE TABLE `tbl_users3` (
  `userID` int(11) NOT NULL,
  `userName` varchar(23) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `userProfession` varchar(23) CHARACTER SET latin1 NOT NULL,
  `userPic` varchar(23) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users3`
--

INSERT INTO `tbl_users3` (`userID`, `userName`, `userProfession`, `userPic`) VALUES
(2, 'à¹à¸à¸‡', 'à¹à¸à¸‡à¸ªà¹‰à¸¡', '478366.jpg'),
(3, 'à¹à¸à¸‡', 'à¹à¸à¸‡à¹„à¸à¹ˆ', '559096.jpg'),
(4, 'à¹à¸à¸‡', 'à¹à¸à¸‡à¸à¸¸à¹‰à¸‡', '366143.jpg'),
(5, 'à¹à¸à¸‡', 'à¹à¸à¸‡à¸«à¸¡à¸¹', '701898.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users4`
--

CREATE TABLE `tbl_users4` (
  `userID` int(11) NOT NULL,
  `userName` varchar(34) CHARACTER SET latin1 NOT NULL,
  `userProfession` varchar(500) CHARACTER SET latin1 NOT NULL,
  `userPic` varchar(34) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users4`
--

INSERT INTO `tbl_users4` (`userID`, `userName`, `userProfession`, `userPic`) VALUES
(2, 'à¸œà¸±à¸”', 'à¸œà¸±à¸”à¸à¸£à¸°à¹€à¸žà¸£à¸²à¹„à¸à¹ˆ', '382911.jpg'),
(3, 'à¸œà¸±à¸”', 'à¸à¸£à¸°à¹€à¸žà¸£à¸²à¸›à¸¥à¸²à¸«à¸¡à¸¶à¸', '687691.jpg'),
(4, 'à¸œà¸±à¸”', 'à¸à¸£à¸°à¹€à¸žà¸£à¸²à¸«à¸¡à¸¹', '567785.jpg'),
(5, 'à¸œà¸±à¸”', 'à¸à¸£à¸°à¹€à¸žà¸£à¸²à¸à¸¸à¹‰à¸‡', '863571.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `tbl_users2`
--
ALTER TABLE `tbl_users2`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `tbl_users3`
--
ALTER TABLE `tbl_users3`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `tbl_users4`
--
ALTER TABLE `tbl_users4`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `tbl_users2`
--
ALTER TABLE `tbl_users2`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_users3`
--
ALTER TABLE `tbl_users3`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_users4`
--
ALTER TABLE `tbl_users4`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
