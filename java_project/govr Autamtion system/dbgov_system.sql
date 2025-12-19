-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2025 at 09:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbgov_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `security`
--

CREATE TABLE `security` (
  `id` int(11) NOT NULL,
  `security_name` varchar(100) NOT NULL,
  `issues` varchar(100) NOT NULL,
  `impact` varchar(50) NOT NULL,
  `location` varchar(100) NOT NULL,
  `report_date` date NOT NULL,
  `report_time` time NOT NULL,
  `reported_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `reported_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `security`
--

INSERT INTO `security` (`id`, `security_name`, `issues`, `impact`, `location`, `report_date`, `report_time`, `reported_at`, `reported_by`) VALUES
(1, 'vanai', 'Accident', 'agana na 1million yabuze', 'Kigali City', '2024-01-15', '14:30:00', '2025-12-19 07:22:35', NULL),
(2, 'enock', 'Ubujura', 'igikuba mubaturage', 'Huye', '2024-01-16', '10:15:00', '2025-12-19 07:22:35', NULL),
(3, 'belyse', 'Ubujura', 'bapfuye', 'Huye', '2024-01-16', '10:15:00', '2025-12-19 07:22:35', NULL),
(4, 'Police Unit', 'amakimbirane', '3 gukomeraka', 'Musanze', '2024-01-17', '16:45:00', '2025-12-19 07:22:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `names` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `names`, `password`, `phone`, `email`, `role`, `contact`) VALUES
(5, 'enock murinzi', '1234', '07835421', 'enock@gmail.com', 'security', 98712),
(6, 'onesphore', '4321', '0780845241', 'onesphoer@gmail.com', 'admin', NULL),
(7, 'vania', '80981', '08975342', 'onesphole', 'mayor', NULL),
(8, 'belyse', 'b12321', '0745321', 'belyse@gmai.com', 'security', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `security`
--
ALTER TABLE `security`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reported_by` (`reported_by`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `security`
--
ALTER TABLE `security`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `security`
--
ALTER TABLE `security`
  ADD CONSTRAINT `security_ibfk_1` FOREIGN KEY (`reported_by`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
