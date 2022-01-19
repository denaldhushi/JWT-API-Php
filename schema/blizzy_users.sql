-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 19, 2022 at 05:49 PM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blizzyapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `blizzy_users`
--

CREATE TABLE `blizzy_users` (
  `userid` int NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `signupdate` date NOT NULL,
  `typeaccount` varchar(20) NOT NULL,
  `country` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `iva` varchar(50) NOT NULL,
  `active` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blizzy_users`
--

INSERT INTO `blizzy_users` (`userid`, `firstname`, `lastname`, `username`, `email`, `password`, `signupdate`, `typeaccount`, `country`, `city`, `zip`, `iva`, `active`) VALUES
(1, 'Denald', 'Hushi', 'admin', 'denalddh@gmail.com', '$2y$10$fyRWyfivBXINJDkz1fA/1.CdRm5erSLyOo808.ic5IogEaUSgogiq', '2022-01-18', '', '', '', '', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blizzy_users`
--
ALTER TABLE `blizzy_users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blizzy_users`
--
ALTER TABLE `blizzy_users`
  MODIFY `userid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
