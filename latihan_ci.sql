-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2018 at 04:55 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latihan_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_user` int(20) NOT NULL,
  `nama` char(50) DEFAULT NULL,
  `email` char(30) DEFAULT NULL,
  `password` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_user`, `nama`, `email`, `password`) VALUES
(1, 'sahila', 'sahila@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(10) NOT NULL,
  `nim` char(8) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` char(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nim`, `nama`, `no_hp`, `email`, `alamat`) VALUES
(1, '12172635', 'Aldi Fiandi', '087587957936', 'aldif@gmail.com', 'sukaresmi rt 02/04'),
(2, '12174567', 'Alfian Rifai', '087874668573', '', ''),
(3, '12173799', 'Risma Handayani', '087873927392', 'rismahan57@gmail.com', 'Perum Bilabong Blok 05 rt 08/09'),
(4, '12178736', 'Eni Rohani', '085696895738', 'eniroha34@gmail.com', 'Jln.Kh yunus Rt 04/04'),
(5, '12175282', 'Rizky Sahilah', '087873806382', 'rizkysahilah12@gmail.com', 'Jembatan satu rt 02/04');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` char(12) NOT NULL,
  `nama_barang` char(20) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `ket` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga`, `ket`) VALUES
('1', '1', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kd_buku` int(10) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` int(50) NOT NULL,
  `stok` int(11) NOT NULL,
  `th_terbit` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kd_buku`, `judul`, `pengarang`, `penerbit`, `stok`, `th_terbit`, `id_kategori`) VALUES
(1121, 'Perancangan Program', 'Jennifer Lavendes', 0, 4, 2008, 0),
(1122, '', '', 0, 0, 0, 0),
(1123, 'Love In Story', 'Mariam Herlina', 0, 2, 2012, 0),
(1124, 'Hijrah Cinta', 'Alam Kristoper', 0, 4, 2009, 0),
(1125, 'Calon Imamku', 'Krisna Mukti', 0, 5, 2015, 0),
(1126, '', '', 0, 0, 0, 0),
(1127, 'Pemodelan Berorientasi Objek', 'Kristoper Sabyan', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa1`
--

CREATE TABLE `mahasiswa1` (
  `Nim` char(20) NOT NULL,
  `kelas` char(10) NOT NULL,
  `kd_matkul` varchar(10) NOT NULL,
  `nilai tugas` int(12) NOT NULL,
  `Nilai_Project` int(20) NOT NULL,
  `total_nilai` varchar(50) NOT NULL,
  `rata_rata_nilai` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa1`
--

INSERT INTO `mahasiswa1` (`Nim`, `kelas`, `kd_matkul`, `nilai tugas`, `Nilai_Project`, `total_nilai`, `rata_rata_nilai`) VALUES
('12171393', '', '', 0, 0, '', 0),
('12171393', '12.3c.39', '01', 86, 70, '', 0),
('12171535', '12.3c.39', '02', 80, 60, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa3`
--

CREATE TABLE `mahasiswa3` (
  `Nim` char(10) NOT NULL,
  `kelas` char(10) NOT NULL,
  `kd_matkul` varchar(10) NOT NULL,
  `nilai_tugas` int(10) NOT NULL,
  `Nilai_Project` int(10) NOT NULL,
  `total_nilai` int(20) NOT NULL,
  `rata_rata_nilai` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa3`
--

INSERT INTO `mahasiswa3` (`Nim`, `kelas`, `kd_matkul`, `nilai_tugas`, `Nilai_Project`, `total_nilai`, `rata_rata_nilai`) VALUES
('12171393', '12.3c.39', '01', 86, 70, 0, 0),
('12171535', '12.3c.39', '02', 80, 60, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `id_transaksi` int(10) NOT NULL,
  `id_anggota` int(10) NOT NULL,
  `kd_buku` int(10) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `jml_pinjam` int(11) NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`id_transaksi`, `id_anggota`, `kd_buku`, `tanggal_pinjam`, `tanggal_kembali`, `jml_pinjam`, `denda`) VALUES
(0, 2, 1123, '2018-12-08', '2018-12-09', 1, 0),
(0, 4, 1122, '2018-12-11', '2018-12-10', 1, 0),
(0, 1, 1121, '2018-12-13', '2018-12-19', 1, 1000),
(0, 3, 1124, '2018-12-15', '0000-00-00', 0, 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_userpinjam`
-- (See below for the actual view)
--
CREATE TABLE `v_userpinjam` (
`id_anggota` int(10)
,`nama` varchar(50)
,`id_transaksi` int(10)
,`tanggal_pinjam` date
,`tanggal_kembali` date
,`kd_buku` int(10)
,`judul` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `v_userpinjam`
--
DROP TABLE IF EXISTS `v_userpinjam`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_userpinjam`  AS  select `a`.`id_anggota` AS `id_anggota`,`a`.`nama` AS `nama`,`b`.`id_transaksi` AS `id_transaksi`,`b`.`tanggal_pinjam` AS `tanggal_pinjam`,`b`.`tanggal_kembali` AS `tanggal_kembali`,`c`.`kd_buku` AS `kd_buku`,`c`.`judul` AS `judul` from ((`anggota` `a` join `pinjam` `b` on((`a`.`id_anggota` = `b`.`id_anggota`))) join `buku` `c` on((`b`.`kd_buku` = `c`.`kd_buku`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
