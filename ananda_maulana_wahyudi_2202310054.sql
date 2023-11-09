-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 09, 2023 at 07:08 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ananda_maulana_wahyudi_2202310054`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `npm` varchar(10) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `tempat_lahir` varchar(20) DEFAULT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `id_prodi` varchar(15) DEFAULT NULL,
  `id_sistem_kuliah` int DEFAULT NULL,
  `id_status_mhs` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `npm`, `tgl_lahir`, `tempat_lahir`, `jenis_kelamin`, `no_hp`, `id_prodi`, `id_sistem_kuliah`, `id_status_mhs`) VALUES
(1, 'Agung', '2202310001', '2000-01-01', 'sumenep', 'laki-laki', '087850099289', '001', 4, 1),
(2, 'Abdullah', '2202310002', '1996-01-02', 'pamekasan', 'laki-laki', '087850099290', '002', 4, 1),
(3, 'Ayu', '2202310003', '2003-01-03', 'Surabaya', 'perempuan', '087850099291', '003', 5, 2),
(4, 'Kirana', '2202310004', '2003-01-04', 'sumenep', 'perempuan', '087850099292', '004', 3, 1),
(5, 'Hendri', '2202310005', '2003-01-05', 'pamekasan', 'laki-laki', '087850099293', '005', 1, 4),
(6, 'Fitri', '2202310006', '2003-01-06', 'Surabaya', 'perempuan', '087850099294', '003', 2, 3),
(7, 'Hendra', '2202310007', '2004-01-07', 'sampang', 'laki-laki', '087850099295', '003', 1, 1),
(8, 'Wawan', '2202310008', '2003-01-08', 'sumenep', 'laki-laki', '087850099296', '003', 1, 1),
(9, 'Putri', '2202310009', '2002-01-09', 'sumenep', 'laki-laki', '087850099297', '004', 1, 1),
(10, 'Reza', '2202310010', '2001-01-10', 'sumenep', 'perempuan', '087850099298', '001', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int NOT NULL,
  `nama_pembayaran` varchar(15) DEFAULT NULL,
  `nominal_terbayar` int DEFAULT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `nama_pembayaran`, `nominal_terbayar`, `id`) VALUES
(1, 'Pendaftaran', 200000, 1),
(2, 'Daftar Ulang', 1500000, 1),
(3, 'UKT', 1500000, 1),
(4, 'Pendaftaran', 300000, 2),
(5, 'Daftar Ulang', 1500000, 2),
(6, 'UKT', 3000000, 2),
(7, 'Pendaftaran', 300000, 3),
(8, 'Daftar Ulang', 1500000, 3),
(9, 'UKT', 3000000, 3),
(10, 'Pendaftaran', 200000, 4),
(11, 'Daftar Ulang', 1500000, 4),
(12, 'UKT', 1500000, 4),
(13, 'Pendaftaran', 200000, 5),
(14, 'Daftar Ulang', 1500000, 5),
(15, 'UKT', 1500000, 5),
(16, 'Pendaftaran', 200000, 6),
(17, 'Daftar Ulang', 1500000, 6),
(18, 'UKT', 1500000, 6),
(19, 'Pendaftaran', 200000, 7),
(20, 'Daftar Ulang', 1500000, 7),
(21, 'UKT', 1500000, 7),
(22, 'Pendaftaran', 200000, 8),
(23, 'Daftar Ulang', 1500000, 8),
(24, 'UKT', 1500000, 8),
(25, 'Pendaftaran', 200000, 9),
(26, 'Daftar Ulang', 1500000, 9),
(27, 'UKT', 1500000, 9),
(28, 'Pendaftaran', 200000, 10),
(29, 'Daftar Ulang', 1500000, 10),
(30, 'UKT', 1500000, 10);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` varchar(3) NOT NULL,
  `nama_prodi` varchar(20) DEFAULT NULL,
  `jenjang_prodi` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `nama_prodi`, `jenjang_prodi`) VALUES
('001', 'Akuntansi', 'S1'),
('002', 'Manajemen', 'S1'),
('003', 'Informatika', 'S1'),
('004', 'Sistem Informasi', 'S1'),
('005', 'Teknik Industri', 'S1');

-- --------------------------------------------------------

--
-- Table structure for table `sistem_kuliah`
--

CREATE TABLE `sistem_kuliah` (
  `id_sistem_kuliah` int NOT NULL,
  `nama_sistem_kuliah` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sistem_kuliah`
--

INSERT INTO `sistem_kuliah` (`id_sistem_kuliah`, `nama_sistem_kuliah`) VALUES
(1, 'Reguler'),
(2, 'Transfer'),
(3, 'Pindahan'),
(4, 'Karyawan'),
(5, 'Online');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `id_status_mhs` int DEFAULT NULL,
  `status_mhs` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id_status_mhs`, `status_mhs`) VALUES
(1, 'Aktif'),
(2, 'Non-Aktif'),
(3, 'Lulus'),
(4, 'Drop Out');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`,`id`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indexes for table `sistem_kuliah`
--
ALTER TABLE `sistem_kuliah`
  ADD PRIMARY KEY (`id_sistem_kuliah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
