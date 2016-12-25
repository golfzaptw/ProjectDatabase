-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2016 at 10:19 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_facebook`
--

CREATE TABLE `tb_facebook` (
  `ID` int(6) NOT NULL,
  `FACEBOOK_ID` varchar(50) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `LINK` varchar(250) NOT NULL,
  `CREATE_DATE` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_facebook`
--

INSERT INTO `tb_facebook` (`ID`, `FACEBOOK_ID`, `NAME`, `LINK`, `CREATE_DATE`) VALUES
(7, '660037360845439', 'Karn Ninparwit', '', '2016-12-06 01:11:45'),
(6, '1191390314301119', 'GolfZa Ptw', '', '2016-12-02 08:50:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_facebook`
--
ALTER TABLE `tb_facebook`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`FACEBOOK_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_facebook`
--
ALTER TABLE `tb_facebook`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
