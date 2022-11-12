-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2022 at 03:54 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `berbagi`
--

-- --------------------------------------------------------

--
-- Table structure for table `cerita`
--

CREATE TABLE `cerita` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` text NOT NULL,
  `subjectt` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cerita`
--

INSERT INTO `cerita` (`id`, `name`, `email`, `subjectt`, `message`) VALUES
(1, 'Fionaaaa', 'fionakharisma01@gmail.com', 'Kelapa', 'Kelapa sangat bermanfaat bagi pertanian'),
(2, 'Yourdan', 'yourdan@gmail.com', 'Pupuk', 'Saya pernah mencoba membuat toilet kompos dan memang hasilnya memuaskan!'),
(3, 'Pradinda', 'pradinda@gmail.com', 'Tanaman', 'Pengalaman saya menanam buah kedondong banyak sekali kenda, ternyata dari buah tsb bisa menghasilkan listrik ya'),
(4, 'Naufal', 'fal@gmail.com', 'Pupuk', 'Pengalam yang sangat menyenangkan ketika bisa menghasilkan listrik dari tanaman yang saya buat'),
(5, 'kha', 'kha@apps.id', 'Tanaman', 'Tanaman membuat rumah menjadi hangat'),
(6, 'Iyo', 'iyo@gmail.com', 'Pertanian', 'Pertanian sangat menyenangkan'),
(7, 'Annisa', 'nisa@gmail.com', 'Tanah', 'Saya pernah membuat tanah yang gambus menjadi subur dengan memakai cairan kelapa'),
(8, 'Nur', 'nur@gmail.com', 'Kelapa', 'Saya membuat seluruh bagian pohon kelapa menjadi bermanfaat untuk lahan pertanian saya'),
(9, 'Putra', 'putra@gmail.com', 'Listrik', 'Pemakaian listrik dari buah kedondong bermanfaat bagi saya '),
(10, 'Luthfi', 'luthfi@gmail.com', 'Hama', 'Tanah saya sudah terhindar dari hama karena..'),
(11, 'Ahmad', 'ahmad@gmail.com', 'Kompos', 'Pakai pupuk kompos dari kotoran manusia, tanah semakin subur'),
(40, 'Saputra Y', 'yourdan@gmail.com', 'Hama', 'Dengan memakai pupuk kompos dari kotoran manusia, tanah semakin subur'),
(62, 'Fiona', 'fionakharisma01@gmail.com', 'Kelapaa', 'Kelapa sangat bermanfaat'),
(63, 'Fionaa', 'fionakharisma01@gmail.com', 'Kelapa', 'Kelapa sangat bermanfaat bagi pertanian'),
(125, 'kharismafiona', 'fionakharisma01@gmail.com', 'Hama', 'Hama merusak tanaman'),
(127, 'Annisa', 'nisa@gmail.com', 'Tanah', 'Saya pernah membuat tanah yang gambus menjadi subur dengan memakai cairan kelapa'),
(128, 'Nur', 'nur@gmail.com', 'Kelapa', 'Saya membuat seluruh bagian pohon kelapa menjadi bermanfaat untuk lahan pertanian saya'),
(129, 'Putra', 'putra@gmail.com', 'Listrik', 'Pemakaian listrik dari buah kedondong bermanfaat bagi saya '),
(130, 'Luthfi', 'luthfi@gmail.com', 'Hama', 'Tanah saya sudah terhindar dari hama karena..'),
(131, 'Ahmad', 'ahmad@gmail.com', 'Kompos', 'Dengan memakai pupuk kompos dari kotoran manusia, tanah semakin subur');

-- --------------------------------------------------------

--
-- Table structure for table `data_subject`
--

CREATE TABLE `data_subject` (
  `subjectt` varchar(100) NOT NULL,
  `jumlah` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_subject`
--

INSERT INTO `data_subject` (`subjectt`, `jumlah`) VALUES
('Hama', 2),
('Kompos', 1),
('Tanaman', 2),
('Listrik', 1),
('Kelapa', 2),
('Pupuk', 2),
('Tanah', 1),
('Pertanian', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cerita`
--
ALTER TABLE `cerita`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cerita`
--
ALTER TABLE `cerita`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
