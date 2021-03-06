-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2020 at 11:07 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitalappointment`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `aid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `dspecs` varchar(50) NOT NULL,
  `dname` varchar(50) NOT NULL,
  `adate` date NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`aid`, `pid`, `pname`, `dspecs`, `dname`, `adate`, `status`) VALUES
(1, 1, 'mujeeb', 'Cardiology', 'Susu', '2020-01-01', 'approved'),
(2, 2, 'jebin', 'Cardiology', 'Albin', '2020-01-07', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `did` int(11) NOT NULL,
  `d_regid` varchar(50) NOT NULL,
  `dname` varchar(50) NOT NULL,
  `daddress` varchar(500) NOT NULL,
  `dgender` varchar(10) NOT NULL,
  `dspecs` varchar(50) NOT NULL,
  `ddob` date NOT NULL,
  `demail` varchar(50) NOT NULL,
  `dmobile` bigint(20) NOT NULL,
  `dpassword` varchar(50) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`did`, `d_regid`, `dname`, `daddress`, `dgender`, `dspecs`, `ddob`, `demail`, `dmobile`, `dpassword`, `dstatus`) VALUES
(1, '1001', 'susu', 'Idukki', 'Male', 'Cardiology', '2019-12-30', 'susu@gmail.com', 9876543210, 'susu', 'approved'),
(2, '1002', 'Albin', 'Idukki', 'Male', 'Dental', '2020-01-14', 'albin@gmail.com', 9876643210, 'albin', 'approved'),
(3, '2008', 'Rejina', 'calicut', 'Female', 'gynaecology', '1990-02-15', 'rejina@gmail.com', 9876548810, 'rejina', 'pending'),
(4, '3005', 'monila', 'palakad', 'Female', 'cardiology', '1888-11-14', 'monila@gmail.com', 1236547895, 'monila', 'pending'),
(5, '5620', 'joncy', 'bangalore', 'Female', 'ophthalmology', '1885-11-12', 'joncy@gmail.com', 963258741, 'joncy', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `pid` int(11) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `pdob` date NOT NULL,
  `pmobile` bigint(20) NOT NULL,
  `pemail` varchar(100) NOT NULL,
  `pgender` varchar(10) NOT NULL,
  `ppassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`pid`, `pname`, `paddress`, `pdob`, `pmobile`, `pemail`, `pgender`, `ppassword`) VALUES
(1, 'mujeeb', 'Alappuzha', '2019-12-31', 9946131202, 'mujeeb@gmail.com', 'Male', 'mujeeb'),
(2, 'jebin', 'Pathanamthitta', '2020-01-08', 1234567890, 'jebin@gmail.com', 'Male', 'jebin'),
(5, 'karthika', 'kannur', '1889-12-01', 7778881203, 'karthika@gmail.com', 'Female', 'karthika'),
(6, 'akhila', 'cochi', '1999-04-29', 6669994510, 'akhila@gmail.com', 'Female', 'akhila'),
(7, 'najiya', 'pandalam', '2012-07-30', 9988776655, 'najiya@gmail.com', 'Female', 'najiya'),
(12, 'sonu', 'kollam', '2020-01-01', 8796541235, 'sonumom@gmail.com', 'Female', 'sonu'),
(20, 'sasddddd', '', '1233-01-01', 1112, 'aaaaaaaaaaaaaaa', 'Female', 'aaaaaaaaaaaaaaaaaaaaa'),
(21, 'aaaaaa', 'aaaaaa', '1999-02-01', 1223, 'Amithag@gmail.com', 'Male', 'aaaaa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
