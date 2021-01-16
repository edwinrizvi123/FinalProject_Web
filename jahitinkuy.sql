-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jan 2021 pada 07.27
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jahitinkuy`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `email`, `username`, `password`, `level`) VALUES
(6, 'Edwin Risvianto', 'edwin.r@students.amikom.ac.id', 'admin', '0192023a7bbd73250516f069df18b500', 1),
(8, 'Martabak', 'martabak@gmail.com', 'martabak', '499de4ba50697d484d8e4de59a32c3bb', 2),
(9, 'Pak RW', '', 'qwerty', 'd8578edf8458ce06fbc5bb76a58c5ca4', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `invoice`
--

CREATE TABLE `invoice` (
  `id` varchar(255) NOT NULL,
  `nm_depan` varchar(255) NOT NULL,
  `nm_belakang` varchar(255) NOT NULL,
  `telepon` int(11) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `instruksi` varchar(255) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp(),
  `tenggat` datetime NOT NULL DEFAULT current_timestamp(),
  `id_jasa` int(11) NOT NULL,
  `nama_jasa` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `invoice`
--

INSERT INTO `invoice` (`id`, `nm_depan`, `nm_belakang`, `telepon`, `alamat`, `area`, `catatan`, `instruksi`, `tanggal`, `tenggat`, `id_jasa`, `nama_jasa`, `jenis`, `jumlah`, `harga`) VALUES
('JK150120214876', 'Edwin', 'Risvianto', 2147483647, 'Mertosanan Kulon Rt.01 Potorono Banguntapan', 'Banguntapan', 'yuhu', 'Beniknya di gedein ya', '2021-01-15 19:41:31', '2021-01-16 19:41:31', 4, 'Blouse', 'Permak', 1, 85000),
('JK150120217329', 'Edwin', 'Risvianto', 2147483647, 'Mertosanan Kulon Rt.01, Potorono, Banguntapan, Bantul, Yogyakarta', 'Banguntapan', 'Mertosanan Kulon Rt.01, Potorono, Banguntapan, Bantul, Yogyakarta', 'Mertosanan Kulon Rt.01, Potorono, Banguntapan, Bantul, Yogyakarta', '2021-01-15 18:41:46', '2021-01-15 19:39:26', 4, 'Blouse', 'Permak', 1, 85000),
('JK150120217618', 'Edwin', 'Risvianto', 2147483647, 'Mertosanan Kulon Rt.01, Potorono, Banguntapan, Bantul, Yogyakarta', 'Kota Gede', 'Depan Mushola warna hijau', 'Jahitnya yang rapi ya', '2021-01-15 18:35:24', '2021-01-15 19:39:26', 8, 'Resleting Celana Jeans', 'Resleting', 1, 20000),
('JK160120216790', 'Edwin', 'Risvianto', 2147483647, 'Merosanan Kulon Rt.01 Potorono, Banguntapan, Bantul, Yogyakarta', 'Banguntapan', 'Depan Mushola warna hijau', 'dijahit ya bukan ditumis', '2021-01-16 03:14:40', '2021-01-17 03:14:40', 1, 'Celana Panjang', 'Permak', 1, 75000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jasa`
--

CREATE TABLE `jasa` (
  `id` int(11) NOT NULL,
  `kode_jasa` varchar(10) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar_jasa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jasa`
--

INSERT INTO `jasa` (`id`, `kode_jasa`, `kategori`, `jenis`, `harga`, `deskripsi`, `gambar_jasa`) VALUES
(1, 'CLP1001', 'Celana Panjang', 'Permak', 75000, 'Jasa mengecilkan ukuran Celana Panjang sesuai ukuran yang anda inginkan', 'celanabahanpanjang-150x1507.jpg'),
(4, 'BLS1001', 'Blouse', 'Permak', 85000, 'Jasa mengecilkan ukuran Blouse (Tanpa Lapis Furing) sesuai ukuran yang anda inginkan', 'BLOUSE-150x15020.jpeg'),
(5, 'CRD2001', 'Cardingan', 'Jahit', 70000, 'Jasa jahit Cardingan sesuai model/desain yang anda inginkan', 'CARDIGAN-150x1502.jpg'),
(6, 'KNC5001', 'Ganti Kancing', 'Kancing', 10000, 'Jasa memasang atau mengganti Kancing Model Standar (per 1 pcs)', 'Kancing-150x150.jpeg'),
(7, 'KBY2001', 'Kebaya Atasan', 'Jahit', 350000, 'Jasa Jahit baru Kebaya Atasan (Model Tanpa Payet) dengan referensi bentuk/model dari anda.', '3625198_c6f82f10-0279-4dd5-9b0c-e9e539f673fd_1080_1080.jpg'),
(8, 'RSL4001', 'Resleting Celana Jeans', 'Resleting', 20000, 'Jasa mengganti baru Resleting Celana Jeans atau Denim anda yang telah rusak.', 'reseleting-150x1502.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL,
  `id_pesanan` varchar(255) NOT NULL,
  `id_jasa` int(11) NOT NULL,
  `jenis` varchar(255) NOT NULL,
  `nama_jasa` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id`, `id_pesanan`, `id_jasa`, `jenis`, `nama_jasa`, `jumlah`, `harga`, `tanggal`) VALUES
