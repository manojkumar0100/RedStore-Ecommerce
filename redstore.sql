-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2023 at 01:46 PM
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
-- Database: `redstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `adm_name` varchar(50) NOT NULL,
  `adm_pass` varchar(50) NOT NULL,
  `adm_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `adm_name`, `adm_pass`, `adm_email`) VALUES
(1, 'admin', 'redstore123', 'admin@gmail.com'),
(2, 'RedCheif', 'Red', 'red@red.red');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Nike'),
(4, 'Adidas'),
(5, 'Asley'),
(6, 'Kartell'),
(7, 'LG'),
(8, 'Whirlpool'),
(9, 'One Plus'),
(10, 'Xiaomi'),
(11, 'Dell');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `user_id` varchar(70) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `pro_id`, `user_id`, `qty`) VALUES
(13, 5, '6', 1),
(29, 2, '10', 1),
(59, 1, '1', 1),
(60, 3, '1', 1),
(61, 8, '1', 1),
(122, 42, '3', 1),
(124, 46, '3', 3),
(125, 7, '27', 1),
(126, 17, '27', 1),
(134, 8, '28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `category_name`) VALUES
(1, 'Electronics'),
(2, 'Furnitures'),
(3, 'Clothes'),
(4, 'Home Appliances');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tran_id` varchar(100) NOT NULL,
  `order_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `tran_id`, `order_status`) VALUES
