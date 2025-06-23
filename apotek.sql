-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 18, 2024 at 12:52 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1721115149),
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1721115149;', 1721115149),
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1721304977),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1721304977;', 1721304977);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` bigint NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `nama_barang`, `gambar`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Paracetamol (Acetaminophen))', '01J2X1VX0974ZXE89R5ZC5482S.jpg', 'Untuk mengurangi demam, nyeri ringan hingga sedang seperti sakit kepala, sakit gigi, dan nyeri otot.', '2024-07-15 09:56:46', '2024-07-18 12:47:46'),
(2, 'Antasida', '01J2X1Y09G4CT638RETEP3ZKVE.jpg', 'Untuk mengobati gejala yang disebabkan oleh kelebihan asam lambung, seperti mulas, gangguan pencernaan, dan sakit maag', '2024-07-15 10:46:00', '2024-07-16 05:58:32'),
(3, 'Loperamide', '01J2X1ZM3Q6SN3E3ECGG5BV2YR.jpg', 'Untuk diare akut dan kronis', '2024-07-15 10:46:25', '2024-07-16 05:59:25'),
(4, 'Loratadine', '01J2X23QHM6QM4KP355ZKW0G3V.jpg', 'Mengobati gejala alergi seperti bersin, hidung meler, dan mata gatal atau berair', '2024-07-15 10:51:58', '2024-07-16 06:01:40'),
(5, 'Ceritizine', '01J2X263JFSA9KPBCK1NHNKFGA.jpg', 'Mengobati gejala alergi seperti rinitis alergi dan urtikaria (gatal-gatal)', '2024-07-15 11:17:49', '2024-07-16 06:02:58'),
(6, 'Amoxicillin', '01J2X2ADW8CN0Q84SDEHN48P71.jpg', 'Antibiotik yang digunakan untuk mengobati berbagai infeksi bakteri seperti infeksi saluran pernapasan, infeksi telinga, dan infeksi kulit', '2024-07-16 03:05:44', '2024-07-16 06:05:19'),
(7, 'Omeprazole', '01J2X2CYDDHHB9HFN87PYVCWXX.webp', 'Mengobati kondisi yang disebabkan oleh kelebihan produksi asam lambung, seperti GERD (Gastroesophageal Reflux Disease) dan tukak lambung', '2024-07-16 03:05:44', '2024-07-16 06:06:42'),
(8, 'Metformin', '01J2X2JJ2DJEJQRKF0BZJDAM4H.jpg', 'Mengelola kadar gula darah pada pasien dengan diabetes tipe 2', '2024-07-16 03:05:44', '2024-07-16 06:09:46'),
(9, 'Amlodipine', '01J2X2P1NEWV1SE2SP35QE8AJV.webp', 'Mengobati tekanan darah tinggi dan angina (nyeri dada)', '2024-07-16 03:05:44', '2024-07-16 06:11:40'),
(10, 'Simvastin', '01J2X2WCRFWCNWX2EJE4D003HS.webp', 'Mengurangi kadar kolesterol dan trigliserida dalam darah untuk mengurangi risiko penyakit jantung dan stroke', '2024-07-16 03:05:44', '2024-07-16 06:15:08'),
(11, 'Prednisone', '01J2X5JEWWB06RWN0T3SXGX88S.jpg', 'Kortikosteroid yang digunakan untuk mengurangi peradangan dan menekan sistem kekebalan tubuh dalam kondisi seperti asma, alergi, dan penyakit autoimun', '2024-07-16 03:08:27', '2024-07-16 07:02:08'),
(12, 'Furosemide', '01J2X5RPCXSQ5P2S6BY0BKZGQJ.jpg', 'Diuretik yang digunakan untuk mengobati retensi cairan (edema) dan tekanan darah tinggi', '2024-07-16 03:08:27', '2024-07-16 07:05:32'),
(13, 'Clopidrogel', '01J2X5WGWHTZSAV3YB4WDCBEJE.jpg', 'Mencegah penggumpalan darah pada pasien dengan riwayat serangan jantung, stroke, atau masalah sirkulasi darah lainnya', '2024-07-16 03:08:27', '2024-07-16 07:07:38'),
(14, 'Alprazolam', '01J2X5TK2Z690T6R5PC5057DVE.jpg', 'Mengobati gangguan kecemasan dan serangan panik', '2024-07-16 03:08:27', '2024-07-16 07:06:34'),
(15, 'Dextromethorpan', '01J2X5YN0R4WPGMG2JS3Y88Z64.jpg', 'Meredakan batuk kering tanpa dahak', '2024-07-16 03:08:27', '2024-07-16 07:08:48');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('8uavJdOAQtA4Woi2N4RVyfpKoulsO0I0VhVT6Rgq', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiNUhZQm1Cd3FhdzFWeWpSVnN0SVI0MEpiclhrTHBHWU5Db0F4aFFKeiI7czozOiJ1cmwiO2E6MDp7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM4OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vdHJhbnNha3NpcyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMiRQWUFKMnFxOWNxbWVXeW1nVjBWYWV1WGkwLi85T1pBMVMycGZzUDVwbHkxb0wxWW5VemE1MiI7czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1721307126);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` bigint NOT NULL,
  `id_barang` bigint NOT NULL,
  `nama_sewa` varchar(255) NOT NULL,
  `harga_sewa` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `lampiran` text NOT NULL,
  `lampiran_nama` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `id_barang`, `nama_sewa`, `harga_sewa`, `gambar`, `lampiran`, `lampiran_nama`, `created_at`, `updated_at`) VALUES
(1, 1, 'Yuliana Dewi Proboningrum ', 'Rp 3.784 per strip (10 tablet)', '01J2X3SY1S9RPZER34EW66Z1CQ.webp', '[\"01J2V2HTHQKC0QAHDA1QC80F12.pdf\"]', '{\"01J2V2HTHQKC0QAHDA1QC80F12.pdf\":\"admin,+C-53.pdf\"}', '2024-07-15 09:57:25', '2024-07-16 06:31:16'),
(2, 2, 'Yuliana Dewi ', 'Rp 3.000 per strip (10 tablet)', '01J2X5BEXATD7CHYYHSD6CDER4.jpg', '[\"01J2V2PXP9F8B22T0GNABPYH6T.pdf\"]', '{\"01J2V2PXP9F8B22T0GNABPYH6T.pdf\":\"121852-ID-kebutuhan-kompetensi-tenaga-kerja-teknol.pdf\"}', '2024-07-15 11:33:40', '2024-07-18 12:51:58'),
(3, 3, 'Yuliana Dewi Proboningrum', 'Rp 5.000 per strip (10 Tablet)', '01J2X67XRM0EDDJ34R4XVAD4PT.jpg', '[]', '[]', '2024-07-16 06:39:04', '2024-07-16 07:13:51'),
(4, 4, 'Yuliana Dewi Proboningrum', 'Rp 10.000 per strip (10 Tablet)', '', '', '', '2024-07-16 06:39:04', '2024-07-16 06:39:04'),
(5, 5, 'Yuliana Dewi Proboningrum', 'Rp 10.000 per strip (10 tablet)', '01J2X78K1DCW4QVT56NEN5TWMN.jpg', '[]', '[]', '2024-07-16 06:39:04', '2024-07-16 07:31:42'),
(6, 6, 'Yuliana Dewi Proboningrum', 'Rp 20.000 per strip (10 tablet)', '01J2X736VZ9K3BTVH7X51714WK.webp', '[]', '[]', '2024-07-16 06:39:04', '2024-07-16 07:28:45'),
(7, 7, 'Yuliana Dewi Proboningrum', 'Rp 5.000 per strip (10 tablet)', '', '', '', '2024-07-16 06:39:04', '2024-07-16 06:39:04'),
(8, 8, 'Yuliana Dewi Proboningrum', 'Rp 15.000 per strip (10 tablet)', '', '', '', '2024-07-16 06:39:04', '2024-07-16 06:39:04'),
(9, 9, 'Yuliana Dewi Proboningrum', 'Rp 6.000 per strip (10 tablet)', '', '', '', '2024-07-16 06:39:04', '2024-07-16 06:39:04'),
(10, 10, 'Indah Permatasari', 'Rp 10.000 per strip (10 tablet)', '01J2X5G1YYQ2Y4PSXFTTQA7H9J.jpg', '[]', '[]', '2024-07-16 06:39:04', '2024-07-16 07:00:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'yuli', '220101041@mhs.udb.ac.id', NULL, '$2y$12$PYAJ2qq9cqmeWymgV0VaeuXi0./9OZA1S2pfsP5ply1oL1YnUza52', 'wnKmsWv8V54vxP24OS7M4jAe9kZkCpAERMoHECYahjAGYdJOYgWsymjrivlM', '2024-07-15 04:06:00', '2024-07-15 04:06:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `obat` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
