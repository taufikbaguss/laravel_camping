-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 28, 2020 at 11:44 AM
-- Server version: 10.2.10-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `slug`, `icon`, `name`, `parent_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 'tenda', 'fa', 'Tenda', NULL, 1, '2018-12-25 01:32:44', '2020-05-28 21:19:09'),
(5, 'tenda-dome', 'fa', 'Tenda Dome', 4, 1, '2018-12-25 01:33:07', '2020-05-28 21:19:23'),
(6, 'tenda-lafuma', 'fa', 'Tenda Dome Lafuma 2', 4, 1, '2018-12-25 01:33:31', '2020-05-28 21:19:46'),
(7, 'lampu', 'fa fa-lightbulb-o', 'Lampu', NULL, 1, '2018-12-25 01:34:30', '2020-06-24 21:42:29'),
(8, 'lampu-emergency', 'fa', 'Lampu Emergency', 7, 1, '2018-12-25 01:34:42', '2020-05-28 21:20:26'),
(10, 'head-lamp', 'fa', 'Headlamp', 7, 1, '2018-12-28 02:51:12', '2020-05-28 21:20:43'),
(11, 'senter', 'fa', 'Senter', 7, 1, '2018-12-28 02:51:30', '2020-05-28 21:20:54'),
(12, 'kompor', 'fa', 'Kompor', NULL, 1, '2018-12-28 02:52:56', '2020-05-28 21:21:09'),
(13, 'kompor-gas-mini', 'fa', 'Kompor Gas Mini', 12, 1, '2018-12-28 02:53:15', '2020-05-28 21:21:25'),
(14, 'kompor-set', 'fa', 'Kompor Set', 12, 1, '2018-12-28 02:53:30', '2020-05-28 21:21:55'),
(17, 'sepatu', 'fa', 'Sepatu', NULL, 16, '2020-05-28 21:22:24', '2020-05-28 21:22:24'),
(18, 'sepatu-trecking', 'fa', 'Sepatu Trecking', 17, 16, '2020-05-28 21:22:38', '2020-05-28 21:22:38'),
(19, 'sleeping-bag', 'fa', 'Sleeping Bag', NULL, 16, '2020-05-28 21:22:50', '2020-05-28 21:22:50'),
(20, 'sleeping-bag', 'fa', 'Sleeping Bag 3 Layer', 19, 16, '2020-05-28 21:23:41', '2020-05-28 21:23:41');

-- --------------------------------------------------------

--
-- Table structure for table `lama_pinjam`
--

CREATE TABLE `lama_pinjam` (
  `id` int(11) NOT NULL,
  `lama_pinjam` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lama_pinjam`
--

INSERT INTO `lama_pinjam` (`id`, `lama_pinjam`) VALUES
(1, '1 Hari'),
(2, '2 Hari'),
(3, '3 Hari'),
(4, '4 Hari'),
(5, '5 Hari'),
(6, '6 Hari'),
(7, '7 Hari'),
(8, '8 Hari'),
(9, '9 Hari'),
(10, '10 Hari');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(21, '2014_10_12_000000_create_users_table', 1),
(22, '2014_10_12_100000_create_password_resets_table', 1),
(23, '2018_12_22_092841_table_category', 1),
(24, '2018_12_22_193348_table_products', 1),
(25, '2018_12_22_195312_table_transaction', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deposit_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `photo`, `name`, `slug`, `description`, `price`, `stock`, `weight`, `category_id`, `user_id`, `created_at`, `updated_at`, `deposit_harga`) VALUES
(5, 'static/dist/img/Tenda Lafuma 2.PNG', 'Tenda Dome Lafuma 3', 'tenda-dome-lafuma', '<p>Tenda Dome Lafuma 2</p>', 30000, 7, 1, 5, 1, '2018-12-25 05:48:58', '2020-06-28 02:29:13', 25000),
(6, 'static/dist/img/Tenda Dome.PNG', 'Tenda Dome', 'tenda-dome', '<p>Tenda Dome</p>', 60000, 8, 5, 6, 1, '2018-12-25 05:51:14', '2020-06-28 01:16:43', 50000),
(7, 'static/dist/img/Sepatu Trecking.PNG', 'Sepatu Trecking', 'sepatu-trecking', '<p>Sepatu Trecking</p>', 50000, 31, 1, 18, 1, '2018-12-25 05:53:09', '2020-06-28 02:25:08', 40000),
(8, 'static/dist/img/Sleeping Bag.PNG', 'Sleeping Bag', 'sleeping-bag', '<p>Sleeping Bag</p>', 12000, 0, 1, 20, 1, '2018-12-25 05:55:21', '2020-06-28 01:18:34', 10000),
(9, 'static/dist/img/Kompor Gas Mini.PNG', 'Kompor Gas Mini', 'kompor-gas-mini', '<p>Kompor Gas Mini</p>', 21000, 3, 2, 13, 1, '2018-12-25 05:57:10', '2020-06-28 02:29:16', 20000),
(10, 'static/dist/img/Headlamp.PNG', 'Headlamp', 'head-lamp', '<p>Headlamp</p>', 23000, 0, 1, 10, 1, '2018-12-25 05:48:58', '2020-06-28 01:19:42', 22000);

