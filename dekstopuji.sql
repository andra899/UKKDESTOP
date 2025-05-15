-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Bulan Mei 2025 pada 05.29
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dekstopuji`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `tanggal_tes` date DEFAULT NULL,
  `tes_kesehatan` varchar(20) DEFAULT NULL,
  `tes_tekab` varchar(20) DEFAULT NULL,
  `tes_jasmani` varchar(20) DEFAULT NULL,
  `hasil_tes` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_guru`
--

INSERT INTO `tbl_guru` (`id`, `username`, `tanggal_tes`, `tes_kesehatan`, `tes_tekab`, `tes_jasmani`, `hasil_tes`) VALUES
(1, '1', '2025-05-13', 'lulus', 'lulus', 'lulus', 'lulus'),
(2, '99', '2025-05-14', 'Tidak Lulus', 'Lulus', 'Lulus', 'Diterima'),
(3, 'Arfan', '2025-05-13', 'Tidak Lulus', 'Tidak Lulus', 'Lulus', 'Tidak Diterima'),
(4, 'nopal', '2025-05-15', 'Tidak Lulus', 'Lulus', 'Tidak Lulus', 'Tidak Diterima'),
(5, 'nopal22', '2025-05-15', 'Tidak Lulus', 'Tidak Lulus', 'Lulus', 'Tidak Diterima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `nis` int(11) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `tanggal_tes` date DEFAULT NULL,
  `bersedia_mengikutites` set('bersedia','tidak bersedia') DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`nis`, `username`, `tanggal_tes`, `bersedia_mengikutites`, `jurusan`, `foto`) VALUES
(12129929, '2', '2025-05-14', 'bersedia', 'RPL', 'C:\\Users\\ARFAN MAULANA\\Downloads\\443ec5149cb75d100852217ae5c3523a.jpg'),
(123, '8', '2025-05-13', 'bersedia', NULL, NULL),
(321, '9', '2025-05-06', 'tidak bersedia', NULL, NULL),
(1882829, 'Arfan', '2025-05-06', 'bersedia', 'TKR', 'C:\\Users\\ARFAN MAULANA\\Downloads\\61c49a63ec49fcdde0fee1c7338abb98.jpg'),
(12937389, 'nopal', '2025-05-16', 'bersedia', 'TKR', 'C:\\Users\\ARFAN MAULANA\\Downloads\\61c49a63ec49fcdde0fee1c7338abb98.jpg'),
(232408273, 'Nopal11', '2025-05-15', 'bersedia', 'TITL', 'C:\\Users\\tegar rizky\\Downloads\\goblin.jpg'),
(3434435, 'nopal22', '2025-05-15', 'bersedia', 'TITL', 'C:\\Users\\tegar rizky\\Downloads\\goblin.jpg'),
(192728, 'zaks', '2025-05-13', 'bersedia', 'TKR', 'C:\\Users\\ARFAN MAULANA\\Downloads\\2df71f7102d724985c8689f7e10c228e.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status_user` varchar(20) DEFAULT NULL,
  `foto_user` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`username`, `password`, `status_user`, `foto_user`) VALUES
('Tegar', '1234', 'Operator', 'Lokasi Folder\\wut wut.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
