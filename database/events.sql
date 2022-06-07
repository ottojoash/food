-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 21, 2020 at 09:02 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `events`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `price` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(1, 'otto', 'louisjoshbricks@gmail.com', '14e1b600b1fd579f47433b88e8d85291', '0704104284', 'kampala', 'kampala'),
(2, 'joash', 'joash@ozo.com', '6b5210f4b3a7e4a6df9bf3205796de73', '123456789', 'kampala', 'kampala'),
(3, 'joash', 'joash@ozol.com', '14e1b600b1fd579f47433b88e8d85291', '0704104284', 'kampala', 'kampala');

-- --------------------------------------------------------

--
-- Table structure for table `user_items`
--

DROP TABLE IF EXISTS `user_items`;
CREATE TABLE IF NOT EXISTS `user_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `status` enum('Added to cart','Confirmed') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`,`item_id`),
  KEY `item_id` (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_items`
--

INSERT INTO `user_items` (`id`, `user_id`, `item_id`, `status`) VALUES
(1, 1, 4, 'Confirmed'),
(2, 1, 3, 'Confirmed'),
(3, 1, 2, 'Confirmed'),
(4, 1, 1, 'Confirmed'),
(5, 1, 4, 'Confirmed'),
(6, 1, 3, 'Confirmed'),
(7, 1, 4, 'Confirmed'),
(8, 1, 2, 'Confirmed'),
(9, 1, 1, 'Confirmed'),
(10, 1, 8, 'Confirmed'),
(11, 1, 7, 'Confirmed'),
(12, 1, 6, 'Confirmed'),
(13, 1, 5, 'Confirmed'),
(14, 2, 12, 'Added to cart'),
(15, 1, 4, 'Confirmed'),
(16, 1, 3, 'Confirmed'),
(17, 1, 4, 'Confirmed'),
(18, 1, 4, 'Added to cart'),
(19, 3, 4, 'Added to cart');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
