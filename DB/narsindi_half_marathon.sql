-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2021 at 12:28 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `narsindi_half_marathon`
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
(1, 'Pran-RFL Presents Narsingdi Half Marathon 2021 is the 1st edition of the event, a new event by Bangladesh Marathons after four consecutive events Gazipur Half Marathon 2019, Uttara 10K Run 2020, Gazipur Half Marathon 2021 & upcoming Uttara 10K Run 2021. This event is initiated to popularize running at the locality of Narsingdi area.', 'TBA', '2 April 2021', '2021-03-03 04:26:15', '2021-03-04 01:47:43');

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
(1, 'Narsingdi Half Marathon  2021', NULL, 'public/uploads/1614843125.jpg', '2021-03-03 03:43:46', '2021-03-04 01:32:05');

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
  `location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `address`, `phone`, `email`, `location`, `created_at`, `updated_at`) VALUES
(2, 'Total Active Sports, House 06, Road 30, Sector 7, Uttara, Dhaka, Bangladesh', '+880 1713042395', 'events@totalactivesports.com', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3648.4743333651986!2d90.39516691450447!3d23.872793190007673!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c43c8b3230d7%3A0x8694e1f6c5e3e1ff!2s6%20Road-30%2C%20Dhaka%201230!5e0!3m2!1sen!2sbd!4v1614848121919!5m2!1sen!2sbd', '2021-03-04 03:07:38', '2021-03-04 03:07:38');

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
(1, 'Narsingdi Half Marathon 2021', 'https://www.facebook.com/events/3741178595972841/?ti=ls', '<div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\"><div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Pran-RFL Presents Narsingdi Half Marathon 2021 is the 1st edition of the event, a new event by Bangladesh Marathons after four consecutive events Gazipur Half Marathon 2019, Uttara 10K Run 2020, Gazipur Half Marathon 2021 &amp; upcoming Uttara 10K Run 2021. This event is initiated to popularize running at the locality of Narsingdi area.</div><div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Here\'s what you need to know about registration:</div><div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">- Online Registration link: events.totalactivesports.com</div><div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">- Venue/Route Plan: TBA</div><div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">- Event Date: 2 April 2021</div><div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">- Race category: Half Marathon (Live), 10K Run (Live)</div><div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">- Available slots: 600 runners (Half Marathon) ; 400 runners (10K Run)</div><div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">- Registration Fee: TBA</div><div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">- Online registration will remain open until all places are taken up.</div><div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">- You can register via all online payment options supported by SSLCOMMERZ payment gateway.</div><div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">- Podium will be decided by chip timing.</div><div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">Watch this space for more updates.</div><div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">#NHM2021</div><div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">#bangladeshmarathons</div><div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">#50yearsofbangladesh</div><div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">#MujibBorsho</div><div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">#TotalActiveSports</div><div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">#CODETREE</div><div class=\"kvgmc6g5 cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\">#GCR</div></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\"><br></div><div class=\"o9v6fnle cxmmr5t8 oygrvhab hcukyx3x c1et5uql\" style=\"overflow-wrap: break-word; margin: 0.5em 0px 0px; font-family: \" segoe=\"\" ui=\"\" historic\",=\"\" \"segoe=\"\" ui\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 15px;\"=\"\"><br></div>', NULL, '2021-03-03 04:55:07', '2021-03-04 01:50:37');

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
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timing_partner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `it_partner` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `title`, `timing_partner`, `it_partner`, `created_at`, `updated_at`) VALUES
(1, 'It partner | Timing prtner', 'public/uploads/1614853902.png', 'public/uploads/1614854023.png', '2021-03-04 04:31:18', '2021-03-04 04:33:43');

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

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `category_image`, `created_at`, `updated_at`) VALUES
(4, 'NHM 2021', 'public/uploads/1614865698.png', '2021-03-04 07:48:18', '2021-03-04 07:48:18'),
(5, 'NHM 2021', 'public/uploads/1614865711.webp', '2021-03-04 07:48:31', '2021-03-04 07:48:31'),
(6, 'NHM 2021', 'public/uploads/1614865718.jpg', '2021-03-04 07:48:38', '2021-03-04 07:48:38'),
(7, 'NHM 2021', 'public/uploads/1614865739.jpg', '2021-03-04 07:48:59', '2021-03-04 07:48:59'),
(8, 'NHM 2021', 'public/uploads/1614865745.jpg', '2021-03-04 07:49:05', '2021-03-04 07:49:05'),
(9, 'NHM 2021', 'public/uploads/1614865754.jpg', '2021-03-04 07:49:14', '2021-03-04 07:49:14'),
(10, 'NHM 2021', 'public/uploads/1614865764.jpg', '2021-03-04 07:49:24', '2021-03-04 07:49:24'),
(11, 'NHM 2021', 'public/uploads/1614865771.jpg', '2021-03-04 07:49:31', '2021-03-04 07:49:31');

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
(2, 'logo one', 'public/uploads/1614842976.png', '2021-03-03 04:01:22', '2021-03-04 01:29:36'),
(3, 'logo two', 'public/uploads/1614842956.png', '2021-03-03 04:01:36', '2021-03-04 01:29:16');

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
(13, '2021_03_03_084402_create_logos_table', 2),
(14, '2021_03_04_093210_create_footers_table', 3);

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

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`id`, `title`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'PRAN-RFL', 'public/uploads/1614849878.png', '2021-03-04 03:24:38', '2021-03-04 03:24:38'),
(2, 'GAZIPUR CYCLE RIDERS', 'public/uploads/1614849996.jpg', '2021-03-04 03:26:36', '2021-03-04 03:26:36'),
(3, 'CODETREE', 'public/uploads/1614866595.png', '2021-03-04 03:28:26', '2021-03-04 08:03:15'),
(4, 'TOTAL ACTIVE SPORTS', 'public/uploads/1614850217.png', '2021-03-04 03:30:17', '2021-03-04 03:30:17');

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
(1, 1, 'Mr.Admin', NULL, NULL, 'admin@gmail.com', '$2y$10$9sXTDJB1JrEUtUAEzGEWg.7xP2c0YxVgwm5Gqpye3VVHsrqNE4Mt.', '1614843294.png', NULL, NULL, 0, NULL, NULL, NULL, NULL, '2021-03-04 01:34:54'),
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
-- Indexes for table `footers`
--
ALTER TABLE `footers`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
