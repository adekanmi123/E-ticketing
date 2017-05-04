-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2016 at 08:43 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` varchar(300) NOT NULL,
  `bus` varchar(30) NOT NULL,
  `transactionum` varchar(10) NOT NULL,
  `payable` varchar(11) NOT NULL,
  `status` varchar(100) NOT NULL,
  `setnumber` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `fname`, `lname`, `contact`, `address`, `bus`, `transactionum`, `payable`, `status`, `setnumber`) VALUES
(2, 'j', 'kjk', 'kjkj', 'kjk', '1', 'kd77mzfy', '400', 'Onboard', ''),
(3, 'p', 'p', 'p', 'p', '1', 'nidsyeyg', '400', 'Not Void', ''),
(4, 'k', 'k', 'k', 'k', '1', 'v53zohwk', '400', '', ''),
(5, 'k', 'k', 'k', 'k', '1', 's4xf7qkq', '400', '', '1, 2, 3, 4, 5, 6, 7, 8, 9, '),
(6, 'k', 'k', 'k', 'k', '1', 'fhk7qarc', '1600', '', '1, 2, 3, 4, '),
(8, 'rwrw', 'wrwrw', '424242', 'rwrwrw', '3', 'j2q5n2xk', '1200', '', '1, 2, 3, '),
(9, 'Hello', 'World', '017XXXXXXXX', 'CUET', '3', 'ageijr8c', '1200', '', '1, 2, 3, ');

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE IF NOT EXISTS `reserve` (
`id` int(11) NOT NULL,
  `date` varchar(11) NOT NULL,
  `bus` varchar(11) NOT NULL,
  `seat_reserve` varchar(11) NOT NULL,
  `transactionnum` varchar(10) NOT NULL,
  `seat` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `reserve`
--

INSERT INTO `reserve` (`id`, `date`, `bus`, `seat_reserve`, `transactionnum`, `seat`) VALUES
(1, '2013-01-01', '1', '1', 'o8ey8p40', '1'),
(2, '2013-01-13', '1', '1', 'kd77mzfy', '1'),
(3, '2013-01-15', '1', '5', 'nidsyeyg', '1'),
(4, '2013-01-17', '1', '4', 'v53zohwk', '1'),
(5, '2013-01-16', '1', '9', 's4xf7qkq', '1, 2, 3, 4, 5, 6, 7, 8, 9, '),
(6, '2013-01-21', '1', '4', 'fhk7qarc', '1, 2, 3, 4, '),
(7, '23/11/2016', '1', '3', 'fwe7v8j5', '1, 2, 3, '),
(8, '28/11/2016', '3', '3', 'j2q5n2xk', '1, 2, 3, '),
(9, '30/11/2016', '3', '3', 'ageijr8c', '1, 2, 3, ');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE IF NOT EXISTS `route` (
`id` int(11) NOT NULL,
  `route` varchar(300) NOT NULL,
  `price` varchar(30) NOT NULL,
  `numseats` int(30) NOT NULL,
  `type` varchar(300) NOT NULL,
  `time` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`id`, `route`, `price`, `numseats`, `type`, `time`) VALUES
(1, 'Dhaka-Chittagong', '400', 50, 'Deluxe', '10:30'),
(3, 'Chittagong-Khulna', '400', 50, 'Air Con', '12:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
