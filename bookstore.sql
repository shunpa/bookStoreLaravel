-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2022 at 12:24 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `book_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `writer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booktype_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `photo`, `book_name`, `price`, `writer_name`, `booktype_id`, `created_at`, `updated_at`) VALUES
(1, 'Perspiciatis et aut et cupiditate veritatis suscipit.', 'Commodi rem totam adipisci et cumque quia dolorem.', 'Non nemo qui et.', 'Est officia expedita autem facilis soluta vitae.', 5, '2022-03-12 02:27:54', '2022-03-12 02:27:54'),
(2, 'Vel quasi repellat autem ea.', 'Quasi esse est ex qui animi consequatur dolores.', 'Ex vel exercitationem earum et doloribus ullam nam.', 'Velit accusamus autem iure quas.', 5, '2022-03-12 02:27:54', '2022-03-12 02:27:54'),
(3, 'Totam quaerat qui quas ut occaecati iusto.', 'Voluptatem aliquam nostrum et non consequuntur aut.', 'Aut odit animi delectus ut et repellendus est molestiae.', 'Hic natus eos ut sit maxime in quae.', 1, '2022-03-12 02:27:55', '2022-03-12 02:27:55'),
(4, 'Et unde dignissimos inventore eius.', 'Ut iste impedit velit enim voluptatem recusandae soluta.', 'Sunt quaerat nobis eius nostrum officiis laborum soluta id.', 'Dolores et sit expedita vitae et.', 2, '2022-03-12 02:27:55', '2022-03-12 02:27:55'),
(5, 'Alias quasi et ut dicta.', 'Libero quaerat aperiam et voluptas beatae.', 'Dolorum quisquam impedit animi inventore.', 'Dolorem autem perferendis laudantium quibusdam quasi suscipit quisquam.', 2, '2022-03-12 02:27:55', '2022-03-12 02:27:55'),
(6, 'Quibusdam a aut atque quia.', 'Quia animi qui recusandae deleniti tempore et.', 'Illum esse corrupti repellat velit possimus.', 'Id nesciunt et cumque molestiae impedit dolores ipsa.', 5, '2022-03-12 02:27:55', '2022-03-12 02:27:55'),
(7, 'Voluptatum non omnis tenetur mollitia.', 'Iure et autem minima ut.', 'Architecto at culpa rerum voluptatem voluptate a consequatur.', 'Laboriosam sequi ut cupiditate numquam quasi sunt sunt.', 4, '2022-03-12 02:27:55', '2022-03-12 02:27:55'),
(8, 'Molestias quia eligendi tenetur vitae aspernatur.', 'Consequatur maiores qui impedit repellendus.', 'Fugiat non ducimus quia modi rem.', 'Accusantium quisquam voluptas ex nulla qui enim.', 1, '2022-03-12 02:27:55', '2022-03-12 02:27:55'),
(9, 'Sit impedit omnis eveniet qui ipsam ipsum.', 'Sit architecto cupiditate blanditiis sit qui sint est.', 'Molestias molestias velit numquam.', 'Inventore inventore voluptates aut iusto et.', 3, '2022-03-12 02:27:55', '2022-03-12 02:27:55'),
(10, 'Ipsa voluptatum aperiam eos corrupti optio praesentium.', 'Modi ullam enim quaerat similique expedita.', 'Autem molestiae necessitatibus rerum necessitatibus rem.', 'Debitis velit dolorem soluta.', 1, '2022-03-12 02:27:55', '2022-03-12 02:27:55'),
(11, '9b23f936a2da482a98ab7458df920874.png', 'Quos nobis dolores eos omnis aut harum quo.', 'Dignissimos eos nam aperiam cupiditate ducimus molestiae.', 'Sit eligendi quo quae dolores et.', 2, '2022-03-12 02:40:07', '2022-03-12 02:40:07'),
(13, '4a3f39036dafc58f240d3b3122f0ba75.png', 'Aliquam et error esse.', 'Sunt voluptatibus non ipsa aliquam aut omnis velit.', 'Possimus exercitationem qui voluptatibus asperiores voluptatum ipsum officia natus.', 3, '2022-03-12 02:40:08', '2022-03-12 02:40:08'),
(14, 'ed8abd0cb929193b729ebc42927703d8.png', 'Molestiae officia voluptas et et voluptatum omnis.', 'Autem voluptatem aut placeat voluptas.', 'Facere assumenda sapiente nostrum nihil enim.', 5, '2022-03-12 02:40:08', '2022-03-12 02:40:08'),
(15, '62969a346fc6b20d138bfa2b4a74106d.png', 'Nihil ut alias esse beatae officiis.', 'Mollitia fugiat ut nemo deleniti voluptatem.', 'Laborum atque eaque architecto voluptatum.', 5, '2022-03-12 02:40:08', '2022-03-12 02:40:08'),
(16, 'f5d2336788b0c586c3a1a3bd047dde78.png', 'Impedit qui neque et quia non eius.', 'Ducimus corporis ut eos sapiente id in et.', 'Odio praesentium officia dignissimos explicabo et expedita neque.', 5, '2022-03-12 02:40:08', '2022-03-12 02:40:08'),
(17, '88d1fbaf2245ccd7417e0dec7a5c17ea.png', 'Dolorem vitae enim placeat non.', 'Omnis illum sed magni quia doloremque magni temporibus sed.', 'Eum ut omnis fuga aperiam.', 5, '2022-03-12 02:40:08', '2022-03-12 02:40:08'),
(18, 'e545d7b1de1297149a5ee2be14ddc1b8.png', 'Id sit eum omnis voluptates.', 'Pariatur sint omnis omnis nisi temporibus ratione.', 'Corrupti sed tempora ad repellat.', 2, '2022-03-12 02:40:08', '2022-03-12 02:40:08'),
(19, 'e82e56b565693834c697edead22866da.png', 'Aut natus ex quidem labore itaque repellat.', 'Quis molestias maiores sed suscipit.', 'Eos est sequi vel id ipsa.', 3, '2022-03-12 02:40:08', '2022-03-12 02:40:08'),
(20, '3b4f39d7245e33aec1b9884f557b1860.png', 'Debitis rerum architecto odio natus et.', 'Sit aut fugit ipsam aut dolorum.', 'Temporibus dolor in soluta.', 2, '2022-03-12 02:40:08', '2022-03-12 02:40:08');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_03_12_083231_create_books_table', 1);

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
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
