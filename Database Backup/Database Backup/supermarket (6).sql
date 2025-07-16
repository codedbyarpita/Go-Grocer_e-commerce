-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2025 at 09:24 PM
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
-- Database: `supermarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `addressid` int(10) NOT NULL,
  `custid` int(10) NOT NULL,
  `city_id` int(11) NOT NULL,
  `address` text NOT NULL,
  `state` varchar(25) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `contactno` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`addressid`, `custid`, `city_id`, `address`, `state`, `pincode`, `contactno`) VALUES
(10, 18, 7, 'nashik', 'maharastraa', '123456', 2147483647),
(11, 19, 2, 'Malavankar  galli,Gargoti', 'Kolkatta', '575002', 2147483647),
(12, 19, 2, 'Julion Gate', 'Kolkatta', '575002', 2147483647),
(13, 19, 7, 'nashik', 'maharastraa', '123456', 2147483647),
(14, 20, 7, 'nashik', 'maharastraa', '123456', 2147483647),
(15, 22, 7, 'Malavankar  galli,Gargoti', 'maharastraa', '123456', 1010101010),
(16, 17, 2, 'R.K.Nagar  ,Gargoti ', 'Kolkatta', '416209', 2147483647),
(17, 17, 2, 'R.K.Nagar  ,Gargoti', 'Kolkatta', '416209', 2147483647),
(18, 17, 2, 'R.K.Nagar  ,Gargoti', 'Kolkatta', '416209', 2147483647),
(19, 17, 2, 'Malavankar  galli,Gargoti', 'Kolkatta', '575002', 2147483647),
(20, 24, 2, 'Malavankar  galli,Gargoti', 'Kolkatta', '575002', 2147483647),
(21, 24, 2, 'Malavankar  galli,Gargoti', 'Kolkatta', '575002', 2147483647),
(22, 24, 2, 'phondaghat', 'Kolkatta', '575002', 2147483647),
(23, 24, 2, 'Malavankar  galli,Gargoti', 'Kolkatta', '575002', 2147483647),
(24, 24, 7, 'Malavankar  galli,Gargoti', 'Kolkatta', '575002', 2147483647),
(25, 25, 7, 'phondaghat', 'Kolkatta', '575002', 2147483647),
(26, 26, 7, 'phondaghat', 'Kolkatta', '575002', 2147483647),
(27, 26, 7, 'Malavankar  galli,Gargoti', 'Maharastra', '575002', 2147483647),
(28, 28, 7, 'nashik', 'maharastraa', '123456', 2147483647),
(29, 29, 7, 'nashik', 'maharastraa', '123456', 2147483647),
(30, 29, 7, 'nashik', 'Maharastra', '123456', 2147483647),
(31, 29, 7, 'nashik', 'Maharastra', '123456', 214748364),
(32, 29, 7, 'nashik', 'Maharastra', '123456', 214748364),
(33, 29, 6, 'Malavankar  galli,Gargoti', 'Kolkatta', '575002', 2147483647),
(34, 31, 6, 'Malavankar  galli,Gargoti', 'Kolkatta', '575002', 2147483647),
(35, 31, 7, 'Malavankar  galli,Gargoti', 'Kolkatta', '575002', 2147483647),
(36, 31, 13, 'nashik', 'maharastraa', '123456', 2147483647),
(37, 31, 2, 'Malavankar  galli,Gargoti', 'Kolkatta', '575002', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `bilid` int(10) NOT NULL,
  `custid` int(10) NOT NULL,
  `addressid` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `staffid` int(11) NOT NULL,
  `bill_no` bigint(20) NOT NULL,
  `entry_type` text NOT NULL,
  `purchdate` date NOT NULL,
  `delivdate` date NOT NULL,
  `total_amt` double(10,2) NOT NULL,
  `cardtype` varchar(20) NOT NULL,
  `cardno` varchar(5) NOT NULL,
  `cvvno` varchar(10) NOT NULL,
  `expirydate` date NOT NULL,
  `comment` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `ration_card_type` varchar(255) NOT NULL DEFAULT '',
  `discount` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`bilid`, `custid`, `addressid`, `city_id`, `staffid`, `bill_no`, `entry_type`, `purchdate`, `delivdate`, `total_amt`, `cardtype`, `cardno`, `cvvno`, `expirydate`, `comment`, `status`, `ration_card_type`, `discount`) VALUES
(15, 18, 9, 2, 0, 2503, 'Invoice', '2024-04-02', '2024-04-03', 256.00, 'Rupay', '12341', '123', '0000-00-00', '', 'Active', '', 0.00),
(16, 19, 11, 2, 0, 2504, 'Invoice', '2024-04-03', '2024-04-16', 40.00, 'Rupay', '12341', '123', '0000-00-00', '', 'Active', '', 0.00),
(17, 19, 11, 2, 0, 2505, 'Invoice', '2024-04-03', '0000-00-00', 90.00, 'Rupay', '12341', '101', '0000-00-00', '', 'Active', '', 0.00),
(18, 19, 13, 7, 0, 2506, 'Invoice', '2024-04-03', '2024-04-03', 512.00, 'Rupay', '12341', '111', '0000-00-00', '', 'Active', '', 0.00),
(19, 20, 14, 7, 0, 2507, 'Invoice', '2024-04-03', '0000-00-00', 150.00, 'Rupay', '12341', '101', '0000-00-00', '', 'Active', '', 0.00),
(20, 20, 14, 7, 0, 2508, 'Invoice', '2024-04-03', '2024-04-16', 1008.00, 'Rupay', '12341', '122', '0000-00-00', '', 'Active', '', 0.00),
(21, 20, 14, 7, 0, 2509, 'Invoice', '2024-04-03', '0000-00-00', 0.00, 'Rupay', '12345', '106', '0000-00-00', '', 'Active', '', 0.00),
(22, 20, 14, 7, 0, 2510, 'Invoice', '2024-04-03', '0000-00-00', 448.00, 'Rupay', '12345', '104', '0000-00-00', '', 'Active', '', 0.00),
(23, 20, 14, 7, 0, 2511, 'Invoice', '2024-04-03', '0000-00-00', 112.00, 'Visa', '98745', '123', '0000-00-00', '', 'Active', '', 0.00),
(24, 20, 14, 7, 0, 2512, 'Invoice', '2024-04-03', '0000-00-00', 329.00, 'Rupay', '12345', '123', '0000-00-00', '', 'Active', '', 0.00),
(25, 22, 15, 7, 0, 2513, 'Invoice', '2024-04-03', '0000-00-00', 450.00, 'Rupay', '12345', '125', '0000-00-00', '', 'Active', 'Orange', 0.15),
(26, 22, 15, 7, 0, 2514, 'Invoice', '2024-04-03', '0000-00-00', 240.00, 'Rupay', '12345', '963', '0000-00-00', '', 'Active', '', 0.00),
(27, 22, 15, 7, 0, 2515, 'Invoice', '2024-04-03', '0000-00-00', 1280.00, 'Rupay', '12345', '169', '0000-00-00', '', 'Active', '', 0.00),
(28, 22, 15, 7, 0, 2516, 'Invoice', '2024-04-03', '0000-00-00', 0.00, 'Rupay', '12345', '169', '0000-00-00', '', 'Active', '', 0.00),
(29, 22, 15, 7, 0, 2517, 'Invoice', '2024-04-03', '0000-00-00', 0.00, 'Rupay', '12345', '165', '0000-00-00', '', 'Active', '', 0.00),
(30, 22, 15, 7, 0, 2518, 'Invoice', '2024-04-03', '0000-00-00', 0.00, 'American Express', '12345', '136', '0000-00-00', '', 'Active', '', 0.00),
(31, 22, 15, 7, 0, 2519, 'Invoice', '2024-04-03', '0000-00-00', 0.00, 'American Express', '12345', '136', '0000-00-00', '', 'Active', '', 0.00),
(32, 22, 15, 7, 0, 2520, 'Invoice', '2024-04-03', '0000-00-00', 0.00, 'Visa', '12345', '213', '0000-00-00', '', 'Active', '', 0.00),
(33, 22, 15, 7, 0, 2521, 'Invoice', '2024-04-03', '0000-00-00', 0.00, 'Rupay', '12345', '555', '0000-00-00', '', 'Active', '', 0.00),
(34, 22, 15, 7, 0, 2522, 'Invoice', '2024-04-03', '0000-00-00', 180.00, 'Rupay', '16161', '107', '0000-00-00', '', 'Active', '', 0.00),
(35, 22, 15, 7, 0, 2523, 'Invoice', '2024-04-03', '0000-00-00', 675.00, 'Rupay', '12345', '103', '0000-00-00', '', 'Active', '', 0.00),
(36, 22, 15, 7, 0, 2524, 'Invoice', '2024-04-03', '0000-00-00', 1280.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', '', 0.00),
(37, 22, 15, 7, 0, 2525, 'Invoice', '2024-04-03', '2024-04-03', 540.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', '', 0.00),
(38, 22, 15, 7, 0, 2526, 'Invoice', '2024-04-03', '0000-00-00', 112.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', '', 0.00),
(39, 22, 15, 7, 0, 2527, 'Invoice', '2024-04-03', '0000-00-00', 0.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', '', 0.00),
(40, 22, 15, 7, 0, 2528, 'Invoice', '2024-04-03', '0000-00-00', 90.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', '', 0.00),
(41, 22, 15, 7, 0, 2529, 'Invoice', '2024-04-03', '2024-04-03', 360.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', '', 0.00),
(42, 22, 15, 7, 0, 2530, 'Invoice', '2024-04-03', '0000-00-00', 137.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', 'yELLOW', 0.00),
(43, 22, 15, 7, 0, 2531, 'Invoice', '2024-04-03', '0000-00-00', 39.95, 'Rupay', '12345', '', '0000-00-00', '', 'Active', 'Orange', 7.05),
(44, 22, 15, 7, 0, 2532, 'Invoice', '2024-04-03', '2024-04-16', 949.45, 'Rupay', '12345', '', '0000-00-00', '', 'Active', 'Orange', 167.55),
(45, 22, 15, 7, 0, 2533, 'Invoice', '2024-04-03', '0000-00-00', 0.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', 'Orange', 0.00),
(46, 22, 15, 7, 0, 2534, 'Invoice', '2024-04-03', '0000-00-00', 359.55, 'Rupay', '12345', '', '0000-00-00', '', 'Active', 'Orange', 63.45),
(47, 22, 15, 7, 0, 2535, 'Invoice', '2024-04-03', '2024-04-03', 202.00, 'American Express', '12345', '', '0000-00-00', '', 'Active', '', 0.00),
(48, 22, 15, 7, 0, 2536, 'Invoice', '2024-04-03', '0000-00-00', 180.00, 'Rupay', '12245', '', '0000-00-00', '', 'Active', '', 0.00),
(49, 22, 15, 7, 0, 2537, 'Invoice', '2024-04-03', '0000-00-00', 225.00, 'Rupay', '98765', '', '0000-00-00', '', 'Active', '', 0.00),
(50, 22, 15, 7, 0, 2538, 'Invoice', '2024-04-03', '0000-00-00', 540.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', '', 0.00),
(51, 22, 15, 7, 0, 2539, 'Invoice', '2024-04-03', '0000-00-00', 810.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', '', 0.00),
(52, 22, 15, 7, 0, 2540, 'Invoice', '2024-04-03', '0000-00-00', 150.00, 'American Express', '12345', '', '0000-00-00', '', 'Active', '', 0.00),
(53, 22, 15, 7, 0, 2541, 'Invoice', '2024-04-03', '0000-00-00', 235.00, 'American Express', '12121', '', '0000-00-00', '', 'Active', '', 0.00),
(54, 22, 15, 7, 0, 2542, 'Invoice', '2024-04-03', '0000-00-00', 282.00, 'Rupay', '12544', '', '0000-00-00', '', 'Active', '', 0.00),
(55, 22, 15, 7, 0, 2543, 'Invoice', '2024-04-04', '0000-00-00', 1222.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', '', 0.00),
(56, 22, 15, 7, 0, 2544, 'Invoice', '2024-04-04', '2024-04-16', 329.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', '', 0.00),
(57, 22, 15, 7, 0, 2545, 'Invoice', '2024-04-05', '2024-04-16', 235.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', '', 0.00),
(58, 17, 17, 2, 0, 2546, 'Invoice', '2024-04-08', '0000-00-00', 360.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', '', 0.00),
(59, 24, 24, 7, 0, 2547, 'Invoice', '2024-04-17', '0000-00-00', 3098.00, 'Visa', '12345', '', '0000-00-00', '', 'Active', '', 0.00),
(60, 24, 24, 7, 0, 2548, 'Invoice', '2024-04-17', '0000-00-00', 448.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', '', 0.00),
(61, 24, 24, 7, 0, 2549, 'Invoice', '2024-04-17', '0000-00-00', 560.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', '', 0.00),
(62, 24, 24, 7, 0, 2550, 'Invoice', '2024-04-17', '0000-00-00', 106.40, 'Rupay', '12345', '', '0000-00-00', '', 'Active', 'White', 5.60),
(63, 24, 24, 7, 0, 2551, 'Invoice', '2024-04-17', '0000-00-00', 425.60, 'Rupay', '12345', '', '0000-00-00', '', 'Active', 'White', 22.40),
(64, 24, 24, 7, 0, 2552, 'Invoice', '2024-04-17', '0000-00-00', 76.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', 'White', 4.00),
(65, 24, 24, 7, 0, 2553, 'Invoice', '2024-04-17', '2024-04-17', 38.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', 'White', 2.00),
(66, 25, 25, 7, 0, 2554, 'Invoice', '2024-04-17', '0000-00-00', 28.00, 'American Express', '12345', '', '0000-00-00', '', 'Active', 'Yellow', 12.00),
(67, 25, 25, 7, 0, 2555, 'Invoice', '2024-04-17', '0000-00-00', 21.00, 'American Express', '12345', '', '0000-00-00', '', 'Active', 'Yellow', 9.00),
(68, 25, 25, 7, 0, 2556, 'Invoice', '2024-04-17', '0000-00-00', 21.00, 'American Express', '12345', '', '0000-00-00', '', 'Active', 'Yellow', 9.00),
(69, 25, 25, 7, 0, 2557, 'Invoice', '2024-04-17', '2024-04-17', 21.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', 'Yellow', 9.00),
(70, 25, 25, 7, 0, 2558, 'Invoice', '2024-04-17', '0000-00-00', 32.90, 'Rupay', '12345', '', '0000-00-00', '', 'Active', 'Yellow', 14.10),
(71, 25, 25, 7, 0, 2559, 'Invoice', '2024-04-17', '0000-00-00', 50.40, 'American Express', '12345', '', '0000-00-00', '', 'Active', 'Yellow', 21.60),
(72, 25, 25, 7, 0, 2560, 'Invoice', '2024-04-17', '2024-04-17', 31.50, 'Rupay', '12345', '', '0000-00-00', '', 'Active', 'Yellow', 13.50),
(73, 25, 25, 7, 0, 2561, 'Invoice', '2024-04-17', '2024-04-17', 32.90, 'Rupay', '12345', '', '0000-00-00', '', 'Active', 'Yellow', 14.10),
(74, 25, 25, 7, 0, 2562, 'Invoice', '2024-04-17', '2024-04-17', 50.40, 'Rupay', '12345', '', '0000-00-00', '', 'Active', 'Yellow', 21.60),
(75, 26, 26, 7, 0, 2563, 'Invoice', '2024-04-17', '2024-04-17', 571.20, 'Rupay', '12345', '', '0000-00-00', '', 'Active', 'Orange', 100.80),
(76, 26, 26, 7, 0, 2564, 'Invoice', '2024-04-17', '0000-00-00', 180.20, 'Rupay', '12345', '', '0000-00-00', '', 'Active', 'Orange', 31.80),
(77, 26, 26, 7, 0, 2565, 'Invoice', '2024-04-18', '0000-00-00', 127.50, 'Rupay', '12345', '', '0000-00-00', '', 'Active', 'Orange', 22.50),
(78, 28, 28, 7, 0, 2566, 'Invoice', '2024-04-18', '0000-00-00', 21.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', 'Yellow', 9.00),
(79, 29, 29, 7, 0, 2567, 'Invoice', '2025-04-07', '0000-00-00', 329.65, 'Rupay', '12345', '', '0000-00-00', '', 'Active', 'White', 17.35),
(80, 29, 29, 7, 0, 2568, 'Invoice', '2025-04-07', '2025-04-07', 99999999.99, 'Rupay', '12345', '', '0000-00-00', '', 'Active', 'White', 22501800.00),
(81, 29, 30, 7, 0, 2569, 'Invoice', '2025-04-07', '0000-00-00', 1482.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', 'White', 78.00),
(82, 31, 37, 2, 0, 2570, 'Invoice', '2025-07-12', '0000-00-00', 45.00, 'American Express', '12345', '', '0000-00-00', '', 'Active', '', 0.00),
(83, 31, 37, 2, 0, 2571, 'Invoice', '2025-07-12', '0000-00-00', 38.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', '', 0.00),
(84, 31, 37, 2, 0, 2572, 'Invoice', '2025-07-12', '0000-00-00', 0.00, 'Rupay', '12345', '', '0000-00-00', '', 'Active', '', 0.00),
(85, 31, 37, 2, 0, 2573, 'Invoice', '2025-07-12', '2025-07-12', 38.00, 'American Express', '12345', '', '0000-00-00', '', 'Active', '', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` int(11) NOT NULL,
  `sub_catid` int(11) NOT NULL,
  `catgory_title` varchar(25) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `sub_catid`, `catgory_title`, `description`, `status`) VALUES
