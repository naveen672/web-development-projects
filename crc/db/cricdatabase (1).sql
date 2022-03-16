-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 07:09 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(30) NOT NULL,
  `userid` int(10) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `userid`, `password`) VALUES
('naveen', 124, 'naveen@123');

-- --------------------------------------------------------

--
-- Table structure for table `imagegallery`
--

CREATE TABLE `imagegallery` (
  `SN` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Image` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `SN` int(11) NOT NULL,
  `PlayerName` varchar(45) NOT NULL,
  `Born` varchar(45) DEFAULT NULL,
  `Role` varchar(45) DEFAULT NULL,
  `BattingStyle` varchar(45) DEFAULT NULL,
  `BowlingStyle` varchar(45) DEFAULT NULL,
  `Image` varchar(45) DEFAULT 'nophoto.png',
  `Country` varchar(45) DEFAULT NULL,
  `BirthPlace` varchar(45) DEFAULT '-',
  `Teams` longtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`SN`, `PlayerName`, `Born`, `Role`, `BattingStyle`, `BowlingStyle`, `Image`, `Country`, `BirthPlace`, `Teams`, `Description`) VALUES
(1, 'MS Dhoni', '1981-07-07', 'Batsman', 'Right handed batsman', 'Right-arm medium', 'dhoni2.jpg', 'india', 'Ranchi', 'India, Chennai Super Kings, Rising Pune Supergiant', 'Ex Captain of the Indian cricket team. All ICC cup holder.'),
(0, 'sumukha', '1999-06-26', 'Allrounder', 'Right handed batsman', 'Right-arm fast medium', 'rohitsharma-1541258700.jpg', 'India', 'mysore', 'pakisthan', 'lol');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
