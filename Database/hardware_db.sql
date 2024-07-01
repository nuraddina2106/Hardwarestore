-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2024 at 12:55 AM
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
-- Database: `hardware_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(6, 'admin', 'admin123', 'admin@gmail.com', '', '2024-06-30 22:07:01'),
(9, 'ijjah', '12', 'il212@gmail.com', 'QSTE52', '2024-06-21 14:58:53'),
(10, '1', '1', 'anismashitah212@gmail.com', 'QMTZ2J', '2024-06-30 14:49:48');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Table structure for table `hardware`
--

CREATE TABLE `hardware` (
  `st_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hardware`
--

INSERT INTO `hardware` (`st_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(57, 12, 'Hardware', 'nurazlishafarhana@gmail.com', '011-3630 6284', 'https://www.instagram.com/hardwarestore04_/', '8am', '10pm', 'mon-sat', '      Tepi Klinik Bidan Jalan Sungai Baru Simpang Ampat, 02700 Kangar, Perlis      ', '668171af04781.png', '2024-06-30 14:54:39');

-- --------------------------------------------------------

--
-- Table structure for table `hardwares`
--

CREATE TABLE `hardwares` (
  `d_id` int(222) NOT NULL,
  `st_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hardwares`
--

INSERT INTO `hardwares` (`d_id`, `st_id`, `title`, `slogan`, `price`, `img`) VALUES
(74, 57, 'Lenovo Go Wired Speakerphone', 'The Lenovo Go Wired Speakerphone brings enterprise-grade conferencing and audio to the remote workforce', 499.90, '66790adbc8171.jpg'),
(81, 57, 'Huawei 1TB Backup Storage', 'The Huawei 1TB Backup Storage provides ample storage capacity for secure and reliable data backup solutions.', 380.00, '6681c92447bcd.jpg'),
(82, 57, 'Huawei Sound X', 'The Huawei Sound X is a high-fidelity wireless speaker co-engineered with Devialet, known for its impressive sound quality and sleek design.', 816.00, '6681c99cdf966.jpg'),
(83, 57, 'ThinkPad 512GB Performance PCIe Gen4 NVMe OPAL2 M.2 2280 SSD', 'The ThinkPad 512GB Performance PCIe Gen4 NVMe OPAL2 M.2 2280 SSD offers high-speed performance and enhanced security features suitable for demanding computing needs.', 729.90, '6681c8d28d4fc.jpg'),
(84, 57, 'Insta360 Link', 'The Insta360 Link is a compact and versatile action camera designed for capturing immersive 360-degree videos and photos.', 1.00, '6681ca4cc03ee.jpg'),
(85, 57, 'Logitech Brio 100 Full HD Webcam', 'The Logitech Brio 100 Full HD Webcam offers high-definition video quality and advanced features, ideal for professional video conferencing and streaming applications.', 179.00, '6681ca919004a.jpg'),
(86, 57, 'NexiGo N930AF 1080P FHD USB Webcam', 'The NexiGo N930AF 1080P FHD USB Webcam provides crisp Full HD video resolution with autofocus capabilities, designed for clear and smooth video conferencing and streaming experiences.', 382.00, '6681cae16bd6e.jpg'),
(87, 57, 'Kingston XS2000 USB 3.2 Gen 2 Pocket Sized Portable External SSD (SXS2000/1000G)', 'The Kingston XS2000 USB 3.2 Gen 2 Pocket Sized Portable External SSD (SXS2000/1000G) offers fast data transfer speeds in a compact design, perfect for portable storage and quick file access on the go.', 509.00, '6681cb2f93923.jpg'),
(88, 57, 'Lenovo Legion M200 RGB Gaming Mouse', 'The Lenovo Legion M200 RGB Gaming Mouse combines responsive performance with customizable RGB lighting, tailored for gamers seeking both precision and style in their gameplay experience.', 49.00, '6681cb7b64c17.jpg'),
(89, 57, 'HP M220 GAMING MOUSE RGB HIGH PERFORMANCE WIRED OPTICAL GAMING MOUSE', 'The HP M220 Gaming Mouse RGB is a high-performance wired optical gaming mouse featuring customizable RGB lighting, designed to enhance precision and responsiveness for gaming enthusiasts.', 55.00, '6681ccee068ae.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(81, 108, 'closed', 'Order delivered', '2024-01-10 14:03:51'),
(82, 109, 'in process', 's', '2024-01-13 13:18:15'),
(83, 109, 'rejected', 'habis', '2024-01-13 13:19:03'),
(84, 109, 'in process', 'otw', '2024-01-13 13:21:48'),
(85, 109, 'rejected', 'b', '2024-01-13 13:23:07'),
(86, 63, 'rejected', 'y', '2024-01-13 14:31:54'),
(87, 107, 'in process', 'hh', '2024-01-13 14:46:53'),
(88, 107, 'rejected', 'm', '2024-01-13 14:47:16'),
(89, 107, 'rejected', 'm', '2024-01-13 14:49:37'),
(90, 63, 'rejected', 'k', '2024-01-13 15:37:46'),
(91, 114, 'closed', 'g', '2024-01-13 16:12:35'),
(92, 115, 'in process', 'h', '2024-01-13 16:12:56'),
(93, 117, 'closed', 'jj', '2024-01-13 17:56:03'),
(94, 122, 'in process', 'Packing ', '2024-06-30 15:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `store_category`
--

CREATE TABLE `store_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `store_category`
--

INSERT INTO `store_category` (`c_id`, `c_name`, `date`) VALUES
(12, 'Shop', '2024-06-24 00:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `Membership` varchar(255) NOT NULL,
  `Reward` int(100) NOT NULL,
  `Discount` int(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `Membership`, `Reward`, `Discount`, `date`, `img`) VALUES
(45, '1', 'sara', 'sara', 'anismashitah212@gmail.com', '+60195036379', '123456', 'No. 54 Batu 1 Sungai Baru 02700\r\nSimpang Empat Perlis.', 1, 'Megabyte', 0, 0, '2024-06-30 22:38:04', 'girl_icon.jpg'),
(46, 'izzah', 'izzah', 'ali', 'izzah212@gmail.com', '+60195036379', 'izzah123', 'No. 54 Batu 1 Sungai Baru 02700\r\nSimpang Empat Perlis.', 1, 'Terabyte', 0, 0, '2024-06-30 22:07:33', ''),
(47, 'ami', 'ami', 'ami', 'ami212@gmail.com', '+60195036379', 'd69df3d87667759f3f051d24d7475b14', 'No. 22626 Batu 1 Sungai Baru 02700\r\nSimpang Empat Perlis.', 1, 'Gigabyte', 0, 0, '2024-06-28 17:34:16', ''),
(48, 'user1', 'ANIS', 'BINTI AHMAD', 'anismashitqqah212@gmail.com', '0195036379', '550e1bafe077ff0b0b67f4e32f29d751', 'No. 54 Batu 1 Sungai Baru 02700\r\nSimpang Empat Perlis.', 1, 'Gigabyte', 0, 0, '2024-06-29 01:19:38', '6678c924e6b52.jpg'),
(49, 'user2', 'ANISa', 'qah1', 'anismashitaaah212@gmail.com', '01950363792', '12345678', 'No. 54 Batu 1 Sungai Baru 02700\r\nSimpang Empat Perlis.', 1, 'Megabyte', 0, 0, '2024-06-30 16:35:16', '6678c924e6b52.jpg'),
(50, 'adminqq', 'ANISq', 'BINTI AHMADq', 'anqdcsdqfdwv2qv212@gmail.com', '0195036379', '25f9e794323b453885f5181f1b624d0b', 'No. 54 Batu 1 Sungai Baru 02700\r\nSimpang Empat Perlis.', 1, 'Megabyte', 0, 0, '2024-06-30 19:43:22', '667f25939deff.jpg'),
(51, 'qaff', 'qwsadsadne', 'BINTI AHMADdxDff', 'qwsassad212@gmail.com', '0195036379', '25d55ad283aa400af464c76d713c07ad', 'No. 54 Batu 1 Sungai Baru 02700\r\nSimpang Empat Pdfsserlis.', 1, 'Gigabyte', 0, 0, '2024-06-30 22:09:24', '667f2811af86d.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `discount` int(11) NOT NULL,
  `reward` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `discount`, `reward`, `price`, `status`, `date`) VALUES
(122, 48, 'Lenovo 45W Round Tip AC Adapter (UK)', 1, 0, 0, 78.85, 'in process', '2024-06-30 15:33:19'),
(123, 49, 'HP Bluetooth® Mini Speaker 300', 1, 0, 0, 49.00, NULL, '2024-06-24 07:05:15'),
(127, 49, 'HP Bluetooth® Mini Speaker 300', 1, 0, 0, 49.00, NULL, '2024-06-30 10:46:03'),
(128, 49, 'HP Bluetooth® Mini Speaker 300', 1, 0, 0, 49.00, NULL, '2024-06-30 10:47:06'),
(129, 49, 'HP Bluetooth® Mini Speaker 300', 1, 0, 0, 49.00, NULL, '2024-06-30 14:27:55'),
(130, 49, 'HP Bluetooth® Mini Speaker 300', 1, 0, 0, 49.00, NULL, '2024-06-30 14:28:05'),
(131, 49, 'HP Bluetooth® Mini Speaker 300', 1, 0, 0, 49.00, NULL, '2024-06-30 14:33:42'),
(132, 49, 'HP Essentials Laptop 15-fc0209AU', 1, 0, 0, 2320.00, NULL, '2024-06-30 14:36:17'),
(133, 49, 'HP Bluetooth® Mini Speaker 300', 1, 0, 0, 49.00, NULL, '2024-06-30 14:39:36'),
(134, 49, 'Huawei Sound X', 1, 0, 0, 816.00, NULL, '2024-06-30 16:23:01'),
(135, 49, 'HP Z34c G3 WQHD Curved Display', 1, 0, 0, 3950.00, NULL, '2024-06-30 19:08:44'),
(136, 49, 'HP Essentials Laptop 15-fc0209AU', 2, 0, 0, 2320.00, NULL, '2024-06-30 19:12:15'),
(137, 45, 'HP Essentials Laptop 15-fc0209AU', 1, 0, 0, 2320.00, NULL, '2024-06-30 22:33:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hardware`
--
ALTER TABLE `hardware`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `hardwares`
--
ALTER TABLE `hardwares`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_category`
--
ALTER TABLE `store_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hardware`
--
ALTER TABLE `hardware`
  MODIFY `st_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `hardwares`
--
ALTER TABLE `hardwares`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `store_category`
--
ALTER TABLE `store_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
