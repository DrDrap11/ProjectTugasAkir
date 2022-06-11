-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2022 at 06:40 PM
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
-- Database: `perp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_administrator`
--

CREATE TABLE `tb_administrator` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_administrator`
--

INSERT INTO `tb_administrator` (`id`, `username`, `password`, `nama`) VALUES
(1, 'admin', 'admin', 'Administrator'),
(4, 'kepala', 'kepalaperpus', 'Kepala Perpustakaan');

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(150) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `tahun_terbit` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `jumlah_halaman` int(11) NOT NULL,
  `stok_buku` int(11) NOT NULL,
  `bahasa` varchar(100) NOT NULL,
  `sinopsis` text NOT NULL,
  `label_buku` text NOT NULL,
  `kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`id`, `judul_buku`, `pengarang`, `penerbit`, `tahun_terbit`, `gambar`, `jumlah_halaman`, `stok_buku`, `bahasa`, `sinopsis`, `label_buku`, `kategori`) VALUES
(16, 'Pemrograman Database dengan Delphi7 Menggunakan Access ADO', 'Abdul Kadir', 'Penerbit Andi', 2004, '9ec531d10cfe4d8fac0773d6a2bab6f9.jpg', 100, 4, 'indonesia', '-', '', 6),
(17, 'Menguasai Efek Khusus dengan Photoshop', 'Jubilee Enterprise', 'Elex Media Komputindo', 2015, 'd9b30460ac34429884f23b9e7ac8cb3a.jpg', 100, 37, 'indonesia', '-', '', 6),
(19, 'Laskar Pelangi', 'Andrea Hinata', 'Bentang Pustaka', 2005, '019e107aa3fa4dc5bb1bf2be58c32e9f.jpg', 529, 10, 'Indonesia', 'Laskar Pelangi adalah novel pertama karya Andrea Hirata yang diterbitkan oleh Bentang Pustaka pada tahun 2005. Novel ini bercerita tentang kehidupan 10 anak dari keluarga miskin yang bersekolah di sebuah sekolah Muhammadiyah di Belitung yang penuh dengan keterbatasan. Mereka adalah: Ikal aka Andrea Hirata', 'Novel ', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`) VALUES
(6, 'Terapan'),
(7, 'Ilmu Ukur'),
(10, 'Novel');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelamin` int(11) NOT NULL,
  `agama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id`, `nim`, `nama`, `kelamin`, `agama`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `no_telp`, `password`, `token`) VALUES
(6, 'e31201887', 'Dimas Rizqi', 1, 'Islam', 'Jember', '2002-04-10', 'Tanggul', '081282256871', 'e31201887', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjaman`
--

CREATE TABLE `tb_peminjaman` (
  `id` int(11) NOT NULL,
  `tgl_peminjaman` varchar(20) NOT NULL,
  `tgl_kembali` varchar(20) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `peminjaman` text NOT NULL,
  `status_pinjam` int(11) NOT NULL,
  `alasan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_peminjaman`
--

INSERT INTO `tb_peminjaman` (`id`, `tgl_peminjaman`, `tgl_kembali`, `id_mahasiswa`, `peminjaman`, `status_pinjam`, `alasan`) VALUES
(33, '2022-06-11 22:35:14', '2022-06-18 22:35:14', 6, '34786a07c90447ed9e2b040baa2cd7ac', 2, ''),
(34, '2022-06-11 22:43:55', '2022-06-18 22:43:55', 6, 'a040980392344a30891915fce5f5e15b', 2, ''),
(35, '2022-06-11 23:48:40', '2022-06-18 23:48:40', 6, '2f9469eaaf4340d19aac244ddd4718c8', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjaman_item`
--

CREATE TABLE `tb_peminjaman_item` (
  `urutan` int(11) NOT NULL,
  `id_peminjam` text NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_peminjaman_item`
--

INSERT INTO `tb_peminjaman_item` (`urutan`, `id_peminjam`, `id_mahasiswa`, `id_buku`) VALUES
(73, '34786a07c90447ed9e2b040baa2cd7ac', 6, 19),
(74, 'a040980392344a30891915fce5f5e15b', 6, 17),
(75, '2f9469eaaf4340d19aac244ddd4718c8', 6, 17);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengembalian`
--

CREATE TABLE `tb_pengembalian` (
  `id` int(11) NOT NULL,
  `tgl_peminjaman` varchar(20) NOT NULL,
  `tgl_kembali` varchar(20) NOT NULL,
  `tgl_pengembalian` varchar(20) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `pengembalian` text NOT NULL,
  `denda` varchar(50) NOT NULL,
  `status_kembali` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pengembalian`
--

INSERT INTO `tb_pengembalian` (`id`, `tgl_peminjaman`, `tgl_kembali`, `tgl_pengembalian`, `id_mahasiswa`, `pengembalian`, `denda`, `status_kembali`) VALUES
(29, '2022-06-11 22:35:14', '2022-06-18 22:35:14', '2022-06-11 22:35:46', 6, '34786a07c90447ed9e2b040baa2cd7ac', '0', 1),
(30, '2022-06-11 22:43:55', '2022-06-18 22:43:55', '2022-06-11 23:50:10', 6, 'a040980392344a30891915fce5f5e15b', '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengunjung`
--

CREATE TABLE `tb_pengunjung` (
  `id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_mahasiswa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pengunjung`
--

INSERT INTO `tb_pengunjung` (`id`, `tanggal`, `id_mahasiswa`) VALUES
(1, '2021-11-17', '1'),
(2, '2021-11-17', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_qrqode`
--

CREATE TABLE `tb_qrqode` (
  `id` int(11) NOT NULL,
  `qr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_qrqode`
--

INSERT INTO `tb_qrqode` (`id`, `qr`) VALUES
(1, '1p2o3i4u5y6t7r8e9w0q');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_administrator`
--
ALTER TABLE `tb_administrator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_peminjaman_item`
--
ALTER TABLE `tb_peminjaman_item`
  ADD PRIMARY KEY (`urutan`);

--
-- Indexes for table `tb_pengembalian`
--
ALTER TABLE `tb_pengembalian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengunjung`
--
ALTER TABLE `tb_pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_administrator`
--
ALTER TABLE `tb_administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_buku`
--
ALTER TABLE `tb_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tb_peminjaman_item`
--
ALTER TABLE `tb_peminjaman_item`
  MODIFY `urutan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `tb_pengembalian`
--
ALTER TABLE `tb_pengembalian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tb_pengunjung`
--
ALTER TABLE `tb_pengunjung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