-- --------------------------------------------------------

--
-- Table structure for table `products_lama_pinjam`
--

CREATE TABLE `products_lama_pinjam` (
  `id` int(11) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `lama_pinjam_id` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products_lama_pinjam`
--

INSERT INTO `products_lama_pinjam` (`id`, `product_id`, `lama_pinjam_id`, `harga`) VALUES
(4, 5, 1, 30000),
(5, 5, 2, 31000),
(6, 5, 3, 32000),
(7, 6, 1, 60000),
(8, 6, 2, 61000),
(9, 6, 3, 62000),
(10, 7, 1, 50000),
(11, 7, 2, 51000),
(12, 7, 3, 52000),
(13, 8, 1, 12000),
(14, 8, 2, 13000),
(15, 8, 3, 14000),
(16, 9, 1, 21000),
(17, 9, 2, 22000),
(18, 9, 3, 23000),
(19, 10, 1, 23000),
(20, 10, 2, 24000),
(21, 10, 3, 25000),
(41, 5, 4, 33000),
(42, 5, 5, 34000),
(43, 5, 6, 35000),
(44, 5, 7, 36000),
(45, 5, 8, 37000),
(46, 5, 9, 38000),
(47, 5, 10, 39000),
(48, 6, 4, 63000),
(49, 6, 5, 64000),
(50, 6, 6, 65000),
(51, 6, 7, 66000),
(52, 6, 8, 67000),
(53, 6, 9, 68000),
(54, 6, 10, 69000),
(55, 7, 4, 53000),
(56, 7, 5, 54000),
(57, 7, 6, 55000),
(58, 7, 7, 56000),
(59, 7, 8, 57000),
(60, 7, 9, 58000),
(61, 7, 10, 59000),
(62, 8, 4, 15000),
(63, 8, 5, 16000),
(64, 8, 6, 17000),
(65, 8, 7, 18000),
(66, 8, 8, 19000),
(67, 8, 9, 20000),
(68, 8, 10, 21000),
(69, 9, 4, 24000),
(70, 9, 5, 25000),
(71, 9, 6, 26000),
(72, 9, 7, 27000),
(73, 9, 8, 28000),
(74, 9, 9, 29000),
(75, 9, 10, 30000),
(76, 10, 4, 26000),
(77, 10, 5, 27000),
(78, 10, 6, 28000),
(79, 10, 7, 29000),
(80, 10, 8, 30000),
(81, 10, 9, 31000),
(82, 10, 10, 32000);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `deposit` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `lama_pinjam_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `portal_code` int(11) NOT NULL,
  `ekspedisi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `code`, `user_id`, `product_id`, `qty`, `harga`, `deposit`, `subtotal`, `lama_pinjam_id`, `name`, `file`, `address`, `portal_code`, `ekspedisi`, `status`, `created_at`, `updated_at`) VALUES
(115, '20060110091', 1, 10, 1, 66000, 0, 66000, 3, 'Ahmed', 'static/dist/img/ktp_sample.jpg', '78', 16911, '{\"code\":\"jne\",\"name\":\"Jalur Nugraha Ekakurir (JNE)\",\"value\":8000,\"etd\":\"2-3\"}', '0', '2020-06-01 03:09:40', '2020-06-05 01:06:49'),
(116, '20060110091', 1, 9, 3, 20000, 0, 60000, 1, 'Ahmed', 'static/dist/img/ktp_sample.jpg', '78', 16911, '{\"code\":\"jne\",\"name\":\"Jalur Nugraha Ekakurir (JNE)\",\"value\":8000,\"etd\":\"2-3\"}', '0', '2020-06-01 03:09:41', '2020-06-05 01:06:49'),
(117, '20060110091', 1, 8, 2, 24000, 0, 48000, 2, 'Ahmed', 'static/dist/img/ktp_sample.jpg', '78', 16911, '{\"code\":\"jne\",\"name\":\"Jalur Nugraha Ekakurir (JNE)\",\"value\":8000,\"etd\":\"2-3\"}', '0', '2020-06-01 03:09:41', '2020-06-05 01:06:49'),
(122, '200603065223', 23, 6, 2, 60000, 0, 120000, 1, 'Iqbal Tawakal', 'static/dist/img/sample ktp.jpg', '1', 23681, '{\"code\":\"jne\",\"name\":\"Jalur Nugraha Ekakurir (JNE)\",\"value\":51000,\"etd\":\"3-6\"}', '0', '2020-06-03 11:52:45', '2020-06-03 11:52:45'),
(124, '200605083616', 16, 6, 1, 60000, 0, 60000, 1, 'Bagus', 'static/dist/img/sample ktp.jpg', '446', 71513, '{\"code\":\"jne\",\"name\":\"Jalur Nugraha Ekakurir (JNE)\",\"value\":45000,\"etd\":\"5-7\"}', '0', '2020-06-05 01:36:26', '2020-06-05 01:36:26'),
(125, '200610122923', 23, 6, 1, 60000, 0, 60000, 1, 'Bagus', 'static/dist/img/sample ktp.jpg', '16', 99777, '{\"code\":\"jne\",\"name\":\"Jalur Nugraha Ekakurir (JNE)\",\"value\":140000,\"etd\":\"9-10\"}', '0', '2020-06-09 17:29:12', '2020-06-23 21:40:38'),
(126, '200621035127', 27, 7, 1, 50000, 0, 50000, 1, 'Bagas', 'static/dist/img/sample ktp2.jpg', '447', 82119, '{\"code\":\"jne\",\"name\":\"Jalur Nugraha Ekakurir (JNE)\",\"value\":27000,\"etd\":\"3-6\"}', '0', '2020-06-21 08:51:22', '2020-06-21 08:51:22'),
(127, '200623031829', 29, 7, 1, 100000, 0, 100000, 2, 'bagus', 'static/dist/img/sample ktp.jpg', '255', 65163, '{\"code\":\"pos\",\"name\":\"POS Indonesia (POS)\",\"value\":21000,\"etd\":\"2-3 HARI\"}', '0', '2020-06-22 20:18:18', '2020-06-22 20:18:18'),
(128, '200623033329', 29, 8, 35, 12000, 0, 420000, 1, 'Bagus', 'static/dist/img/sample ktp.jpg', '1', 23681, '{\"code\":\"jne\",\"name\":\"Jalur Nugraha Ekakurir (JNE)\",\"value\":51000,\"etd\":\"3-6\"}', '0', '2020-06-22 20:33:00', '2020-06-23 21:43:14'),
(129, '200624103129', 29, 10, 1, 22000, 0, 22000, 1, 'Bagas', 'static/dist/img/sample ktp.jpg', '167', 73583, '{\"code\":\"jne\",\"name\":\"Jalur Nugraha Ekakurir (JNE)\",\"value\":52000,\"etd\":\"6-8\"}', '0', '2020-06-24 03:31:37', '2020-06-24 03:31:37'),
(137, '200628092916', 16, 5, 2, 30000, 25000, 110000, 1, 'Deden', 'static/dist/img/ktp_sample.jpg', '34', 46311, '{\"code\":\"jne\",\"name\":\"Jalur Nugraha Ekakurir (JNE)\",\"value\":17000,\"etd\":\"4-7\"}', '0', '2020-06-28 02:29:14', '2020-06-28 02:29:14'),
(138, '200628092916', 16, 9, 3, 22000, 20000, 126000, 2, 'Deden', 'static/dist/img/ktp_sample.jpg', '34', 46311, '{\"code\":\"jne\",\"name\":\"Jalur Nugraha Ekakurir (JNE)\",\"value\":17000,\"etd\":\"4-7\"}', '0', '2020-06-28 02:29:17', '2020-06-28 02:29:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'static/dist/img/avatar5.png',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('L','P') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `birthday` date NOT NULL,
  `role` enum('admin','supplier','member') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deposit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `photo`, `username`, `email`, `password`, `address`, `phone`, `gender`, `status`, `birthday`, `role`, `remember_token`, `created_at`, `updated_at`, `deposit`) VALUES
(1, 'Administrator', 'static/dist/img/avatar04.png', 'admin', 'admin@gmail.com', '$2y$10$5vXUIor1GkOq8gOuPiWM8.R86pcHrj1.RB9XemnAZznH6jFj0ivSG', 'Tangerang', '082221060025', 'L', '1', '2018-12-13', 'supplier', 'R3SnGpEmNeH577qwiUV6AkuElyUMVlJpbuUOiG7606KcSWiv7tzCYZLlsyvX', '2018-12-25 01:23:16', '2020-06-28 02:35:46', 500000),
(6, 'Albi', 'static/dist/img/avatar5.png', 'Kurnia', 'Albi@gmail.com', '$2y$10$kLLNAXWIsbuaCVGvVGe7Q.LR3Mq0MKkwfygR/tGfuwzvbBmoxQxXC', 'Bandung', '0834353', 'P', '1', '2018-12-12', 'supplier', NULL, '2018-12-28 17:52:26', '2020-06-28 02:36:12', 250000),
(16, 'bagoes', 'static/dist/img/avatar5.png', 'bagoes taufik', 'gusba1999@gmail.com', '$2y$10$KKKFuRbO85xoZ3XV7e9ffO/8e4tdcW1iyCoMJwyxZCRh3ooMYst9W', 'Tangerang', '089515708305', 'L', '1', '1999-01-03', 'admin', 'bgoyaZYqsjDawGhiKoF3uwgnRDnWp8lqLla2vZ0Ry6yIAPclF9myXkOQ6ar4', '2020-05-22 21:04:39', '2020-05-22 21:04:39', 0),
(23, 'Iqbal Tawakal', 'static/dist/img/avatar5.png', 'Iqbal', 'toxiccompany86@gmail.com', '$2y$10$pe4VecQNRWVxXWsY1Z4i/ejD/GovDwDQqX1jOw1IKy.YAEzuYJrca', 'Puri Agung Tangerang', '087548548', 'L', '0', '2000-10-10', 'member', 'q431NAGc0pacCpA4bXGPE092riDFV9C80eahVU0KZbsCxKKow7H7jOnW5uQe', '2020-06-03 11:49:26', '2020-06-28 02:39:50', 150000),
(27, 'Sekar Ayuwangi', 'static/dist/img/kaneki.png', 'sekar', 'ayusekaar9@gmail.com', '$2y$10$yNe.Y3VnP60YCjcSlzab..9wJ1pUApj4lHbkt6ya8NFs6UP4jCjCi', 'Jakarta', '0812345678', 'P', '1', '2001-01-01', 'member', 'eecAD6TEXHsqegijIEBk8FRhQwipV1CEa9vmqoPo5PM0MVlgtm9rn7WPGCtN', '2020-06-21 08:43:21', '2020-06-28 02:44:07', 650000),
(29, 'bagus', 'static/dist/img/avatar5.png', 'bagus', 'taufikbagus0103@gmail.com', '$2y$10$y8Zsptf5K7u6cs69H2nERucn0IeoHPpdN.xxXBExw3hN1yRELL0H2', 'Malang', '0812345678', 'L', '1', '1999-01-03', 'member', '7gOKF9I8dkIYMvov0wLAJUraU9ETur4C6tXkO3rVEGDGLlrpSAt0AQ9vd87h', '2020-06-22 20:13:48', '2020-06-28 02:36:49', 125000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`),
  ADD KEY `categories_user_id_foreign` (`user_id`);

--
-- Indexes for table `lama_pinjam`
--
ALTER TABLE `lama_pinjam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indexes for table `products_lama_pinjam`
--
ALTER TABLE `products_lama_pinjam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lama_pinjam_id` (`lama_pinjam_id`),
  ADD KEY `products_lama_pinjam_ibfk_2` (`product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_product_id_foreign` (`product_id`),
  ADD KEY `lama_pinjam_id` (`lama_pinjam_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `lama_pinjam`
--
ALTER TABLE `lama_pinjam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products_lama_pinjam`
--
ALTER TABLE `products_lama_pinjam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `categories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products_lama_pinjam`
--
ALTER TABLE `products_lama_pinjam`
  ADD CONSTRAINT `products_lama_pinjam_ibfk_1` FOREIGN KEY (`lama_pinjam_id`) REFERENCES `lama_pinjam` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `products_lama_pinjam_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`lama_pinjam_id`) REFERENCES `lama_pinjam` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
