-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2023 at 06:34 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laraveltask`
--

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`id`, `user_id`, `name`, `address`, `email`, `phone`, `website`, `created_at`, `updated_at`) VALUES
(1, 1, 'laravel', 'Jagatpur, North Delhi, Delhi, 110084, IN', 'laravel@gmail.com', '9898767876', 'https://techlithic.notion.site/', '2023-11-22 23:48:54', '2023-11-22 23:48:54'),
(2, 1, 'laravel', 'Jagatpur, North Delhi, Delhi, 110084, IN', 'laravel@gmail.com', '9898767876', 'https://techlithic.notion.site/', '2023-11-22 23:49:24', '2023-11-22 23:49:24'),
(3, 1, 'test', 'azadpur delhi burari', 'test@gmail.com', '989876787', 'google.com', '2023-11-22 23:52:19', '2023-11-22 23:52:19'),
(4, 1, 'business', 'Jagatpurwww, North Delhi, Delhi, 110084, IN', 'business@gmail.com', '9890987678', 'facebook.com', '2023-11-22 23:53:30', '2023-11-22 23:53:30'),
(5, 1, 'imogene14', 'imogene14ef', 'imogene14@example.com', '9898776789', 'imogene14adew.com', '2023-11-22 23:54:54', '2023-11-22 23:54:54'),
(6, 1, 'muller.leslie', 'muller.lesliebhasbdc ssak', 'muller.leslie@example.net', '7899098789', 'muller.leslieexample.net', '2023-11-22 23:55:43', '2023-11-22 23:55:43'),
(7, 2, 'alisha.krajcik', 'alisha.krajcik hhd', 'alisha.krajcik@example.com', '7888987890', 'alisha.krajcikexample.com', '2023-11-23 00:00:47', '2023-11-23 00:00:47'),
(8, 2, 'friesen.alberta@example.org', 'friesen.albert axamplec org', 'friesen.alberta@example.org', '9099887890', 'friesen.alberta.org', '2023-11-23 00:01:45', '2023-11-23 00:01:45'),
(9, 2, 'lind.petra', 'lind.petra es .kmckdnet', 'lind.petra@example.net', '5667778898', 'lind.petraxample.net', '2023-11-23 00:02:33', '2023-11-23 00:02:33');

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
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_11_23_043150_create_businesses_table', 1);

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mrs. Madisyn Weber', 'ytorp@example.org', '2023-11-22 23:12:12', '$2y$12$qojPp4Tuy3t76I54kGgteO.ykjwVskbTlZl5Xh4suwjHyo67ssZCW', 'm9CjNwsCreAbtqSkNA4ypzf2WUnajoIzzD36rVlPiMvfdvHtJ2lAzAfmmNOZ', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(2, 'Lula Kutch', 'ihagenes@example.org', '2023-11-22 23:12:13', '$2y$12$qojPp4Tuy3t76I54kGgteO.ykjwVskbTlZl5Xh4suwjHyo67ssZCW', 'tqj0Z5n7BktrlKd3c8l4MqQGEYTQLq69KgPMmoHAcIZzMunT6pDmKGPdI8A7', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(3, 'Fabian West', 'gladyce86@example.com', '2023-11-22 23:12:13', '$2y$12$qojPp4Tuy3t76I54kGgteO.ykjwVskbTlZl5Xh4suwjHyo67ssZCW', 'YnHYgvdnZC', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(4, 'Annette Flatley', 'khamill@example.net', '2023-11-22 23:12:13', '$2y$12$qojPp4Tuy3t76I54kGgteO.ykjwVskbTlZl5Xh4suwjHyo67ssZCW', 'HM9a5xXFGp', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(5, 'Giles Harris', 'danika.ortiz@example.org', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'BYhoiyMEKY', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(6, 'Imelda Zieme', 'viviane.stroman@example.com', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'XTrE8sDg4L', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(7, 'Hermann Mohr', 'imogene14@example.com', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', '4bx9aZDZXx', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(8, 'Pearl Schimmel', 'okrajcik@example.org', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'OZ8NDGd66V', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(9, 'Nadia Gutmann', 'muller.leslie@example.net', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'lW0Hw9hxzz', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(10, 'Joey Leannon I', 'lorena.sauer@example.net', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'H5UsiHbrBl', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(11, 'Lacey Smith', 'vida69@example.org', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'sER6868lQz', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(12, 'Brody D\'Amore', 'wyman.jayme@example.net', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'tp5DqMFK2j', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(13, 'Cesar Quitzon', 'laverne25@example.net', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'DtSfUsAs7X', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(14, 'Miss Gilda Gaylord DDS', 'alisha.krajcik@example.com', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'RSt6ql9oqo', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(15, 'Dr. Rosetta Herman', 'friesen.alberta@example.org', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'jlJuSmfCUg', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(16, 'Dr. Gerardo Koss', 'lind.petra@example.net', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', '8J4Qv91MxH', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(17, 'Mr. Jamel Schmitt Sr.', 'dlowe@example.org', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'mbBcQXckvX', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(18, 'Kyle Hartmann', 'garrett42@example.net', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'ZI809i7nxu', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(19, 'Denis Connelly', 'aglae33@example.org', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'eNU1k86TOH', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(20, 'Kimberly Hayes', 'haley32@example.org', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', '6aDWgHMpIf', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(21, 'Wilfred Crooks', 'sabina.dickinson@example.com', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', '1ZEAnuLXf9', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(22, 'Miss Micaela Swift II', 'gorn@example.org', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'BoNSRjNM7Z', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(23, 'Prof. Keyshawn Mitchell DVM', 'newell41@example.org', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'M6u3XW3r9u', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(24, 'Rhianna Langworth I', 'mike11@example.net', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'AZzirwTlNr', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(25, 'Davon Collier', 'art.greenholt@example.net', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'tV12rxWJo5', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(26, 'Nadia Bartoletti', 'vbeatty@example.org', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'fZRKXA7FDU', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(27, 'Cierra Kirlin PhD', 'luettgen.garnett@example.org', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'AILjM8wvcZ', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(28, 'Bella Block PhD', 'hirthe.lilliana@example.org', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', '44FRGlItvp', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(29, 'Luisa Haag', 'wbahringer@example.org', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'l8jCJP0D1P', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(30, 'Alberta Donnelly', 'little.muriel@example.org', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'JOqHF4MFsL', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(31, 'Khalil Kuphal MD', 'ubayer@example.com', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'bGBCwLRlQB', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(32, 'Miss Gail Wintheiser', 'darby97@example.org', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'RCTfLPfnLn', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(33, 'Gust Mohr', 'garth.blick@example.net', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'l4qBKmlxmp', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(34, 'Dr. Javier Beier DVM', 'white.jenifer@example.net', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'rYn8l3E2V5', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(35, 'Prof. Nannie Howell', 'nathen.king@example.org', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'Pae1Sz0Hha', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(36, 'Ludwig Rippin', 'forest40@example.com', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'hFyP8SdIQ3', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(37, 'Samantha Rodriguez II', 'nayeli.weimann@example.com', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', '2WpeXfpMmt', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(38, 'Mrs. Lizeth Nikolaus I', 'flatley.antonina@example.org', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'hBkXqI9oqK', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(39, 'Mr. Giles Breitenberg III', 'ryan52@example.org', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'StLT9MBiP5', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(40, 'Stephan Stanton', 'denesik.summer@example.net', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'Wt69P4LpGe', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(41, 'Prof. Jakob Weimann', 'purdy.easton@example.org', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'phdSLOJtSK', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(42, 'Mrs. Pansy Bednar V', 'clifton09@example.net', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'VSCkeFoUCT', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(43, 'Felix Howell', 'ashtyn.torphy@example.com', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'NlCSs8bYi2', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(44, 'Ahmed Gusikowski', 'sienna.veum@example.net', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'CeUq9Qwggd', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(45, 'Camryn Rippin', 'gmuller@example.org', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'JTU2xxcRfV', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(46, 'Marquise Hane', 'kmetz@example.com', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'MTqBr6T3Nh', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(47, 'Kennedy McCullough', 'thaddeus21@example.net', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'QPy7m5exR0', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(48, 'Dr. Amy Halvorson V', 'ewisozk@example.net', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'PGZ2SlrD8T', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(49, 'Tyra Gibson', 'lorenz42@example.com', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'a1lVxd6t8i', '2023-11-22 23:12:13', '2023-11-22 23:12:13'),
(50, 'Amie Zboncak', 'allene47@example.com', '2023-11-22 23:12:13', '$2y$12$Pr4ZdovGEy6cyXbifY5Xmuue1/z00J6JQPoXThS7SNR6bmezpxegi', 'NofS6KliZw', '2023-11-22 23:12:13', '2023-11-22 23:12:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `businesses_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `businesses`
--
ALTER TABLE `businesses`
  ADD CONSTRAINT `businesses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
