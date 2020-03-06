-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2020 at 12:23 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emart`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill_details_table`
--

CREATE TABLE `bill_details_table` (
  `bill_details_id` int(11) NOT NULL,
  `bill_id` int(20) NOT NULL,
  `item_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_details_table`
--

INSERT INTO `bill_details_table` (`bill_details_id`, `bill_id`, `item_id`) VALUES
(701, 601, 502),
(702, 602, 501),
(703, 605, 502),
(704, 606, 502),
(705, 607, 501),
(706, 608, 501),
(707, 609, 501),
(708, 610, 501),
(709, 611, 501),
(710, 611, 501),
(711, 612, 501),
(712, 613, 501),
(713, 614, 501),
(714, 615, 502),
(715, 616, 501),
(716, 617, 501),
(717, 617, 502),
(718, 618, 501),
(719, 619, 501),
(720, 620, 503),
(721, 621, 503),
(722, 622, 502),
(723, 622, 501),
(724, 623, 501),
(725, 624, 501),
(726, 625, 502),
(727, 625, 503),
(728, 626, 502),
(729, 626, 503),
(730, 627, 502),
(731, 628, 501),
(732, 628, 502),
(733, 629, 502),
(734, 630, 502),
(735, 631, 501),
(736, 632, 501),
(737, 633, 501),
(738, 634, 501),
(739, 635, 501),
(740, 636, 504),
(741, 636, 501),
(742, 636, 505);

-- --------------------------------------------------------

--
-- Table structure for table `bill_table`
--

CREATE TABLE `bill_table` (
  `bill_id` int(20) NOT NULL,
  `buyer_id` int(20) NOT NULL,
  `bill_type` varchar(20) NOT NULL,
  `bill_date` date NOT NULL,
  `bill_remarks` varchar(20) NOT NULL,
  `bill_amount` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_table`
--

INSERT INTO `bill_table` (`bill_id`, `buyer_id`, `bill_type`, `bill_date`, `bill_remarks`, `bill_amount`) VALUES
(601, 201, 'debit', '2020-02-04', 'thank you', 100),
(602, 202, 'debit', '2020-02-05', 'visit again', 500),
(605, 201, 'debit', '2020-02-04', 'thank you', 100),
(606, 202, 'debit', '2020-02-04', 'thank you', 100),
(607, 202, 'Debit', '2020-03-04', 'paid', 1000),
(608, 202, 'Debit', '2020-03-04', 'paid', 1000),
(609, 202, 'Debit', '2020-03-04', 'paid', 1000),
(610, 202, 'Debit', '2020-03-04', 'paid', 1000),
(611, 202, 'Debit', '2020-03-04', 'paid', 2000),
(612, 202, 'Debit', '2020-03-04', 'paid', 1000),
(613, 202, 'Debit', '2020-03-04', 'paid', 1000),
(614, 202, 'Debit', '2020-03-04', 'paid', 1000),
(615, 202, 'Debit', '2020-03-04', 'paid', 100),
(616, 202, 'Debit', '2020-03-04', 'paid', 1000),
(617, 201, 'Debit', '2020-03-04', 'paid', 1100),
(618, 201, 'Debit', '2020-03-04', 'paid', 1000),
(619, 202, 'Debit', '2020-03-04', 'paid', 1000),
(620, 201, 'Debit', '2020-03-04', 'paid', 20000),
(621, 201, 'Debit', '2020-03-04', 'paid', 20000),
(622, 202, 'Debit', '2020-03-04', 'paid', 1100),
(623, 201, 'Debit', '2020-03-05', 'paid', 1000),
(624, 201, 'Debit', '2020-03-05', 'paid', 1000),
(625, 201, 'Debit', '2020-03-05', 'paid', 20100),
(626, 201, 'Debit', '2020-03-05', 'paid', 20100),
(627, 202, 'debit', '2020-02-04', 'thank you', 100),
(628, 201, 'Debit', '2020-03-05', 'paid', 1100),
(629, 201, 'Debit', '2020-03-05', 'paid', 100),
(630, 201, 'Debit', '2020-03-05', 'paid', 100),
(631, 201, 'Debit', '2020-03-05', 'paid', 1000),
(632, 201, 'Debit', '2020-03-05', 'paid', 1000),
(633, 201, 'Debit', '2020-03-05', 'paid', 1000),
(634, 201, 'Debit', '2020-03-05', 'paid', 1000),
(635, 201, 'Debit', '2020-03-05', 'paid', 40000),
(636, 201, 'Debit', '2020-03-05', 'paid', 46000);

-- --------------------------------------------------------

--
-- Table structure for table `buyer_signup_table`
--

CREATE TABLE `buyer_signup_table` (
  `buyer_id` int(30) NOT NULL,
  `buyer_username` varchar(30) NOT NULL,
  `buyer_email` varchar(30) NOT NULL,
  `buyer_mobile` int(30) NOT NULL,
  `buyer_date` date NOT NULL,
  `buyer_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyer_signup_table`
--

INSERT INTO `buyer_signup_table` (`buyer_id`, `buyer_username`, `buyer_email`, `buyer_mobile`, `buyer_date`, `buyer_password`) VALUES
(201, 'deepthi', 'deepthi@gmail.com', 1254786325, '2020-02-04', '1234'),
(202, 'soumya', 'soumya@gmail.com', 123541655, '2020-02-03', '4567');

-- --------------------------------------------------------

--
-- Table structure for table `category_table`
--

CREATE TABLE `category_table` (
  `category_id` int(20) NOT NULL,
  `category_name` varchar(20) NOT NULL,
  `category_brief` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_table`
--

INSERT INTO `category_table` (`category_id`, `category_name`, `category_brief`) VALUES
(301, 'Footwear', 'Comforts Feet'),
(302, 'Electronic Appliance', 'Everything Digital'),
(303, 'Clothing', 'Booming Boutique');

-- --------------------------------------------------------

--
-- Table structure for table `item_table`
--

CREATE TABLE `item_table` (
  `item_id` int(20) NOT NULL,
  `item_name` varchar(20) NOT NULL,
  `item_image` varchar(200) NOT NULL,
  `item_price` int(20) NOT NULL,
  `item_stock` int(20) NOT NULL,
  `item_description` varchar(200) NOT NULL,
  `subcategory_id` int(20) NOT NULL,
  `item_remarks` varchar(20) NOT NULL,
  `seller_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item_table`
--

INSERT INTO `item_table` (`item_id`, `item_name`, `item_image`, `item_price`, `item_stock`, `item_description`, `subcategory_id`, `item_remarks`, `seller_id`) VALUES
(501, 'Sony', 'https://images.unsplash.com/photo-1461151304267-38535e780c79?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 40000, 20, 'Sony Bravia 59.9cm', 402, 'good', 101),
(502, 'Samsung', 'https://images.unsplash.com/photo-1510551310160-589462daf284?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 30000, 10, 'good wash', 404, 'average', 102),
(503, 'Whirlpool', 'https://images.unsplash.com/photo-1571175443880-49e1d25b2bc5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 30000, 5, 'Your Magic is Home Making', 405, 'good', 102),
(504, 'Shoes', 'https://images.unsplash.com/photo-1525966222134-fcfa99b8ae77?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 4000, 5, 'Running', 401, 'good', 101),
(505, 'Sandals', 'https://images.unsplash.com/photo-1534653299134-96a171b61581?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 2000, 15, 'Party Wear', 402, 'good', 102),
(506, 'Jeans', 'https://images.unsplash.com/photo-1542272604-787c3835535d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 1000, 2, 'Men\'s Skinny Fit Jeans', 406, 'good', 101),
(507, 'Kurtha ', 'https://images.unsplash.com/photo-1528812969535-4bcefc071532?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 2000, 1, 'Women\'s Polyester Crepe', 407, 'good', 102),
(508, 'Lehenga', 'https://images.unsplash.com/photo-1574847872646-abff244bbd87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 25000, 5, 'Floral', 407, 'good', 102),
(509, 'Saree', 'https://images.unsplash.com/photo-1572470176170-98fa8abcb741?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 15000, 2, 'Georgette', 407, 'good', 102);

-- --------------------------------------------------------

--
-- Table structure for table `seller_signup_table`
--

CREATE TABLE `seller_signup_table` (
  `seller_id` int(30) NOT NULL,
  `seller_username` varchar(30) NOT NULL,
  `seller_password` varchar(30) NOT NULL,
  `seller_company` varchar(30) NOT NULL,
  `seller_brief` varchar(30) NOT NULL,
  `seller_gst` int(30) NOT NULL,
  `seller_address` varchar(30) NOT NULL,
  `seller_email` varchar(30) NOT NULL,
  `seller_contact` int(30) NOT NULL,
  `seller_website` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller_signup_table`
--

INSERT INTO `seller_signup_table` (`seller_id`, `seller_username`, `seller_password`, `seller_company`, `seller_brief`, `seller_gst`, `seller_address`, `seller_email`, `seller_contact`, `seller_website`) VALUES
(101, 'Rohit', 'rohit', 'Cts', 'Very Good', 123456, 'hyderabad', 'abc@gmail.com', 1232456788, 'www.abc.com'),
(102, 'pooja', 'pooja', 'cts', 'Good girl', 147852369, 'hyderabad', 'pooja@gmail.com', 125478963, 'www.pooja.com');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_table`
--

CREATE TABLE `sub_category_table` (
  `subcategory_id` int(20) NOT NULL,
  `subcategory_name` varchar(20) NOT NULL,
  `category_id` int(20) NOT NULL,
  `subcategory_brief` varchar(200) NOT NULL,
  `subcategory_gst` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_category_table`
--

INSERT INTO `sub_category_table` (`subcategory_id`, `subcategory_name`, `category_id`, `subcategory_brief`, `subcategory_gst`) VALUES
(401, 'Men\'s wear', 301, 'For Mens', 12),
(402, 'Womens wear', 301, 'For Womens', 12),
(403, 'Television', 302, 'Hd Tv', 10),
(404, 'Washing Machine', 302, 'Good Wash', 13),
(405, 'Refridgerator', 302, 'Cools Eveything', 5),
(406, 'Mens wear', 303, 'Makes Comfortable', 2),
(407, 'Womens wear', 303, 'Makes Comfortable', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill_details_table`
--
ALTER TABLE `bill_details_table`
  ADD PRIMARY KEY (`bill_details_id`),
  ADD KEY `bill_details_table_ibfk_3` (`bill_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `bill_table`
--
ALTER TABLE `bill_table`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- Indexes for table `buyer_signup_table`
--
ALTER TABLE `buyer_signup_table`
  ADD PRIMARY KEY (`buyer_id`);

--
-- Indexes for table `category_table`
--
ALTER TABLE `category_table`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `item_table`
--
ALTER TABLE `item_table`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_table_ibfk_2` (`seller_id`),
  ADD KEY `subcategory_id` (`subcategory_id`);

--
-- Indexes for table `seller_signup_table`
--
ALTER TABLE `seller_signup_table`
  ADD PRIMARY KEY (`seller_id`);

--
-- Indexes for table `sub_category_table`
--
ALTER TABLE `sub_category_table`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill_details_table`
--
ALTER TABLE `bill_details_table`
  MODIFY `bill_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=743;

--
-- AUTO_INCREMENT for table `bill_table`
--
ALTER TABLE `bill_table`
  MODIFY `bill_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=637;

--
-- AUTO_INCREMENT for table `buyer_signup_table`
--
ALTER TABLE `buyer_signup_table`
  MODIFY `buyer_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `category_table`
--
ALTER TABLE `category_table`
  MODIFY `category_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `item_table`
--
ALTER TABLE `item_table`
  MODIFY `item_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=510;

--
-- AUTO_INCREMENT for table `seller_signup_table`
--
ALTER TABLE `seller_signup_table`
  MODIFY `seller_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `sub_category_table`
--
ALTER TABLE `sub_category_table`
  MODIFY `subcategory_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=408;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill_details_table`
--
ALTER TABLE `bill_details_table`
  ADD CONSTRAINT `bill_details_table_ibfk_3` FOREIGN KEY (`bill_id`) REFERENCES `bill_table` (`bill_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bill_details_table_ibfk_4` FOREIGN KEY (`item_id`) REFERENCES `item_table` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bill_table`
--
ALTER TABLE `bill_table`
  ADD CONSTRAINT `bill_table_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `buyer_signup_table` (`buyer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item_table`
--
ALTER TABLE `item_table`
  ADD CONSTRAINT `item_table_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `seller_signup_table` (`seller_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `item_table_ibfk_3` FOREIGN KEY (`subcategory_id`) REFERENCES `sub_category_table` (`subcategory_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_category_table`
--
ALTER TABLE `sub_category_table`
  ADD CONSTRAINT `sub_category_table_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_table` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