(5, 0, 'Groceries', 'Groceries', 'Active'),
(53, 0, 'Sugar', 'Sugar Powder, Thin-thick Sugar ', 'Active'),
(54, 0, 'Pesticides', 'Different Types of Pesticide', 'Active'),
(55, 53, 'Sugar  powder', 'Best Quality Sugar Powder', 'Active'),
(56, 5, 'Rice', 'Different types of Rice with best Quality ', 'Active'),
(57, 5, 'Wheat', '....', 'Active'),
(58, 5, 'Biscuits', '...', 'Active'),
(59, 53, 'Stone Sugar', 'Here it will get best Sugar ', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city` varchar(25) NOT NULL,
  `pincodes` text NOT NULL,
  `description` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city`, `pincodes`, `description`, `status`) VALUES
(2, 'katraj', '416209', '  Bus stop', 'Active'),
(6, 'Gargoti', '416210', ' Main Road', 'Active'),
(7, 'Pune', '678003', '     Near Abdar Banglow', 'Active'),
(13, 'Kolhapur', '575001', '   R.K Nagar', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `custid` int(11) NOT NULL,
  `cust_type` varchar(25) NOT NULL,
  `custname` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob_no` varchar(15) NOT NULL,
  `cpassword` varchar(255) NOT NULL,
  `status` varchar(10) NOT NULL,
  `ration_card_type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`custid`, `cust_type`, `custname`, `email`, `mob_no`, `cpassword`, `status`, `ration_card_type`) VALUES
