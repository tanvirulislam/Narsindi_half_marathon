-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2021 at 07:39 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u10k`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `venu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `when_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `about`, `venu`, `when_date`, `created_at`, `updated_at`) VALUES
(1, 'Uttara 10K Run 2021 is the 2nd edition of the event, a signature running event by Bangladesh Marathons after three consecutive successful events Gazipur Half Marathon 2019, Uttara 10K Run 2020 & Gazipur Half Marathon 2021. It was initiated to popularize the running at a local level. For that reason we\'ll keep reserved offline registration slots at a local venue just like previous year', 'Road 27 (Beside Sector 7 Park)', '19 March 2021 at 6 AM', '2021-03-03 04:26:15', '2021-03-03 04:28:11');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `venu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `venu`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'UTTARA 10K RUN 2021', NULL, 'public/uploads/1614764626.jpg', '2021-03-03 03:43:46', '2021-03-03 03:43:46');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_discount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_des` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `facebook_link`, `des`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'UTTARA 10K RUN 2021', 'https://www.facebook.com/events/256095936105850', '<div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"background-color: rgb(247, 247, 247);\">Uttara 10K Run 2021 is the 2nd edition of the event, a signature running event by Bangladesh Marathons after three consecutive successful events Gazipur Half Marathon 2019, Uttara 10K Run 2020 &amp; Gazipur Half Marathon 2021. It was initiated to popularize the running at a local level. For that reason we\'ll keep reserved offline registration slots at a local venue just like previous year.</span></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"background-color: rgb(247, 247, 247);\"><br></span></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"background-color: rgb(247, 247, 247);\">Here’s what you need to know about registration:</span></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"background-color: rgb(247, 247, 247);\">- Offline registration: 18 February 2021 from 7 AM to 11 AM.</span></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"background-color: rgb(247, 247, 247);\">- Offline registration booth: Sector 7 Park, Uttara.</span></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"background-color: rgb(247, 247, 247);\">- Online registration: Starts 18 February 2021 at 8 PM</span></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"background-color: rgb(247, 247, 247);\">- Registration link:&nbsp;<a class=\"oajrlxb2 g5ia77u1 qu0x051f esr5mh6w e9989ue4 r7d6kgcz rq0escxv nhd2j8a9 nc684nl6 p7hjln8o kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x jb3vyjys rz4wbd8a qt6c0cv9 a8nywdso i1ao9s8h esuyzwwr f1sip0of lzcic4wl py34i1dx gpro0wi8\" href=\"http://events.totalactivesports.com/?fbclid=IwAR3jxmkOtLaatH3CvqrBa0pEjG5c5KMLZO7PbQtGjRnB0kZrAlrTWtszANI\" rel=\"nofollow noopener\" role=\"link\" tabindex=\"0\" target=\"_blank\" style=\"cursor: pointer; outline: none; list-style: none; border-width: 0px; border-style: initial; border-color: initial; padding: 0px; margin: 0px; touch-action: manipulation; text-align: inherit; display: inline; -webkit-tap-highlight-color: transparent; font-family: inherit;\">events.totalactivesports.com</a></span></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"background-color: rgb(247, 247, 247);\">- Event Venue: Road 27 (Beside Sector 7 Park)</span></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"background-color: rgb(247, 247, 247);\">- Route Plan:&nbsp;<a class=\"oajrlxb2 g5ia77u1 qu0x051f esr5mh6w e9989ue4 r7d6kgcz rq0escxv nhd2j8a9 nc684nl6 p7hjln8o kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x jb3vyjys rz4wbd8a qt6c0cv9 a8nywdso i1ao9s8h esuyzwwr f1sip0of lzcic4wl py34i1dx gpro0wi8\" href=\"https://tinyurl.com/Uttara10KRun2021Route?fbclid=IwAR22geMBXgUI5porDor3msRiMNt3iXeMrdrstvIG81XIPChAaI67nOJEJtI\" rel=\"nofollow noopener\" role=\"link\" tabindex=\"0\" target=\"_blank\" style=\"cursor: pointer; outline: none; list-style: none; border-width: 0px; border-style: initial; border-color: initial; padding: 0px; margin: 0px; touch-action: manipulation; text-align: inherit; display: inline; -webkit-tap-highlight-color: transparent; font-family: inherit;\">https://tinyurl.com/Uttara10KRun2021Route</a></span></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"background-color: rgb(247, 247, 247);\">- Event Date: 19 March 2021 at 6 AM</span></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"background-color: rgb(247, 247, 247);\">- Race category: 10K Run (Live), 5K Run (Live)</span></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"background-color: rgb(247, 247, 247);\">- Available slots: 525 runners(10K Run) ; 125 runners(5K Run)</span></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"background-color: rgb(247, 247, 247);\">- Registration Fee:<br>10K Run:<br>1000 BDT (With T-shirt)<br>800 BDT (Without T-shirt)<br>5K Run:<br>700 BDT (With T-shirt)<br>500 BDT (Without T-shirt)<br>N.B: Only digital payments will be accepted.</span></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"background-color: rgb(247, 247, 247);\">- Online registration will remain open until all slots are taken up.</span></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"background-color: rgb(247, 247, 247);\">- You can register via all online payment options supported by<br>SSLCOMMERZ payment gateway.</span></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><span style=\"background-color: rgb(247, 247, 247);\">- Podium will be decided by chip timing.</span></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><br></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px;\"><br></div>', NULL, '2021-03-03 04:55:07', '2021-03-03 04:55:07');

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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `title`, `category_image`, `created_at`, `updated_at`) VALUES
(2, 'logo one', 'public/uploads/1614765682.png', '2021-03-03 04:01:22', '2021-03-03 04:01:22'),
(3, 'logo two', 'public/uploads/1614765696.png', '2021-03-03 04:01:36', '2021-03-03 04:01:36');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_14_111718_create_roles_table', 1),
(5, '2020_06_15_093851_create_sections_table', 1),
(6, '2020_06_15_094031_create_categories_table', 1),
(7, '2021_03_03_081739_create_banners_table', 2),
(8, '2021_03_03_081812_create_abouts_table', 2),
(9, '2021_03_03_081906_create_galleries_table', 2),
(10, '2021_03_03_081941_create_events_table', 2),
(11, '2021_03_03_082023_create_sponsors_table', 2),
(12, '2021_03_03_082528_create_contacts_table', 2),
(13, '2021_03_03_084402_create_logos_table', 2);

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
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', NULL, NULL),
(2, 'User', 'user', NULL, NULL),
(3, 'Agent', 'agent', NULL, NULL),
(4, 'Merchant', 'merchant', NULL, NULL),
(5, 'Vip', 'vip', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

CREATE TABLE `sponsors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member` int(11) NOT NULL DEFAULT 0,
  `provider_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `username`, `phone`, `email`, `password`, `image`, `about`, `address`, `member`, `provider_name`, `provider_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mr.Admin', NULL, NULL, 'admin@gmail.com', '$2y$10$9sXTDJB1JrEUtUAEzGEWg.7xP2c0YxVgwm5Gqpye3VVHsrqNE4Mt.', '1614755704.jpg', NULL, NULL, 0, NULL, NULL, NULL, NULL, '2021-03-03 01:15:04'),
(2, 2, 'Mr.User', NULL, NULL, 'user@gmail.com', '$2y$10$DFNwx7XmE.Jq9J3LSmYI.OtTvBc4Hi4SkKFVsHoPvVSnBKlC5hdHi', 'default.png', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(3, 3, 'Mr.Agent', NULL, NULL, 'agent@gmail.com', '$2y$10$L2BC28yxSAFD8S3f6ReNnOes8yeH99SD71007BJKcHankkCzUsbAu', 'default.png', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(4, 4, 'Mr.Merchant', NULL, NULL, 'mer@gmail.com', '$2y$10$B4mq592cSvEuCVW48ORiM.ijaJlTcotuVSF.dP40Kf2UOpjoW9br6', 'default.png', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
(5, 5, 'Mr.Vip', NULL, NULL, 'vip@gmail.com', '$2y$10$03ohuRH/XYwdJb9J2rZPyOlAvyoVY9h1e1fqip2FXd63TD9Lk3CS.', 'default.png', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_provider_id_unique` (`provider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sponsors`
--
ALTER TABLE `sponsors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
