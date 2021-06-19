-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2021 at 07:32 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2basic2`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `harga` double NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `satuan`, `id_jenis`, `id_supplier`, `harga`, `stok`) VALUES
(1, 'B001', 'Keyboard', 'Unit', 1, 2, 100000, 20),
(2, 'B002', 'Mouse Logitec', 'unit', 1, 2, 70000, 15),
(3, 'B003', 'Kipas Turbo', 'unit', 2, 1, 1000000, 20),
(4, 'B004', 'Kipas Biasa', 'unit', 2, 1, 300000, 7),
(5, 'B005', 'Hp Xiaomi Redmi 4a', 'unit', 2, 1, 1500000, 25),
(6, 'B006', 'Hp Xiaomi Redmi 5a', 'unit', 2, 2, 1800000, 10),
(7, 'B007', 'Hp Realme 5', 'unit', 2, 1, 2800000, 15),
(8, 'B008', 'Headset Gaming', 'unit', 1, 2, 800000, 8),
(9, 'B009', 'Mouse Gaming', 'unit', 1, 1, 400000, 17),
(10, 'B010', 'Touchpad', 'unit', 1, 2, 1000000, 12),
(11, 'B011', 'Joy Stick', 'unit', 1, 2, 1000000, 22);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `code` char(2) NOT NULL,
  `name` char(52) NOT NULL,
  `population` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`code`, `name`, `population`) VALUES
('AU', 'Australia', 24016400),
('BR', 'Brazil', 205722000),
('CA', 'Canada', 35985751),
('CN', 'China', 1375210000),
('DE', 'Germany', 81459000),
('FR', 'France', 64513242),
('GB', 'United Kingdom', 65097000),
('IN', 'India', 1285400000),
('RU', 'Russia', 146519759),
('US', 'United States', 322976000);

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id` int(11) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id`, `nama_jenis`, `keterangan`) VALUES
(1, 'Alat Komputer', 'Macam macam alat Komputer dan lain lain'),
(2, 'Alat Elektronik', 'Macam macam alat Elektronik Seperti kipas dan lain');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id_jurusan` int(12) NOT NULL,
  `kode_jurusan` varchar(15) NOT NULL,
  `nama_jurusan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `kode_jurusan`, `nama_jurusan`) VALUES
(1, 'J0001', 'Teknik Komputer'),
(2, 'J0002', 'Sipil'),
(3, 'J0003', 'Akuntansi'),
(4, 'J0004', 'Bahasa');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jekel` char(1) NOT NULL,
  `tgl` date NOT NULL,
  `id_jurusan` int(12) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `jekel`, `tgl`, `id_jurusan`, `id_prodi`, `email`, `alamat`) VALUES
(1001, '2001', 'Aldi', 'L', '0000-00-00', 0, 2, 'aldi@gmail.com', 'Batunadua nomor 4'),
(1002, '2002', 'Ibnu', 'L', '0000-00-00', 0, 2, 'ibnu@gmail.com', 'Panyanggar nomor 2'),
(1003, '2003', 'Kurnia', 'L', '0000-00-00', 0, 1, 'kurnia@gmail.com', 'Sadabuan nomor 1'),
(1004, '2004', 'Rahmat', 'L', '0000-00-00', 0, 2, 'rahmat@gmail.com', 'Sadabuan nomor 2'),
(1005, '2005', 'Ilham', 'L', '0000-00-00', 0, 1, 'ilham@gmail.com', 'Sadabuan nomor 3'),
(1006, '2006', 'Maulana', 'L', '0000-00-00', 0, 2, 'maulana@gmail.com', 'Batunadua nomor 4'),
(1007, '2007', 'Isma', 'P', '0000-00-00', 0, 3, 'isma@gmail.com', 'Batunadua nomor 7'),
(1008, '2008', 'Ayu', 'P', '0000-00-00', 0, 3, 'ayu@gmail.com', 'Panyanggar nomor 9'),
(1009, '2009', 'Wahyu', 'L', '0000-00-00', 0, 1, 'wahyu@gmail.com', 'Batunadua nomor 1'),
(1010, '2010', 'Pratama', 'L', '0000-00-00', 0, 2, 'pratama@gmail.com', 'Sadabuan nomor 10'),
(1011, '2011', 'Ismi', 'P', '0000-00-00', 0, 3, 'ismi@gmail.com', 'Sadabuan nomor 11'),
(10031, '12345', 'Very', 'L', '0000-00-00', 1, 2, 'very@gmail.com', 'padangsidimpuan'),
(10032, '1234567', 'Zim', 'L', '2000-05-09', 1, 2, 'zim@gmail.com', 'padang');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `prodi` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `prodi`, `keterangan`) VALUES
(1, 'TRPL', 'Rekayasan Perangkat Lunak'),
(2, 'TK', 'Teknik Komputer'),
(3, 'AK', 'Akuntansi'),
(4, 'SP', 'Sipil'),
(5, 'Bahasa', 'Bahasa'),
(6, 'PJ', 'Pembangunan Jembatan'),
(7, 'BJ', 'Bahasa Jepang');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `notelp` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nama_supplier`, `notelp`, `email`, `alamat`) VALUES
(1, 'Maju Jaya', '082222222222', 'maju@gmail.com', 'Padang jalan rambutan gang merah nomor 3'),
(2, 'Halilintar', '0823333333', 'halilintar@gmail.com', 'Bukittinggi jalan kelapa gang coklat nomor 8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jenis` (`id_jenis`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mahasiswa_ibfk_1` (`id_prodi`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id_jurusan` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10033;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_jenis`) REFERENCES `jenis` (`id`),
  ADD CONSTRAINT `barang_ibfk_2` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `prodi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