(7, 'JK150120214937', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(8, 'JK150120218904', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(9, 'JK150120211847', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(10, 'JK150120219362', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(11, 'JK150120219524', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(12, 'JK150120218261', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(13, 'JK150120210536', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(14, 'JK150120210579', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(15, 'JK150120214721', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(16, 'JK150120217351', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(17, 'JK150120210764', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(18, 'JK150120211256', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(19, 'JK150120218243', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(20, 'JK150120216374', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(21, 'JK150120216819', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(22, 'JK150120215126', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(23, 'JK150120214201', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(24, 'JK150120212064', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(25, 'JK150120216975', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(26, 'JK150120213619', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(27, 'JK150120213847', 4, '', 'Blouse', 1, 85000, '2021-01-15 19:12:15'),
(28, 'JK150120213847', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(29, 'JK150120217813', 4, '', 'Blouse', 1, 85000, '2021-01-15 19:12:15'),
(30, 'JK150120217813', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(31, 'JK150120216974', 4, '', 'Blouse', 1, 85000, '2021-01-15 19:12:15'),
(32, 'JK150120216974', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(33, 'JK150120213824', 4, '', 'Blouse', 1, 85000, '2021-01-15 19:12:15'),
(34, 'JK150120213824', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(35, 'JK150120214821', 4, '', 'Blouse', 1, 85000, '2021-01-15 19:12:15'),
(36, 'JK150120214821', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(37, 'JK150120214285', 4, '', 'Blouse', 1, 85000, '2021-01-15 19:12:15'),
(38, 'JK150120214285', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(39, 'JK150120211649', 4, '', 'Blouse', 1, 85000, '2021-01-15 19:12:15'),
(40, 'JK150120211649', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(41, 'JK150120210419', 4, '', 'Blouse', 1, 85000, '2021-01-15 19:12:15'),
(42, 'JK150120210419', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(43, 'JK150120219804', 4, '', 'Blouse', 1, 85000, '2021-01-15 19:12:15'),
(44, 'JK150120219804', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(45, 'JK150120213710', 4, '', 'Blouse', 1, 85000, '2021-01-15 19:12:15'),
(46, 'JK150120213710', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(47, 'JK150120211395', 4, '', 'Blouse', 1, 85000, '2021-01-15 19:12:15'),
(48, 'JK150120211395', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(49, 'JK150120212960', 4, '', 'Blouse', 1, 85000, '2021-01-15 19:12:15'),
(50, 'JK150120212960', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(51, 'JK150120216147', 4, '', 'Blouse', 1, 85000, '2021-01-15 19:12:15'),
(52, 'JK150120216147', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(53, 'JK150120213752', 5, '', 'Cardingan', 1, 70000, '2021-01-15 19:12:15'),
(54, 'JK150120218530', 5, '', 'Cardingan', 1, 70000, '2021-01-15 19:12:15'),
(55, 'JK150120215736', 4, '', 'Blouse', 1, 85000, '2021-01-15 19:12:15'),
(56, 'JK150120215736', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(57, 'JK150120219457', 4, '', 'Blouse', 1, 85000, '2021-01-15 19:12:15'),
(58, 'JK150120219457', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(59, 'JK150120211397', 4, '', 'Blouse', 1, 85000, '2021-01-15 19:12:15'),
(60, 'JK150120211397', 1, '', 'Celana Panjang', 1, 75000, '2021-01-15 19:12:15'),
(61, 'JK150120217618', 7, '', 'Kebaya Atasan', 1, 350000, '2021-01-15 19:12:15'),
(62, 'JK150120217618', 6, '', 'Ganti Kancing', 1, 10000, '2021-01-15 19:12:15'),
(63, 'JK150120217618', 8, '', 'Resleting Celana Jeans', 1, 20000, '2021-01-15 19:12:15'),
(64, 'JK150120217329', 7, '', 'Kebaya Atasan', 1, 350000, '2021-01-15 19:12:15'),
(65, 'JK150120217329', 5, '', 'Cardingan', 1, 70000, '2021-01-15 19:12:15'),
(66, 'JK150120217329', 4, '', 'Blouse', 1, 85000, '2021-01-15 19:12:15'),
(67, 'JK150120214876', 7, 'Jahit', 'Kebaya Atasan', 1, 350000, '2021-01-15 19:41:31'),
(68, 'JK150120214876', 5, 'Jahit', 'Cardingan', 1, 70000, '2021-01-15 19:41:31'),
(69, 'JK150120214876', 4, 'Permak', 'Blouse', 1, 85000, '2021-01-15 19:41:31'),
(70, 'JK160120216790', 1, 'Permak', 'Celana Panjang', 1, 75000, '2021-01-16 03:14:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nm_depan` varchar(255) NOT NULL,
  `nm_belakang` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jns_kelamin` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto_user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nm_depan`, `nm_belakang`, `email`, `tgl_lahir`, `jns_kelamin`, `password`, `foto_user`) VALUES
(5, 'Edwin', 'Risvianto', 'edwin.r@students.amikom.ac.id', '2000-02-13', 'Laki-laki', '0192023a7bbd73250516f069df18b500', ''),
(6, 'Yhasfi', 'Dwi Syaifullah', 'addwin.zero7@gmail.com', '2007-03-02', 'Laki-laki', 'bff9f9d2fe25cc7e7e246ef5670b2c8a', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_jasa`);

--
-- Indeks untuk tabel `jasa`
--
ALTER TABLE `jasa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `jasa`
--
ALTER TABLE `jasa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
