-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2023 at 08:34 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_management_tool`
--

-- --------------------------------------------------------

--
-- Table structure for table `issued_raw_materials`
--

CREATE TABLE `issued_raw_materials` (
  `sr` int(10) NOT NULL,
  `id` int(20) NOT NULL,
  `item` varchar(30) NOT NULL,
  `quantity` int(10) NOT NULL,
  `issuer name` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issued_raw_materials`
--

INSERT INTO `issued_raw_materials` (`sr`, `id`, `item`, `quantity`, `issuer name`, `email`, `date`, `time`) VALUES
(25, 112, 'tin', 100, 'manali', 'manali23@gmail.com', '2023-07-18', '18:15:00.000000'),
(26, 114, 'water pump', 6, 'yash', 'yash@gmail.com', '2023-07-11', '19:17:00.000000'),
(27, 113, 'wires', 20, 'neha', 'neha@gmail.com', '2023-07-08', '15:24:00.000000'),
(28, 778, 'silicon', 300, 'nikita', 'nikita@gmail.com', '2023-07-18', '19:28:00.000000'),
(29, 112, 'tin', 900, 'jayesh', 'jayesh@gmail.com', '2023-07-11', '17:29:00.000000'),
(30, 117, 'fibre', 150, 'om', 'om@gmail.com', '2023-07-11', '11:35:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `sr` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`sr`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin'),
(2, 'abc', '123'),
(4, 'chaitali@gmail.com', '12345'),
(5, 'neha@gmail.com', '12345'),
(6, 'yash@gmail.com', '12345'),
(7, 'siya@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `processed_items`
--

CREATE TABLE `processed_items` (
  `sr` int(10) NOT NULL,
  `id` int(20) NOT NULL,
  `processed_item` varchar(50) NOT NULL,
  `quantity` int(20) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `cost per unit` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `processed_items`
--

INSERT INTO `processed_items` (`sr`, `id`, `processed_item`, `quantity`, `unit`, `cost per unit`) VALUES
(11, 211, 'Top Freezer Refrigerator', 25, 'n', 20000),
(13, 556, 'French door Refrigerator', 10, 'n', 30000),
(17, 989, 'Front Load Washer', 52, 'n', 34500),
(18, 567, 'Top Loader Washer', 0, 'n', 37750),
(19, 549, 'Semi Automatic Washing Machine', 6, 'n', 22600),
(20, 443, 'Minibar', 28, 'n', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `raw_items`
--

CREATE TABLE `raw_items` (
  `sr` int(10) NOT NULL,
  `id` int(30) NOT NULL,
  `raw_item_name` varchar(50) NOT NULL,
  `quantity` int(30) NOT NULL,
  `unit` varchar(30) NOT NULL,
  `cost_per_unit` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `raw_items`
--

INSERT INTO `raw_items` (`sr`, `id`, `raw_item_name`, `quantity`, `unit`, `cost_per_unit`) VALUES
(19, 110, 'Copper', 300, 'kg', 725),
(20, 111, 'plastic', 600, 'kg', 60),
(21, 112, 'tin', 0, 'kg', 400),
(24, 115, 'Drain pipe', 100, 'u', 300),
(25, 116, 'coolent', 800, 'kg', 1000),
(26, 117, 'fibre', 0, 'kg', 300),
(28, 778, 'silicon', 100, 'kg', 60000);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `sr` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `item` varchar(20) NOT NULL,
  `vender_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `quantity` int(20) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `cost_per_unit` int(10) NOT NULL,
  `request_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `sr` int(10) NOT NULL,
  `item id` int(20) NOT NULL,
  `item` varchar(30) NOT NULL,
  `quantity` int(20) NOT NULL,
  `issuer name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`sr`, `item id`, `item`, `quantity`, `issuer name`, `email`, `date`, `time`) VALUES
(2, 1, 'ac', 4, 'neha', 'neha@gmail.com', '2023-07-17', '19:00:00.000000'),
(4, 1, 'fridge', 6, 'sayali', 'sayali@gmail.com', '2023-07-20', '22:46:00.000000'),
(5, 556, 'French door Refrigerator', 15, 'chaitali', 'chaitali@gmail.com', '2023-07-26', '20:46:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `vender_data`
--

CREATE TABLE `vender_data` (
  `sr` int(10) NOT NULL,
  `id` int(10) NOT NULL,
  `item` varchar(25) NOT NULL,
  `Vender_Name` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `quantity` int(10) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `cost per unit` int(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vender_data`
--

INSERT INTO `vender_data` (`sr`, `id`, `item`, `Vender_Name`, `email`, `quantity`, `unit`, `cost per unit`, `status`) VALUES
(1, 112, 'tin', 'meera', 'meera@gmail.com', 188, 'kg', 3000, 'Approved'),
(3, 117, 'fibre', 'sanika', 'sanika@gmail.com', 44, 'n', 6000, 'Applied'),
(6, 556, 'steel', 'neha', 'neha@gmail.com', 1222, 'n', 50000, 'Applied');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `issued_raw_materials`
--
ALTER TABLE `issued_raw_materials`
  ADD PRIMARY KEY (`sr`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`sr`);

--
-- Indexes for table `processed_items`
--
ALTER TABLE `processed_items`
  ADD PRIMARY KEY (`sr`),
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `raw_items`
--
ALTER TABLE `raw_items`
  ADD PRIMARY KEY (`sr`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`sr`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`sr`);

--
-- Indexes for table `vender_data`
--
ALTER TABLE `vender_data`
  ADD PRIMARY KEY (`sr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `issued_raw_materials`
--
ALTER TABLE `issued_raw_materials`
  MODIFY `sr` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `sr` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `processed_items`
--
ALTER TABLE `processed_items`
  MODIFY `sr` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `raw_items`
--
ALTER TABLE `raw_items`
  MODIFY `sr` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `sr` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `sr` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vender_data`
--
ALTER TABLE `vender_data`
  MODIFY `sr` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
