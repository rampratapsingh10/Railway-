-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2021 at 04:39 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railway`
--

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `p_id` int(30) NOT NULL,
  `p_fname` varchar(30) DEFAULT NULL,
  `p_lname` varchar(30) DEFAULT NULL,
  `p_age` varchar(30) DEFAULT NULL,
  `p_contact` varchar(20) DEFAULT NULL,
  `p_gender` varchar(30) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `t_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`p_id`, `p_fname`, `p_lname`, `p_age`, `p_contact`, `p_gender`, `email`, `password`, `t_no`) VALUES
(10, 'RamPratap', 'Singh', '20', '9145636523', 'Male', 'Ramp123@gmail.com', 'iiuXm3y6eErjBjH', 12951),
(11, 'sarthak', 'upadhyaya', '20', '9752125382', 'Male', 'sarthakupadhyaya27@gmail.com', 'xsAFySHtqJDE7RQ', 12859);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `s_id` int(11) NOT NULL,
  `s_fname` varchar(10) DEFAULT NULL,
  `s_lname` varchar(10) DEFAULT NULL,
  `s_department` varchar(20) NOT NULL,
  `s_salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `s_no` int(11) NOT NULL,
  `s_name` varchar(20) DEFAULT NULL,
  `s_no_of_platforms` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`s_no`, `s_name`, `s_no_of_platforms`) VALUES
(1, 'borivali', '8'),
(2, 'Baroda', '6'),
(3, 'Surat', '4');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `PNR` decimal(10,0) NOT NULL,
  `t_status` varchar(20) NOT NULL DEFAULT 'Waiting',
  `t_fare` int(11) DEFAULT NULL,
  `p_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `t_no` decimal(5,0) NOT NULL,
  `t_name` varchar(30) DEFAULT NULL,
  `t_source` varchar(30) DEFAULT NULL,
  `t_destination` varchar(30) DEFAULT NULL,
  `t_type` varchar(30) DEFAULT NULL,
  `t_status` varchar(20) DEFAULT 'On time',
  `no_of_seats` int(11) DEFAULT NULL,
  `t_duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`t_no`, `t_name`, `t_source`, `t_destination`, `t_type`, `t_status`, `no_of_seats`, `t_duration`) VALUES
('4971', 'garibrath', 'Udaipurr', 'Jammu Tawi', 'Express', 'On time', 550, 20),
('12284', 'duronto', 'Mumbai central', 'Ernakulum', 'AC superfast', 'On time', 800, 24),
('12859', 'geetanjali', 'CST', 'Kolkata', 'express', 'On time', 500, 25),
('12951', 'rajdhani', 'Mumbai Central', 'Delhi', 'Superfast', 'On time', 700, 15),
('16205', 'mysoreexp', 'Talguppa', 'Mysore JN', 'Express', 'On time', 475, 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`p_id`),
  ADD UNIQUE KEY `p_id` (`p_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`s_no`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD UNIQUE KEY `PNR` (`PNR`);

--
-- Indexes for table `trains`
--
ALTER TABLE `trains`
  ADD PRIMARY KEY (`t_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `passengers`
--
ALTER TABLE `passengers`
  MODIFY `p_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `s_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
