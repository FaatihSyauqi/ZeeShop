-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Des 2019 pada 04.01
-- Versi server: 10.3.15-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zeeshop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(20) NOT NULL,
  `div_admin` varchar(20) NOT NULL,
  `nama_admin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `div_admin`, `nama_admin`) VALUES
('ad_1', 'SNA', 'Farrel'),
('ad_2', 'Front End', 'Dede Diana'),
('ad_3', 'Front End', 'Rizky Fauzan'),
('ad_4', 'Maps', 'Auliya'),
('ad_5', 'UI_UX', 'Novi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_user`
--

CREATE TABLE `daftar_user` (
  `id_daftar_user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_user`
--

CREATE TABLE `jenis_user` (
  `id_jenis_user` varchar(20) NOT NULL,
  `nama_jenis_user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_user`
--

INSERT INTO `jenis_user` (`id_jenis_user`, `nama_jenis_user`) VALUES
('ju_1', 'Admin'),
('ju_2', 'Penjual'),
('ju_3', 'Pembeli');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` varchar(20) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
('zee_1_elektronik', 'Elektronik'),
('zee_2_pria', 'Fashion Pria'),
('zee_3_wanita', 'Fashion Wanita'),
('zee_4_rumah', 'Rumah Tangga'),
('zee_5_handphone', 'Handphone');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id_kategori_produk` varchar(20) NOT NULL,
  `id_kategori` varchar(20) NOT NULL,
  `id_sub_kategori` varchar(20) NOT NULL,
  `id_produk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_produk`
--

INSERT INTO `kategori_produk` (`id_kategori_produk`, `id_kategori`, `id_sub_kategori`, `id_produk`) VALUES
('kp_1', 'zee_5_handphone', 'zee_5_1', '1_samsung_n10'),
('kp_2', 'zee_5_handphone', 'zee_5_1', '2_samsung_a80'),
('kp_3', 'zee_5_handphone', 'zee_5_1', '3_samsung_a50s');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `foto_produk` varchar(20) NOT NULL,
  `deskripsi_produk` varchar(360) NOT NULL,
  `stok_produk` int(3) NOT NULL,
  `harga_produk` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `foto_produk`, `deskripsi_produk`, `stok_produk`, `harga_produk`) VALUES
('1_samsung_n10', 'Samsung Galaxy Note 10', 'samsungnote10.jpeg', 'Smartphone ini adalah yang terbaru keluaran Samsung. Cocok untuk membantu pekerjaan', 4, 15000000),
('2_samsung_a80', 'Samsung Galaxy A80', 'samsunga80.jpg', 'Smartphone unik dengan rotation camera!', 5, 8500000),
('3_samsung_a50s', 'Samsung Galaxy A50s', 'samsunga50s.png', 'Smartphone kekinian yang cocok untuk generasi milenial! Dilengkapi NFC!', 20, 4500000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kategori_produk`
--

CREATE TABLE `sub_kategori_produk` (
  `id_sub_kategori` varchar(20) NOT NULL,
  `sub_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sub_kategori_produk`
--

INSERT INTO `sub_kategori_produk` (`id_sub_kategori`, `sub_kategori`) VALUES
('zee_1_1', 'Televisi'),
('zee_1_2', 'Mesin Cuci'),
('zee_1_3', 'Kulkas'),
('zee_1_4', 'Stop Kontak'),
('zee_2_1', 'Sandal'),
('zee_2_2', 'Baju'),
('zee_2_3', 'Kemeja'),
('zee_2_4', 'Sepatu'),
('zee_2_5', 'Celana'),
('zee_5_1', 'Samsung'),
('zee_5_2', 'Oppo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(123458, 'Faatih Syauqi', 'faatihsyauqi@gmail.com', NULL, '$2y$10$xJjBxp8NvxHTG/olXPW.iOdxtwAdpOM6.vU.YMqtOIkwCRe9T.h0G', NULL, '2019-12-27 02:46:25', '2019-12-27 02:46:25'),
(123459, 'Dede Diana', 'dede.diana@gmail.com', NULL, '$2y$10$vFHNasa4Y.gE6YcHJPB5T.tYeP4h24ymYSqe5ZnM6vKMQHy/BTBfG', NULL, '2019-12-27 02:47:01', '2019-12-27 02:47:01'),
(123460, 'Novialawati', 'novilawati@gmail.com', NULL, '$2y$10$Uz39W.9VZJcZkoXC5LNAG.sga4q2BQ.jD/9D2hFTmGX2S8YUYQ4sW', NULL, '2019-12-27 02:47:14', '2019-12-27 02:47:14');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `daftar_user`
--
ALTER TABLE `daftar_user`
  ADD PRIMARY KEY (`id_daftar_user`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jenis_user`
--
ALTER TABLE `jenis_user`
  ADD PRIMARY KEY (`id_jenis_user`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id_kategori_produk`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_sub_kategori` (`id_sub_kategori`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `sub_kategori_produk`
--
ALTER TABLE `sub_kategori_produk`
  ADD PRIMARY KEY (`id_sub_kategori`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123461;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD CONSTRAINT `kategori_produk_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `kategori_produk_ibfk_2` FOREIGN KEY (`id_sub_kategori`) REFERENCES `sub_kategori_produk` (`id_sub_kategori`),
  ADD CONSTRAINT `kategori_produk_ibfk_3` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
