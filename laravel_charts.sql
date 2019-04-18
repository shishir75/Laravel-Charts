-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2019 at 06:37 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_charts`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_17_190559_create_pulses_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pulses`
--

CREATE TABLE `pulses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pulses`
--

INSERT INTO `pulses` (`id`, `value`, `created_at`, `updated_at`) VALUES
(1, 100, '2019-04-16 13:22:03', '2019-04-17 13:22:03'),
(2, 96, '2019-04-15 13:22:03', '2019-04-17 13:22:03'),
(3, 98, '2019-04-14 13:22:03', '2019-04-17 13:22:03'),
(4, 95, '2019-04-13 13:22:03', '2019-04-17 13:22:03'),
(5, 95, '2019-04-12 13:22:03', '2019-04-17 13:22:03'),
(6, 87, '2019-04-11 13:22:03', '2019-04-17 13:22:03'),
(7, 115, '2019-04-10 13:22:03', '2019-04-17 13:22:03'),
(8, 92, '2019-04-09 13:22:03', '2019-04-17 13:22:03'),
(9, 88, '2019-04-08 13:22:03', '2019-04-17 13:22:03'),
(10, 88, '2019-04-07 13:22:03', '2019-04-17 13:22:03'),
(11, 88, '2019-04-06 13:22:03', '2019-04-17 13:22:03'),
(12, 116, '2019-04-05 13:22:03', '2019-04-17 13:22:03'),
(13, 91, '2019-04-04 13:22:03', '2019-04-17 13:22:03'),
(14, 107, '2019-04-03 13:22:03', '2019-04-17 13:22:03'),
(15, 115, '2019-04-02 13:22:03', '2019-04-17 13:22:03'),
(16, 114, '2019-04-01 13:22:04', '2019-04-17 13:22:04'),
(17, 106, '2019-03-31 13:22:04', '2019-04-17 13:22:04'),
(18, 111, '2019-03-30 13:22:04', '2019-04-17 13:22:04'),
(19, 113, '2019-03-29 13:22:04', '2019-04-17 13:22:04'),
(20, 101, '2019-03-28 13:22:04', '2019-04-17 13:22:04'),
(21, 105, '2019-03-27 13:22:04', '2019-04-17 13:22:04'),
(22, 95, '2019-03-26 13:22:04', '2019-04-17 13:22:04'),
(23, 88, '2019-03-25 13:22:04', '2019-04-17 13:22:04'),
(24, 109, '2019-03-24 13:22:04', '2019-04-17 13:22:04'),
(25, 88, '2019-03-23 13:22:04', '2019-04-17 13:22:04'),
(26, 93, '2019-03-22 13:22:04', '2019-04-17 13:22:04'),
(27, 113, '2019-03-21 13:22:04', '2019-04-17 13:22:04'),
(28, 92, '2019-03-20 13:22:04', '2019-04-17 13:22:04'),
(29, 115, '2019-03-19 13:22:04', '2019-04-17 13:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `pulses`
--
ALTER TABLE `pulses`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pulses`
--
ALTER TABLE `pulses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
