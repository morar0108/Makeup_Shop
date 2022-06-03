-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 11:01 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
                        `cart_id` int(11) NOT NULL,
                        `user_id` int(11) NOT NULL,
                        `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
    `item_id` int(11) NOT NULL,
    `item_brand` varchar(200) NOT NULL,
    `item_name` varchar(255) NOT NULL,
    `item_price` double(10,2) NOT NULL,
    `item_image` varchar(255) NOT NULL,
    `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
                                                                                                              (1, 'Elf', 'Elf Concleaner', 152.00, './assets/products/1.jpg', '2022-06-02 20:20:06'), -- NOW()
                                                                                                              (2, 'MAC', 'MAC Mascara', 122.00, './assets/products/2.webp', '2022-06-02 20:20:06'),
                                                                                                              (3, 'Milan', 'Milan Eyebrow', 122.00, './assets/products/3.jpg', '2022-06-02 20:20:06'),
                                                                                                              (4, 'Estee Lauder', 'Estee Lauder Foundation', 122.00, './assets/products/4.jpg', '2022-06-02 20:20:06'),
                                                                                                              (5, 'Yves Saint Laurent', 'YSL Concleaner', 122.00, './assets/products/5.jpg', '2022-06-02 20:20:06'),
                                                                                                              (6, 'Maybelline', 'Maybelline Concleaner', 122.00, './assets/products/6.webp', '2022-06-02 20:20:06'),
                                                                                                              (7, 'Hera', 'Hera Foundation', 122.00, './assets/products/7.jfif', '2022-06-02 20:20:06'),
                                                                                                              (8, 'Maybelline', 'Maybelline Lipstick', 122.00, './assets/products/8.jfif', '2022-06-02 20:20:06'),
                                                                                                              (9, 'Yves Saint Laurent', 'YSL Concleaner', 152.00, './assets/products/9.jfif', '2022-06-02 20:20:06'),
                                                                                                              (10, 'Yves Saint Laurent', 'YSL Lipstick', 152.00, './assets/products/10.jfif', '2022-06-02 20:20:06'),
                                                                                                              (11, 'MAC', 'MAC Lipstick', 152.00, './assets/products/11.webp', '2022-06-02 20:20:06'),
                                                                                                              (12, 'MAC', 'MAC Prep+Fix', 152.00, './assets/products/12.webp', '2022-06-02 20:20:06'),
                                                                                                              (13, 'MAC', 'MAC Foundation', 152.00, './assets/products/13.jfif', '2022-06-02 20:20:06'),
                                                                                                              (14, 'Maybelline', 'Maybelline Foundation Base', 152.00, './assets/products/14.jfif', '2022-06-02 20:20:06'),
                                                                                                              (15, 'Maybelline', 'Maybelline Foundation', 152.00, './assets/products/15.jfif', '2022-06-02 20:20:06'),
                                                                                                              (17, 'Maybelline', 'Maybelline Lipstick', 152.00, './assets/products/17.jfif', '2022-06-02 20:20:06');



-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
                        `user_id` int(11) NOT NULL,
                        `first_name` varchar(100) NOT NULL,
                        `last_name` varchar(100) NOT NULL,
                        `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
                                                                               (1, 'Morar', 'Maria', '2022-06-02 20:20:06'),
                                                                               (2, 'Burete', 'Calin', '2022-06-02 20:20:06');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
                            `cart_id` int(11) NOT NULL,
                            `user_id` int(11) NOT NULL,
                            `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
    ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
    ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
    ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
    MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
    MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
    MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;