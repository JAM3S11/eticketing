-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2023 at 08:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eticketing`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `ComplaintId` int(19) NOT NULL,
  `Location` tinytext NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Priority` varchar(5) NOT NULL,
  `Deadline` datetime NOT NULL,
  `Timestart` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  ` Complainant_endtime` datetime NOT NULL,
  `Recipient_endtime` text NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `Expert_assigned` varchar(20) NOT NULL,
  `desk_assigned` varchar(20) NOT NULL,
  `UserId` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`ComplaintId`, `Location`, `Description`, `Priority`, `Deadline`, `Timestart`, ` Complainant_endtime`, `Recipient_endtime`, `Status`, `Department`, `Expert_assigned`, `desk_assigned`, `UserId`) VALUES
(6, 'Annex 1st Floor', 'Computer can not login', '10', '2023-08-16 08:14:00', '2023-08-03 05:19:58', '0000-00-00 00:00:00', '2023-08-03 08:19:58', 2, 'Systems', '29', '10', 28);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserId` int(7) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `UserType` varchar(30) NOT NULL DEFAULT 'Client',
  `Email` tinytext NOT NULL,
  `PhoneNo` varchar(11) NOT NULL,
  `Password` varchar(13) NOT NULL,
  `AOS` tinytext DEFAULT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'No',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserId`, `Name`, `UserType`, `Email`, `PhoneNo`, `Password`, `AOS`, `Status`, `date_created`) VALUES
(10, 'Sir', 'Admin', 'sir@abc.com', '0790771314', 'abc', NULL, 'Yes', '2023-08-02 05:35:20'),
(28, 'Client', 'Client', 'client@abc.com', '0756454545', 'abc', NULL, 'Yes', '2023-08-03 05:11:45'),
(29, 'Ict', 'IT Support', 'ict@abc.com', '087544333', 'acc', NULL, 'Yes', '2023-08-03 05:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `usertypes`
--

CREATE TABLE `usertypes` (
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertypes`
--

INSERT INTO `usertypes` (`type`) VALUES
('Admin'),
('IT Support'),
('Service Desk'),
('Client');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`ComplaintId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserId`),
  ADD UNIQUE KEY `Email` (`Email`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `ComplaintId` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserId` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
