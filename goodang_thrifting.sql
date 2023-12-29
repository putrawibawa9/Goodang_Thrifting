-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2023 at 07:49 PM
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
-- Database: `goodang_thrifting`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id_admin` int(11) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id_admin`, `Username`, `Password`) VALUES
(4, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `Id_pelanggan` int(11) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Nama_pelanggan` varchar(30) NOT NULL,
  `No_pelanggan` int(11) DEFAULT NULL,
  `Alamat_pelanggan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`Id_pelanggan`, `Password`, `Nama_pelanggan`, `No_pelanggan`, `Alamat_pelanggan`) VALUES
(15, 'admin', 'admin', 0, 'admin'),
(19, '123', 'agus', 0, 'Ketewel');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `Id_pesanan` int(11) NOT NULL,
  `Id_pelanggan` int(11) NOT NULL,
  `Id_produk` int(11) NOT NULL,
  `Alamat_pesanan` text NOT NULL,
  `Total_pesanan` int(11) NOT NULL,
  `Tgl_pesanan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`Id_pesanan`, `Id_pelanggan`, `Id_produk`, `Alamat_pesanan`, `Total_pesanan`, `Tgl_pesanan`) VALUES
(68, 19, 99, 'Ketewel', 55000, '2023-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `Id_produk` int(11) NOT NULL,
  `Nama_produk` varchar(30) NOT NULL,
  `Foto_produk` varchar(30) NOT NULL,
  `Stok_produk` int(11) NOT NULL,
  `Deskripsi_produk` text NOT NULL,
  `Harga_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`Id_produk`, `Nama_produk`, `Foto_produk`, `Stok_produk`, `Deskripsi_produk`, `Harga_produk`) VALUES
(13, 'Jaket Bomber', '5.jpg', 13, 'Pelengkap gaya urbanmu dengan jaket bomber kami yang keren! Didesain untuk tampil stylish dan tetap hangat. Segera hadirkan sentuhan kece ke dalam koleksimu. ', 50000),
(15, 'Baju Rajut', '6.jpg', 13, 'Peluk kenyamanan denngan kehangatan baju rajut kita. Setiap jahitan menghadirkan sentuhan kasual dan gaya yang tak terbantahkan. Temukan keseimbangan sempurna antara kenyamanan dan penampilan. ', 30000),
(20, 'Baju Lengan Panjang', '7.jpg', 12, 'Perbarui koleksimu dengan kemeja lengan panjang kami yang nyaman dan trendi. Hadirkan gaya yang tak lekang oleh waktu. ', 10000),
(23, 'Kaos Polos', '8.jpg', 5, 'Sederhana namun tak pernah ketinggalan zaman. Temukan keindahan dalam kesederhanaan dengan koleksi baju polos kami. Padukan dengan gaya pribadimu dan buat pernyataan fashion yang timeless', 75000),
(99, 'Celana Panjang', '9.jpg', 5, 'Penuhi hari-harimu dengan kenyamanan dan gaya bersama koleksi celana panjang kami. Desain yang modis dan detail yang sempurna untuk penampilan yang selalu berkelas. Temukan keseimbangan antara gaya dan kenyamanan', 55000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `Id_transaksi` int(11) NOT NULL,
  `Id_pesanan` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Bukti` blob NOT NULL,
  `Bank` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id_admin`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`Id_pelanggan`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`Id_pesanan`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`Id_produk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `Id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `Id_pesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `Id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
