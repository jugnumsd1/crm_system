-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2025 at 05:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `email`, `logo`, `website`, `created_at`, `updated_at`) VALUES
(1, 'CodeMelding11', 'codeMelding@gmail.com', 'logos/Gpr9nJPWSgu60Mt8YId2yxek8Z8InNMY0qrDAwP2.png', 'https://getbootstrap.com/', '2025-02-13 16:04:55', '2025-02-13 19:46:30'),
(2, 'BZU', 'bzu@gmail.com', 'logos/c1tSR8pTlgYtxhXxdAEOlMNDXlgFptwwu9nLMO6V.png', 'https://bzu.com/', '2025-02-13 23:54:23', '2025-02-13 23:54:23'),
(3, 'BTC', 'btc@gmail.com', 'logos/U8qGaykhM3uq25y7iPzYk7YdJ2IQxVHxWKo1DDow.png', 'https://btc.com/', '2025-02-13 23:55:00', '2025-02-13 23:55:00'),
(4, 'mba', 'mba@gmail.com', 'logos/xYdIVfHMMLCLHMIrHBr5t8z5COz9cb2aDnQGDYbK.png', 'https://mba.com/', '2025-02-13 23:56:06', '2025-02-13 23:56:06'),
(5, 'newtech', 'newtech@gmail.com', 'logos/OnoSiawZBqPTO0KIaxqZyvEoX99K1Kyt2OKr8YIq.png', 'https://newtech.com/', '2025-02-13 23:57:04', '2025-02-13 23:57:04'),
(6, 'dbc', 'dbc@gmail.com', 'logos/QCbR8ZVbvOP3x4hyeUm8EEeVykSGP3qtc5o4vojg.png', 'https://dbc.com/', '2025-02-13 23:57:49', '2025-02-13 23:57:49'),
(7, 'CodeMelding22', 'codeMelding22@gmail.com', 'logos/JWTWemvk3iOl1cjnpGmAKLgFE6mDPu1lRXH1siLK.png', 'https://getbootstrap11.com/', '2025-02-13 23:58:33', '2025-02-13 23:58:33'),
(8, 'kml', 'kml@gmail.com', 'logos/nQD86Vqn7YDgPXm8itry0UZTSOIqn2GCSiGQxQET.png', 'https://kbl.com/', '2025-02-13 23:59:25', '2025-02-13 23:59:25'),
(9, 'kewkk', 'kewkk@gmail.com', 'logos/iY8mx3x44qCfGebRdD7ZDWbIYafmNGu8aZrY1uCZ.png', 'https://kkkk.com/', '2025-02-14 00:00:06', '2025-02-14 00:00:06'),
(10, 'CodeMelding33', 'codeMelding33@gmail.com', 'logos/9baYoLKvnJB5rpRzA4y2JS7l7Js89rhKhlCf7FjB.png', 'https://codemelding.com/', '2025-02-14 00:01:35', '2025-02-14 00:01:35');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `company_id`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Hanif1', 'khan', 1, 'haniadfa@gmail.com', '03449993391', '2025-02-13 20:36:40', '2025-02-14 00:13:07'),
(3, 'ali', 'khan', 2, 'ali@gmail.com', '00345578432', '2025-02-14 00:06:06', '2025-02-14 00:06:06'),
(4, 'zeeshan', 'rokrri', 3, 'zeeshan@gmail.com', '03457868955', '2025-02-14 00:06:40', '2025-02-14 00:06:40'),
(5, 'Ahamed', 'tariq', 3, 'ahmed@gmail.com', '03567844948', '2025-02-14 00:07:32', '2025-02-14 00:08:00'),
(6, 'azan', 'khan', 5, 'azan@gmail.com', '0345678579', '2025-02-14 00:08:34', '2025-02-14 00:08:34'),
(7, 'abdullah', 'zubair', 6, 'abdullah@gmail.com', '03159229714', '2025-02-14 00:09:11', '2025-02-14 00:09:11'),
(8, 'khan', 'alam', 4, 'khan@gmail.com', '0333384543', '2025-02-14 00:09:41', '2025-02-14 00:09:41'),
(9, 'Fatma', 'aziz', 2, 'fata@gmail.com', '03454545443', '2025-02-14 00:10:15', '2025-02-14 00:12:31'),
(10, 'mudasir', 'aziz', 2, 'mudasi@gmail.com', '0347548392', '2025-02-14 00:10:47', '2025-02-14 00:12:48'),
(11, 'Asghar', 'ali', 1, 'asghar@gmail.com', '0356784494', '2025-02-14 00:11:26', '2025-02-14 00:11:51');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_02_13_060250_create_companies_table', 2),
(6, '2025_02_13_060257_create_employees_table', 2),
(7, '2025_02_13_163017_add_is_admin_to_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$12$J6Yw6vQr5vKMvFZbeqPQXOS92DkV.KotjJ6tawiwEloFWQxs14Db2', 0, NULL, '2025-02-13 15:56:51', '2025-02-13 15:56:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_company_id_foreign` (`company_id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
