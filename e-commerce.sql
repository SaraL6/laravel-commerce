-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2021 at 03:40 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
(3, '2020_11_10_141404_create_products_table', 1),
(6, '2014_10_12_000000_create_users_table', 2),
(7, '2014_10_12_100000_create_password_resets_table', 2),
(8, '2019_08_19_000000_create_failed_jobs_table', 2),
(9, '2020_11_12_111858_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `details`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Macbook Pro', 'macbook-pro', '15 inch, 1TB SSD, 32GB RAM', 249999, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tincidunt porttitor lobortis. Vivamus et lorem euismod, auctor elit sit amet, eleifend lectus.', '2020-11-12 14:04:07', '2020-11-12 14:04:07'),
(2, 'Laptop 2', 'laptop-2', '15 inch, 1TB SSD, 32GB RAM', 249999, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tincidunt porttitor lobortis. Vivamus et lorem euismod, auctor elit sit amet, eleifend lectus.', '2020-11-12 14:04:07', '2020-11-12 14:04:07'),
(3, 'Laptop 3', 'laptop-3', '15 inch, 1TB SSD, 32GB RAM', 249999, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tincidunt porttitor lobortis. Vivamus et lorem euismod, auctor elit sit amet, eleifend lectus.', '2020-11-12 14:04:07', '2020-11-12 14:04:07'),
(4, 'Laptop 4', 'laptop-4', '15 inch, 1TB SSD, 32GB RAM', 249999, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tincidunt porttitor lobortis. Vivamus et lorem euismod, auctor elit sit amet, eleifend lectus.', '2020-11-12 14:04:07', '2020-11-12 14:04:07'),
(5, 'Laptop 5', 'laptop-5', '15 inch, 1TB SSD, 32GB RAM', 249999, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tincidunt porttitor lobortis. Vivamus et lorem euismod, auctor elit sit amet, eleifend lectus.', '2020-11-12 14:04:07', '2020-11-12 14:04:07'),
(6, 'Laptop 6', 'laptop-6', '15 inch, 1TB SSD, 32GB RAM', 249999, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tincidunt porttitor lobortis. Vivamus et lorem euismod, auctor elit sit amet, eleifend lectus.', '2020-11-12 14:04:07', '2020-11-12 14:04:07'),
(7, 'Laptop 7', 'laptop-7', '15 inch, 1TB SSD, 32GB RAM', 249999, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tincidunt porttitor lobortis. Vivamus et lorem euismod, auctor elit sit amet, eleifend lectus.', '2020-11-12 14:04:07', '2020-11-12 14:04:07'),
(8, 'Laptop 8', 'laptop-8', '15 inch, 1TB SSD, 32GB RAM', 249999, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tincidunt porttitor lobortis. Vivamus et lorem euismod, auctor elit sit amet, eleifend lectus.', '2020-11-12 14:04:07', '2020-11-12 14:04:07'),
(9, 'Laptop 9', 'laptop-9', '15 inch, 1TB SSD, 32GB RAM', 249999, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent tincidunt porttitor lobortis. Vivamus et lorem euismod, auctor elit sit amet, eleifend lectus.', '2020-11-12 14:04:07', '2020-11-12 14:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sara', 'saralachgaar@gmail.com', NULL, '$2y$10$ceajffCBr9F2hPnZGSZgP./bWTIMxs/hdANTopB.aZZ9CR7UkfwEa', NULL, '2021-01-11 15:14:54', '2021-01-11 15:14:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