(1, 3, 'M6VilctwYot51E93oGKS', 'Pending Payment'),
(2, 1, '/FyFbXtZwyrJ2BpfsSdm', 'Completed'),
(3, 1, '$2y$10$7qAZD5e5DDSR.z6rGV3OreZZH30pCRwVb1S60wykK4t87Og82B/Wm', 'Refunded'),
(4, 1, '$2y$10$2dr5xDRO8fK4QUrLS6s/helPiwgZV6hGls4VowIOohoGjNvVHb69u', 'Pending Payment'),
(5, 1, '$2y$10$TojnbygnaMRAkW0iiN.aEeyZhmZu32tQa.22OEZX6tSq5F.XgHySy', ''),
(6, 1, 'Mmzoa55MJ.o80KaOdS3G', 'Active'),
(7, 7, '$2y$10$wuHBAc4oplO4UgP.XmYBGuTjKCJr21Wzn3P9KHBzk3f6HamnLSUzq', 'Active'),
(8, 2, '$2y$10$XbdtgT13EErv7LUjItvR7uobw5Hv6qP8DqpAtza.OLzC.UqrhTGgG', 'Active'),
(9, 2, '$2y$10$DTfq46HRkdjW2cAICE9ezuTPrpbJZR15fZp9NhS6st9twH6J9w7hy', 'Active'),
(10, 2, '$2y$10$UW008Y.fLTJCASbaA2a54OHcOua.ePRbT/aMcV6eSR77wrCE95e6C', 'Active'),
(11, 2, '$2y$10$TQ.70lGKo0FrOloy4XHobuf.Jr9tG9nZRVVUJvr3TAMZX/VvtO/qy', 'Active'),
(12, 2, '$2y$10$CQNX3mhLEGbc2Vs1SBoFkOTe0YPtlY/MWQQY9WIQmD4XxJElRs15G', 'Active'),
(13, 2, '$2y$10$P4TSsatOVFYVk1X6yHD0surhO6BYqyQE4HvZFL319b5kyQgDq9fo2', 'Active'),
(14, 2, '$2y$10$dADf8sNFo8nZWbMbBpodAeYbSyO8ZOxGfM.Wc9ZU0VNGkHyNmczn2', 'Active'),
(15, 2, '$2y$10$UAJKSoZrKPxx.s3bI2yW9e/Z69m9tEB/xILzaHHnkgZgrcFQSXb2W', 'Active'),
(16, 2, '$2y$10$K28BcY8hfpF51zQpPgwGi.T/9JROhALd9iupbmYfqXFGQlXI4L6RO', 'Active'),
(17, 2, '$2y$10$eH0xMZrA50J5.FbHpa5oRuyC3//AoBEmBY5h07tHlFJrn0aaU6May', 'Active'),
(18, 2, '$2y$10$jwmTcQR76.wS0IOCOGbVG.3GfZPRrwzGSzCoym9dB8sZADg7CpUUW', 'Active'),
(19, 2, '$2y$10$UMPDxyn20/ytHOPyh7H1je.O1.XYLfiYpKODLwOJ/6yakoPb183Ue', 'Active'),
(20, 2, '$2y$10$9aBXCN.MRxAfiBuGSYGEH.vg5fyL0tg/Yz9hSttkg9XaJqdqSIvIW', 'Active'),
(21, 2, '$2y$10$ETEDWvTPulKCcaegLk2l5.2GSKEz9Cl64PlLCdCvup0XR7xD0mMiy', 'Active'),
(22, 2, '$2y$10$.Y6KMHaRKfx68nzwZ.rQb.DmlZogFQMKpUvEqCZU9aTTvVRSgnoeS', 'Active'),
(23, 2, '$2y$10$eLYsw/QauL0fsWk/smugr.IJ4TOOF.9Koax7xJ5879aWn9BXC6uMu', 'Active'),
(24, 2, '$2y$10$SKiHCvybm4NZQCiaIrMgZ.sPnx04aONpMhYc4bUIPjCKjnasfUv7i', 'Active'),
(25, 2, '$2y$10$ziAOPXMkdJ2gk9QzWd3/z.cBxDEaHfCgVH.XH9K2b49a.McOwI3qi', 'Active'),
(26, 2, '$2y$10$K/50a9h5HroHXKFaSVLGdOw2CHWMbvVebwYDv8ifIZNCYzlCG2bg6', 'Active'),
(27, 2, '$2y$10$KApnvyUiadiCHgsYLSlM/.dG4GPIFb29uOZzNbNui5F6NG5EN8Ohq', 'Active'),
(28, 2, '$2y$10$0K/vzXsncJmRixiiLLum7eBwWYx0yvwrvKFQmU92Yk6FWQYugG4D6', 'Active'),
(29, 2, '$2y$10$lgwfEoFn/1PrdrhDUuMNVOirovsMKCGxUPRBepS5G7xHj3uLjs2y2', 'Active'),
(30, 2, '$2y$10$xcskV2C8V8elNACQTcKXdeR/RSA1WLht3axQkL88CVo47qO82Sl6i', 'Active'),
(31, 2, '$2y$10$Y881dY564RqvCc8.f59d5uc3f4W65YKp3vjg0kZS0SyhTgsxdvN6m', 'Active'),
(32, 2, '$2y$10$R0Zi4wcCsKJOdXKhhSi8MefSzqFjTPzwQ1.eV6ytI5vhEiDX5yBDm', 'Active'),
(33, 2, '$2y$10$2JHvgaq8BjM7ZVmSEYbc4OfRAOQfwHCDYQj4qZrS1omSvgMxJivIm', 'Active'),
(34, 2, '$2y$10$UvLe3d1OIPnOFWHEQHQ/6uCar/cg9NkRNWhiGY/KgjvXip6qq.jjS', 'Active'),
(35, 2, '$2y$10$scoDwbIjsUYV/PcbXQNTlul/E2.mWsIfFP1PH243AnnN1NtEICU0e', 'Active'),
(36, 2, '$2y$10$HnyMQzSENNZuH6nxWLfy0O419shV96AkFYFqsyNkjTgQ8uX1fgKFq', 'Active'),
(37, 2, '$2y$10$awEMo.5EVMQK2G9ZT7FsNOHMTm8nIa8X5EgrSHBCTQj.KzjsNtnOi', 'Active'),
(38, 2, '$2y$10$Bsy.DsHRjsVSNwsbHQb.weqHaO/F2.uzGAAh1M6KIDNkMiPQchjrm', 'Active'),
(39, 2, '$2y$10$PUYKdfkfzkHoXUtmbLph3ODaxVxWk5ruutos9Jpzv7ytzsSBF4Gne', 'Active'),
(40, 8, '$2y$10$AgAzPfLIY8mciv44nQU3JeU74K58qV87C/uJTnnpKkydodJoiftBC', 'Active'),
(41, 8, '$2y$10$2xgjKwgUjXxIccDQdJGXteDfJGhsX2Kr7qO3RDB9h78dhL34i0jKO', 'Active'),
(42, 2, '$2y$10$WMKzzQoC7Y7d5jQIZ0U5yuIz05ohodDiWmLJOcArBnHXwxqXuwiuC', 'Active'),
(43, 1, '$2y$10$8bdBkUjqUqaY0JLXuewYFuJHxixzSn.noy8iXWXTMdzRYEP9vHMxy', 'Active'),
(44, 1, '$2y$10$vcBtV2HBQWB.y4rOfUbSTu.uQZ.tLXBSwXF2ewA7OKvx96/PFogIu', 'Active'),
(45, 1, '$2y$10$06yx6lsI18FqE6FV/J/eFeye7yb.Au0PxvLZpnip2HRnkoQxaCpYy', 'Active'),
(46, 1, '$2y$10$A5NQjGchRNuG.LC/MxeVa.AIs9j2up64tCuI/opgVT7qKtqTbOYDe', 'Active'),
(47, 1, '$2y$10$.m1m9NXavkSVtE1vG0cinuIAgOwOF4H.zW.8FoRMk7I1bsOc/B2du', 'Active'),
(48, 1, '$2y$10$8K7PR3s84aq18MryU92/kuwua5iCRgTslQBEW1wP9eKX0VD3IrWB.', 'Active'),
(49, 1, '$2y$10$mZGfMEwtLh1E5BOorJFd8eFH0dToQvz0VuVyPYoGG9DfkUt81fqBq', 'Active'),
(50, 1, '$2y$10$x71IbbCbzb.06k.g0Qm6HejGfS0fS6jkJBzOkMYYDBJ2ssKLGNthS', 'Active'),
(51, 1, '$2y$10$Pa.lr6MrnOc34eJJvzH7AOma56WjyZWc3KxYva3uqSDwMs9iSC9UK', 'Active'),
(52, 1, '$2y$10$ZfmFew7xVHX1nxNjObEne.t4KJ112eJD/WlDMWhUj0HUDi2C3HGqG', 'Active'),
(53, 11, '$2y$10$G0jukxOlK9JxwS9SuZovoeJcVZ1Xtd1Do8bhdyG7.WTUpQTLQ8R5.', 'Canceled'),
(54, 12, '$2y$10$YF.quyeucK59nMbLRhKKF.raj0XT5IIAGPsHQWnyRKNxichBfCY8C', 'Active'),
(55, 12, '$2y$10$y9lVnROAl3V74kjR8k2e8esVHvIqfSmaAOdgZMJEjpbvDtoaFsaVC', 'Active'),
(56, 12, '$2y$10$pikeSikle3nWeOrTJU951OKH4Py6GWC.73acFuXt3ZgjpOlzz5d5W', 'Active'),
(57, 13, '$2y$10$/M6NE1HaStCMMU/rS12D.e34PJCgZFNGbBQ3bVQE8m4pVugoqxZXG', 'Active'),
(58, 14, '$2y$10$7ttUMh1.7/52nTsi7As.UuoKOlivkouZHVMm2N7a40eic/FImw1sa', 'Processing'),
(59, 16, '$2y$10$nFbPVtdOw3vXJiiKuqaoEuSY7/iGGSHy/gjzDgnKjcTrENKfDvlhi', 'Active'),
(60, 16, '$2y$10$9ahJ2.QZv8iCwSQqGi7ZmOGMwecvqLURoI8lD1FXUTwj0V8VbPPQ2', 'Active'),
(61, 16, '$2y$10$R9iyrnyY5niL1DQGfBhMveqyKmmrrg7Vr2REfnNLNqoH8QBpAlinu', 'Active'),
(62, 16, '$2y$10$Q8KtAoCCQ1YwIMcI5pdWnODKtn86DZv9npwoBpcliKZLqTSrWTSrq', 'Active'),
(63, 1, '$2y$10$jnN8aeLL.wrhFVD/izeowe8mazVyKycmKCNx8ViGVogIKzFhqOcl6', 'Active'),
(64, 17, '$2y$10$sBA/b8ySJXAR8hGKndb6Sun1NFFNFXJw45fNNgbgO9InN.9JbcChi', 'Processing'),
(65, 1, '6cc3c65584999bbf29a89147b182a54e994d5ce8', 'ACTIVE'),
(66, 1, '0e79c5f2563071872773a93445c00fe6985413d1', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `order_info`
--

CREATE TABLE `order_info` (
  `order_id` varchar(21) DEFAULT NULL,
  `transaction_id` varchar(31) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_info`
--

INSERT INTO `order_info` (`order_id`, `transaction_id`, `total_price`, `user_id`, `Address`, `order_date`, `order_status`) VALUES
('9XKq1hT18Px8p6o', 'fu80WS0x4wv63641jSHo', 288, 3, '2-113 , Pcp thanda , Ananthapuram , 515832', '2022-07-07', 'REFUNDED'),
('KEKNAeLgR5CxZ8A', 'U3PmAI2bhBf6Jz8LupZv', 678, 28, 'IIITDMJ , jabalpur , 482005', '2023-08-15', 'ACTIVE'),
('3OSE5A27yrHzIV9', 'tcAMYNfn14CiaXXlRxcw', 49, 28, 'IIITDMJ , jabalpur , 482005', '2023-08-15', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_id` varchar(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_id`, `product_id`, `product_price`, `product_name`, `qty`) VALUES
('9XKq1hT18Px8p6o', 2, 139, 'Asain - Study Table', 1),
('9XKq1hT18Px8p6o', 4, 149, 'Table & Chairs', 1),
('KEKNAeLgR5CxZ8A', 9, 339, 'Samsung Ipad', 2),
('3OSE5A27yrHzIV9', 5, 49, 'Ladies Casual Dress ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_category` int(11) NOT NULL,
  `p_brand` int(11) NOT NULL,
  `p_name` varchar(30) NOT NULL,
  `p_price` int(11) NOT NULL,
  `p_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_category`, `p_brand`, `p_name`, `p_price`, `p_image`) VALUES
(1, 2, 5, 'Wardrobe', 699, 'wardrobe1_up.jpg'),
(2, 2, 6, 'Asain - Study Table', 139, 'studyTable.png'),
(3, 2, 6, 'Luxurious Sofa', 179, 'sofa4_up.jpg'),
(4, 2, 5, 'Table & Chairs', 149, 'tablechair.jpg'),
(5, 3, 3, 'Ladies Casual Dress ', 49, '7475-ladies-casual-dresses-summer-two-colors-pleated.jpg'),
(6, 3, 4, 'Black Jeans', 79, 'pt5.jpg'),
(7, 1, 1, 'Iphone 6', 999, 'iphone3.jpg'),
(8, 1, 1, 'Macbook Air ', 1999, 'macbook1.png'),
(9, 1, 2, 'Samsung Ipad', 339, 'ipad_sam.jpg'),
(10, 1, 2, 'Samsung S21', 1199, 'sams21.jpg'),
(11, 4, 8, 'Refrigerator', 259, 'Home Appliancesll.jpg'),
(12, 4, 7, 'Iron', 69, 'iron2.jpg'),
(13, 4, 7, 'Mixer Grinder', 63, 'singer-mixer-grinder-mg-46-medium_4bfa018096c25dec7ba0af40662856ef.jpg'),
(14, 4, 8, 'Washing Machine', 786, 'washing 012.jpg'),
(15, 3, 5, 'Black Lace Dress', 399, 'women casual5.jpg'),
(16, 2, 6, 'Asian - Bed', 599, 'bed02.jpg'),
(17, 3, 5, 'Shirt and Pant', 89, 'clothes1.jpg'),
(18, 1, 2, 'Headphone', 299, 'product05.png'),
(19, 1, 1, 'Iphone 12 ', 1499, 'iphoneSE412.png'),
(20, 3, 5, 'Ladies Partywear', 499, 'women casual.webp'),
(21, 3, 5, 'Silky Top', 119, 'women casual3.jpg'),
(22, 2, 6, 'Groovy Swivel Chair', 559, 'Swivel Laounge Chair1.jpg'),
(23, 2, 5, 'Asian - Wardrobe', 499, 'wardrobe.jpg'),
(24, 3, 4, 'Purple Coat', 109, 'pm13.jpg'),
(25, 1, 2, 'Speaker with Alexa', 99, 'Alexa.jpg'),
(26, 3, 5, 'Baby cloth', 100, '1.0x0.jpg'),
(30, 2, 6, 'Casper Mattres Bed', 1100, 'bed06.jpg'),
(32, 2, 5, 'Indian rosewood', 2000, 'bedroom4.jpg'),
(37, 1, 1, 'Mac Book  Pro 2020', 2499, '1657221115213.jpg'),
(38, 1, 1, 'Ipad Air 4th Gen', 599, '1657221314218.webp'),
(39, 1, 1, 'Ipad Pro 2021 M1 ', 799, '1657221417868.png'),
(40, 1, 9, 'One Plus Nord 2T', 439, '1657221790220.webp'),
(41, 1, 9, 'One Plus 40 Inch Tv', 281, '1657221963737.png'),
(42, 1, 7, ' Lg 50inch 4k UHD TV', 425, '1657222078197.jpeg'),
(43, 1, 1, 'I Phone 11 64 Gb Ram Black', 299, '1657222229600.jpeg'),
(44, 1, 10, 'Mi (43 inch) Full HD LED TV', 315, '1657222557604.webp'),
(45, 1, 10, 'RedMi Note 11 5G 128GB', 227, '1657222694725.webp'),
(46, 1, 11, 'Dell 27inch Gaming Monitor', 245, '1657222825342.webp'),
(47, 1, 11, 'Dell 20inch HD Monitor', 107, '1657223789859.webp');

-- --------------------------------------------------------

--
-- Table structure for table `t1`
--

CREATE TABLE `t1` (
  `name` varchar(200) DEFAULT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t1`
--

INSERT INTO `t1` (`name`, `id`) VALUES
('hello', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t2`
--

CREATE TABLE `t2` (
  `company_id` int(11) DEFAULT NULL,
  `revenue` int(11) DEFAULT NULL,
  `expenses` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t2`
--

INSERT INTO `t2` (`company_id`, `revenue`, `expenses`) VALUES
(1, 20, 30),
(1, 40, 20);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`) VALUES
(1, 'Ana', '786', 'ritikkumar814512@gmail.com'),
(2, 'Amit', '1234', 'rk9531857@gmail.com'),
(3, 'jayaram', 'Zeroop@123', 'jayaramnaik725@gmail.com'),
(11, 'Zeroop', 'zeroop', 'iit2019106@iiita.ac.in'),
(17, 'Ritik', '1234', 'iit2019088@iiita.ac.in'),
(19, 'lakjsfn', 'hello', 'jd@gmail.com'),
(20, 'rit', 'rahul', 'harshal@gmail.com'),
(21, 'olsakdjof', 's', 'dk@gmail.com'),
(22, 'aslodfh', 'ja', 's@gmail.com'),
(23, 'saodhf', 'j', 'k@gmail.com'),
(24, 'hello', 'hi', 'sdlkfjsd'),
(27, 'abhinav', 'a', 'kathuriabhinav@gmail.com'),
(28, 'bro', 'aking', '20bcs225@iiitdmj.ac.in');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
