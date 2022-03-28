-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2018 at 08:26 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gymdb`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `enqdetails` ()  NO SQL
SELECT * FROM enquiry$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `memdetails` ()  NO SQL
SELECT * FROM memberdetails$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `paydetails` ()  NO SQL
SELECT * FROM pay$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `name` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`name`, `phone`, `email`, `date`) VALUES
('shh', '1151', 'hgdgjdj', '2018-10-20'),
('soo', '1212', '121313rgd', '2018-10-02'),
('shi', '3252', 'rhdh', '2018-10-08'),
('dfkdgf34', '346346dst45', '52sdd', '2018-10-14'),
('frezaaaaa', '564747', 'dfszfd@12123', '2018-10-27'),
('samy', '574747', 'hgdhd', '2018-11-03'),
('dhanush', '5759797678', 'fdgdj@35.com', '2018-11-17'),
('dsg', '769', 'gfj', '2018-10-08'),
('shivu', '9901875832', 'dhakdhk@123.com', '2018-11-03');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `name` varchar(30) NOT NULL,
  `pword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`name`, `pword`) VALUES
('rudresh', 'gym'),
('shivu', 'gym'),
('sudhi', 'gym');

-- --------------------------------------------------------

--
-- Table structure for table `memberdetails`
--

CREATE TABLE `memberdetails` (
  `id` int(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `registered_on` date DEFAULT NULL,
  `registered_by` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memberdetails`
--

INSERT INTO `memberdetails` (`id`, `name`, `contact_number`, `address`, `registered_on`, `registered_by`) VALUES
(4, 'vegita', '41364254', 'bulmas house', '2018-10-06', 'shivu'),
(7, 'berus', '4576432', 'universe 7', '2018-10-27', 'shivu'),
(8, 'Dhanush', '6578960602', 'banglore', '2018-11-17', 'shivu');

--
-- Triggers `memberdetails`
--
DELIMITER $$
CREATE TRIGGER `memshow_after_delete` AFTER DELETE ON `memberdetails` FOR EACH ROW delete from morememberdetails where id NOT IN (SELECT id FROM memberdetails)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `morememberdetails`
--

CREATE TABLE `morememberdetails` (
  `id` int(20) NOT NULL,
  `nic` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `emcontact` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `height` double NOT NULL,
  `weight` double NOT NULL,
  `bmi` int(11) NOT NULL,
  `remarks` varchar(500) DEFAULT NULL,
  `lastUpdated` date DEFAULT NULL,
  `membership_cat` varchar(30) DEFAULT NULL,
  `payment_plan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `morememberdetails`
--

INSERT INTO `morememberdetails` (`id`, `nic`, `email`, `emcontact`, `gender`, `height`, `weight`, `bmi`, `remarks`, `lastUpdated`, `membership_cat`, `payment_plan`) VALUES
(4, 'training', 'vegita@dbz.com', '32646426', 'Male', 3, 80, 8, 'best fighter but second to goku', '2018-10-06', 'Personal training', '12 months'),
(7, 'destructor ', 'sgfdh@132.com', '67476587', 'Male', 3, 80, 8, '', '2018-11-03', 'Main workout area', '6 months'),
(8, 'student', 'djgdj@1532.com', '8708606086', 'Male', 180, 70, 0, '', '2018-11-17', 'Fat Loss', '1 month');

-- --------------------------------------------------------

--
-- Table structure for table `pay`
--

CREATE TABLE `pay` (
  `id` int(10) NOT NULL,
  `count` int(10) NOT NULL,
  `payment` double DEFAULT NULL,
  `date` date NOT NULL,
  `added_by` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pay`
--

INSERT INTO `pay` (`id`, `count`, `payment`, `date`, `added_by`) VALUES
(1, 1, 3000, '2018-10-06', 'shivu'),
(1, 2, 3000, '2018-10-06', 'shivu'),
(4, 3, 10000, '2018-10-06', 'shivu'),
(3, 4, 1000, '2018-10-27', 'shivu'),
(3, 5, 1000, '2018-10-27', 'shivu'),
(7, 6, 1000, '2018-11-03', 'shivu'),
(7, 7, 1000, '2018-11-03', 'shivu'),
(6, 8, 100, '2018-11-03', 'shivu'),
(9, 9, 100, '2018-11-03', 'shivu'),
(7, 10, 1000, '2018-11-06', 'shivu'),
(7, 11, 1000, '2018-11-17', 'shivu'),
(7, 12, 53454, '2018-11-30', 'shivu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`phone`),
  ADD UNIQUE KEY `phone` (`phone`);
ALTER TABLE `enquiry` ADD FULLTEXT KEY `phone_2` (`phone`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `memberdetails`
--
ALTER TABLE `memberdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `added_by` (`registered_by`),
  ADD KEY `last_payments_on` (`registered_on`);

--
-- Indexes for table `morememberdetails`
--
ALTER TABLE `morememberdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `nic` (`nic`);

--
-- Indexes for table `pay`
--
ALTER TABLE `pay`
  ADD PRIMARY KEY (`count`),
  ADD KEY `count` (`count`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `memberdetails`
--
ALTER TABLE `memberdetails`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pay`
--
ALTER TABLE `pay`
  MODIFY `count` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
