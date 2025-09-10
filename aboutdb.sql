-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2025 at 10:03 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aboutdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `abt`
--

CREATE TABLE `abt` (
  `id` int(11) NOT NULL,
  `Judul` varchar(100) NOT NULL,
  `Isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `abt`
--

INSERT INTO `abt` (`id`, `Judul`, `Isi`) VALUES
(1, 'About IC Tech', 'IC Tech adalah perusahaan yang bergerak di bidang pembuatan custom part untuk kebutuhan mesin industri maupun otomotif. Dengan dukungan teknologi presisi dan tenaga ahli berpengalaman, kami menghadirkan solusi yang sesuai dengan kebutuhan spesifik setiap klien, mulai dari desain, produksi, hingga quality control yang terjamin.\r\n\r\nKami percaya bahwa kualitas dan ketelitian adalah kunci utama dalam setiap komponen yang kami hasilkan. Melalui inovasi berkelanjutan dan standar kerja tinggi, IC Tech berkomitmen untuk menjadi “Your Precision Solution”, menghadirkan produk yang tidak hanya andal, tetapi juga meningkatkan kinerja mesin Anda secara maksimal.');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `message`, `submitted_at`) VALUES
(1, 'dadadad', 'syairalife22@gmail.com', 'adwddawda', '2025-09-09 07:29:52'),
(2, 'wdawdad', 'syairalife22@gmail.com', 'dadsadasd', '2025-09-09 07:31:39'),
(3, 'wdawdad', 'syairalife22@gmail.com', 'dadsadasd', '2025-09-09 07:32:14'),
(4, 'wdawdad', 'syairalife22@gmail.com', 'dadsadasd', '2025-09-09 07:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `customer_data`
--

CREATE TABLE `customer_data` (
  `id` int(11) NOT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_data`
--

INSERT INTO `customer_data` (`id`, `kategori`, `jumlah`) VALUES
(1, 'otomotif', 10),
(2, 'Perkapalan', 12),
(3, 'Dirgantara', 8),
(4, 'Industri Lain', 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abt`
--
ALTER TABLE `abt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_data`
--
ALTER TABLE `customer_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abt`
--
ALTER TABLE `abt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_data`
--
ALTER TABLE `customer_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
