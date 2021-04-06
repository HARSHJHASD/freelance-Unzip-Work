-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2021 at 10:24 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assign3`
--

-- --------------------------------------------------------

--
-- Table structure for table `filelocation`
--

CREATE TABLE `filelocation` (
  `id` int(11) NOT NULL,
  `filename` varchar(500) NOT NULL,
  `filepath` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filelocation`
--

INSERT INTO `filelocation` (`id`, `filename`, `filepath`) VALUES
(2, 'abcpdf', 'Uploaded_Files/29032021102144sample.pdf'),
(3, 'abczip', 'Uploaded_Files/29032021102310sample-zip-file.zip'),
(4, 'abcrar', 'Uploaded_Files/29032021102355sample-rar-file.rar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `filelocation`
--
ALTER TABLE `filelocation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filelocation`
--
ALTER TABLE `filelocation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;