-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Mar 2020 pada 12.03
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oleh`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/images/default-gambar.jpg',
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barangs`
--

INSERT INTO `barangs` (`id`, `nama_barang`, `gambar`, `harga`, `stok`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Bakpia Jogja', 'bakpia.jpg', 35000, 9, 'Tersedia rasa Coklat, Keju, Kacang Hijau, Blueberry, dan Strawberry', '2020-03-11 17:00:00', '2020-03-13 08:54:48'),
(2, 'Gudeg Jogja', 'gudeg.jpg', 30000, 50, 'Gudeg dengan telur, ayam, dan krecek', '2020-03-11 17:00:00', '2020-03-11 17:00:00'),
(3, 'Kaos Oblong ', 'kaos.jpg', 50000, 95, 'Kaos yang nyaman dipakai untuk bersantai ria', '2020-03-11 17:00:00', '2020-03-12 23:25:27');

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
(3, '2020_03_11_225748_create_barangs_table', 1),
(5, '2020_03_11_231736_create_pesanan_details_table', 1),
(6, '2020_03_11_231348_create_pesanans_table', 2);

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
-- Struktur dari tabel `pesanans`
--

CREATE TABLE `pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesanans`
--

INSERT INTO `pesanans` (`id`, `user_id`, `tanggal`, `status`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(6, 1, '2020-03-12', '1', 70000, '2020-03-12 09:28:01', '2020-03-12 20:18:10'),
(7, 1, '2020-03-13', '1', 60000, '2020-03-12 20:26:03', '2020-03-12 20:26:14'),
(8, 1, '2020-03-13', '1', 35000, '2020-03-12 20:38:54', '2020-03-12 20:39:04'),
(9, 1, '2020-03-13', '1', 170000, '2020-03-12 20:52:05', '2020-03-12 20:54:42'),
(10, 1, '2020-03-13', '1', 70000, '2020-03-12 21:05:42', '2020-03-12 21:08:10'),
(11, 1, '2020-03-13', '1', 300000, '2020-03-12 21:09:07', '2020-03-12 22:36:21'),
(12, 1, '2020-03-13', '1', 50000, '2020-03-12 22:38:39', '2020-03-12 22:38:45'),
(13, 1, '2020-03-13', '1', 50000, '2020-03-12 22:58:18', '2020-03-12 22:58:24'),
(14, 1, '2020-03-13', '1', 100000, '2020-03-12 23:19:40', '2020-03-12 23:19:47'),
(15, 1, '2020-03-13', '1', 50000, '2020-03-12 23:24:23', '2020-03-12 23:24:58'),
(16, 1, '2020-03-13', '1', 50000, '2020-03-12 23:25:22', '2020-03-12 23:25:27'),
(17, 1, '2020-03-13', '1', 0, '2020-03-12 23:28:13', '2020-03-12 23:28:53'),
(18, 1, '2020-03-13', '1', 35000, '2020-03-13 08:54:36', '2020-03-13 08:54:48'),
(19, 1, '2020-03-13', '1', 100000, '2020-03-13 09:02:16', '2020-03-14 00:30:42'),
(20, 1, '2020-03-14', '1', 35000, '2020-03-14 00:47:34', '2020-03-14 00:47:43'),
(21, 1, '2020-03-14', '1', 35000, '2020-03-14 01:27:00', '2020-03-14 01:28:10'),
(22, 1, '2020-03-14', '1', 70000, '2020-03-14 01:47:10', '2020-03-14 01:55:06'),
(23, 1, '2020-03-14', '1', 35000, '2020-03-14 02:09:05', '2020-03-14 02:09:32'),
(24, 1, '2020-03-14', '1', 135000, '2020-03-14 02:25:19', '2020-03-14 02:29:10'),
(25, 1, '2020-03-14', '1', 35000, '2020-03-14 02:43:45', '2020-03-14 03:03:31'),
(26, 1, '2020-03-14', '1', 50000, '2020-03-14 03:17:42', '2020-03-14 03:18:11'),
(27, 1, '2020-03-14', '1', 70000, '2020-03-14 03:54:50', '2020-03-14 04:39:47'),
(28, 1, '2020-03-14', '1', 70000, '2020-03-14 04:51:33', '2020-03-14 04:51:47'),
(29, 1, '2020-03-14', '1', 100000, '2020-03-14 06:16:25', '2020-03-14 06:16:50'),
(30, 1, '2020-03-14', '1', 600000, '2020-03-14 06:29:03', '2020-03-14 06:34:46'),
(31, 1, '2020-03-14', '1', 130000, '2020-03-14 07:33:10', '2020-03-14 19:19:54'),
(32, 1, '2020-03-15', '1', 150000, '2020-03-14 19:20:11', '2020-03-16 03:03:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan_details`
--

CREATE TABLE `pesanan_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesanan_details`
--

INSERT INTO `pesanan_details` (`id`, `barang_id`, `pesanan_id`, `jumlah`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(7, 1, 6, 2, 70000, '2020-03-12 19:43:49', '2020-03-12 19:43:49'),
(10, 2, 7, 2, 60000, '2020-03-12 20:26:03', '2020-03-12 20:26:03'),
(11, 1, 8, 1, 35000, '2020-03-12 20:38:54', '2020-03-12 20:38:54'),
(12, 1, 9, 2, 70000, '2020-03-12 20:52:05', '2020-03-12 20:52:05'),
(13, 3, 9, 2, 100000, '2020-03-12 20:54:32', '2020-03-12 20:54:32'),
(15, 1, 10, 2, 70000, '2020-03-12 21:07:23', '2020-03-12 21:07:46'),
(16, 3, 11, 6, 300000, '2020-03-12 21:09:08', '2020-03-12 22:36:12'),
(17, 3, 12, 1, 50000, '2020-03-12 22:38:39', '2020-03-12 22:38:39'),
(18, 3, 13, 1, 50000, '2020-03-12 22:58:18', '2020-03-12 22:58:18'),
(19, 3, 14, 2, 100000, '2020-03-12 23:19:40', '2020-03-12 23:19:40'),
(20, 3, 15, 1, 50000, '2020-03-12 23:24:23', '2020-03-12 23:24:23'),
(21, 3, 16, 1, 50000, '2020-03-12 23:25:22', '2020-03-12 23:25:22'),
(23, 1, 18, 1, 35000, '2020-03-13 08:54:36', '2020-03-13 08:54:36'),
(24, 2, 19, 1, 30000, '2020-03-13 09:02:16', '2020-03-13 09:02:16'),
(25, 1, 19, 2, 70000, '2020-03-13 09:02:51', '2020-03-13 09:02:51'),
(26, 1, 20, 1, 35000, '2020-03-14 00:47:34', '2020-03-14 00:47:34'),
(27, 1, 21, 1, 35000, '2020-03-14 01:27:00', '2020-03-14 01:27:00'),
(30, 1, 22, 2, 70000, '2020-03-14 01:52:41', '2020-03-14 01:53:51'),
(31, 1, 23, 1, 35000, '2020-03-14 02:09:05', '2020-03-14 02:09:05'),
(32, 1, 24, 3, 105000, '2020-03-14 02:25:19', '2020-03-14 02:25:19'),
(33, 2, 24, 1, 30000, '2020-03-14 02:29:03', '2020-03-14 02:29:03'),
(34, 1, 25, 1, 35000, '2020-03-14 02:43:45', '2020-03-14 02:43:45'),
(35, 3, 26, 1, 50000, '2020-03-14 03:17:42', '2020-03-14 03:17:42'),
(36, 1, 27, 2, 70000, '2020-03-14 03:54:51', '2020-03-14 03:54:51'),
(37, 1, 28, 2, 70000, '2020-03-14 04:51:33', '2020-03-14 04:51:33'),
(38, 3, 29, 2, 100000, '2020-03-14 06:16:26', '2020-03-14 06:16:26'),
(39, 2, 30, 20, 600000, '2020-03-14 06:29:03', '2020-03-14 06:29:03'),
(41, 2, 31, 2, 60000, '2020-03-14 08:02:19', '2020-03-14 08:02:19'),
(42, 1, 31, 2, 70000, '2020-03-14 19:18:48', '2020-03-14 19:18:48'),
(45, 3, 32, 3, 150000, '2020-03-15 20:44:28', '2020-03-16 03:03:34');

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
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nohp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `alamat`, `nohp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rifqi Anugrah', 'rifqianugrah.ra26@gmail.com', NULL, '$2y$10$fQTr.OICireAY6io.9z4Z.CiMv0O8azW2CR4m4XFo0BGjLrY9yzZa', 'Condongc catur Sleman, Yogyakarta', 'rifqianugrah.ra26@gmail.com', NULL, '2020-03-11 17:10:19', '2020-03-16 02:50:16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

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
-- Indeks untuk tabel `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan_details`
--
ALTER TABLE `pesanan_details`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `pesanan_details`
--
ALTER TABLE `pesanan_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
