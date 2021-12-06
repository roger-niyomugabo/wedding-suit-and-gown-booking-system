-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2021 at 04:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clothbooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `clothes_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `booked_date` date NOT NULL,
  `currentDate` date NOT NULL DEFAULT current_timestamp(),
  `booking_status` varchar(30) DEFAULT 'booked'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `clothes_id`, `customer_id`, `booked_date`, `currentDate`, `booking_status`) VALUES
(2, 13, 1, '2021-12-25', '2021-12-04', 'booked'),
(3, 12, 1, '2021-12-31', '2021-12-05', 'booked'),
(4, 16, 1, '2021-12-16', '2021-12-05', 'booked'),
(5, 13, 2, '2021-12-23', '2021-12-05', 'booked'),
(6, 15, 2, '2021-12-06', '2021-12-05', 'booked'),
(7, 17, 1, '2021-12-22', '2021-12-05', 'booked'),
(8, 15, 2, '2021-12-25', '2021-12-05', 'booked'),
(9, 18, 4, '2021-12-10', '2021-12-05', 'booked');

-- --------------------------------------------------------

--
-- Table structure for table `clothes`
--

CREATE TABLE `clothes` (
  `clothes_id` int(11) NOT NULL,
  `clothes_type` varchar(45) NOT NULL,
  `clothes_image` varchar(100) NOT NULL,
  `clothes_description` text NOT NULL,
  `clothes_price` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clothes`
--

INSERT INTO `clothes` (`clothes_id`, `clothes_type`, `clothes_image`, `clothes_description`, `clothes_price`) VALUES
(12, 'suit', 'one.jpeg', 'suit designed by tanga designers				  				  ', '205.00'),
(13, 'moshions', '3333.jpg', 'wedding gowns from italy designed by roger		  				  ', '7600.00'),
(15, 'suit', 'image6.jpg', 'the suit 				  \r\n				  ', '50000.00'),
(17, 'Italian Suit', '111.jpg', 'this is an suit that was originary created in Italy				  				  ', '34.00'),
(18, 'italian gown ', 'white.jpg', 'The best wedding gown from Italy				  \r\n				  ', '120.00'),
(20, 'black suit', '5555.jpg', 'black suit from south africa	designed by tanga design		 	  				  ', '207.00'),
(21, 'black suit', '22222.jpeg', 'black Suit designed by best awarded designers in France designers			  				  ', '250.00'),
(22, 'black suit', 'one.jpeg', 'black Suit designed by best awarded designers in France designers			  				  ', '200.00'),
(23, 'Germany suit', '44444.jpg', 'Suit from Germany designed by kros				  \r\n				  ', '5210.00');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(45) DEFAULT NULL,
  `customer_email` varchar(45) DEFAULT NULL,
  `customer_phone` varchar(45) DEFAULT NULL,
  `customer_address` varchar(45) DEFAULT NULL,
  `customer_username` varchar(45) DEFAULT NULL,
  `customer_password` varchar(45) DEFAULT NULL,
  `customer_gender` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_phone`, `customer_address`, `customer_username`, `customer_password`, `customer_gender`) VALUES
(1, 'roger', 'roger@gmail.com', '07857647', 'kigali', 'roger', '123', '123'),
(2, 'sadiki', 'sadiki@gmail.com', '078676747', 'huye', 'sadiki', '12345', 'female'),
(3, 'sadiki2', 'sadiki@gmail.com', '078676747', 'huye', 'sadiki2', '12345', 'female'),
(4, 'benitha iyuyisenga ', 'benitha@gmail.com', '0784345354', 'huye', 'benitha1', '123', 'female'),
(5, 'rosine Karanganwa', 'rosine@gmail.com', '0786644664', 'kigali', 'rosineka', '12345', 'female'),
(6, 'sandrine ishimwe', 'sandoishimwe6@gmail.com', '079686757', 'rubavu', 'sando', '1009', 'female'),
(7, 'Renzaho emmy', 'renzo@yahoo.fr', '0737438475', 'muhanga', 'renzo1', '1785', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `manager_id` int(11) NOT NULL,
  `manager_names` varchar(45) DEFAULT NULL,
  `manager_email` varchar(45) DEFAULT NULL,
  `manager_username` varchar(45) DEFAULT NULL,
  `manager_password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`manager_id`, `manager_names`, `manager_email`, `manager_username`, `manager_password`) VALUES
(1, 'benitha', 'benitha@gmail.com', 'benitha', '1234'),
(2, 'roger', 'roger@gmail.com', 'roger21', '21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `clothes`
--
ALTER TABLE `clothes`
  ADD PRIMARY KEY (`clothes_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`manager_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `clothes`
--
ALTER TABLE `clothes`
  MODIFY `clothes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `manager_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
