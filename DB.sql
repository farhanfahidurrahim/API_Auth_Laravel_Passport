-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2022 at 12:18 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react_lv8`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_12_19_100341_create_persons_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('079dae78eca636dad3317cb47999b818b84544bb9d6d6756594b07bf6054a470a3cb851d53e6bb17', 1, 1, 'app', '[]', 0, '2022-12-14 06:07:53', '2022-12-14 06:07:53', '2023-12-14 12:07:53'),
('0b1ad8658dabd8ce02a575b2e01c48bb519f3fe6c65c1d7520363df1dea9366d158b5cdb5e54f5e7', 1, 1, 'app', '[]', 0, '2022-12-16 23:19:08', '2022-12-16 23:19:08', '2023-12-17 05:19:08'),
('1f2769113fbd0490946e14c952697207a17c28c160486256b9f174643302a1ed543dd86d99274f8b', 1, 1, 'app', '[]', 0, '2022-12-16 13:53:57', '2022-12-16 13:53:57', '2023-12-16 19:53:57'),
('221f5164b67743e56b344abb4a76c31b086b5f611cc466bbc371eb1d75f0c634b858024877deae74', 1, 1, 'app', '[]', 0, '2022-12-16 13:32:45', '2022-12-16 13:32:45', '2023-12-16 19:32:45'),
('24683c6546557b47ddd6cb531d63d9588b0fbe8c8b672b8d660b891bbdab56a7760dcdf0437c907e', 1, 1, 'app', '[]', 0, '2022-12-16 13:32:07', '2022-12-16 13:32:07', '2023-12-16 19:32:07'),
('299953df7b4826cd1d2b97a819eafb96bee4e7beceeb1dcbb98a7e0f009caf6de1122459dda3556a', 2, 1, 'app', '[]', 0, '2022-12-14 06:05:23', '2022-12-14 06:05:23', '2023-12-14 12:05:23'),
('31b98d8bddc451002b654df3ec416641be1f17f1e79a5440c000bfca08fa4eb540186801068c019c', 1, 1, 'app', '[]', 0, '2022-12-16 13:37:33', '2022-12-16 13:37:33', '2023-12-16 19:37:33'),
('343c7aeac1bdae1a9a6310c1acb2f02c183d4c2306a9c6bfc3ac305172babd1d4e92e6cd798f4a83', 1, 1, 'app', '[]', 0, '2022-12-16 13:53:36', '2022-12-16 13:53:36', '2023-12-16 19:53:36'),
('34b5e8b4641e7eae074fb851b364a8a8b743d5cda19a3ffbc402ecfcbc147571856c770d01b0730d', 1, 1, 'app', '[]', 0, '2022-12-16 13:38:14', '2022-12-16 13:38:14', '2023-12-16 19:38:14'),
('3768d47ee738e363ab8358f63073b1b55321ad040d7355cf6a0445f2272a1ccf4ab163cbd2bc55c2', 1, 1, 'app', '[]', 0, '2022-12-16 13:32:45', '2022-12-16 13:32:45', '2023-12-16 19:32:45'),
('3a73f5927cb8891d7a2726bd0fcc63991a28ad7c0c0e0a9eaf858b1d1c367c0fef5ddfa9e6e0b6c8', 1, 1, 'app', '[]', 0, '2022-12-16 13:32:21', '2022-12-16 13:32:21', '2023-12-16 19:32:21'),
('44efae4645793f6de312f88c1735f30ee70838c8b4c99fa70e79340960894ea6f26058295af5cd78', 1, 1, 'app', '[]', 0, '2022-12-16 13:25:21', '2022-12-16 13:25:21', '2023-12-16 19:25:21'),
('46951e69988c618ed4459ddd2887075ec09ca02b1a4cfc8200982ec354f26244ab3a25442f3f61a7', 4, 1, 'app', '[]', 0, '2022-12-17 06:44:09', '2022-12-17 06:44:09', '2023-12-17 12:44:09'),
('48086903afafaaac705dc9a5b3738afae555a28ea47229467ff9770a231d0d25a5d0bea4543ddd23', 1, 1, 'app', '[]', 0, '2022-12-16 13:25:47', '2022-12-16 13:25:47', '2023-12-16 19:25:47'),
('557bc53a53384cbf58c9f6aa5539843315d1702239cfbad3e50ed559abe21a2cc044f6cda7e84c2e', 1, 1, 'app', '[]', 0, '2022-12-16 13:32:44', '2022-12-16 13:32:44', '2023-12-16 19:32:44'),
('5840b5f209e7a1b700eb421867c216382d41f300099b90cce6cd659bb0f82f18fa730327b8e35d1c', 1, 1, 'app', '[]', 0, '2022-12-17 11:19:49', '2022-12-17 11:19:49', '2023-12-17 17:19:49'),
('5b87f34af58d6af5197355fd11259a846bf1c742fb879c0ce3907cae579822eb8dffe53426040c01', 1, 1, 'app', '[]', 0, '2022-12-14 05:52:57', '2022-12-14 05:52:57', '2023-12-14 11:52:57'),
('5cc87700168db7560e3a5e51ed44417cc259c8ec03f84c0468ce8f37183211cdb0b789e20a9b0aa7', 1, 1, 'app', '[]', 0, '2022-12-15 06:34:42', '2022-12-15 06:34:42', '2023-12-15 12:34:42'),
('61847cbae31f42f2c9b57b16fd7ff25283d444056d1b0244b75f78f1d88e225527176e9c05bc0ba0', 1, 1, 'app', '[]', 0, '2022-12-17 07:14:06', '2022-12-17 07:14:06', '2023-12-17 13:14:06'),
('6543e38476480ac1cc8870e359833310d7241a5ba0dfaf75155db5418df860a9845b4b729d661398', 1, 1, 'app', '[]', 0, '2022-12-15 07:13:01', '2022-12-15 07:13:01', '2023-12-15 13:13:01'),
('6aeefab367868562a618982a7426093ffff591df0cff98fab87de03ac3a97e2301469d40971f7e8f', 1, 1, 'app', '[]', 0, '2022-12-16 13:32:43', '2022-12-16 13:32:43', '2023-12-16 19:32:43'),
('771128af2d0dc610ba70a0b8d187f1a44fc36139e15401255299e679f02c800795fa641dfc0724c5', 1, 1, 'app', '[]', 0, '2022-12-16 13:55:49', '2022-12-16 13:55:49', '2023-12-16 19:55:49'),
('7faad2e74a9f1470d23afddaac77f188152854fd439ca573d6b527fe6ef2cd15c636b3c8ba64bb8d', 1, 1, 'app', '[]', 0, '2022-12-16 13:38:42', '2022-12-16 13:38:42', '2023-12-16 19:38:42'),
('89aa98a72f65b9a2373e8d63281f1fcf15f85caac7346e0b6cfecafd18c888bc47611a188365c6cc', 4, 1, 'app', '[]', 0, '2022-12-17 11:59:14', '2022-12-17 11:59:14', '2023-12-17 17:59:14'),
('8e65f33b9d48c97abb3d9e8865a3658f49728a5d681f419713b2f1e99445a1bec22a4fea8671e9f5', 1, 1, 'app', '[]', 0, '2022-12-16 13:37:36', '2022-12-16 13:37:36', '2023-12-16 19:37:36'),
('908ffa7dabf20defb6bbdd750943c2fc2a72d74d1536a737826b15c6f431a1ca1839d6f47a2ea333', 1, 1, 'app', '[]', 0, '2022-12-17 11:19:50', '2022-12-17 11:19:50', '2023-12-17 17:19:50'),
('9311f41c373c2f98a3c47a30853aecdadc786a8e331ec2dd442440ef7014b9833aadd60114829457', 1, 1, 'app', '[]', 0, '2022-12-16 23:08:19', '2022-12-16 23:08:19', '2023-12-17 05:08:19'),
('994af49ddb041b77b47f97449d39e32f5e89a79af22c32f200ae648880daf165691fc7d9a6322042', 1, 1, 'app', '[]', 0, '2022-12-17 11:20:10', '2022-12-17 11:20:10', '2023-12-17 17:20:10'),
('9fb75ba835367a38baeb3a1fe697f2a8efc7a725d4581a1a648f2a1f821cd25b778be5b5486fbe05', 1, 1, 'app', '[]', 0, '2022-12-15 06:38:19', '2022-12-15 06:38:19', '2023-12-15 12:38:19'),
('a0e467c7892878f3358b410dee0d1bc5f05f652f51df92e093a5cd87c4e472f46a46f9c483560608', 1, 1, 'app', '[]', 0, '2022-12-16 13:30:06', '2022-12-16 13:30:06', '2023-12-16 19:30:06'),
('a5fab02463e258c8e8cd4fe4ecda5c15f0e05386fca57f13d72cd8a8b9359878a5e2cc4c750d4f87', 1, 1, 'app', '[]', 0, '2022-12-16 13:38:11', '2022-12-16 13:38:11', '2023-12-16 19:38:11'),
('abc4e3e24388a94aaad8d6eaddb5ac71b4a8d7c1af8e2cc64955d8976e8395a89c055ce0c4f16ca2', 1, 1, 'app', '[]', 0, '2022-12-16 13:37:37', '2022-12-16 13:37:37', '2023-12-16 19:37:37'),
('b360009541c6b09f878adad31cae69694e30613722985d1f47e971404c0551478013bf8db62ee42f', 1, 1, 'app', '[]', 0, '2022-12-16 13:11:56', '2022-12-16 13:11:56', '2023-12-16 19:11:56'),
('bae68e44f886559df85f74bcd312ae8f1ba85bec8a38b384a1cbd30e86d2eabeff6a62b056c314ce', 1, 1, 'app', '[]', 0, '2022-12-17 07:15:24', '2022-12-17 07:15:24', '2023-12-17 13:15:24'),
('c85b6b046edd7f563a0d0c75e32812da01e519763a0e399faf2e4472b7d1d7d157c60df3bdbaf84c', 1, 1, 'app', '[]', 0, '2022-12-16 13:53:23', '2022-12-16 13:53:23', '2023-12-16 19:53:23'),
('cbc77568f5b246faf2a8f79b041c0315fc8f72bac83b8930a45bbf3991e8648731609e585c6a2525', 1, 1, 'app', '[]', 0, '2022-12-16 13:31:29', '2022-12-16 13:31:29', '2023-12-16 19:31:29'),
('cec87fd2615312e7fbc621e831fe61ce18e05606b6edb2ebcfaadb271d31925a44cf071a4d5674b4', 1, 1, 'app', '[]', 0, '2022-12-16 13:55:54', '2022-12-16 13:55:54', '2023-12-16 19:55:54'),
('d1320c364c71cfe5f2d51ee1853975ef26c8e3218a346d9c66a31933299a3d811a41ae3b70ec8ca1', 1, 1, 'app', '[]', 0, '2022-12-16 13:32:44', '2022-12-16 13:32:44', '2023-12-16 19:32:44'),
('d60b4f391b284713d67cf795fa258d92b5375a6c689b9d2c499da8a7d25015ec8614b77520fd8a1c', 1, 1, 'app', '[]', 0, '2022-12-16 13:53:42', '2022-12-16 13:53:42', '2023-12-16 19:53:42'),
('d69f41d8914adee8e95264581b47bf35b1870f7cc39152fcf45b7a1c607bcbcab6ba8ab8c2c7c3ed', 1, 1, 'app', '[]', 0, '2022-12-16 13:26:21', '2022-12-16 13:26:21', '2023-12-16 19:26:21'),
('dd82871c7f2dc1bd88b914871dd7db9032f5dc73c05d24f0595fc0e928ed209f218a515773715f62', 1, 1, 'app', '[]', 0, '2022-12-16 22:51:49', '2022-12-16 22:51:49', '2023-12-17 04:51:49'),
('e6dc3e4a416a3bbaccdfef3bc0aa9f0a0894607bb419142ddd03462af496b9c325b91babd2acf14e', 3, 1, 'app', '[]', 0, '2022-12-17 06:41:18', '2022-12-17 06:41:18', '2023-12-17 12:41:18'),
('ee41ffee26e5cc2c3de169c3645e1412d35377dd3789928622acb9ce74ed8cadd87086153fa42742', 1, 1, 'app', '[]', 0, '2022-12-17 07:16:30', '2022-12-17 07:16:30', '2023-12-17 13:16:30'),
('f03e619fdb23508cb6b9904ec4b9899236f7b0f040db543f80fb75b1fe727528b60b3445cb35be0c', 1, 1, 'app', '[]', 0, '2022-12-16 13:56:52', '2022-12-16 13:56:52', '2023-12-16 19:56:52'),
('f6c2e490a9ae259415817f1cdc6ab7953ac6c7fb43715819ddc908dcde039bc5f940dd7a94694994', 1, 1, 'app', '[]', 0, '2022-12-16 13:32:28', '2022-12-16 13:32:28', '2023-12-16 19:32:28'),
('f6e6b6a82ce3779399d2fa942da5bcc9843bee5d72fc40b1c4e97c2f3b07ee730939becf1d3f9d92', 1, 1, 'app', '[]', 0, '2022-12-16 13:57:44', '2022-12-16 13:57:44', '2023-12-16 19:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'TndnFF1xgPRfprEqhnD3A5JQc8e5aEjN4YeDMLxv', NULL, 'http://localhost', 1, 0, 0, '2022-12-14 04:25:40', '2022-12-14 04:25:40'),
(2, NULL, 'Laravel Password Grant Client', 'djPV5GhlV4mEfZUyfvsaVSept7CX6GUjVlAFCVj7', 'users', 'http://localhost', 0, 1, 0, '2022-12-14 04:25:40', '2022-12-14 04:25:40');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-12-14 04:25:40', '2022-12-14 04:25:40');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `name`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'FarhaN Fahidur Rahim', '01675717825', NULL, NULL),
(2, 'Rabbani', '01759574136', NULL, NULL);

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
(1, 'Farhan', 'farhan@gmail.com', NULL, '$2y$10$CiSo1ogRb2IT1YNrAkq9DeB/NBql0jGieOnC6p3T4GWCvrerPd7Ea', NULL, '2022-12-14 05:52:53', '2022-12-14 05:52:53'),
(4, 'Rabbani', 'rabbani@gmail.com', NULL, '$2y$10$81NDJhD711SY6DOpxSiVp.rvs0GOk9gMExrmHTV3uWYXpJdFJHiom', NULL, '2022-12-17 06:44:09', '2022-12-17 06:44:09');

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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