(19, 'Customer', 'sura', 'sura@gmail.com', '8830893445', 'da1c8cd0148957aef2d9d68f641f98ca', 'Active', 'Orange'),
(20, 'Customer', 'Bharat Sadalage', 'bha@gmail.com', '7889344567', 'd9ff5162516663927e9bacad1f8d5898', 'Active', 'Orange'),
(21, 'Customer', 'Namrata', 'nam@gmail.com', '7889344567', '6efdbd3f1e468e4f4dbf9c0e4cc8eccb', 'Active', 'White'),
(22, 'Customer', 'Arpita Sadfalage', 'sadalagearpita@gmail.com', '9420206233', '123456', 'Active', 'Orange'),
(24, 'Customer', 'Swati', 'swati@gmail.com', '1234567890', 'e10adc3949ba59abbe56e057f20f883e', 'Active', 'White'),
(25, 'Customer', 'Radha ', 'radha@gmail.com', '3398267856', 'e10adc3949ba59abbe56e057f20f883e', 'Active', 'Yellow'),
(26, 'Customer', 'Shubham Patil', 'shubham@gmail.com', '9420206233', 'e10adc3949ba59abbe56e057f20f883e', 'Active', 'Orange'),
(28, 'Customer', 'Harsh Patil', 'shubhampatil@gmail.com', '9134567890', 'e10adc3949ba59abbe56e057f20f883e', 'Active', 'Yellow'),
(29, 'Customer', 'keehan Pathan', 'keehanpathan@gmail.com', '9960012790', '9608c39c0697ec77595c294ca10845ac', 'Active', 'White'),
(30, 'Customer', 'Sharavari desai', 'sharavari@gmail.com', '9960012790', 'e10adc3949ba59abbe56e057f20f883e', 'Active', 'Yellow'),
(31, 'Customer', 'Ashlesha ', 'ashlesha@gmail.com', '9960012790', 'e10adc3949ba59abbe56e057f20f883e', 'Active', NULL),
(32, 'Customer', 'Sharayu', 'Sharayu@gmail.com', '9960012790', 'e10adc3949ba59abbe56e057f20f883e', 'Active', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prodid` int(10) NOT NULL,
  `catid` int(10) NOT NULL,
  `prodname` varchar(100) NOT NULL,
  `price` double(10,2) NOT NULL,
  `discount` float(10,2) NOT NULL,
  `unit` varchar(25) NOT NULL,
  `stockstatus` varchar(20) NOT NULL,
  `prodspecif` text NOT NULL,
  `images` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prodid`, `catid`, `prodname`, `price`, `discount`, `unit`, `stockstatus`, `prodspecif`, `images`, `status`) VALUES
