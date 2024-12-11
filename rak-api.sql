-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Bulan Mei 2024 pada 09.37
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rak-api`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2024_01_27_155538_create_status_table', 1),
(5, '2024_01_27_155642_create_tmploadcells_table', 1),
(6, '2024_01_27_155650_create_tmprfids_table', 1),
(7, '2024_01_27_155713_create_users_table', 1),
(8, '2024_01_27_165503_create_owners_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `owners`
--

CREATE TABLE `owners` (
  `id_pengguna` varchar(255) NOT NULL,
  `nokartu` varchar(255) NOT NULL,
  `nama_pengguna` varchar(255) NOT NULL,
  `pangkat` varchar(255) NOT NULL,
  `NRP` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `kesatuan` varchar(255) NOT NULL,
  `id_senjata` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `owners`
--

INSERT INTO `owners` (`id_pengguna`, `nokartu`, `nama_pengguna`, `pangkat`, `NRP`, `jabatan`, `kesatuan`, `id_senjata`) VALUES
('00001', '123756', 'nana', '2', 'wdqd', 'xawhbd', 'zc', 'SS1-1'),
('00002', '123756', 'nana', '2', 'wdqd', 'xawhbd', 'zc', 'SS1-1'),
('012312', '123', 'chanyeol', '123', 'wdqd', 'asd', 'fs1123', 'SS1-3'),
('123412', '123756', 'nana', '2', 'wdqd', 'xawhbd', 'zc', 'SS1-1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profiles`
--

CREATE TABLE `profiles` (
  `username` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `priode_active` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `profiles`
--

INSERT INTO `profiles` (`username`, `nama_lengkap`, `email`, `password`, `picture`, `position`, `priode_active`, `no_hp`) VALUES
('bby octopusz', 'Dyah Ayu Ratna Ningsih', 'bby.octopuszz@gmail.com', 'bbyoctopusz', '/images/HC.jpeg', 'Prada', '2002 - Sekarang', '0895332858801'),
('admin', 'andkjwnau', 'awndkjanwud', 'dawnj', '../storage/images/dy.jpeg', 'adwa', 'zxcas', 'qwdsad');

-- --------------------------------------------------------

--
-- Struktur dari tabel `receiver_data`
--

CREATE TABLE `receiver_data` (
  `event_id` bigint(20) NOT NULL,
  `loadCellID` int(11) NOT NULL,
  `rackNumber` int(11) NOT NULL,
  `loadCellStatus` int(11) NOT NULL,
  `loadCellWeight` float NOT NULL,
  `IDTAG` int(11) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `receiver_data`
--

INSERT INTO `receiver_data` (`event_id`, `loadCellID`, `rackNumber`, `loadCellStatus`, `loadCellWeight`, `IDTAG`, `Timestamp`) VALUES
(1, 1, 1, 1, 300.23, 1, '2024-05-16 12:40:09'),
(2, 1, 1, 1, 32, 2, '2024-05-16 13:39:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id_senjata` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `keluar` time DEFAULT NULL,
  `masuk` time DEFAULT NULL,
  `durasi` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id_senjata`, `tanggal`, `keluar`, `masuk`, `durasi`) VALUES
('SS1-1', '2023-11-28', '17:26:38', '17:27:36', NULL),
('SS1-1', '2023-11-29', '09:58:42', '12:15:25', NULL),
('SS1-1', '2023-12-14', '10:41:45', '10:42:38', NULL),
('SS1-1', '2024-01-07', '10:23:40', '10:23:46', '00:00:06'),
('SS1-1', '2024-01-07', '11:36:12', '11:36:27', '00:00:15'),
('SS1-10', '0000-00-00', NULL, NULL, NULL),
('SS1-11', '2024-05-16', '00:01:00', '23:59:59', '23:58:59'),
('SS1-12', '2024-05-16', '00:00:00', '01:00:00', '01:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmploadcells`
--

CREATE TABLE `tmploadcells` (
  `id_senjata` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `berat` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tmploadcells`
--

INSERT INTO `tmploadcells` (`id_senjata`, `status`, `berat`) VALUES
('SS1-1', 0, 10.00),
('SS1-2', 1, 3.00),
('SS1-3', 1, 4.00),
('SS1-4', 1, 8.00),
('SS1-5', 0, 0.00),
('SS1-6', 1, 6.00),
('SS1-7', 0, 0.00),
('SS1-8', 0, 0.00),
('SS1-9', 1, 20.98);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tmprfids`
--

CREATE TABLE `tmprfids` (
  `nokartu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tmprfids`
--

INSERT INTO `tmprfids` (`nokartu`) VALUES
('0123'),
('412312');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'Joko', 'admin', 'admin@gmail.com', '$2y$12$H405SpTuShutUJGHC8ppy.ZhbbVKw5V/CkBQYQYlF.cFg4dKQKxI6', '2023-09-14 22:21:38', NULL, NULL),
(8, 'octopus', 'bby octopusz', 'bby.octopuszz@gmail.com', '$2y$12$Dz3K8EtaAFhggB.X798qee/jIGOvvLQAoEYvZxex9rBkyHiWlBpJO', '2024-01-28 12:33:30', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD KEY `owners_id_senjata_foreign` (`id_senjata`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `receiver_data`
--
ALTER TABLE `receiver_data`
  ADD PRIMARY KEY (`event_id`);

--
-- Indeks untuk tabel `tmploadcells`
--
ALTER TABLE `tmploadcells`
  ADD PRIMARY KEY (`id_senjata`);

--
-- Indeks untuk tabel `tmprfids`
--
ALTER TABLE `tmprfids`
  ADD PRIMARY KEY (`nokartu`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `receiver_data`
--
ALTER TABLE `receiver_data`
  MODIFY `event_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `owners`
--
ALTER TABLE `owners`
  ADD CONSTRAINT `owners_id_senjata_foreign` FOREIGN KEY (`id_senjata`) REFERENCES `tmploadcells` (`id_senjata`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
