-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Mar 2024 pada 10.51
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
-- Database: `latihancakephp4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aksesorisruangan`
--

CREATE TABLE `aksesorisruangan` (
  `id` int(11) NOT NULL,
  `nama_ruangan` varchar(100) NOT NULL,
  `nama_aksesoris` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `kondisi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `aksesorisruangan`
--

INSERT INTO `aksesorisruangan` (`id`, `nama_ruangan`, `nama_aksesoris`, `jumlah`, `kondisi`) VALUES
(0, 'Melati', 'Kursi', 10, 'Rusak'),
(2, 'Mawar', 'Meja', 3, 'Baik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `aplikasimeeting`
--

CREATE TABLE `aplikasimeeting` (
  `id` int(11) NOT NULL,
  `nama_aplikasi` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `aplikasimeeting`
--

INSERT INTO `aplikasimeeting` (`id`, `nama_aplikasi`, `tanggal`, `waktu_mulai`, `waktu_selesai`) VALUES
(3, 'zoom', '2024-03-05', '14:10:35', '20:15:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `departemens`
--

CREATE TABLE `departemens` (
  `id` char(36) NOT NULL,
  `departemen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `departemens`
--

INSERT INTO `departemens` (`id`, `departemen`) VALUES
('10638121-0898-4587-a062-1a3196ac9889', 'HC3'),
('9df41541-fbeb-4ef5-b083-bf84330c367a', 'TSD'),
('c7729e94-4884-46cd-8ee2-8e3418d15a7b', 'IT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `drivers`
--

CREATE TABLE `drivers` (
  `id` char(36) NOT NULL,
  `nama_driver` varchar(100) NOT NULL,
  `umur` int(10) NOT NULL,
  `jenis_kelamin` enum('Pria','Wanita') NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `drivers`
--

INSERT INTO `drivers` (`id`, `nama_driver`, `umur`, `jenis_kelamin`, `alamat`) VALUES
('0', 'Pak Min', 29, 'Pria', 'Jakarta Utara'),
('2', 'Ali', 27, 'Pria', 'Jakarta Utara');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasis`
--

CREATE TABLE `lokasis` (
  `id` char(36) NOT NULL,
  `nama_lokasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `lokasis`
--

INSERT INTO `lokasis` (`id`, `nama_lokasi`) VALUES
('55c80d88-a2a1-4952-a622-c19838344e10', 'WARI  SUNTER');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` char(36) NOT NULL,
  `namamenu` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `namamenu`, `url`) VALUES
('40e5a6be-a335-48b7-a8b6-637640e900d5', 'Ruangan', 'http://localhost/latihancakephp4/ruangans'),
('59e8edb7-b389-4096-8f4c-ba37dc804d8e', 'Aksesoris Ruangan', 'http://localhost/latihancakephp4/aksesorisruangan'),
('8b16b9f9-6309-43d3-be8b-6ca57d2d5c96', 'Mobil', 'http://localhost/latihancakephp4/mobils'),
('c0f5c9cd-5b51-412e-8e3f-d85baafd2885', 'Motorcycles', 'http://localhost/latihancakephp4/motorcycles'),
('f3c17f51-fb36-4563-a185-d854cdf4730f', 'Departemen', 'http://localhost/latihancakephp4/departemens');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobils`
--

CREATE TABLE `mobils` (
  `id` char(36) NOT NULL,
  `nopol_mobil` varchar(100) NOT NULL,
  `nama_mobil` varchar(100) NOT NULL,
  `type_mobil` enum('Matic','No Matic') NOT NULL,
  `kapasitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mobils`
--

INSERT INTO `mobils` (`id`, `nopol_mobil`, `nama_mobil`, `type_mobil`, `kapasitas`) VALUES
('0', 'B 1720 WF', 'Honda HRV', 'Matic', 4),
('6d621489-6ce2-4973-bd39-1e92a6d360b6', 'B 2017 FW', 'Honda CR-V', 'Matic', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `motorcycles`
--

CREATE TABLE `motorcycles` (
  `id` int(11) NOT NULL,
  `motor_code` varchar(10) NOT NULL,
  `motor_name` varchar(100) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `motorcycles`
--

INSERT INTO `motorcycles` (`id`, `motor_code`, `motor_name`, `created`) VALUES
(1, '17', 'Honda', '2024-03-05 04:37:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjamanmobil`
--

CREATE TABLE `peminjamanmobil` (
  `id` char(36) NOT NULL,
  `status_driver` varchar(50) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `waktu_pinjam` time NOT NULL,
  `nama_peminjam` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `penumpang` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `id_departemen` char(36) NOT NULL,
  `id_lokasi` char(36) NOT NULL,
  `id_driver` char(36) NOT NULL,
  `id_mobil` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjamanruang`
--

CREATE TABLE `peminjamanruang` (
  `id` char(36) NOT NULL,
  `id_ruang` char(36) NOT NULL,
  `id_departemen` char(36) NOT NULL,
  `nama_peminjam` varchar(100) NOT NULL,
  `tanggal_pakai` date NOT NULL,
  `waktu_pakai` time NOT NULL,
  `waktu_selesai` int(11) NOT NULL,
  `tujuan` int(11) NOT NULL,
  `jumlah_pengguna` int(11) NOT NULL,
  `status` enum('Ya','Tidak') NOT NULL,
  `penginput` int(11) NOT NULL,
  `email` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangans`
--

CREATE TABLE `ruangans` (
  `id` char(36) NOT NULL,
  `nama_ruangan` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ruangans`
--

INSERT INTO `ruangans` (`id`, `nama_ruangan`, `deskripsi`) VALUES
('87573776-64e8-4009-b32e-651844b419b3', 'Melati', 'Meeting TSD'),
('8b68c1f8-25ef-4e5a-8aa9-fc886f338c12', 'Mawar', 'Meeting IT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `password` varchar(100) NOT NULL,
  `no_hp` varchar(100) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `no_hp`, `created`) VALUES
('fe92bc52-7cbe-4dcd-b512-4a0f5d6da06a', 'wardabcr@gmail.com', 'warda123', '08129382638', '2024-03-06 03:45:43');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aksesorisruangan`
--
ALTER TABLE `aksesorisruangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `aplikasimeeting`
--
ALTER TABLE `aplikasimeeting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `departemens`
--
ALTER TABLE `departemens`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lokasis`
--
ALTER TABLE `lokasis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mobils`
--
ALTER TABLE `mobils`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `motorcycles`
--
ALTER TABLE `motorcycles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peminjamanmobil`
--
ALTER TABLE `peminjamanmobil`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_departemen` (`id_departemen`),
  ADD KEY `id_lokasi` (`id_lokasi`),
  ADD KEY `id_driver` (`id_driver`),
  ADD KEY `id_mobil` (`id_mobil`);

--
-- Indeks untuk tabel `peminjamanruang`
--
ALTER TABLE `peminjamanruang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ruang` (`id_ruang`),
  ADD KEY `id_departemen` (`id_departemen`);

--
-- Indeks untuk tabel `ruangans`
--
ALTER TABLE `ruangans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `motorcycles`
--
ALTER TABLE `motorcycles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `peminjamanmobil`
--
ALTER TABLE `peminjamanmobil`
  ADD CONSTRAINT `peminjamanmobil_ibfk_1` FOREIGN KEY (`id_departemen`) REFERENCES `departemens` (`id`),
  ADD CONSTRAINT `peminjamanmobil_ibfk_2` FOREIGN KEY (`id_lokasi`) REFERENCES `lokasis` (`id`),
  ADD CONSTRAINT `peminjamanmobil_ibfk_3` FOREIGN KEY (`id_driver`) REFERENCES `drivers` (`id`),
  ADD CONSTRAINT `peminjamanmobil_ibfk_4` FOREIGN KEY (`id_mobil`) REFERENCES `mobils` (`id`);

--
-- Ketidakleluasaan untuk tabel `peminjamanruang`
--
ALTER TABLE `peminjamanruang`
  ADD CONSTRAINT `peminjamanruang_ibfk_1` FOREIGN KEY (`id_ruang`) REFERENCES `ruangans` (`id`),
  ADD CONSTRAINT `peminjamanruang_ibfk_2` FOREIGN KEY (`id_departemen`) REFERENCES `departemens` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
