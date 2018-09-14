-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 14, 2018 at 12:52 PM
-- Server version: 10.1.35-MariaDB-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `babajfeg_invitation`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin1', 'admin@admin.com', '$2y$12$MecD5eLreuunm8ab/sfk1eDPBYwNKLWEwYrm/3tPARvuxTLjec63y', 'gniALAKGuh26xt6YIWh0v7AG7Tvp5Su3EHfCWaIEHYtTmWLrCqP1opVEWIxp', NULL, '2018-09-08 08:16:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `login_at` timestamp NULL DEFAULT NULL,
  `logout_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `remember_token`, `sent_at`, `login_at`, `logout_at`, `created_at`, `updated_at`) VALUES
(1, 'Quinn Combs', 'admin@admin.com', 'password2', 'Piuq89KhwFy4tHw2rrQ3b6Q54nOJfDFE7SzANNsnrPxWSqZKIuIVjXURRuEK', '2018-09-08 09:11:42', NULL, NULL, '2018-04-17 09:54:18', '2018-09-08 09:28:53'),
(3, 'guseqeci', 'dev@babaraliseehar.com', 'password1', NULL, '2018-09-08 20:58:06', '2018-09-13 06:08:58', '2018-09-13 06:08:43', '2018-09-08 09:28:42', '2018-09-13 09:33:25'),
(4, 'babaraliseehar', 'babarali124@hotmail.com', 'abcd1234', NULL, '2018-09-09 00:01:08', '2018-09-12 00:58:27', NULL, '2018-09-09 00:01:00', '2018-09-09 00:01:08'),
(5, 'Wigmore', 'lawgorithms@gmail.com', 'WIgmore1', NULL, '2018-09-10 00:39:40', '2018-09-13 06:28:14', '2018-09-13 06:28:17', '2018-09-10 00:35:49', '2018-09-13 10:13:42'),
(6, 'Mark', 'mark@aitia.io', 'Peircesemiotis', NULL, '2018-09-11 05:28:48', '2018-09-13 22:32:06', NULL, '2018-09-10 00:56:54', '2018-09-11 05:28:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
