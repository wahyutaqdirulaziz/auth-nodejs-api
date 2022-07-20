-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 19, 2022 at 04:00 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `woilo`
--

-- --------------------------------------------------------

--
-- Table structure for table `Contents`
--

CREATE TABLE `Contents` (
  `id` int(11) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `display_picture` varchar(255) DEFAULT NULL,
  `display_content` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Contents`
--

INSERT INTO `Contents` (`id`, `display_name`, `caption`, `display_picture`, `display_content`, `user_id`, `createdAt`, `updatedAt`) VALUES
(1, 'wahyu', 'poto dia dan aku', 'https://www.indonesia.travel/content/dam/indtravelrevamp/home-revamp/bali-jack.jpg', 'https://www.indonesia.travel/content/dam/indtravelrevamp/home-revamp/bali-jack.jpg', 2, '2022-07-19 12:16:21', '2022-07-19 12:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20220719055923-create-user.js'),
('20220719060301-create-content.js');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `firstName`, `lastName`, `username`, `password`, `createdAt`, `updatedAt`) VALUES
(2, 'wahyu', 'dua', 'wahyu', '$2b$10$j7MyMKYsXm.bnczPJ0776eWKcxjygKFeA//4y2Wz.RpUEHdz9cCh2', '2022-07-19 10:29:43', '2022-07-19 10:29:43'),
(3, 'wahyu saja', 'dua', 'wahyu', '$2b$10$fB8ztQoPZWd0fUgQz7/YLuqS6IrOgZqlm//sPHL/v8Pa1uK30VlRi', '2022-07-19 12:22:52', '2022-07-19 12:22:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Contents`
--
ALTER TABLE `Contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Contents`
--
ALTER TABLE `Contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
