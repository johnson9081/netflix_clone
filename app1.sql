-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2022 at 04:57 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app1`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_brands`
--

CREATE TABLE `app_brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modyfy_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_brands`
--

INSERT INTO `app_brands` (`id`, `name`, `created_at`, `modyfy_at`) VALUES
(2, 'Honda', '2022-03-11 04:26:13', '2022-03-11 04:26:13'),
(3, 'Maruti Suzuki', '2022-03-11 04:26:20', '2022-03-11 04:26:20'),
(4, 'Toyota', '2022-03-11 04:26:24', '2022-03-11 04:26:24'),
(5, 'Ford', '2022-03-18 15:41:49', '2022-03-18 15:41:49');

-- --------------------------------------------------------

--
-- Table structure for table `app_model`
--

CREATE TABLE `app_model` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modify_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_model`
--

INSERT INTO `app_model` (`id`, `brand_id`, `brand_name`, `model_name`, `created_at`, `modify_at`) VALUES
(2, 2, 'Honda', 'civic', '2022-03-11 04:37:49', '2022-03-11 04:37:49'),
(3, 2, 'Honda', 'City', '2022-03-11 04:38:29', '2022-03-11 04:38:29'),
(4, 5, 'Ford', 'Mustang', '2022-03-18 15:42:12', '2022-03-18 15:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `app_parts`
--

CREATE TABLE `app_parts` (
  `id` int(11) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `manufacture_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `modify_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `app_parts`
--

INSERT INTO `app_parts` (`id`, `brand_id`, `brand_name`, `model_id`, `model_name`, `name`, `manufacture_date`, `created_at`, `modify_at`) VALUES
(2, 2, 'Honda', 3, 'City', 'Front mirror', '2016-01-11', '2022-03-11 05:11:02', '2022-03-11 05:11:02'),
(3, 2, 'Honda', 2, 'civic', 'Back Light', '2020-08-12', '2022-03-11 05:11:23', '2022-03-11 05:11:23'),
(4, 5, 'Ford', 4, 'Mustang', 'sx1', '2013-02-05', '2022-03-18 15:43:07', '2022-03-18 15:43:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `login_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'inactive',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'user.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `email_verify` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `street` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type`, `login_type`, `status`, `name`, `first_name`, `last_name`, `email`, `phone`, `photo`, `email_verified_at`, `email_verify`, `password`, `remember_token`, `created_at`, `updated_at`, `street`, `address`, `city`, `state`, `zip`, `country`, `subscription`, `account_token`, `description`, `facebook`, `twitter`, `youtube`, `google`, `instagram`, `pinterest`, `specialist`, `institution`) VALUES
(1, 'admin', 'admin', 'active', 'IFACC', NULL, NULL, 'ifacc@gmail.com', '9876543210', '1228202106573161cab55b414dcapple-icon-57x57.png', '2021-12-16 18:30:00', 'yed', '$2y$10$HTdusJGCE6D.yyKJRdRiXehbotC9kTHsfNoh5wKeAjdMADGaTus9C', NULL, NULL, '2021-12-28 01:28:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_brands`
--
ALTER TABLE `app_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_model`
--
ALTER TABLE `app_model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_parts`
--
ALTER TABLE `app_parts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_brands`
--
ALTER TABLE `app_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `app_model`
--
ALTER TABLE `app_model`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `app_parts`
--
ALTER TABLE `app_parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
