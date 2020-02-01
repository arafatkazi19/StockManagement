-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2020 at 08:50 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_ui`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_active` int(11) NOT NULL DEFAULT '0',
  `brand_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_active`, `brand_status`) VALUES
(6, 'টেস্ট', 1, 1),
(5, 'অ্যাপেল', 1, 1),
(4, 'আকিজ', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_name` varchar(255) NOT NULL,
  `categories_active` int(11) NOT NULL DEFAULT '0',
  `categories_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_active`, `categories_status`) VALUES
(7, 'টেস্ট ক্যাঁত', 1, 1),
(6, 'মোবাইল', 1, 1),
(5, 'মুরগি খাদ্য', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `client_contact` varchar(255) NOT NULL,
  `sub_total` varchar(255) NOT NULL,
  `vat` varchar(255) NOT NULL,
  `total_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `grand_total` varchar(255) NOT NULL,
  `paid` varchar(255) NOT NULL,
  `due` varchar(255) NOT NULL,
  `payment_type` int(11) NOT NULL,
  `payment_status` int(11) NOT NULL,
  `payment_place` int(11) NOT NULL,
  `gstn` varchar(255) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `client_name`, `client_contact`, `sub_total`, `vat`, `total_amount`, `discount`, `grand_total`, `paid`, `due`, `payment_type`, `payment_status`, `payment_place`, `gstn`, `order_status`, `user_id`) VALUES
(1, '2019-09-21', 'আসিফ', '০১৯২৮৩৭৪', '3.00', '0.54', '3.54', '০', 'NaN', '১২', 'NaN', 1, 1, 3, '0.54', 2, 1),
(2, '2019-09-22', 'তয়টা', '০১৯২৮৩৭৪২', '239.00', '7200.00', '239.00', '0', '239.00', '239', '0', 2, 3, 2, '7200.00', 1, 1),
(3, '2019-09-22', 'নাফিস', '০২৯৩৮৩৮২', '239.00', '', '239.00', '0', '239.00', '239', '0', 2, 1, 3, '', 1, 1),
(4, '2019-09-24', 'আবুল', '০১৯৩৭৪৫৩৭৩', '239.00', '', '239.00', '0', '239.00', '239', '0', 2, 1, 1, '', 1, 1),
(5, '2019-09-25', 'আলি', '০১৮২৭৩৬১১১১', '239.00', '', '239.00', '0', '239.00', '200', '39.00', 1, 2, 1, '', 1, 1),
(6, '2019-10-02', 'আলিম', '০১৯২৮৩৪৩৩৩', '200.00', '', '200.00', '50', '150.00', '50', '100.00', 2, 2, 1, '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `order_item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `quantity` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `order_item_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`order_item_id`, `order_id`, `product_id`, `quantity`, `rate`, `total`, `order_item_status`) VALUES
(1, 1, 6, '1', '3', '3.00', 2),
(41, 2, 23, '1', '239', '239.00', 1),
(3, 0, 24, '4', '20000', '80000.00', 1),
(4, 0, 24, '4', '20000', '80000.00', 1),
(5, 0, 23, '1', '239', '239.00', 1),
(6, 0, 23, '1', '239', '239.00', 1),
(7, 0, 23, '1', '239', '239.00', 1),
(8, 0, 23, '1', '239', '239.00', 1),
(9, 0, 23, '1', '239', '239.00', 1),
(10, 0, 23, '1', '239', '239.00', 1),
(11, 0, 21, '1', '1', '1.00', 1),
(12, 0, 21, '1', '1', '1.00', 1),
(13, 0, 21, '1', '1', '1.00', 1),
(14, 0, 21, '1', '1', '1.00', 1),
(15, 0, 21, '1', '1', '1.00', 1),
(16, 0, 21, '1', '1', '1.00', 1),
(17, 0, 21, '1', '1', '1.00', 1),
(18, 0, 21, '1', '1', '1.00', 1),
(19, 0, 21, '1', '1', '1.00', 1),
(20, 0, 21, '1', '1', '1.00', 1),
(21, 0, 21, '1', '1', '1.00', 1),
(22, 0, 21, '1', '1', '1.00', 1),
(23, 0, 21, '1', '1', '1.00', 1),
(24, 0, 21, '1', '1', '1.00', 1),
(25, 0, 21, '1', '1', '1.00', 1),
(26, 0, 21, '1', '1', '1.00', 1),
(27, 0, 21, '1', '1', '1.00', 1),
(28, 0, 21, '1', '1', '1.00', 1),
(29, 0, 21, '1', '1', '1.00', 1),
(30, 0, 21, '1', '1', '1.00', 1),
(31, 0, 21, '1', '1', '1.00', 1),
(32, 0, 21, '1', '1', '1.00', 1),
(33, 0, 21, '1', '1', '1.00', 1),
(34, 0, 21, '1', '1', '1.00', 1),
(35, 0, 21, '1', '1', '1.00', 1),
(36, 0, 21, '1', '1', '1.00', 1),
(37, 0, 21, '1', '1', '1.00', 1),
(38, 0, 21, '1', '1', '1.00', 1),
(39, 3, 23, '1', '239', '239.00', 1),
(40, 4, 23, '1', '239', '239.00', 1),
(42, 5, 23, '1', '239', '239.00', 1),
(43, 6, 25, '1', '200', '200.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` text NOT NULL,
  `brand_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_image`, `brand_id`, `categories_id`, `quantity`, `rate`, `active`, `status`) VALUES
(11, 'জিনিস', '../assests/images/stock/11712806485d8701df038bb.png', 4, 5, 0, 0, 1, 1),
(12, 'ফফ', '../assests/images/stock/11009184785d8702ee9dbc2.png', 4, 5, 0, 0, 1, 1),
(14, 'পয়', '../assests/images/stock/580480105d8703fa1da9c.png', 4, 5, 0, 0, 1, 1),
(15, 'প্রভিটা', '../assests/images/stock/19482777145d8704ea04a04.png', 4, 5, 0, 0, 1, 1),
(16, 'রিফাত', '../assests/images/stock/3982663495d87067287b99.png', 4, 5, 0, 0, 1, 1),
(17, 'শাহাদাত', '../assests/images/stock/19924905975d8707472fa4e.png', 4, 5, 0, 0, 1, 1),
(18, 'আরিফ', '../assests/images/stock/5492828485d8707be870a7.png', 4, 5, 0, 0, 1, 1),
(19, 'উর‍্য', '../assests/images/stock/9974814015d8708348c120.png', 4, 5, 0, 0, 1, 1),
(20, 'ফুলি', '../assests/images/stock/4547937195d870893b7d5a.png', 4, 5, 0, 0, 1, 1),
(21, 'টেস্ট অরিজিনাল', '../assests/images/stock/15255043655d872e78d8ebc.png', 4, 5, -25, 1, 1, 1),
(22, 'বিরতি', '../assests/images/stock/1221245615d872eadb872c.png', 4, 5, 0, 0, 1, 1),
(23, 'টেস্ট অরিজিনাল', '../assests/images/stock/8977697865d872edc68a39.png', 4, 5, 82, 239, 1, 1),
(24, 'আইফোন ৫', '../assests/images/stock/10717291185d87308cadd72.jpg', 5, 6, 0, 20000, 1, 1),
(25, 'পণ্য', '../assests/images/stock/4351336275d9497042a5d6.png', 6, 7, 1, 200, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`order_item_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `order_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
