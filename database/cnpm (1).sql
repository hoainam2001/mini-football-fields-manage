-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 03, 2022 at 11:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cnpm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `name`, `image`) VALUES
('admin', 'admin', 'Admin', 'images/admin.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `doanhthu`
--

CREATE TABLE `doanhthu` (
  `id` int(11) NOT NULL,
  `sodon` int(11) NOT NULL,
  `doanhthu` int(11) NOT NULL,
  `date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doanhthu`
--

INSERT INTO `doanhthu` (`id`, `sodon`, `doanhthu`, `date`) VALUES
(10, 3, 400000, '2022-01-02'),
(11, 5, 600000, '2022-01-01'),
(12, 5, 500000, '2021-12-31'),
(13, 6, 700000, '2021-12-30'),
(14, 10, 4000000, '2021-02-02'),
(15, 3, 400000, '2022-01-03'),
(16, 6, 500000, '2021-12-29'),
(17, 6, 800000, '2021-12-28'),
(18, 6, 600000, '2021-12-27'),
(19, 6, 600000, '2021-12-26');

-- --------------------------------------------------------

--
-- Table structure for table `drink`
--

CREATE TABLE `drink` (
  `id` int(11) NOT NULL,
  `maDrink` varchar(20) NOT NULL,
  `nameDrink` varchar(50) NOT NULL,
  `priceDrink` int(11) NOT NULL,
  `imageDrink` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drink`
--

INSERT INTO `drink` (`id`, `maDrink`, `nameDrink`, `priceDrink`, `imageDrink`) VALUES
(6, 'pepsi', 'Pepsi', 10000, 'images/pepsi.jpeg'),
(7, 'coca', 'Coca', 10000, 'images/coca.jpeg'),
(8, 'revive', 'Revive', 12000, 'images/revive.jpeg'),
(10, 'nuoc', 'Nước suối', 5000, 'images/aquafina.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `id` int(11) NOT NULL,
  `maKH` varchar(50) NOT NULL,
  `maSan` varchar(10) NOT NULL,
  `ngaydat` date NOT NULL,
  `giodat` time NOT NULL,
  `thoigian` int(11) NOT NULL,
  `ngayLap` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `giohangdrink`
--

CREATE TABLE `giohangdrink` (
  `id` int(11) NOT NULL,
  `maDrink` varchar(20) NOT NULL,
  `maKH` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `id` int(11) NOT NULL,
  `maDon` varchar(100) NOT NULL,
  `maKH` varchar(50) NOT NULL,
  `hinhthuc` varchar(50) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `ngayLap` date NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id`, `name`, `username`, `password`, `image`) VALUES
(6, 'Nguyễn Hưng Hoài Nam', 'hoainam', '123', 'images/8c7e9fa06948d3b136dabfba06b33bac.JPG'),
(7, 'Lê Ngọc Trân', 'ngoctran', '123', 'images/38c7ff97cdb45099476faa2f5ee0e96c.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `name`, `username`, `password`, `image`) VALUES
(4, 'Mai Nguyễn Thái Học', 'nvhoc', 'nvhoc', 'images/1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sanbong`
--

CREATE TABLE `sanbong` (
  `id` int(11) NOT NULL,
  `maSan` varchar(10) NOT NULL,
  `tenSan` varchar(50) NOT NULL,
  `giaSan` int(11) NOT NULL,
  `imageSan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanbong`
--

INSERT INTO `sanbong` (`id`, `maSan`, `tenSan`, `giaSan`, `imageSan`) VALUES
(27, 'san1', 'Sân 1', 3500, 'images/san1.jpeg'),
(28, 'san2', 'Sân 2', 4000, 'images/san2.jpeg'),
(29, 'san3', 'Sân 3', 4500, 'images/san3.jpeg'),
(30, 'san4', 'Sân 4', 4500, 'images/san4.jpeg'),
(31, 'san5', 'Sân 5', 5000, 'images/san5.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tamgiohangdrink`
--

CREATE TABLE `tamgiohangdrink` (
  `id` int(11) NOT NULL,
  `maDon` varchar(50) NOT NULL,
  `maDrink` varchar(20) NOT NULL,
  `maKH` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tamgiohangsan`
--

CREATE TABLE `tamgiohangsan` (
  `id` int(11) NOT NULL,
  `maDon` varchar(50) NOT NULL,
  `maKH` varchar(50) NOT NULL,
  `maSan` varchar(10) NOT NULL,
  `ngaydat` date NOT NULL,
  `giodat` time NOT NULL,
  `thoigian` int(11) NOT NULL,
  `ngayLap` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doanhthu`
--
ALTER TABLE `doanhthu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drink`
--
ALTER TABLE `drink`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giohangdrink`
--
ALTER TABLE `giohangdrink`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanbong`
--
ALTER TABLE `sanbong`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tamgiohangdrink`
--
ALTER TABLE `tamgiohangdrink`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tamgiohangsan`
--
ALTER TABLE `tamgiohangsan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doanhthu`
--
ALTER TABLE `doanhthu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `drink`
--
ALTER TABLE `drink`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `giohangdrink`
--
ALTER TABLE `giohangdrink`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sanbong`
--
ALTER TABLE `sanbong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tamgiohangdrink`
--
ALTER TABLE `tamgiohangdrink`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `tamgiohangsan`
--
ALTER TABLE `tamgiohangsan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;