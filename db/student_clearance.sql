-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2023 at 01:12 PM
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
-- Database: `student_clearance`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(3) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `designation` varchar(25) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `status` varchar(10) NOT NULL,
  `photo` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `username`, `password`, `designation`, `fullname`, `email`, `status`, `photo`) VALUES
(4, 'admin', 'admin123', 'Admin', 'kofi mensah', 'eva_2012@gmail.com', 'Active', 'uploads/default.jpg'),
(5, 'jonat', '1234567890', 'Super Admin', 'jonat', 'jonat@gmail.com', 'Active', 'uploads/avatar_nick.png');

-- --------------------------------------------------------

--
-- Table structure for table `admin_accounts`
--

CREATE TABLE `admin_accounts` (
  `id` int(25) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `series_id` varchar(60) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `admin_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin_accounts`
--

INSERT INTO `admin_accounts` (`id`, `user_name`, `password`, `series_id`, `remember_token`, `expires`, `admin_type`) VALUES
(1, 'admin@gmail.com', '$2y$10$tXTHPggI4CMCV7R2XbnWnOP2WGwL3m.XpAWRQimS8tfb8EtibzhFi', NULL, NULL, NULL, 'super'),
(2, 'admin1@gmail.com', 'Password.1', NULL, NULL, NULL, 'super'),
(7, 'mariaregistered@icloud.com', '$2y$10$6IDuEIJvpqC.z8GJDRLppODvLrYr7N/SnlcZafzbTL93TOeVeq3h.', NULL, NULL, NULL, 'super');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) NOT NULL,
  `name` text NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `response` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) NOT NULL,
  `f_name` varchar(25) NOT NULL,
  `l_name` varchar(25) NOT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(15) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `certificate_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `training_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `marks` varchar(100) NOT NULL,
  `college_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` date DEFAULT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `f_name`, `l_name`, `gender`, `address`, `city`, `state`, `phone`, `email`, `certificate_number`, `training_name`, `marks`, `college_name`, `date_of_birth`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(98, '1111', '1111', 'female', '1', NULL, 'Abeka', '444', '1@gmail.com', '111', '1', '1', '1', '2023-10-25', 0, '2023-10-25', 0, NULL),
(103, '000', '005', 'female', '00', NULL, 'Kumasi', '0222', 'sdfd@gmail.com', '5655', '00', '000', '000', '2023-10-25', 0, '2023-10-25', 0, NULL),
(104, '222', '222', 'female', '222', NULL, 'Ho', '332649494', 'd@gmail.com', '222', '22222', '222', '222', '2023-10-25', 0, '2023-10-25', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `ID` int(3) NOT NULL,
  `session` varchar(9) NOT NULL,
  `faculty` varchar(40) NOT NULL,
  `dept` varchar(40) NOT NULL,
  `amount` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`ID`, `session`, `faculty`, `dept`, `amount`) VALUES
(14, '2023/2024', 'Science', 'Computer Science', '100000');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) NOT NULL,
  `name` text DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `feedback` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `rating` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(100) NOT NULL,
  `contactEmail` varchar(30) NOT NULL,
  `country` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `ID` int(4) NOT NULL,
  `feeID` varchar(25) NOT NULL,
  `studentID` varchar(25) NOT NULL,
  `amount` varchar(25) NOT NULL,
  `datepaid` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`ID`, `feeID`, `studentID`, `amount`, `datepaid`) VALUES
(24, '8FAC46R2579D', '8', '20000', '2022-08-17 13:24:57'),
(25, 'DEAR92C6734B', '8', '80000', '2022-08-17 13:25:09'),
(26, '38FR6C20479A', '9', '100000', '2023-09-25 10:02:19');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `ID` int(3) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `matric_no` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `session` varchar(10) NOT NULL,
  `faculty` varchar(30) NOT NULL,
  `dept` varchar(44) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `photo` varchar(400) NOT NULL,
  `is_hostel_approved` int(3) NOT NULL,
  `is_sport_approved` int(3) NOT NULL,
  `head_department` int(3) NOT NULL DEFAULT 0,
  `is_stud_affairs_approved` int(3) NOT NULL,
  `head_lib` int(3) NOT NULL DEFAULT 0,
  `head_ali` int(3) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`ID`, `fullname`, `matric_no`, `password`, `session`, `faculty`, `dept`, `phone`, `photo`, `is_hostel_approved`, `is_sport_approved`, `head_department`, `is_stud_affairs_approved`, `head_lib`, `head_ali`) VALUES
(8, 'Eke Emmanuel Efa-eval', '18/132010', '11111111', '2021/2022', 'Science', 'Computer Science', '08067361023', 'uploads/eva.jpeg', 0, 1, 0, 1, 0, 1),
(9, 'jonat mensah', 'ueb334456786', 'b6su9r', '2023/2024', 'Science', 'Computer Science', '025663222', 'uploads/[CooL GuY] {{a2zRG}} (30).jpg', 0, 1, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblsession`
--

CREATE TABLE `tblsession` (
  `ID` int(3) NOT NULL,
  `session` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsession`
--

INSERT INTO `tblsession` (`ID`, `session`) VALUES
(1, '2023/2024'),
(2, '2021/2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `admin_accounts`
--
ALTER TABLE `admin_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `certificate_number` (`certificate_number`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contactEmail` (`contactEmail`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsession`
--
ALTER TABLE `tblsession`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_accounts`
--
ALTER TABLE `admin_accounts`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblsession`
--
ALTER TABLE `tblsession`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
