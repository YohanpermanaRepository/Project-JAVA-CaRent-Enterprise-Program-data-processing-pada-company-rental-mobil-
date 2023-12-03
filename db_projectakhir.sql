-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2022 at 06:59 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_projectakhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_pengembalian`
--

CREATE TABLE `data_pengembalian` (
  `nama` varchar(200) NOT NULL,
  `no_tlp` varchar(100) NOT NULL,
  `jaminan` varchar(200) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `nopol` varchar(300) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `tgl_pinjaman` varchar(50) NOT NULL,
  `tgl_pengembalian` varchar(50) NOT NULL,
  `lama` varchar(20) NOT NULL,
  `total` varchar(20) NOT NULL,
  `telat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pengembalian`
--

INSERT INTO `data_pengembalian` (`nama`, `no_tlp`, `jaminan`, `alamat`, `nopol`, `harga`, `tgl_pinjaman`, `tgl_pengembalian`, `lama`, `total`, `telat`) VALUES
('Bismillah', '0978', 'KTP', 'Bjn', 'B 1578 EYG', '1000000', 'Wed Nov 02 12:11:41 ICT 2022', 'Thu Nov 03 12:11:43 ICT 2022', '1', '1050000', '1'),
('Bismillah', '0968709', 'KTP', 'sjdfs', 'AE 8976 DM', '2000000', 'Thu Nov 03 12:19:08 ICT 2022', 'Fri Nov 04 12:19:10 ICT 2022', '1', '2050000', '1'),
('Bismillah', '0987', 'KTP', 'Alhamdulillah', 'AE 8976 DM', '2000000', 'Thu Nov 03 12:29:41 ICT 2022', 'Sat Nov 05 12:29:43 ICT 2022', '2', '4000000', '0'),
('Bismillah', '07070', 'KTP', 'BIsaaaa', 'AE 8976 DM', '2000000', 'Thu Nov 03 12:48:33 ICT 2022', 'Sat Nov 05 12:48:35 ICT 2022', '2', '4000000', '0'),
('Always Bismillah', '777777777777', 'KTP', 'Bisaaaa', 'AE 8976 DM', '2000000', 'Thu Nov 03 12:50:18 ICT 2022', 'Sat Nov 05 12:50:21 ICT 2022', '2', '4000000', '0'),
('Aku', '0978', 'KTP', 'iugiuu', 'AE 8976 DM', '2000000', 'Thu Nov 03 14:16:48 ICT 2022', 'Fri Nov 04 14:16:51 ICT 2022', '1', '2000000', '0'),
('Yohan', 'dijfngif', 'KTP', 'ygbyudbfgudfg', 'AE 8976 DM', '2000000', 'Wed Nov 02 21:39:25 ICT 2022', 'Thu Nov 03 21:39:28 ICT 2022', '1', '2050000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `merek` varchar(20) NOT NULL,
  `CC` varchar(20) NOT NULL,
  `tipe` varchar(20) NOT NULL,
  `tahun` varchar(20) NOT NULL,
  `nopol` varchar(300) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `kondisi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`merek`, `CC`, `tipe`, `tahun`, `nopol`, `harga`, `kondisi`) VALUES
('Avanza', '9000', 'Honda', '2007', 'AE 8976 DM', '2000000', 'Tersedia'),
('Toyota', '9000', 'Alphard', '2012', 'AE 9000 SE', '3000000', 'Tersedia'),
('Suzuki', '6000', 'Ayla', '2007', 'B 1578 EYG', '1000000', 'Tersedia'),
('Tesla', '4000', 'Telsa Model 3', '2018', 'AE 1915 OK', '1000000', 'Tersedia'),
('Hyundai', '3000', 'Hyundai Konai x3', '2018', 'AE 6679 BA', '900000', 'Tersedia'),
('Avanza', '9000', 'Honda', '2007', 'AE 8975 DM', '30000000', 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `peminjam`
--

CREATE TABLE `peminjam` (
  `id_peminjam` int(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jaminan` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telp` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peminjam`
--

INSERT INTO `peminjam` (`id_peminjam`, `nama`, `jaminan`, `alamat`, `telp`) VALUES
(48, 'werty', 'KK', 'sfdfghf', 345),
(49, 'FGH', 'Sertifikat Properti', 'SDFDS', 234),
(50, 'sad', 'KK', 'dfbfgbf', 5345),
(51, 'qwe', 'KK', 'xvfd', 234),
(52, 'erwrreqwerw', 'Sertifikat Properti', 'fggdgg', 1231234),
(53, 'tgsdg', 'KTP', 'hfghfhfhfh', 34567765),
(54, 'Yohan', 'KTP', 'dfgdgsfs', 1212121),
(55, 'dfgdgf', 'Sertifikat Properti', 'ueyrw', 324242),
(56, 'ade', 'KK', 'fghfjhf', 12345),
(57, 'Bismillah', 'KTP', 'skdfghsdk', 9876),
(58, 'Mega Maryam Sari', 'KTP', 'Surabaya', 95123456),
(59, 'adsdioha', 'KTP', 'ccsidj', 211),
(60, 'gchvj', 'KTP', 'xxvxcx', 56789),
(61, 'fghjk', 'KTP', 'klblhl', 9798),
(62, 'cghjb', 'KTP', 'kjhksfd', 87698),
(63, 'oihkjv', 'KTP', 'jgSJDGFHD', 9876),
(64, 'aksgdfksdg', 'KTP', 'skdjfg', 707),
(65, 'tfghjk', 'KTP', 'yrtguh', 978),
(66, 'cgghjk', 'KTP', 'ghj', 869),
(67, 'hcgjkgfyh', 'KTP', 'kjhdgfkdjg', 7070),
(68, 'Kou', 'KTP', 'ghvjk', 78967),
(69, 'Bismillahh', 'KTP', 'fghj', 9786),
(70, 'Bismillah', 'KTP', 'Bjn', 978),
(71, 'Bismillah', 'KTP', 'sjdfs', 968709),
(72, 'Bismillah', 'KTP', 'Alhamdulillah', 987),
(73, 'Bismillah', 'KTP', 'Alhamdulillah', 9876),
(74, 'Bismillah', 'KTP', 'BIsaaaa', 7070),
(75, 'Aku', 'KTP', 'iugiuu', 978);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `nama` varchar(200) NOT NULL,
  `no_tlp` varchar(100) NOT NULL,
  `jaminan` varchar(100) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `nopol` varchar(300) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `tgl_pinjaman` varchar(50) NOT NULL,
  `tgl_pengembalian` varchar(50) NOT NULL,
  `lama` varchar(20) NOT NULL,
  `total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `hak_akses` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `hak_akses`) VALUES
('admin', 'admin1234', 'admin'),
('staff', 'staff1234', 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `peminjam`
--
ALTER TABLE `peminjam`
  ADD PRIMARY KEY (`id_peminjam`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `peminjam`
--
ALTER TABLE `peminjam`
  MODIFY `id_peminjam` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
