-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2023 at 07:50 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shorturl`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_29_060339_create_urls_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 2, 'browser', 'e17d0ff746d2a3ae3c6578b8b1425fc60083d2889fc298a296fb5548e6262524', '[\"*\"]', '2023-01-29 05:13:12', '2023-01-29 05:04:46', '2023-01-29 05:13:12'),
(3, 'App\\Models\\User', 3, 'browser', 'bc47b1538abc34ad54ef1e228af6a5f278609d5bda1061da925764305a4605aa', '[\"*\"]', '2023-01-29 05:31:18', '2023-01-29 05:23:47', '2023-01-29 05:31:18'),
(17, 'App\\Models\\User', 12, 'browser', '397fbcad46ff59eb0f210124f25714e4c3a4e6b9f7521336ee788439f024d4f9', '[\"*\"]', '2023-01-29 07:08:02', '2023-01-29 07:04:58', '2023-01-29 07:08:02');

-- --------------------------------------------------------

--
-- Table structure for table `urls`
--

CREATE TABLE `urls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `destination` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `urls`
--

INSERT INTO `urls` (`id`, `destination`, `slug`, `views`, `created_at`, `updated_at`) VALUES
(5, 'https://bbc.com', '6dets', 0, '2023-01-29 08:57:32', '2023-01-29 08:57:32'),
(6, 'https://meet.com', 'os0x1', 0, '2023-01-29 08:58:21', '2023-01-29 08:58:21'),
(7, 'https://meet.com', 'p0x9t', 0, '2023-01-29 09:18:59', '2023-01-29 09:18:59'),
(8, 'https://bbc.com', 'brchg', 0, '2023-01-29 09:52:23', '2023-01-29 09:52:23'),
(9, 'https://meet.com', 'xwjil', 0, '2023-01-29 09:53:23', '2023-01-29 09:53:23'),
(10, 'http://web.com', 'c3axo', 0, '2023-01-29 10:51:27', '2023-01-29 10:51:27'),
(11, 'https://abc.com', 'j668b', 0, '2023-01-29 11:26:58', '2023-01-29 11:26:58'),
(12, 'https://abc.com', 'f9oyf', 0, '2023-01-29 11:27:36', '2023-01-29 11:27:36'),
(13, 'https://abc.com', 'y1ua0', 0, '2023-01-29 11:27:54', '2023-01-29 11:27:54'),
(14, 'https://abc.com', 'racmz', 0, '2023-01-29 11:28:25', '2023-01-29 11:28:25'),
(15, 'https://abc.com', '3ba8z', 0, '2023-01-29 11:28:33', '2023-01-29 11:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `device` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `device`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'one', 'one@one.com', NULL, '$2y$10$Rh3VrWtJHNp4an9lEaeL/.G8Gatj7bBIeYqOWrSdmjgVU3NxuqgWO', 'browser', NULL, '2023-01-29 04:56:17', '2023-01-29 04:56:17'),
(2, 'two', 'two@two.com', NULL, '$2y$10$ZlU4vI0NbFYdZeignBv7cuVqhpk1lI2PVEBgvi9xR7G4nRXUABWhO', 'browser', NULL, '2023-01-29 05:04:46', '2023-01-29 05:04:46'),
(3, 'three', 'three@three.com', NULL, '$2y$10$fxiradLyI2TSjBsPduziF.88nA8MAn7e0s5TaG63PpxTwmujyYgfq', 'browser', NULL, '2023-01-29 05:23:46', '2023-01-29 05:23:46'),
(4, 'four', 'four@four.com', NULL, '$2y$10$6.JR7vqQ68IqlVDcl36m7eRTo6gxQQt4szbhByu9LCKMPq63LLsNu', 'browser', NULL, '2023-01-29 05:34:15', '2023-01-29 05:34:15'),
(5, 'fff', 'ff@ff.vom', NULL, '$2y$10$VJh42hDPAs8zm0Vbz1m8BeGBIhkngGVfySYKxokIaw7o6dcNujc8W', 'browser', NULL, '2023-01-29 06:10:06', '2023-01-29 06:10:06'),
(6, 'five', 'five@five.com', NULL, '$2y$10$uO2.2OmXdYIjjeYTMvWRpuQPfiUfijKD2VMPSW1rlXq5YrjAmmwze', 'browser', NULL, '2023-01-29 06:25:23', '2023-01-29 06:25:23'),
(7, 'six', 'six@six.com', NULL, '$2y$10$JLkdoY1gG1ceDObuQ6WQPuDJ7fAr4ALLCYfKWGqUUomn9/BgbHCoC', 'browser', NULL, '2023-01-29 06:27:55', '2023-01-29 06:27:55'),
(8, 'seven', 'seven@seven.com', NULL, '$2y$10$IEh/uLnUGN7cL4HKKb.L9O.YnzHZP9TBEYZFAzsFgmSJOVOdCVD.i', 'browser', NULL, '2023-01-29 06:49:17', '2023-01-29 06:49:17'),
(9, 'eight', 'eight@eight.com', NULL, '$2y$10$OqtNC/n4G1SMNxDbJqdxpe5rNAXLc/BFPvV71rxqAl7Yew0a87Ari', 'browser', NULL, '2023-01-29 06:54:49', '2023-01-29 06:54:49'),
(10, 'nine', 'nine@nine.com', NULL, '$2y$10$fKnZ70cDLHnmci7oWps45Ok.w3jn03bgYKUagc51xOhenY1FBThZu', 'browser', NULL, '2023-01-29 06:58:21', '2023-01-29 06:58:21'),
(11, 'ten', 'ten@ten.com', NULL, '$2y$10$xMnIWuxNXVXvyyiA.94w.OjlNajP/lXjBU8QNz8Cv.yomcvKjRvoi', 'browser', NULL, '2023-01-29 07:01:19', '2023-01-29 07:01:19'),
(12, '11', '11@11.com', NULL, '$2y$10$ZS/2Yj8yjxtoAaccLsbrTemr3Fm8jdQdxCfjbm2WinoPKRvvr.nOO', 'browser', NULL, '2023-01-29 07:04:58', '2023-01-29 07:04:58'),
(13, '13', '13@13.com', NULL, '$2y$10$MUCF2I2sjDSLnDcjkDWjneVVWVIZkM4oBJZevckm/Pa1/2RqVBQjC', 'browser', NULL, '2023-01-29 08:38:57', '2023-01-29 08:38:57'),
(14, 'five', 'five@fivde.com', NULL, '$2y$10$pBEB2IOSOFsQXD8V8Aqzou150X/vcSrkckl6xIY8s8nrNTJyJZpoS', 'browser', NULL, '2023-01-29 08:49:28', '2023-01-29 08:49:28'),
(15, 'ali', 'ali@ali.com', NULL, '$2y$10$AQQb60WBNR/dGRppnkEcnuJO9kcaAL5zTkdI7qLdPaH0yM8U9Dw9m', 'browser', NULL, '2023-01-29 10:51:03', '2023-01-29 10:51:03'),
(16, '14', '14@14.com', NULL, '$2y$10$YRaTMWccj0Pu3vvdFxcYNuW66w1yzGnCviAX4wAAAqpkS29jzGwW.', 'browser', NULL, '2023-01-29 11:40:58', '2023-01-29 11:40:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `urls`
--
ALTER TABLE `urls`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `urls`
--
ALTER TABLE `urls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