(20, 56, 'Bvk brown rice 5 kg', 400.00, 0.00, 'KG', 'Available', 'Bvk brown rice 5 kg\r\nBrown\r\n5kg bags', 'a:1:{i:0;s:15:\"17133562737.png\";}', 'Active'),
(21, 44, 'Fresho Carrot - Orange, 5', 38.00, 10.00, '1/2 Gm', 'Avaiable', 'Fresho Carrot - Orange\r\nAbout the Product\r\nA popular sweet-tasting root vegetable, Carrots are narrow and cone shaped.\r\nThey have thick, fleshy, deeply colored root, which grows underground, and feathery green leaves that emerge above the ground.\r\nWhile these greens are fresh tasting and slightly bitter, the carrot roots are crunchy textured with a sweet and minty aromatic taste.\r\nFresho brings you the flavour and richness of the finest crispy and juicy carrots that are locally grown and the best of the region.\r\nDo not forget to check our delicious recipe - https://www.bigbasket.com/cookbook/recipes/912/carrot-halwa/\r\nBenefits\r\nCarrots provide the highest content of vitamin A of all the vegetables.\r\nBrightly orange colored carrots have pigments like carotenoids and flavonoids, that provide several antioxidants and act as a defense against cancer.\r\nThey aid in maintaining oral health and also decrease the risk of stroke and other heart diseases.', 'a:1:{i:0;s:18:\"1630925096cara.jpg\";}', 'Active'),
(23, 43, 'Kashmiri Apple\r\n', 140.00, 0.00, '4 pcs', 'Avaiable', 'Apple is one of the most popular fruits worldwide. It is rich in Fiber, Potassium, Vitamin C, Vitamin K, Carbs and Calories. It also consists of soluble fibers that helps in weight loss and maintaining gut health. Eating apples lower the risks of major diseases like Cancer, Diabetes etc. You can include Apples as a part of your diet in the form of Salads, Smoothies, Pies and several other desserts. Buy Apple Royal Gala (4 pcs) (Approx 500 g - 700 g) online now.', 'a:1:{i:0;s:51:\"1631005692apple-royal-gala-4-pcs-0-20201118 (1).jpg\";}', 'Active'),
(24, 44, 'Kashmiri Carrot', 50.00, 0.00, '1/2 Gm', 'Avaiable', 'Fresho Carrot - Orange\r\nAbout the Product\r\nA popular sweet-tasting root vegetable, Carrots are narrow and cone shaped.\r\nThey have thick, fleshy, deeply colored root, which grows underground, and feathery green leaves that emerge above the ground.\r\nWhile these greens are fresh tasting and slightly bitter, the carrot roots are crunchy textured with a sweet and minty aromatic taste.\r\nFresho brings you the flavour and richness of the finest crispy and juicy carrots that are locally grown and the best of the region.\r\nDo not forget to check our delicious recipe - https://www.bigbasket.com/cookbook/recipes/912/carrot-halwa/\r\nBenefits\r\nCarrots provide the highest content of vitamin A of all the vegetables.\r\nBrightly orange colored carrots have pigments like carotenoids and flavonoids, that provide several antioxidants and act as a defense against cancer.\r\nThey aid in maintaining oral health and also decrease the risk of stroke and other heart diseases.', 'a:1:{i:0;s:18:\"1630925096cara.jpg\";}', 'Active'),
(25, 21, 'Bvk brown rice 10 kg', 800.00, 0.00, 'KG', 'Avaiable', 'Bvk brown rice 5 kg\r\nBrown\r\n5kg bags', 'a:1:{i:0;s:23:\"1630924176shopping.webp\";}', 'Active'),
(26, 21, 'Bvk Brown Rice 25 KG', 2000.00, 0.00, '25 KG', 'Out Of Stock', 'Bvk brown rice 5 kg\r\nBrown\r\n5kg bags', 'a:1:{i:0;s:23:\"1630924176shopping.webp\";}', 'Active'),
(27, 45, 'Britania Rusk', 32.00, 5.00, '1pc', 'Avaiable', 'Premium Bake Rusk with goodness of wheat is been a traditional tea companion and is loved by many. Britannia Toast Tea Premium Bake Rusk is as crispy as your traditional one, but with a hint of elaichi and right amount of sweetness, it\'s taste will leave you amazed. Britannia Toast Tea Premium Bake Rusk for long has been a part of every home, sharing those moments of joy.', 'a:1:{i:0;s:69:\"1631009987premium-sooji-rusk-britannia-original-imag5j4ur2fbjfpf.jpeg\";}', 'Active'),
(28, 46, 'Origo Fresh Bajra Pearl Millet', 37.00, 0.00, '1 KG', 'Avaiable', 'Brand\r\nOrigo Fresh\r\nModel Name\r\nBajra\r\nType\r\nPearl Millet\r\nQuantity\r\n1 kg\r\nMaximum Shelf Life\r\n4 Months\r\nIs Perishable\r\nNo\r\nOrganic\r\nNo\r\nNutrient Content\r\nNA\r\nEAN\r\n8906059935923', 'a:1:{i:0;s:73:\"16310103091-bajra-pearl-millet-origo-fresh-original-imaf8abbgbdfdumk.jpeg\";}', 'Active'),
(29, 57, 'Chakki Atta', 285.00, 0.00, '10 KG', 'Available', 'Chakki Atta is freshly made from the choicest grains. It is carefully ground using modern chakki technique. The taste and nutrition ensure that this Atta contains 0% Maida and it gives you softer rotis for a long time. Buy Chakki Atta online now!', 'a:1:{i:0;s:15:\"17133566103.png\";}', 'Active'),
(30, 48, 'Pepsi', 100.00, 10.00, 'Ltr', 'Avaiable', 'Pepsi is a carbonated soft drink manufactured by PepsiCo. Originally created and developed in 1893 by Caleb Bradham and introduced as Brad\'s Drink, it was renamed as Pepsi-Cola in 1898, and then shortened to Pepsi in 1961.', 'a:1:{i:0;s:44:\"1632676411750ml-pepsi-cold-drink-500x500.jpg\";}', 'Active'),
(31, 58, 'Bread', 50.00, 10.00, '10 pc', 'Available', 'Kit Kat is a chocolate-covered wafer bar confection created by Rowntree\'s of York, United Kingdom, and is now produced globally by Nestlé, except in the United States, where it is made under license by the H. B. Reese Candy Company, a division of the Hershey Company.', 'a:1:{i:0;s:16:\"171230633513.png\";}', 'Active'),
(32, 49, 'Mentos', 125.00, 10.00, '1 pc', 'Avaiable', 'Mentos (stylised as mentos) are a brand of packaged scotch mints sold in stores and vending machines. ', 'a:1:{i:0;s:34:\"163267754891Vg3t5kqEL._SL1500_.jpg\";}', 'Active'),
(33, 49, 'Boomer', 5.00, 0.00, '1pc', 'Out Of Stock', 'With Wrigley\'s Boomer Strawberry Flavoured Bubble Gum, treat yourself to the explosively fruity flavor of a fun and delicious bubble gum. This delicious chewing', 'a:1:{i:0;s:21:\"1632677667images.jfif\";}', 'Active'),
(34, 49, 'Cadbury Choclairs Gold 117 Candies', 400.00, 0.00, '725 Gm', 'Avaiable', 'The luscious new candy contains an indulgent brownie flavor in its caramel and rich Cadbury chocolate at its center\r\nA sweet home pack of your favorite chocolatiers\r\nExperience the yummy flavor of chocolate as soon as you bite into the candy', 'a:1:{i:0;s:34:\"163267787271VoCACMrSL._SL1500_.jpg\";}', 'Inactive'),
(37, 57, 'wheat', 400.00, 47.00, '1', 'Available', '...', 'a:1:{i:0;s:20:\"1712305075wheat.jpeg\";}', 'Active'),
(38, 59, 'Sugar', 74.00, 2.00, '1 kg', 'Available', '....', 'a:1:{i:0;s:20:\"1712306754Sugar.jpeg\";}', 'Active'),
(39, 55, 'Sugar', 40.00, 4.00, '1 kg', 'Available', ',...', 'a:1:{i:0;s:15:\"17133564028.png\";}', 'Active'),
(40, 55, 'Sugar', 74.00, 12.00, '10', 'Available', 'YGYYG', 'a:1:{i:0;s:15:\"17440050735.png\";}', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `purchid` int(10) NOT NULL,
  `prodid` int(10) NOT NULL,
  `typeid` int(10) NOT NULL,
  `custid` int(10) NOT NULL,
  `bilid` int(10) NOT NULL,
  `entry_type` varchar(25) NOT NULL,
  `qty` float(10,2) NOT NULL,
  `price` double(10,2) NOT NULL,
  `discount_price` float(10,2) NOT NULL,
  `comment` text NOT NULL,
  `purchasestatus` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`purchid`, `prodid`, `typeid`, `custid`, `bilid`, `entry_type`, `qty`, `price`, `discount_price`, `comment`, `purchasestatus`) VALUES
