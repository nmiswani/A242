-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2025 at 05:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admins`
--

CREATE TABLE `tbl_admins` (
  `admin_id` int(5) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admins`
--

INSERT INTO `tbl_admins` (`admin_id`, `admin_email`, `admin_password`) VALUES
(2, 'adminpomm@gmail.com', 'f865b53623b121fd34ee5426c792e5c33af8c227');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carts`
--

CREATE TABLE `tbl_carts` (
  `cart_id` int(5) NOT NULL,
  `buyer_id` varchar(5) NOT NULL,
  `product_id` varchar(5) NOT NULL,
  `cart_qty` int(5) NOT NULL,
  `cart_status` varchar(10) NOT NULL,
  `cart_date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_carts`
--

INSERT INTO `tbl_carts` (`cart_id`, `buyer_id`, `product_id`, `cart_qty`, `cart_status`, `cart_date`) VALUES
(6, '2', '3', 1, 'New', '2025-01-23 21:50:09.780245'),
(8, '1', '6', 1, 'New', '2025-03-20 03:01:37.482346');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clerks`
--

CREATE TABLE `tbl_clerks` (
  `clerk_id` int(5) NOT NULL,
  `clerk_email` varchar(50) NOT NULL,
  `clerk_password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_clerks`
--

INSERT INTO `tbl_clerks` (`clerk_id`, `clerk_email`, `clerk_password`) VALUES
(2, 'clerkpomm@gmail.com', 'f005d7083cef0cf921ec77254b197293da516661');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customers`
--

CREATE TABLE `tbl_customers` (
  `customer_id` int(5) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_phone` varchar(12) NOT NULL,
  `customer_password` varchar(40) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `reset_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_customers`
--

INSERT INTO `tbl_customers` (`customer_id`, `customer_email`, `customer_name`, `customer_phone`, `customer_password`, `profile_image`, `reset_code`) VALUES
(1, 'nur@gmail.com', 'nur', '0192793200', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'assets/profileimages/1.jpg', NULL),
(2, 'wani@gmail.com', 'wani', '0123456789', '20eabe5d64b0e216796e834f52d61fd0b70332fc', NULL, NULL),
(3, 'ahmad@gmail.com', 'ahmad', '0123456789', '7c4a8d09ca3762af61e59520943dc26494f8941b', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(5) NOT NULL,
  `product_title` varchar(200) NOT NULL,
  `product_desc` varchar(2000) NOT NULL,
  `product_price` decimal(6,2) NOT NULL,
  `product_qty` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_title`, `product_desc`, `product_price`, `product_qty`) VALUES
(1, 'Casing Phone', 'Protective case for your phone, offering durability and style.', 25.00, 0),
(2, 'Adapter', 'A versatile travel adapter for multiple plug types, ensuring connectivity worldwide.', 15.00, 2),
(4, 'Pendrive', 'A compact USB drive for quick data transfer and storage on the go.', 10.00, 4),
(5, 'Powerbank', 'A portable charger for your devices, ensuring you never run out of battery.', 30.00, 2),
(6, 'Tablet Case', 'A protective case for tablets, combining style with functionality to keep your device safe.', 18.00, 7),
(7, 'CD', 'A digital music or data storage medium, compatible with most CD players and computers.', 8.00, 3),
(8, 'Phone Strap', 'A comfortable and secure strap for your phone, offering convenience and portability.', 5.00, 6),
(9, 'Mouse Wireless', 'A wireless mouse that provides freedom of movement and convenience for your computer.', 25.00, 2),
(10, 'Headphone', 'High-quality headphones offering immersive sound and noise-cancellation features.', 50.00, 5),
(11, 'Keyboard', 'A responsive keyboard for typing, gaming, and general computer use with ergonomic design.', 40.00, 10),
(12, 'Earbud', 'Compact wireless earbuds offering great sound quality and comfort for on-the-go use.', 35.00, 2),
(13, 'Laptop Bag', 'A durable and stylish bag designed to protect and carry your laptop with ease.', 45.00, 1),
(14, 'Protector', 'A high-quality wireless microphone for clear, distortion-free audio recording.', 60.00, 9),
(16, 'Random', 'Randomly can be used whenever and where ever.', 10.00, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admins`
--
ALTER TABLE `tbl_admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `admin_email` (`admin_email`);

--
-- Indexes for table `tbl_carts`
--
ALTER TABLE `tbl_carts`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_clerks`
--
ALTER TABLE `tbl_clerks`
  ADD PRIMARY KEY (`clerk_id`),
  ADD UNIQUE KEY `clerk_email` (`clerk_email`);

--
-- Indexes for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_email` (`customer_email`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admins`
--
ALTER TABLE `tbl_admins`
  MODIFY `admin_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_carts`
--
ALTER TABLE `tbl_carts`
  MODIFY `cart_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_clerks`
--
ALTER TABLE `tbl_clerks`
  MODIFY `clerk_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_customers`
--
ALTER TABLE `tbl_customers`
  MODIFY `customer_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
