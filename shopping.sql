-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2023 at 09:51 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--
CREATE DATABASE IF NOT EXISTS `shopping` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shopping`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2017-01-24 16:21:18', '01-07-2020 03:25:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(8, 'Fruits and Vegetables', 'Glimpse of freshness', '2023-04-06 22:55:37', '07-04-2023 04:25:54 AM'),
(9, 'Meat And Fish', 'Authentic', '2023-04-07 00:22:59', NULL),
(10, 'Cooking', 'All items you need...', '2023-04-07 00:34:17', NULL),
(11, 'Snacks', 'Fill your sudden hunger...', '2023-04-07 00:35:51', NULL),
(12, 'Frozen', 'Authentic', '2023-04-07 00:37:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

DROP TABLE IF EXISTS `ordertrackhistory`;
CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

DROP TABLE IF EXISTS `productreviews`;
CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(22, 7, 13, 'Lays', 'Pepsico', 130, 140, '<br>', 'Lays1.jpg', 'Lays1.jpg', 'Lays1.jpg', 20, 'In Stock', '2023-04-06 22:54:22', NULL),
(23, 8, 14, 'Potato', 'Deshi', 25, 30, 'Fresh Potato', 'dke7wzk3.png', 'dke7wzk3.png', 'dke7wzk3.png', 10, 'In Stock', '2023-04-06 22:59:34', NULL),
(25, 8, 14, 'Red Tomato', 'Deshi', 25, 30, 'fresh&nbsp;', '8062f3xo.png', '8062f3xo.png', '8062f3xo.png', 5, 'In Stock', '2023-04-06 23:46:57', NULL),
(26, 8, 14, 'Dhundul', 'Deshi', 55, 60, 'Fresh', '8dnug4w9.png', '8dnug4w9.png', '8dnug4w9.png', 5, 'In Stock', '2023-04-07 00:15:29', NULL),
(27, 8, 14, 'Mishti Kumra', 'Deshi', 40, 45, 'Fresh', 'i4i45xjr.png', 'i4i45xjr.png', 'i4i45xjr.png', 5, 'In Stock', '2023-04-07 00:16:12', NULL),
(28, 8, 15, 'Tormuj', 'Deshi', 345, 360, 'Fresh', 'am9utpkd.png', 'am9utpkd.png', 'am9utpkd.png', 10, 'In Stock', '2023-04-07 10:12:32', NULL),
(29, 8, 15, 'Shagor Kola', 'Deshi', 110, 120, 'Fresh', 'l9ygu21j.png', 'l9ygu21j.png', 'l9ygu21j.png', 10, 'In Stock', '2023-04-07 10:13:25', NULL),
(30, 8, 15, 'Daab ( Each Piece)', 'Deshi', 95, 100, 'Authentic', 'lng386cc.png', 'lng386cc.png', 'lng386cc.png', 10, 'In Stock', '2023-04-07 10:26:41', NULL),
(31, 8, 15, 'Paka pepe', 'Deshi', 120, 150, 'Deshi', 'b9k8blcf.png', 'b9k8blcf.png', 'b9k8blcf.png', 10, 'In Stock', '2023-04-07 10:29:56', NULL),
(32, 9, 16, 'Shonali ( 1kg (-/+)50 gm)', 'Hybrid', 400, 420, 'Fresh', '6cuu0c79.png', '6cuu0c79.png', '6cuu0c79.png', 20, 'In Stock', '2023-04-07 10:38:03', NULL),
(33, 9, 16, 'Broiler  without skin ( 1kg (-/+) 50 gm)', 'Hybrid', 275, 280, 'Fresh', 'dsw2vdlu.png', 'dsw2vdlu.png', 'dsw2vdlu.png', 10, 'In Stock', '2023-04-07 10:39:17', NULL),
(34, 9, 16, 'Broiler  with skin ( 1kg (-/+) 50 gm)', 'Hybrid', 260, 270, 'Fresh', 'xiqo3q5p.png', 'xiqo3q5p.png', 'xiqo3q5p.png', 10, 'In Stock', '2023-04-07 10:41:25', NULL),
(35, 9, 17, 'Pabda  ( 1kg (-/+) 50 gm)', 'Deshi', 420, 450, 'Fresh', 'mbdm4vtd.png', 'mbdm4vtd.png', 'mbdm4vtd.png', 20, 'In Stock', '2023-04-07 10:42:16', NULL),
(36, 9, 17, 'Rui ( 1kg (-/+) 50 gm)', 'Hybrid', 345, 350, 'Fresh', '7t7ve3m8.png', '7t7ve3m8.png', '7t7ve3m8.png', 10, 'In Stock', '2023-04-07 10:43:07', NULL),
(37, 9, 17, 'Asto Ilish  ( 500gm (-/+) 50 gm)', 'Fresh', 490, 500, 'Fresh', 'erlije6v.png', 'erlije6v.png', 'erlije6v.png', 10, 'In Stock', '2023-04-07 10:44:43', NULL),
(38, 9, 18, 'Beef ( 1kg (-/+) 50 gm)', 'Fresh', 810, 820, 'Fresh', '295q1mmt.png', '295q1mmt.png', '295q1mmt.png', 20, 'In Stock', '2023-04-07 10:47:21', NULL),
(39, 9, 18, 'Mutton ( 1kg (-/+) 50 gm)', 'Fresh', 950, 1100, 'Fresh', '724dfewg.png', '724dfewg.png', '724dfewg.png', 20, 'In Stock', '2023-04-07 10:48:23', NULL),
(40, 9, 18, 'Quail (4 pcs)', 'Fresh', 220, 280, 'Fresh', 'iwdxxzhp.png', 'iwdxxzhp.png', 'iwdxxzhp.png', 15, 'In Stock', '2023-04-07 10:49:42', NULL),
(41, 12, 25, 'Chicken Nuggets', 'Golde Harvest', 235, 260, 'Best', '02wf36px.png', '02wf36px.png', '02wf36px.png', 10, 'In Stock', '2023-04-07 11:08:57', NULL),
(42, 12, 25, 'Chicken Sausage', 'Golde Harvest', 250, 260, 'Tasty', '3bkvv6j8.png', '3bkvv6j8.png', '3bkvv6j8.png', 10, 'In Stock', '2023-04-07 11:09:48', NULL),
(43, 12, 25, 'Chicken Samosa', 'AG', 215, 220, 'Fresh', 'zmhoz1eq.png', 'zmhoz1eq.png', 'zmhoz1eq.png', 10, 'In Stock', '2023-04-07 11:10:40', NULL),
(44, 12, 25, 'Paratha', 'Golde Harvest', 250, 260, 'Fresh', 'ynfzp6ti.png', 'ynfzp6ti.png', 'ynfzp6ti.png', 10, 'In Stock', '2023-04-07 11:23:59', NULL),
(45, 12, 25, 'Atta Ruti', 'Golde Harvest', 250, 280, 'Fresh', 'pds357nl.png', 'pds357nl.png', 'pds357nl.png', 10, 'In Stock', '2023-04-07 11:24:38', NULL),
(46, 11, 23, 'Lays', 'Pepsico', 155, 160, 'International&nbsp;', 'Lays1.jpg', 'Lays1.jpg', 'Lays1.jpg', 10, 'In Stock', '2023-04-07 11:29:12', NULL),
(47, 10, 19, 'Jira (100)', 'Deshi', 70, 120, 'Fresh', '2mx7v44d.png', '2mx7v44d.png', '2mx7v44d.png', 5, 'In Stock', '2023-04-07 20:42:49', NULL),
(48, 10, 19, 'Darchini (100gm)', 'Deshi', 55, 70, 'Fresh', '0xyqwdky.png', '0xyqwdky.png', '0xyqwdky.png', 5, 'In Stock', '2023-04-07 20:43:32', NULL),
(49, 10, 19, 'Jira (100)', 'Deshi', 70, 120, 'Fresh', '2mx7v44d.png', '2mx7v44d.png', '2mx7v44d.png', 5, 'In Stock', '2023-04-07 20:44:37', NULL),
(50, 10, 19, 'Lobongo', 'Deshi', 60, 70, 'Fresh', 'zrqwb337.png', 'zrqwb337.png', 'zrqwb337.png', 5, 'In Stock', '2023-04-07 20:45:13', NULL),
(51, 10, 20, 'Piajam', 'Fresh', 63, 65, 'Fresh', '8420c89w.png', '8420c89w.png', '8420c89w.png', 5, 'In Stock', '2023-04-07 20:46:33', NULL),
(52, 10, 20, 'Chinigura', 'Fresh', 160, 170, 'Fresh', '6nxevzrh.png', '6nxevzrh.png', '6nxevzrh.png', 5, 'In Stock', '2023-04-07 20:47:44', NULL),
(53, 10, 20, 'Najirshail', 'Fresh', 60, 70, 'Frsh', 'xdcndabb.png', 'xdcndabb.png', 'xdcndabb.png', 5, 'In Stock', '2023-04-07 20:48:34', NULL),
(54, 10, 21, 'Kolson Shemai', 'Fresh', 43, 45, 'Fresh', 'hu19bpya.png', 'hu19bpya.png', 'hu19bpya.png', 5, 'In Stock', '2023-04-07 20:49:25', NULL),
(55, 10, 21, 'Shuji', 'Fresh', 79, 80, 'Fresh', '0nkuidnj.png', '0nkuidnj.png', '0nkuidnj.png', 5, 'In Stock', '2023-04-07 20:50:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
CREATE TABLE `reports` (
  `id` int(50) NOT NULL,
  `product` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `product`, `email`, `description`) VALUES
(1, 'elec', 'hrithik4064@gmail.com', 'fhdkfdhkfdjghkfhkjhkdfhsk');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(14, 8, 'Fresh Vegetables', '2023-04-06 22:56:19', NULL),
(15, 8, 'Fresh Fruits', '2023-04-06 22:56:31', NULL),
(16, 9, 'Chicken', '2023-04-07 00:23:24', NULL),
(17, 9, 'Fish', '2023-04-07 00:23:30', NULL),
(18, 9, 'Meat', '2023-04-07 00:23:42', NULL),
(19, 10, 'spices', '2023-04-07 00:34:36', NULL),
(20, 10, 'Rice', '2023-04-07 00:34:42', NULL),
(21, 10, 'Others', '2023-04-07 00:35:07', NULL),
(22, 11, 'Cookies', '2023-04-07 00:36:41', NULL),
(23, 11, 'Chips', '2023-04-07 00:36:46', NULL),
(24, 11, 'Others', '2023-04-07 00:36:53', NULL),
(25, 12, 'All Frozen Items', '2023-04-07 00:37:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

DROP TABLE IF EXISTS `userlog`;
CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(27, 'tasnim.h2011@gmail.com', 0x3a3a3100000000000000000000000000, '2023-04-06 20:49:25', NULL, 1),
(28, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2023-02-02 10:30:30', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(6, 'Tasnimul Hassan', 'tasnim.h2011@gmail.com', 170000000, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-06 20:48:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
CREATE TABLE `user_type` (
  `id` int(50) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `userid`, `usertype`) VALUES
(1, '0', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