(1, 54, 12, 65, 12, '', 12.00, 15.00, 1.00, '', ''),
(2, 20, 7, 1, 2, 'Purchase', 10.00, 50.00, 0.00, '', 'Active'),
(3, 24, 0, 1, 2, 'Purchase', 25.00, 40.00, 0.00, '', 'Active'),
(4, 27, 0, 1, 2, 'Purchase', 50.00, 25.00, 0.00, '', 'Active'),
(5, 30, 20, 1, 3, 'Purchase', 10.00, 30.00, 0.00, '', 'Active'),
(6, 30, 21, 1, 3, 'Purchase', 25.00, 75.00, 0.00, '', 'Active'),
(7, 31, 0, 1, 3, 'Purchase', 100.00, 40.00, 0.00, '', 'Active'),
(8, 32, 0, 1, 3, 'Purchase', 100.00, 100.00, 0.00, '', 'Active'),
(9, 33, 0, 1, 3, 'Purchase', 50.00, 3.00, 0.00, '', 'Active'),
(10, 21, 16, 1, 4, 'Purchase', 10.00, 100.00, 0.00, '', 'Active'),
(24, 30, 20, 13, 6, 'Invoice', 5.00, 45.00, 10.00, '', 'Active'),
(25, 30, 22, 13, 6, 'Invoice', 10.00, 150.00, 25.00, '', 'Active'),
(26, 31, 0, 13, 6, 'Invoice', 20.00, 50.00, 10.00, '', 'Active'),
(27, 32, 0, 13, 6, 'Invoice', 1.00, 125.00, 10.00, '', 'Active'),
(28, 30, 20, 13, 7, 'Invoice', 10.00, 45.00, 10.00, '', 'Active'),
(29, 30, 23, 13, 7, 'Invoice', 1.00, 300.00, 0.00, '', 'Active'),
(30, 32, 0, 13, 7, 'Invoice', 10.00, 125.00, 10.00, '', 'Active'),
(31, 35, 0, 1, 8, 'Purchase', 100.00, 10.00, 0.00, '', 'Active'),
(32, 36, 25, 1, 8, 'Purchase', 10.00, 40.00, 0.00, '', 'Active'),
(33, 33, 0, 1, 8, 'Purchase', 1000.00, 5.00, 0.00, '', 'Active'),
(34, 36, 25, 15, 9, 'Invoice', 10.00, 50.00, 10.00, '', 'Active'),
(35, 35, 0, 15, 9, 'Invoice', 25.00, 150.00, 10.00, '', 'Active'),
(38, 20, 7, 2, 10, 'Invoice', 1.00, 100.00, 10.00, '', 'Active'),
(41, 22, 0, 9, 11, 'Invoice', 5.00, 140.00, 5.00, '', 'Active'),
(42, 31, 0, 9, 11, 'Invoice', 3.00, 50.00, 10.00, '', 'Active'),
(43, 23, 0, 9, 11, 'Invoice', 10.00, 140.00, 0.00, '', 'Active'),
(44, 29, 0, 9, 12, 'Invoice', 1.00, 285.00, 10.00, '', 'Active'),
(45, 20, 7, 9, 12, 'Invoice', 1.00, 100.00, 10.00, '', 'Active'),
(46, 21, 16, 9, 13, 'Invoice', 1.00, 50.00, 5.00, '', 'Active'),
(47, 31, 0, 9, 13, 'Invoice', 1.00, 50.00, 10.00, '', 'Active'),
(48, 21, 16, 9, 14, 'Invoice', 1.00, 50.00, 5.00, '', 'Active'),
(55, 29, 0, 18, 15, 'Invoice', 1.00, 285.00, 10.00, '', 'Active'),
(56, 30, 20, 19, 16, 'Invoice', 1.00, 45.00, 10.00, '', 'Active'),
(57, 27, 0, 19, 17, 'Invoice', 3.00, 32.00, 5.00, '', 'Active'),
(58, 29, 0, 19, 18, 'Invoice', 2.00, 285.00, 10.00, '', 'Active'),
(59, 27, 0, 20, 19, 'Invoice', 5.00, 32.00, 5.00, '', 'Active'),
(60, 32, 0, 20, 20, 'Invoice', 9.00, 125.00, 10.00, '', 'Active'),
(61, 32, 0, 20, 22, 'Invoice', 4.00, 125.00, 10.00, '', 'Active'),
(62, 32, 0, 20, 23, 'Invoice', 1.00, 125.00, 10.00, '', 'Active'),
(63, 21, 16, 20, 24, 'Invoice', 7.00, 50.00, 5.00, '', 'Active'),
(64, 32, 0, 20, 0, 'Invoice', 4.00, 125.00, 10.00, '', 'Pending'),
(65, 31, 0, 20, 0, 'Invoice', 1.00, 50.00, 10.00, '', 'Pending'),
(66, 20, 7, 22, 25, 'Invoice', 5.00, 100.00, 10.00, '', 'Active'),
(67, 30, 20, 22, 26, 'Invoice', 6.00, 45.00, 10.00, '', 'Active'),
(68, 29, 0, 22, 27, 'Invoice', 5.00, 285.00, 10.00, '', 'Active'),
(69, 27, 0, 22, 34, 'Invoice', 6.00, 32.00, 5.00, '', 'Active'),
(70, 35, 0, 22, 35, 'Invoice', 5.00, 150.00, 10.00, '', 'Active'),
(71, 29, 0, 22, 36, 'Invoice', 5.00, 285.00, 10.00, '', 'Active'),
(72, 35, 0, 22, 37, 'Invoice', 4.00, 150.00, 10.00, '', 'Active'),
(73, 32, 0, 22, 38, 'Invoice', 1.00, 125.00, 10.00, '', 'Active'),
(74, 20, 7, 22, 40, 'Invoice', 1.00, 100.00, 10.00, '', 'Active'),
(75, 20, 7, 22, 41, 'Invoice', 4.00, 100.00, 10.00, '', 'Active'),
(76, 21, 16, 22, 42, 'Invoice', 1.00, 50.00, 5.00, '', 'Active'),
(78, 20, 7, 22, 42, 'Invoice', 1.00, 100.00, 10.00, '', 'Active'),
(79, 21, 16, 22, 43, 'Invoice', 1.00, 50.00, 5.00, '', 'Active'),
(80, 27, 0, 22, 44, 'Invoice', 8.00, 32.00, 5.00, '', 'Active'),
(82, 21, 16, 22, 44, 'Invoice', 11.00, 50.00, 5.00, '', 'Active'),
(83, 31, 0, 22, 44, 'Invoice', 8.00, 50.00, 10.00, '', 'Active'),
(84, 21, 16, 22, 46, 'Invoice', 9.00, 50.00, 5.00, '', 'Active'),
(87, 20, 7, 22, 47, 'Invoice', 1.00, 100.00, 10.00, '', 'Active'),
(88, 32, 0, 22, 47, 'Invoice', 1.00, 125.00, 10.00, '', 'Active'),
(89, 31, 0, 22, 48, 'Invoice', 4.00, 50.00, 10.00, '', 'Active'),
(90, 31, 0, 22, 49, 'Invoice', 5.00, 50.00, 10.00, '', 'Active'),
(91, 20, 7, 22, 50, 'Invoice', 6.00, 100.00, 10.00, '', 'Active'),
(92, 20, 7, 22, 51, 'Invoice', 9.00, 100.00, 10.00, '', 'Active'),
(93, 27, 0, 22, 52, 'Invoice', 5.00, 32.00, 5.00, '', 'Active'),
(94, 21, 16, 22, 53, 'Invoice', 5.00, 50.00, 5.00, '', 'Active'),
(95, 21, 16, 22, 54, 'Invoice', 6.00, 50.00, 5.00, '', 'Active'),
(97, 21, 16, 22, 55, 'Invoice', 26.00, 50.00, 5.00, '', 'Active'),
(98, 21, 16, 22, 56, 'Invoice', 7.00, 50.00, 5.00, '', 'Active'),
(99, 21, 16, 22, 57, 'Invoice', 5.00, 50.00, 5.00, '', 'Active'),
(100, 38, 0, 17, 58, 'Invoice', 5.00, 74.00, 2.00, '', 'Active'),
(101, 20, 27, 24, 59, 'Invoice', 5.00, 500.00, 10.00, '', 'Active'),
(102, 37, 0, 24, 59, 'Invoice', 4.00, 400.00, 47.00, '', 'Active'),
(103, 32, 0, 24, 60, 'Invoice', 4.00, 125.00, 10.00, '', 'Active'),
(104, 32, 0, 24, 61, 'Invoice', 5.00, 125.00, 10.00, '', 'Active'),
(105, 32, 0, 24, 62, 'Invoice', 1.00, 125.00, 10.00, '', 'Active'),
(106, 32, 0, 24, 63, 'Invoice', 4.00, 125.00, 10.00, '', 'Active'),
(107, 30, 20, 24, 64, 'Invoice', 2.00, 45.00, 10.00, '', 'Active'),
(108, 30, 20, 24, 65, 'Invoice', 1.00, 45.00, 10.00, '', 'Active'),
(111, 30, 20, 25, 66, 'Invoice', 1.00, 45.00, 10.00, '', 'Active'),
(113, 27, 0, 25, 67, 'Invoice', 1.00, 32.00, 5.00, '', 'Active'),
(114, 27, 0, 25, 68, 'Invoice', 1.00, 32.00, 5.00, '', 'Active'),
(115, 27, 0, 25, 69, 'Invoice', 1.00, 32.00, 5.00, '', 'Active'),
(116, 21, 16, 25, 70, 'Invoice', 1.00, 50.00, 5.00, '', 'Active'),
(118, 38, 0, 25, 71, 'Invoice', 1.00, 74.00, 2.00, '', 'Active'),
(119, 31, 0, 25, 72, 'Invoice', 1.00, 50.00, 10.00, '', 'Active'),
(120, 21, 16, 25, 73, 'Invoice', 1.00, 50.00, 5.00, '', 'Active'),
(121, 38, 0, 25, 74, 'Invoice', 1.00, 74.00, 2.00, '', 'Active'),
(122, 32, 0, 26, 75, 'Invoice', 6.00, 125.00, 10.00, '', 'Active'),
(124, 37, 0, 26, 76, 'Invoice', 1.00, 400.00, 47.00, '', 'Active'),
(125, 27, 0, 26, 77, 'Invoice', 5.00, 32.00, 5.00, '', 'Active'),
(126, 27, 0, 26, 0, 'Invoice', 1.00, 32.00, 5.00, '', 'Pending'),
(128, 27, 0, 28, 78, 'Invoice', 1.00, 32.00, 5.00, '', 'Active'),
(129, 32, 0, 28, 0, 'Invoice', 1.00, 125.00, 10.00, '', 'Pending'),
(130, 21, 16, 29, 79, 'Invoice', 1.00, 50.00, 5.00, '', 'Active'),
(131, 30, 23, 29, 79, 'Invoice', 1.00, 300.00, 0.00, '', 'Active'),
(132, 38, 0, 29, 80, 'Invoice', 500.00, 74.00, 2.00, '', 'Active'),
(133, 31, 0, 29, 80, 'Invoice', 10000000.00, 50.00, 10.00, '', 'Active'),
(134, 30, 21, 29, 81, 'Invoice', 4.00, 90.00, 20.00, '', 'Active'),
(135, 37, 0, 29, 81, 'Invoice', 6.00, 400.00, 47.00, '', 'Active'),
(136, 30, 21, 29, 0, 'Invoice', 1.00, 90.00, 20.00, '', 'Pending'),
(137, 32, 0, 29, 0, 'Invoice', 1.00, 125.00, 10.00, '', 'Pending'),
(138, 30, 20, 29, 0, 'Invoice', 1.00, 45.00, 10.00, '', 'Pending'),
(139, 27, 0, 29, 0, 'Invoice', 1.00, 32.00, 5.00, '', 'Pending'),
(140, 31, 0, 31, 82, 'Invoice', 1.00, 50.00, 10.00, '', 'Active'),
(141, 39, 0, 31, 83, 'Invoice', 1.00, 40.00, 4.00, '', 'Active'),
(142, 39, 0, 31, 85, 'Invoice', 1.00, 40.00, 4.00, '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffid` int(10) NOT NULL,
  `city_id` int(11) NOT NULL,
  `staff_type` varchar(25) NOT NULL,
  `staffname` varchar(25) NOT NULL,
  `loginid` varchar(30) NOT NULL,
  `apassword` varchar(255) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffid`, `city_id`, `staff_type`, `staffname`, `loginid`, `apassword`, `emailid`, `contactno`, `status`) VALUES
(1, 0, 'Admin', 'Mr. admin', 'admin', '1234', 'admin@gmail.com', '8830893445', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `typeid` int(10) NOT NULL,
  `prodid` int(10) NOT NULL,
  `color` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `cost` double(10,2) NOT NULL,
  `discount` double(10,2) NOT NULL,
  `unit` varchar(25) NOT NULL,
  `stockstatus` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`typeid`, `prodid`, `color`, `image`, `cost`, `discount`, `unit`, `stockstatus`, `status`) VALUES
(7, 20, 'Red', '1631874648apple-royal-gala-4-pcs-0-20201118 (1).jpg', 100.00, 10.00, 'KG', 'Available', 'Active'),
(16, 21, '', '1631875014', 50.00, 5.00, '1 KG', 'Available', 'Active'),
(17, 21, '', '1631875043', 100.00, 10.00, '2KG', 'Available', 'Active'),
(18, 21, '', '1631875098', 150.00, 25.00, '3 KG', 'Available', 'Active'),
(19, 21, '', '1631875127', 200.00, 50.00, '5 KGs', 'Available', 'Active'),
(20, 30, '', '1632676628750ml-pepsi-cold-drink-500x500.jpg', 45.00, 10.00, '1/2 Ltr', 'Available', 'Active'),
(21, 30, '', '1632676663750ml-pepsi-cold-drink-500x500.jpg', 90.00, 20.00, '1 Ltr', 'Available', 'Active'),
(22, 30, '', '1632680929640x640.jpg', 150.00, 25.00, '2 Ltr', 'Available', 'Active'),
(23, 30, '', '1632676920download (3).jfif', 300.00, 0.00, '5 Ltr', 'Out of Stock', 'Active'),
(24, 30, '', '1632676825download (2).jfif', 5000.00, 0.00, '10 Ltr', 'Available', 'Inactive'),
(25, 36, '', '163264972710000148_30-fresho-onion.jpg', 50.00, 10.00, '1 kg', 'Available', 'Active'),
(26, 36, '', '163264975110000148_30-fresho-onion.jpg', 100.00, 10.00, '2 kg', 'Available', 'Active'),
(27, 20, '\'', '1712087144', 500.00, 10.00, '10', '', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`addressid`),
  ADD KEY `custid` (`custid`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`bilid`),
  ADD KEY `custid` (`custid`),
  ADD KEY `addressid` (`addressid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prodid`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`purchid`),
  ADD KEY `prodid` (`prodid`,`typeid`,`custid`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staffid`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`typeid`),
  ADD KEY `prodid` (`prodid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `addressid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `bilid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `custid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `prodid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `purchid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staffid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `typeid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
