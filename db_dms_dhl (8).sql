-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2018 at 07:22 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dms_dhl`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_user`
--

CREATE TABLE `cms_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_user`
--

INSERT INTO `cms_user` (`id`, `username`, `password`, `name`, `remember_token`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', '1234', 'Superadmin CMS', NULL, NULL, NULL, '2018-03-21 08:57:11', '2018-04-01 17:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `dms_form`
--

CREATE TABLE `dms_form` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_dms_form` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plat_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_location` int(10) NOT NULL,
  `id_purpose` int(11) NOT NULL,
  `asal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tujuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_of_vehicle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transporter_company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_proj_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dms_form`
--

INSERT INTO `dms_form` (`id`, `id_dms_form`, `plat_no`, `driver_name`, `id_location`, `id_purpose`, `asal`, `tujuan`, `driver_phone`, `type_of_vehicle`, `transporter_company`, `shipment`, `cust_proj_name`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(115, 'DMS11522614907', 'B 1234 CIB', 'Felicia', 1, 2, 'Bogor', 'Jakarta', '085718841359', 'Container 20\'', 'DHL', 'A1234', '7', '2018-04-01 09:35:07', '13', '2018-04-16 17:08:46', NULL),
(116, 'DMS11522614998', 'F 3322 CIB', 'Yudhi', 1, 2, 'Malaysia', NULL, '085716423138', 'Van / L300', 'SML', 'A1444', '8', '2018-04-01 09:36:38', '1', '2018-04-16 15:55:18', NULL),
(117, 'DMS21522615084', 'F 1123 CIB', 'Rani', 1, 2, NULL, 'Bandung', '085718841359', 'Fuso', 'SPILL', 'A1455', '8', '2018-04-01 09:38:04', '1', '2018-04-16 16:10:25', NULL),
(120, 'DMS11522615629', 'F 1123 DB', 'Fakih', 1, 1, 'Medan', NULL, '085718841359', 'Container 20\'', 'DHL', 'A098+', '7', '2018-04-01 09:47:09', '1', '2018-04-16 16:01:57', NULL),
(143, 'DMS11523368679', 'F 3361 BKD', 'Roni', 1, 1, 'Bogor', NULL, '085718841359', 'Wing-Box', 'DHL', 'A5122', '8', '2018-04-10 02:57:59', '1', '2018-04-16 16:08:04', NULL),
(144, 'DMS21523370851', 'F 6543 TR', 'Oman', 1, 2, NULL, 'Bogor', '085716423138', 'CDE / CD4', 'SYAKA', NULL, '7', '2018-04-10 03:34:11', '1', '2018-04-16 15:54:34', NULL),
(145, 'DMS21523370887', 'F 6543 TR', 'Komara', 1, 2, NULL, 'Gondangdia', '085718841359', 'CDE / CD4', 'SML', NULL, '7', '2018-04-10 03:34:47', '13', '2018-04-16 16:26:18', NULL),
(147, 'DMS11523645650', 'F1123RA', 'Felicia', 1, 1, 'Bogor', 'Jakarta', '089634848272', 'Van / L300', 'SiCepat', 'A134EE', '8', '2018-04-13 07:54:10', '1', '2018-04-16 16:10:08', NULL),
(148, 'DMS21523932700', 'F1123RA', 'Riri', 1, 2, 'Medan', 'Jakarta', '085718888888', 'CDE / CD4', 'SYAKA', 'A1444', '8', '2018-04-16 15:38:20', '1', '2018-04-16 16:10:41', NULL),
(150, 'DMS11523933866', 'F1123RA', 'Riyon', 1, 1, 'Medan', 'Gondangdia', '089634848272', 'Van / L300', 'SYAKA', 'A1234TT', '8', '2018-04-16 15:57:46', '1', '2018-04-16 16:08:30', NULL),
(151, 'DMS11523933898', 'F1233RT', 'Oman', 1, 1, 'Malaysia', 'Gondangdia', '085716423138', 'Fuso', 'SPILL', 'A1234', '7', '2018-04-16 15:58:18', '1', '2018-04-16 15:58:18', NULL),
(152, 'DMS11523933943', 'F1123RE', 'Rida', 1, 1, 'Malaysia', 'Jakarta', '0877788987898', 'Wing-Box', 'SYAKA', 'A1444', '7', '2018-04-16 15:59:03', '1', '2018-04-16 15:59:03', NULL),
(154, 'DMS11523934017', 'F1233RT', 'Omen', 1, 1, 'Medan', 'Bogor', '085716423138', 'Tronton', 'DHL', 'A1444', '7', '2018-04-16 16:00:17', '1', '2018-04-16 16:00:17', NULL),
(155, 'DMS11523934077', 'F6543TR', 'Koere', 1, 1, 'Bogor', 'Bandung', '085718888888', 'Wing-Box', 'SYAKA', 'A098+', '7', '2018-04-16 16:01:18', '1', '2018-04-16 16:01:18', NULL),
(156, 'DMS11523934155', 'F9923DB', 'Rina', 1, 1, 'Malaysia', 'Gondangdia', '089634848272', 'CDE / CD4', 'SPILL', 'A098+', '7', '2018-04-16 16:02:35', '1', '2018-04-16 16:02:35', NULL),
(157, 'DMS21523934290', 'F6543TR', 'Faqoh', 1, 2, 'Malaysia', 'Jakarta', '089635675676', 'CDD / CD6', 'SYAKA', 'A1234TT', '7', '2018-04-16 16:04:50', '1', '2018-04-16 16:04:50', NULL),
(159, 'DMS21523934397', 'F1233RT', 'Fakun', 1, 2, 'Medan', 'Bandung', '085718888888', 'Wing-Box', 'SYAKA', 'A134EE', '7', '2018-04-16 16:06:38', '1', '2018-04-16 16:06:38', NULL),
(160, 'DMS21523934457', 'F1233RT', 'Rama', 1, 2, 'Malaysia', 'Jakarta', '085718888888', 'Van / L300', 'SPILL', 'A1234TT', '7', '2018-04-16 16:07:37', '1', '2018-04-16 16:07:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dms_master_asal`
--

CREATE TABLE `dms_master_asal` (
  `id` int(10) UNSIGNED NOT NULL,
  `asal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dms_master_asal`
--

INSERT INTO `dms_master_asal` (`id`, `asal`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Bogor', '1', NULL, '2018-04-13 06:20:43', '2018-04-13 06:20:49'),
(3, 'Medan', '1', NULL, '2018-04-13 08:06:52', '2018-04-13 08:06:52'),
(4, '.', '1', NULL, '2018-04-13 08:07:00', '2018-04-13 08:07:00'),
(5, 'Medan', '1', NULL, '2018-04-16 15:41:39', '2018-04-16 15:41:39'),
(6, 'Malaysia', '1', NULL, '2018-04-16 15:55:04', '2018-04-16 15:55:04'),
(7, 'Malaysia', '1', NULL, '2018-04-16 15:55:18', '2018-04-16 15:55:18'),
(8, 'Medan', '1', NULL, '2018-04-16 15:57:46', '2018-04-16 15:57:46'),
(9, 'Malaysia', '1', NULL, '2018-04-16 15:58:18', '2018-04-16 15:58:18'),
(10, 'Malaysia', '1', NULL, '2018-04-16 15:59:04', '2018-04-16 15:59:04'),
(11, 'Medan', '1', NULL, '2018-04-16 15:59:42', '2018-04-16 15:59:42'),
(12, 'Medan', '1', NULL, '2018-04-16 16:00:18', '2018-04-16 16:00:18'),
(13, 'Bogor', '1', NULL, '2018-04-16 16:01:18', '2018-04-16 16:01:18'),
(14, 'Medan', '1', NULL, '2018-04-16 16:01:58', '2018-04-16 16:01:58'),
(15, 'Malaysia', '1', NULL, '2018-04-16 16:02:35', '2018-04-16 16:02:35'),
(16, 'Medan', '1', NULL, '2018-04-16 16:02:59', '2018-04-16 16:02:59'),
(17, 'Malaysia', '1', NULL, '2018-04-16 16:04:51', '2018-04-16 16:04:51'),
(18, 'Medan', '1', NULL, '2018-04-16 16:05:47', '2018-04-16 16:05:47'),
(19, 'Medan', '1', NULL, '2018-04-16 16:06:38', '2018-04-16 16:06:38'),
(20, 'Malaysia', '1', NULL, '2018-04-16 16:07:38', '2018-04-16 16:07:38'),
(21, 'Bogor', '1', NULL, '2018-04-16 16:08:04', '2018-04-16 16:08:04'),
(22, 'Medan', '1', NULL, '2018-04-16 16:08:30', '2018-04-16 16:08:30'),
(23, 'Medan', '1', NULL, '2018-04-16 16:08:43', '2018-04-16 16:08:43'),
(24, 'Bogor', '1', NULL, '2018-04-16 16:09:43', '2018-04-16 16:09:43'),
(25, 'Bogor', '1', NULL, '2018-04-16 16:10:08', '2018-04-16 16:10:08'),
(26, 'Medan', '1', NULL, '2018-04-16 16:10:41', '2018-04-16 16:10:41'),
(27, 'Bogor', '13', NULL, '2018-04-16 17:08:47', '2018-04-16 17:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `dms_master_location`
--

CREATE TABLE `dms_master_location` (
  `id` int(10) UNSIGNED NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_project` int(10) NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dms_master_location`
--

INSERT INTO `dms_master_location` (`id`, `location`, `id_project`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Cibitung', 7, '1', '', '2018-03-28 09:57:16', '2018-04-09 06:45:19'),
(2, 'Surabaya', 8, '1', '', '2018-03-28 09:57:16', '2018-04-09 06:45:22'),
(3, 'Cibitung', 8, '1', '1', '2018-03-29 04:26:33', '2018-04-09 06:45:39'),
(4, 'Surabaya', 7, '1', NULL, '2018-03-29 00:56:10', '2018-04-09 06:45:26');

-- --------------------------------------------------------

--
-- Table structure for table `dms_master_name`
--

CREATE TABLE `dms_master_name` (
  `id` int(10) UNSIGNED NOT NULL,
  `driver_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dms_master_name`
--

INSERT INTO `dms_master_name` (`id`, `driver_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'lutfi', '1', '', NULL, NULL),
(2, 'Felicia', '1', NULL, '2018-04-13 06:58:43', '2018-04-13 06:58:43'),
(3, 'Riyan', '1', NULL, '2018-04-13 07:12:58', '2018-04-13 07:12:58'),
(4, 'Fakih', '1', NULL, '2018-04-13 08:06:52', '2018-04-13 08:06:52'),
(5, 'Riri', '1', NULL, '2018-04-16 15:41:39', '2018-04-16 15:41:39'),
(6, 'Komara', '1', NULL, '2018-04-16 15:54:18', '2018-04-16 15:54:18'),
(7, 'Oman', '1', NULL, '2018-04-16 15:54:35', '2018-04-16 15:54:35'),
(8, 'Rina', '1', NULL, '2018-04-16 15:54:49', '2018-04-16 15:54:49'),
(9, 'Yudhi Prabowo', '1', NULL, '2018-04-16 15:55:04', '2018-04-16 15:55:04'),
(10, 'Yudhi', '1', NULL, '2018-04-16 15:55:18', '2018-04-16 15:55:18'),
(11, 'Riyan', '1', NULL, '2018-04-16 15:57:46', '2018-04-16 15:57:46'),
(12, 'Oman', '1', NULL, '2018-04-16 15:58:18', '2018-04-16 15:58:18'),
(13, 'Rida', '1', NULL, '2018-04-16 15:59:04', '2018-04-16 15:59:04'),
(14, 'Komoui', '1', NULL, '2018-04-16 15:59:42', '2018-04-16 15:59:42'),
(15, 'Omen', '1', NULL, '2018-04-16 16:00:18', '2018-04-16 16:00:18'),
(16, 'Koere', '1', NULL, '2018-04-16 16:01:18', '2018-04-16 16:01:18'),
(17, 'Fakih', '1', NULL, '2018-04-16 16:01:58', '2018-04-16 16:01:58'),
(18, 'Rina', '1', NULL, '2018-04-16 16:02:35', '2018-04-16 16:02:35'),
(19, 'Riyon', '1', NULL, '2018-04-16 16:02:59', '2018-04-16 16:02:59'),
(20, 'Rani', '1', NULL, '2018-04-16 16:03:33', '2018-04-16 16:03:33'),
(21, 'Faqoh', '1', NULL, '2018-04-16 16:04:51', '2018-04-16 16:04:51'),
(22, 'Fasah', '1', NULL, '2018-04-16 16:05:47', '2018-04-16 16:05:47'),
(23, 'Fakun', '1', NULL, '2018-04-16 16:06:38', '2018-04-16 16:06:38'),
(24, 'Rama', '1', NULL, '2018-04-16 16:07:38', '2018-04-16 16:07:38'),
(25, 'Roni', '1', NULL, '2018-04-16 16:08:04', '2018-04-16 16:08:04'),
(26, 'Riyon', '1', NULL, '2018-04-16 16:08:30', '2018-04-16 16:08:30'),
(27, 'Riyon', '1', NULL, '2018-04-16 16:08:43', '2018-04-16 16:08:43'),
(28, 'Felicia', '1', NULL, '2018-04-16 16:09:43', '2018-04-16 16:09:43'),
(29, 'Felicia', '1', NULL, '2018-04-16 16:10:08', '2018-04-16 16:10:08'),
(30, 'Rani', '1', NULL, '2018-04-16 16:10:26', '2018-04-16 16:10:26'),
(31, 'Riri', '1', NULL, '2018-04-16 16:10:41', '2018-04-16 16:10:41'),
(32, 'Komara', '13', NULL, '2018-04-16 16:26:18', '2018-04-16 16:26:18'),
(33, 'Felicia', '13', NULL, '2018-04-16 17:08:47', '2018-04-16 17:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `dms_master_phone`
--

CREATE TABLE `dms_master_phone` (
  `id` int(10) UNSIGNED NOT NULL,
  `driver_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dms_master_phone`
--

INSERT INTO `dms_master_phone` (`id`, `driver_phone`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(11, '085718841359', '1', NULL, '2018-04-01 08:27:51', '2018-04-09 06:43:53'),
(23, '089634848272', '1', NULL, '2018-04-01 09:56:02', '2018-04-09 06:44:00'),
(24, '085718888888', '2', NULL, '2018-04-01 19:52:51', '2018-04-09 06:43:57'),
(26, '089635675676', '1', NULL, '2018-04-01 20:10:55', '2018-04-09 06:44:04'),
(55, '0877788987898', '1', NULL, '2018-04-10 02:58:00', '2018-04-10 02:58:00'),
(56, '085716423138', '1', NULL, '2018-04-12 11:21:36', '2018-04-12 11:21:36'),
(57, 'g', '1', NULL, '2018-04-13 06:30:35', '2018-04-13 06:30:35'),
(58, '085718888888', '1', NULL, '2018-04-16 15:41:39', '2018-04-16 15:41:39'),
(59, '085718841359', '1', NULL, '2018-04-16 15:54:17', '2018-04-16 15:54:17'),
(60, '085716423138', '1', NULL, '2018-04-16 15:54:35', '2018-04-16 15:54:35'),
(61, '085718841359', '1', NULL, '2018-04-16 15:54:49', '2018-04-16 15:54:49'),
(62, '085716423138', '1', NULL, '2018-04-16 15:55:04', '2018-04-16 15:55:04'),
(63, '085716423138', '1', NULL, '2018-04-16 15:55:18', '2018-04-16 15:55:18'),
(64, '089634848272', '1', NULL, '2018-04-16 15:57:46', '2018-04-16 15:57:46'),
(65, '085716423138', '1', NULL, '2018-04-16 15:58:18', '2018-04-16 15:58:18'),
(66, '0877788987898', '1', NULL, '2018-04-16 15:59:03', '2018-04-16 15:59:03'),
(67, '085718888888', '1', NULL, '2018-04-16 15:59:42', '2018-04-16 15:59:42'),
(68, '085716423138', '1', NULL, '2018-04-16 16:00:17', '2018-04-16 16:00:17'),
(69, '085718888888', '1', NULL, '2018-04-16 16:01:18', '2018-04-16 16:01:18'),
(70, '085718841359', '1', NULL, '2018-04-16 16:01:57', '2018-04-16 16:01:57'),
(71, '089634848272', '1', NULL, '2018-04-16 16:02:35', '2018-04-16 16:02:35'),
(72, '089634848272', '1', NULL, '2018-04-16 16:02:59', '2018-04-16 16:02:59'),
(73, '085718841359', '1', NULL, '2018-04-16 16:03:33', '2018-04-16 16:03:33'),
(74, '089635675676', '1', NULL, '2018-04-16 16:04:51', '2018-04-16 16:04:51'),
(75, '089635675676', '1', NULL, '2018-04-16 16:05:47', '2018-04-16 16:05:47'),
(76, '085718888888', '1', NULL, '2018-04-16 16:06:38', '2018-04-16 16:06:38'),
(77, '085718888888', '1', NULL, '2018-04-16 16:07:37', '2018-04-16 16:07:37'),
(78, '085718841359', '1', NULL, '2018-04-16 16:08:04', '2018-04-16 16:08:04'),
(79, '089634848272', '1', NULL, '2018-04-16 16:08:30', '2018-04-16 16:08:30'),
(80, '089634848272', '1', NULL, '2018-04-16 16:08:43', '2018-04-16 16:08:43'),
(81, '089634848272', '1', NULL, '2018-04-16 16:09:43', '2018-04-16 16:09:43'),
(82, '089634848272', '1', NULL, '2018-04-16 16:10:08', '2018-04-16 16:10:08'),
(83, '085718841359', '1', NULL, '2018-04-16 16:10:26', '2018-04-16 16:10:26'),
(84, '085718888888', '1', NULL, '2018-04-16 16:10:41', '2018-04-16 16:10:41'),
(85, '085718841359', '13', NULL, '2018-04-16 16:26:18', '2018-04-16 16:26:18'),
(86, '085718841359', '13', NULL, '2018-04-16 17:08:47', '2018-04-16 17:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `dms_master_plat`
--

CREATE TABLE `dms_master_plat` (
  `id` int(10) UNSIGNED NOT NULL,
  `plat_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dms_master_plat`
--

INSERT INTO `dms_master_plat` (`id`, `plat_no`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(55, 'F 1123 Ra', '3', 'Superadmin CMS', '2018-04-01 09:45:39', '2018-04-11 03:45:08'),
(56, 'F 9923 DB', '3', NULL, '2018-04-01 09:47:09', '2018-04-09 06:42:21'),
(57, 'F 6543 TR', '3', NULL, '2018-04-01 09:48:24', '2018-04-09 06:42:24'),
(58, 'F 8823 TT', '3', NULL, '2018-04-01 09:49:32', '2018-04-09 06:42:26'),
(61, 'F 1233 RT', '2', NULL, '2018-04-01 19:52:51', '2018-04-09 06:42:29'),
(67, 'B 1234 CIB', '1', NULL, '2018-04-09 17:27:02', '2018-04-09 17:27:02'),
(90, 'F 3361 BKD', '1', NULL, '2018-04-10 02:58:00', '2018-04-10 02:58:00'),
(91, 'F 1123 RE', '1', NULL, '2018-04-12 11:21:36', '2018-04-12 11:21:36'),
(92, 'g', '1', NULL, '2018-04-13 06:30:35', '2018-04-13 06:30:35'),
(93, 'F1123Ra', '1', NULL, '2018-04-13 07:54:10', '2018-04-13 07:54:10'),
(94, 'F 1123 DB', '1', NULL, '2018-04-13 08:06:52', '2018-04-13 08:06:52'),
(95, 'F1123RA', '1', NULL, '2018-04-16 15:41:39', '2018-04-16 15:41:39'),
(96, 'F 6543 TR', '1', NULL, '2018-04-16 15:54:17', '2018-04-16 15:54:17'),
(97, 'F 6543 TR', '1', NULL, '2018-04-16 15:54:35', '2018-04-16 15:54:35'),
(98, 'F 1123 CIB', '1', NULL, '2018-04-16 15:54:49', '2018-04-16 15:54:49'),
(99, 'F 3322 CIB', '1', NULL, '2018-04-16 15:55:04', '2018-04-16 15:55:04'),
(100, 'F 3322 CIB', '1', NULL, '2018-04-16 15:55:18', '2018-04-16 15:55:18'),
(101, 'F1123RA', '1', NULL, '2018-04-16 15:57:46', '2018-04-16 15:57:46'),
(102, 'F1233RT', '1', NULL, '2018-04-16 15:58:18', '2018-04-16 15:58:18'),
(103, 'F1123RE', '1', NULL, '2018-04-16 15:59:03', '2018-04-16 15:59:03'),
(104, 'F8823TT', '1', NULL, '2018-04-16 15:59:42', '2018-04-16 15:59:42'),
(105, 'F1233RT', '1', NULL, '2018-04-16 16:00:17', '2018-04-16 16:00:17'),
(106, 'F6543TR', '1', NULL, '2018-04-16 16:01:18', '2018-04-16 16:01:18'),
(107, 'F 1123 DB', '1', NULL, '2018-04-16 16:01:57', '2018-04-16 16:01:57'),
(108, 'F9923DB', '1', NULL, '2018-04-16 16:02:35', '2018-04-16 16:02:35'),
(109, 'F1123RA', '1', NULL, '2018-04-16 16:02:59', '2018-04-16 16:02:59'),
(110, 'F 1123 CIB', '1', NULL, '2018-04-16 16:03:33', '2018-04-16 16:03:33'),
(111, 'F6543TR', '1', NULL, '2018-04-16 16:04:51', '2018-04-16 16:04:51'),
(112, 'F6543TR', '1', NULL, '2018-04-16 16:05:47', '2018-04-16 16:05:47'),
(113, 'F1233RT', '1', NULL, '2018-04-16 16:06:38', '2018-04-16 16:06:38'),
(114, 'F1233RT', '1', NULL, '2018-04-16 16:07:37', '2018-04-16 16:07:37'),
(115, 'F 3361 BKD', '1', NULL, '2018-04-16 16:08:04', '2018-04-16 16:08:04'),
(116, 'F1123RA', '1', NULL, '2018-04-16 16:08:30', '2018-04-16 16:08:30'),
(117, 'F1123RA', '1', NULL, '2018-04-16 16:08:43', '2018-04-16 16:08:43'),
(118, 'F1123RA', '1', NULL, '2018-04-16 16:09:43', '2018-04-16 16:09:43'),
(119, 'F1123RA', '1', NULL, '2018-04-16 16:10:08', '2018-04-16 16:10:08'),
(120, 'F 1123 CIB', '1', NULL, '2018-04-16 16:10:26', '2018-04-16 16:10:26'),
(121, 'F1123RA', '1', NULL, '2018-04-16 16:10:41', '2018-04-16 16:10:41'),
(122, 'F 6543 TR', '13', NULL, '2018-04-16 16:26:18', '2018-04-16 16:26:18'),
(123, 'B 1234 CIB', '13', NULL, '2018-04-16 17:08:47', '2018-04-16 17:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `dms_master_project`
--

CREATE TABLE `dms_master_project` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_project_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dms_master_project`
--

INSERT INTO `dms_master_project` (`id`, `master_project_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(7, 'SCHNEIDER', '1', '1', '2018-03-21 23:13:07', '2018-04-09 06:42:06'),
(8, 'MONDELEZ', '1', '1', '2018-03-21 23:13:15', '2018-04-09 06:42:09');

-- --------------------------------------------------------

--
-- Table structure for table `dms_master_status`
--

CREATE TABLE `dms_master_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `status_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dms_master_status`
--

INSERT INTO `dms_master_status` (`id`, `status_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Waiting Outside', '1', '1', '2018-03-28 03:47:07', '2018-04-09 06:41:48'),
(2, 'Waiting Gate', '1', NULL, '2018-03-28 03:47:07', '2018-04-09 06:41:37'),
(3, 'Truck Enter WH', '1', NULL, '2018-03-28 03:47:07', '2018-04-09 06:41:39'),
(4, 'Loading', '1', NULL, '2018-03-28 03:47:07', '2018-04-09 06:41:41'),
(5, 'Complete Loading', '1', NULL, '2018-03-28 03:47:07', '2018-04-09 06:41:43'),
(6, 'Leave Warehouse', '1', NULL, '2018-03-28 03:47:07', '2018-04-09 06:41:46');

-- --------------------------------------------------------

--
-- Table structure for table `dms_master_tc`
--

CREATE TABLE `dms_master_tc` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_tc_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dms_master_tc`
--

INSERT INTO `dms_master_tc` (`id`, `master_tc_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'DHL', NULL, NULL, '2018-03-13 15:10:31', '2018-03-13 15:10:31'),
(3, 'SML\r\n', NULL, NULL, '2018-03-13 15:10:31', '2018-04-15 17:53:16'),
(4, 'SPILL', NULL, NULL, '2018-03-13 15:10:31', '2018-04-15 17:53:30'),
(5, 'SYAKA', NULL, NULL, '2018-03-13 15:10:31', '2018-04-15 17:53:49');

-- --------------------------------------------------------

--
-- Table structure for table `dms_master_tujuan`
--

CREATE TABLE `dms_master_tujuan` (
  `id` int(10) UNSIGNED NOT NULL,
  `tujuan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dms_master_tujuan`
--

INSERT INTO `dms_master_tujuan` (`id`, `tujuan`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Jakarta', '1', '', NULL, '2018-04-13 06:22:49'),
(2, NULL, '1', NULL, '2018-04-13 06:58:43', '2018-04-13 06:58:43'),
(3, 'Jakarta', '1', NULL, '2018-04-16 15:41:39', '2018-04-16 15:41:39'),
(4, 'Gondangdia', '1', NULL, '2018-04-16 15:54:18', '2018-04-16 15:54:18'),
(5, 'Bogor', '1', NULL, '2018-04-16 15:54:35', '2018-04-16 15:54:35'),
(6, 'Bandung', '1', NULL, '2018-04-16 15:54:49', '2018-04-16 15:54:49'),
(7, 'Gondangdia', '1', NULL, '2018-04-16 15:57:46', '2018-04-16 15:57:46'),
(8, 'Gondangdia', '1', NULL, '2018-04-16 15:58:19', '2018-04-16 15:58:19'),
(9, 'Jakarta', '1', NULL, '2018-04-16 15:59:04', '2018-04-16 15:59:04'),
(10, 'Gondangdia', '1', NULL, '2018-04-16 15:59:42', '2018-04-16 15:59:42'),
(11, 'Bogor', '1', NULL, '2018-04-16 16:00:18', '2018-04-16 16:00:18'),
(12, 'Bandung', '1', NULL, '2018-04-16 16:01:18', '2018-04-16 16:01:18'),
(13, 'Gondangdia', '1', NULL, '2018-04-16 16:02:35', '2018-04-16 16:02:35'),
(14, 'Gondangdia', '1', NULL, '2018-04-16 16:02:59', '2018-04-16 16:02:59'),
(15, 'Bandung', '1', NULL, '2018-04-16 16:03:33', '2018-04-16 16:03:33'),
(16, 'Jakarta', '1', NULL, '2018-04-16 16:04:51', '2018-04-16 16:04:51'),
(17, 'Gondangdia', '1', NULL, '2018-04-16 16:05:47', '2018-04-16 16:05:47'),
(18, 'Bandung', '1', NULL, '2018-04-16 16:06:38', '2018-04-16 16:06:38'),
(19, 'Jakarta', '1', NULL, '2018-04-16 16:07:38', '2018-04-16 16:07:38'),
(20, 'Gondangdia', '1', NULL, '2018-04-16 16:08:30', '2018-04-16 16:08:30'),
(21, 'Gondangdia', '1', NULL, '2018-04-16 16:08:43', '2018-04-16 16:08:43'),
(22, 'Jakarta', '1', NULL, '2018-04-16 16:09:44', '2018-04-16 16:09:44'),
(23, 'Jakarta', '1', NULL, '2018-04-16 16:10:08', '2018-04-16 16:10:08'),
(24, 'Bandung', '1', NULL, '2018-04-16 16:10:26', '2018-04-16 16:10:26'),
(25, 'Jakarta', '1', NULL, '2018-04-16 16:10:41', '2018-04-16 16:10:41'),
(26, 'Gondangdia', '13', NULL, '2018-04-16 16:26:18', '2018-04-16 16:26:18'),
(27, 'Jakarta', '13', NULL, '2018-04-16 17:08:47', '2018-04-16 17:08:47');

-- --------------------------------------------------------

--
-- Table structure for table `dms_master_vehicle`
--

CREATE TABLE `dms_master_vehicle` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_vehicle_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dms_master_vehicle`
--

INSERT INTO `dms_master_vehicle` (`id`, `master_vehicle_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 'Van / L300', NULL, '1', '2018-03-13 15:07:58', '2018-04-09 06:41:12'),
(4, 'CDE / CD4', NULL, '1', '2018-03-13 15:07:58', '2018-04-09 06:41:14'),
(5, 'CDD / CD6', NULL, '1', '2018-03-13 15:07:58', '2018-04-09 06:41:17'),
(6, 'Fuso', '1', NULL, '2018-04-06 08:01:46', '2018-04-09 06:40:52'),
(7, 'Tronton', '1', NULL, '2018-04-06 08:01:53', '2018-04-09 06:40:55'),
(8, 'Wing-Box', '1', NULL, '2018-04-06 08:02:01', '2018-04-09 06:40:57'),
(9, 'Container 20\'', '1', NULL, '2018-04-06 08:02:10', '2018-04-09 06:41:03'),
(10, 'Container 40\'', '1', NULL, '2018-04-06 08:02:18', '2018-04-09 06:41:05'),
(11, 'Big Mama / Yellow', '1', NULL, '2018-04-06 08:02:26', '2018-04-09 06:41:09');

-- --------------------------------------------------------

--
-- Table structure for table `dms_purpose`
--

CREATE TABLE `dms_purpose` (
  `id` int(10) UNSIGNED NOT NULL,
  `purpose` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dms_purpose`
--

INSERT INTO `dms_purpose` (`id`, `purpose`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Inbound', '1', '1', NULL, NULL),
(2, 'Outbound', '1', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dms_transaction`
--

CREATE TABLE `dms_transaction` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_dms_form` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gate_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waiting_time` time DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_scan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrival_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exit_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by_checker` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dms_transaction`
--

INSERT INTO `dms_transaction` (`id`, `id_dms_form`, `gate_number`, `status`, `waiting_time`, `duration`, `last_scan`, `arrival_time`, `exit_time`, `updated_by_checker`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(94, 'DMS11522614907', '2', '4', NULL, 'Apr 08, 18 21:55:15', '22:55:53 16/Apr/2018', '2018-04-01 16:35:07', 'Apr 10, 18 01:00:20', 0, '2018-04-01 09:35:07', '1', '2018-04-16 17:08:47', '13'),
(95, 'DMS11522614998', '2', '2', '15:21:00', 'Apr 04, 18 1:15:43', '', '2018-04-01 16:36:38', '2018-04-02 03:21:57', 0, '2018-04-01 09:36:38', '1', '2018-04-10 02:40:17', '1'),
(96, 'DMS21522615084', '2', '3', NULL, 'Apr 04, 18 2:15:33', '22:56:26 16/Apr/2018', '2018-04-01 16:38:04', NULL, 0, '2018-04-01 09:38:04', '1', '2018-04-16 15:56:26', '1'),
(99, 'DMS11522615629', '1', '3', NULL, 'Apr 04, 18 13:42:03', '16:13:30 13/Apr/2018', '2018-04-01 16:47:09', 'Apr 13, 18 16:13:30', 0, '2018-04-01 09:47:09', '1', '2018-04-16 17:18:50', '1'),
(119, 'DMS11523368679', NULL, '1', NULL, 'Apr 10, 18 09:57:59', NULL, 'Apr 10, 18 09:57:59', NULL, NULL, '2018-04-10 02:58:00', '1', '2018-04-16 16:08:04', '1'),
(120, 'DMS21523370851', NULL, '1', NULL, 'Apr 10, 18 10:34:11', NULL, 'Apr 10, 18 10:34:11', NULL, NULL, '2018-04-10 03:34:11', '1', '2018-04-16 15:54:35', '1'),
(121, 'DMS21523370887', NULL, '1', NULL, 'Apr 10, 18 10:34:47', NULL, 'Apr 10, 18 10:34:47', NULL, NULL, '2018-04-10 03:34:47', '1', '2018-04-16 16:26:18', '13'),
(123, 'DMS11523645650', NULL, '1', '23:03:00', 'Apr 13, 18 14:54:10', NULL, 'Apr 13, 18 14:54:10', NULL, NULL, '2018-04-13 07:54:10', '1', '2018-04-16 16:09:43', '1'),
(124, 'DMS21523932700', NULL, '1', NULL, 'Apr 16, 18 22:38:20', NULL, 'Apr 16, 18 22:38:20', NULL, NULL, '2018-04-16 15:38:20', '1', '2018-04-16 16:10:41', '1'),
(126, 'DMS11523933866', '1', '3', NULL, 'Apr 16, 18 22:57:46', '23:08:50 16/Apr/2018', 'Apr 16, 18 22:57:46', NULL, NULL, '2018-04-16 15:57:46', '1', '2018-04-16 16:08:50', '1'),
(127, 'DMS11523933898', NULL, '1', NULL, 'Apr 16, 18 22:58:18', NULL, 'Apr 16, 18 22:58:18', NULL, NULL, '2018-04-16 15:58:18', '1', '2018-04-16 15:58:18', NULL),
(128, 'DMS11523933943', NULL, '1', NULL, 'Apr 16, 18 22:59:03', NULL, 'Apr 16, 18 22:59:03', NULL, NULL, '2018-04-16 15:59:03', '1', '2018-04-16 15:59:03', NULL),
(130, 'DMS11523934017', NULL, '1', NULL, 'Apr 16, 18 23:00:17', NULL, 'Apr 16, 18 23:00:17', NULL, NULL, '2018-04-16 16:00:17', '1', '2018-04-16 16:00:17', NULL),
(131, 'DMS11523934077', NULL, '1', NULL, 'Apr 16, 18 23:01:17', NULL, 'Apr 16, 18 23:01:17', NULL, NULL, '2018-04-16 16:01:18', '1', '2018-04-16 16:01:18', NULL),
(132, 'DMS11523934155', NULL, '1', NULL, 'Apr 16, 18 23:02:35', NULL, 'Apr 16, 18 23:02:35', NULL, NULL, '2018-04-16 16:02:35', '1', '2018-04-16 16:02:35', NULL),
(133, 'DMS21523934290', NULL, '1', NULL, 'Apr 16, 18 23:04:50', NULL, 'Apr 16, 18 23:04:50', NULL, NULL, '2018-04-16 16:04:50', '1', '2018-04-16 16:04:50', NULL),
(135, 'DMS21523934397', NULL, '1', NULL, 'Apr 16, 18 23:06:37', NULL, 'Apr 16, 18 23:06:37', NULL, NULL, '2018-04-16 16:06:38', '1', '2018-04-16 16:06:38', NULL),
(136, 'DMS21523934457', NULL, '1', NULL, 'Apr 16, 18 23:07:37', NULL, 'Apr 16, 18 23:07:37', NULL, NULL, '2018-04-16 16:07:37', '1', '2018-04-16 16:07:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dms_transaction_history`
--

CREATE TABLE `dms_transaction_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_dms_form` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gate_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waiting_time` time DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_scan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arrival_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exit_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by_checker` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dms_transaction_history`
--

INSERT INTO `dms_transaction_history` (`id`, `id_dms_form`, `gate_number`, `status`, `waiting_time`, `duration`, `last_scan`, `arrival_time`, `exit_time`, `updated_by_checker`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(316, 'DMS11522659432', NULL, '3', NULL, NULL, '09:43', NULL, NULL, NULL, '2018-04-10 02:43:41', '1', '2018-04-10 02:43:41', NULL),
(317, 'DMS11522659432', NULL, '4', NULL, NULL, '09:43', NULL, NULL, NULL, '2018-04-10 02:43:46', '1', '2018-04-10 02:43:46', NULL),
(318, 'DMS11522659432', NULL, '5', NULL, NULL, '09:43', NULL, NULL, NULL, '2018-04-10 02:43:52', '1', '2018-04-10 02:43:52', NULL),
(319, 'DMS11522659432', NULL, '6', NULL, NULL, '09:43', NULL, 'Apr 10, 18 09:43:57', NULL, '2018-04-10 02:43:57', '1', '2018-04-10 02:43:57', NULL),
(320, 'DMS11523368679', NULL, '1', NULL, 'Apr 10, 18 09:57:59', NULL, 'Apr 10, 18 09:57:59', NULL, NULL, '2018-04-10 02:58:00', '1', '2018-04-10 02:58:00', NULL),
(321, 'DMS21523370851', NULL, '1', NULL, 'Apr 10, 18 10:34:11', NULL, 'Apr 10, 18 10:34:11', NULL, NULL, '2018-04-10 03:34:11', '1', '2018-04-10 03:34:11', NULL),
(322, 'DMS21523370887', NULL, '1', NULL, 'Apr 10, 18 10:34:47', NULL, 'Apr 10, 18 10:34:47', NULL, NULL, '2018-04-10 03:34:47', '1', '2018-04-10 03:34:47', NULL),
(323, 'DMS11522667446', NULL, '3', NULL, NULL, '12:48', NULL, NULL, NULL, '2018-04-10 05:48:12', '1', '2018-04-10 05:48:12', NULL),
(324, 'DMS11522667446', NULL, '4', NULL, NULL, '13:20', NULL, NULL, NULL, '2018-04-10 06:20:58', '1', '2018-04-10 06:20:58', NULL),
(325, 'DMS11522667446', NULL, '5', NULL, NULL, '11:30', NULL, NULL, NULL, '2018-04-11 04:30:53', '1', '2018-04-11 04:30:53', NULL),
(326, 'DMS11522667446', NULL, '6', NULL, NULL, '11:31', NULL, 'Apr 11, 18 11:31:07', NULL, '2018-04-11 04:31:07', '1', '2018-04-11 04:31:07', NULL),
(327, 'DMS11522667446', '3', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-12 11:21:36', '1', '2018-04-12 11:21:36', NULL),
(328, 'DMS11523640635', NULL, '1', NULL, 'Apr 13, 18 13:30:35', NULL, 'Apr 13, 18 13:30:35', NULL, NULL, '2018-04-13 06:30:35', '1', '2018-04-13 06:30:35', NULL),
(329, 'DMS11522614907', NULL, '3', NULL, NULL, '13:52', NULL, NULL, NULL, '2018-04-13 06:52:02', '1', '2018-04-13 06:52:02', NULL),
(330, 'DMS11522614907', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-13 06:57:13', '1', '2018-04-13 06:57:13', NULL),
(331, 'DMS11522614907', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-13 06:57:40', '1', '2018-04-13 06:57:40', NULL),
(332, 'DMS11522614907', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-13 06:58:43', '1', '2018-04-13 06:58:43', NULL),
(333, 'DMS11522667446', '3', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-13 07:07:39', '1', '2018-04-13 07:07:39', NULL),
(334, 'DMS11522667446', '3', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-13 07:12:58', '1', '2018-04-13 07:12:58', NULL),
(335, 'DMS11522667446', '3', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-13 07:13:11', '1', '2018-04-13 07:13:11', NULL),
(336, 'DMS11522667446', '3', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-13 07:13:29', '1', '2018-04-13 07:13:29', NULL),
(337, 'DMS11522667446', '3', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-13 07:13:47', '1', '2018-04-13 07:13:47', NULL),
(338, 'DMS11522667446', '3', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-13 07:13:55', '1', '2018-04-13 07:13:55', NULL),
(339, 'DMS11523645650', NULL, '1', NULL, 'Apr 13, 18 14:54:10', NULL, 'Apr 13, 18 14:54:10', NULL, NULL, '2018-04-13 07:54:10', '1', '2018-04-13 07:54:10', NULL),
(340, 'DMS11522615629', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-13 08:06:52', '1', '2018-04-13 08:06:52', NULL),
(341, 'DMS11522667446', '3', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-13 08:07:00', '1', '2018-04-13 08:07:00', NULL),
(342, 'DMS11522615629', NULL, '3', NULL, NULL, '16:11 13 Apr 18', NULL, NULL, NULL, '2018-04-13 09:11:09', '1', '2018-04-13 09:11:09', NULL),
(343, 'DMS11522615629', NULL, '4', NULL, NULL, '16:11 13 Apr 2018', NULL, NULL, NULL, '2018-04-13 09:11:59', '1', '2018-04-13 09:11:59', NULL),
(344, 'DMS11522615629', NULL, '5', NULL, NULL, '16:13:03 13/Apr/2018', NULL, NULL, NULL, '2018-04-13 09:13:03', '1', '2018-04-13 09:13:03', NULL),
(345, 'DMS11522615629', NULL, '6', NULL, NULL, '16:13:30 13/Apr/2018', NULL, 'Apr 13, 18 16:13:30', NULL, '2018-04-13 09:13:30', '1', '2018-04-13 09:13:30', NULL),
(346, 'DMS21523932700', NULL, '1', NULL, 'Apr 16, 18 22:38:20', NULL, 'Apr 16, 18 22:38:20', NULL, NULL, '2018-04-16 15:38:21', '1', '2018-04-16 15:38:21', NULL),
(347, 'DMS21523932899', NULL, '1', NULL, 'Apr 16, 18 22:41:39', NULL, 'Apr 16, 18 22:41:39', NULL, NULL, '2018-04-16 15:41:39', '1', '2018-04-16 15:41:39', NULL),
(348, 'DMS21523370887', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 15:52:53', '1', '2018-04-16 15:52:53', NULL),
(349, 'DMS21523370887', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 15:54:17', '1', '2018-04-16 15:54:17', NULL),
(350, 'DMS21523370851', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 15:54:35', '1', '2018-04-16 15:54:35', NULL),
(351, 'DMS21522615084', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 15:54:49', '1', '2018-04-16 15:54:49', NULL),
(352, 'DMS11522614998', '2', NULL, '15:21:00', NULL, NULL, NULL, NULL, NULL, '2018-04-16 15:55:03', '1', '2018-04-16 15:55:03', NULL),
(353, 'DMS11522614998', '2', NULL, '15:21:00', NULL, NULL, NULL, NULL, NULL, '2018-04-16 15:55:18', '1', '2018-04-16 15:55:18', NULL),
(354, 'DMS11522614907', NULL, '4', NULL, NULL, '22:55:53 16/Apr/2018', NULL, NULL, NULL, '2018-04-16 15:55:53', '1', '2018-04-16 15:55:53', NULL),
(355, 'DMS21522615084', NULL, '3', NULL, NULL, '22:56:26 16/Apr/2018', NULL, NULL, NULL, '2018-04-16 15:56:26', '1', '2018-04-16 15:56:26', NULL),
(356, 'DMS11523933866', NULL, '1', NULL, 'Apr 16, 18 22:57:46', NULL, 'Apr 16, 18 22:57:46', NULL, NULL, '2018-04-16 15:57:46', '1', '2018-04-16 15:57:46', NULL),
(357, 'DMS11523933898', NULL, '1', NULL, 'Apr 16, 18 22:58:18', NULL, 'Apr 16, 18 22:58:18', NULL, NULL, '2018-04-16 15:58:18', '1', '2018-04-16 15:58:18', NULL),
(358, 'DMS11523933943', NULL, '1', NULL, 'Apr 16, 18 22:59:03', NULL, 'Apr 16, 18 22:59:03', NULL, NULL, '2018-04-16 15:59:03', '1', '2018-04-16 15:59:03', NULL),
(359, 'DMS11523933981', NULL, '1', NULL, 'Apr 16, 18 22:59:41', NULL, 'Apr 16, 18 22:59:41', NULL, NULL, '2018-04-16 15:59:42', '1', '2018-04-16 15:59:42', NULL),
(360, 'DMS11523934017', NULL, '1', NULL, 'Apr 16, 18 23:00:17', NULL, 'Apr 16, 18 23:00:17', NULL, NULL, '2018-04-16 16:00:17', '1', '2018-04-16 16:00:17', NULL),
(361, 'DMS11523934077', NULL, '1', NULL, 'Apr 16, 18 23:01:17', NULL, 'Apr 16, 18 23:01:17', NULL, NULL, '2018-04-16 16:01:18', '1', '2018-04-16 16:01:18', NULL),
(362, 'DMS11522615629', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 16:01:57', '1', '2018-04-16 16:01:57', NULL),
(363, 'DMS11523934155', NULL, '1', NULL, 'Apr 16, 18 23:02:35', NULL, 'Apr 16, 18 23:02:35', NULL, NULL, '2018-04-16 16:02:35', '1', '2018-04-16 16:02:35', NULL),
(364, 'DMS11523933866', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 16:02:59', '1', '2018-04-16 16:02:59', NULL),
(365, 'DMS21522615084', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 16:03:33', '1', '2018-04-16 16:03:33', NULL),
(366, 'DMS21523934290', NULL, '1', NULL, 'Apr 16, 18 23:04:50', NULL, 'Apr 16, 18 23:04:50', NULL, NULL, '2018-04-16 16:04:51', '1', '2018-04-16 16:04:51', NULL),
(367, 'DMS21523934347', NULL, '1', NULL, 'Apr 16, 18 23:05:47', NULL, 'Apr 16, 18 23:05:47', NULL, NULL, '2018-04-16 16:05:47', '1', '2018-04-16 16:05:47', NULL),
(368, 'DMS21523934397', NULL, '1', NULL, 'Apr 16, 18 23:06:37', NULL, 'Apr 16, 18 23:06:37', NULL, NULL, '2018-04-16 16:06:38', '1', '2018-04-16 16:06:38', NULL),
(369, 'DMS21523934457', NULL, '1', NULL, 'Apr 16, 18 23:07:37', NULL, 'Apr 16, 18 23:07:37', NULL, NULL, '2018-04-16 16:07:37', '1', '2018-04-16 16:07:37', NULL),
(370, 'DMS11523368679', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 16:08:04', '1', '2018-04-16 16:08:04', NULL),
(371, 'DMS11523933866', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 16:08:30', '1', '2018-04-16 16:08:30', NULL),
(372, 'DMS11523933866', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 16:08:43', '1', '2018-04-16 16:08:43', NULL),
(373, 'DMS11523933866', NULL, '3', NULL, NULL, '23:08:50 16/Apr/2018', NULL, NULL, NULL, '2018-04-16 16:08:50', '1', '2018-04-16 16:08:50', NULL),
(374, 'DMS11523645650', NULL, NULL, '23:03:00', NULL, NULL, NULL, NULL, NULL, '2018-04-16 16:09:43', '1', '2018-04-16 16:09:43', NULL),
(375, 'DMS11523645650', NULL, NULL, '23:03:00', NULL, NULL, NULL, NULL, NULL, '2018-04-16 16:10:08', '1', '2018-04-16 16:10:08', NULL),
(376, 'DMS21522615084', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 16:10:25', '1', '2018-04-16 16:10:25', NULL),
(377, 'DMS21523932700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 16:10:41', '1', '2018-04-16 16:10:41', NULL),
(378, 'DMS21523370887', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 16:26:18', '13', '2018-04-16 16:26:18', NULL),
(379, 'DMS11522614907', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 17:08:47', '13', '2018-04-16 17:08:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dms_user_group`
--

CREATE TABLE `dms_user_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `usergroup_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dms_user_group`
--

INSERT INTO `dms_user_group` (`id`, `usergroup_name`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'SUPER ADMIN', '1', NULL, '2018-03-09 02:53:14', '2018-04-09 06:38:12'),
(2, 'ADMIN', '1', NULL, '2018-03-16 04:38:53', '2018-04-09 06:38:04'),
(3, 'SECURITY', '1', NULL, '2018-03-16 04:38:53', '2018-04-09 06:38:05'),
(4, 'CHECKER', '1', NULL, '2018-03-23 00:53:23', '2018-04-09 06:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `dms_user_management`
--

CREATE TABLE `dms_user_management` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_usergroup` int(11) DEFAULT NULL,
  `id_location` int(10) DEFAULT NULL,
  `id_project` int(15) DEFAULT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dms_user_management`
--

INSERT INTO `dms_user_management` (`id`, `username`, `name`, `password`, `remember_token`, `id_usergroup`, `id_location`, `id_project`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'Superadmin DMS', '1234', NULL, 1, 1, 8, '1', '1', '2018-03-16 16:52:12', '2018-04-09 06:39:03'),
(2, 'security-1', 'Security-1', '1234', NULL, 3, 1, 7, '1', '1', '2018-03-09 02:54:37', '2018-04-15 16:48:02'),
(3, 'security-2\r\n', 'Security-2', '1234', NULL, 3, 1, 7, '1', '1', '2018-03-09 02:54:37', '2018-04-15 16:48:08'),
(4, 'security-3', 'Security-3', '1234', NULL, 3, 1, 7, '1', '1', '2018-03-19 07:25:56', '2018-04-15 16:48:14'),
(5, 'sch-checker-1', 'SCH-Checker-1', '1234', NULL, 4, 1, 7, '1', '1', '2018-03-23 02:08:28', '2018-04-15 16:48:33'),
(6, 'sch-checker-2', 'SCH-Checker-2', '1234', NULL, 4, 1, 7, '1', '1', '2018-03-19 07:25:56', '2018-04-15 16:48:46'),
(7, 'sch-checker-3', 'SCH-Checker-3', '1234', NULL, 4, 1, 7, '1', '1', '2018-03-23 02:08:28', '2018-04-15 16:48:55'),
(8, 'sch-checker-4', 'SCH-Checker-4', '1234', NULL, 4, 1, 7, '1', '1', '2018-03-27 23:09:04', '2018-04-15 16:49:03'),
(9, 'mdlz-checker-1', 'MDLZ-Checker-1', '1234', NULL, 4, 1, 8, '1', '1', '2018-03-27 23:09:04', '2018-04-15 16:49:20'),
(10, 'mdlz-checker-2', 'MDLZ-Checker-2', '1234', NULL, 4, 1, 8, '1', '1', '2018-03-27 23:09:04', '2018-04-15 16:49:26'),
(11, 'mdlz-checker-3', 'MDLZ-Checker-3', '1234', NULL, 4, 1, 8, '1', '1', '2018-03-27 23:09:04', '2018-04-15 16:49:33'),
(12, 'mdlz-checker-4', 'MDLZ-Checker-4', '1234', NULL, 4, 1, 8, '1', '1', '2018-03-19 07:25:56', '2018-04-15 16:49:39'),
(13, 'sch-admin-1', 'SCH-Admin-1', '1234', NULL, 2, 1, 7, '1', '1', '2018-03-23 02:08:28', '2018-04-15 16:50:06'),
(14, 'sch-admin-2', 'SCH-Admin-2', '1234', NULL, 2, 1, 7, '1', '1', '2018-03-19 07:25:56', '2018-04-15 16:50:11'),
(15, 'sch-admin-3', 'SCH-Admin-3', '1234', NULL, 2, 1, 7, '1', '1', '2018-03-23 02:08:28', '2018-04-15 16:50:18'),
(16, 'mdlz-admin-1', 'MDLZ-Admin-1', '1234', NULL, 2, 1, 8, '1', '1', '2018-03-27 23:09:04', '2018-04-15 16:50:36'),
(17, 'mdlz-admin-2', 'MDLZ-Admin-2', '1234', NULL, 2, 1, 8, '1', '1', '2018-03-27 23:09:04', '2018-04-15 16:50:43'),
(18, 'mdlz-admin-3', 'MDLZ-Admin-3', '1234', NULL, 2, 2, 8, '1', '1', '2018-03-27 23:09:04', '2018-04-15 16:50:54');

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
(13, '2018_03_08_074209_create_master_driver_table', 1),
(14, '2018_03_08_074330_create_master_tc_table', 1),
(15, '2018_03_08_074344_create_master_project_table', 1),
(16, '2018_03_08_074354_create_master_vehicle_table', 1),
(17, '2018_03_08_074531_create_user_management_table', 1),
(18, '2018_03_08_074616_create_user_group_table', 1),
(19, '2018_03_12_064949_create_form_table', 2),
(20, '2018_03_12_065117_create_transaction_table', 2),
(21, '2018_03_12_065130_create_transaction_history_table', 2),
(22, '2018_03_12_083901_create_purpose_table', 3),
(23, '2018_03_26_035845_create_master_phone_table', 4),
(24, '2018_03_28_033755_create_master_status_table', 5),
(25, '2018_03_28_095350_create_master_location_table', 6),
(26, '2018_04_26_035844_create_master_asal_table', 7),
(27, '2018_04_26_035845_create_master_tujuan_table', 7),
(28, '2018_04_26_035846_create_master_name_table', 7);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'lutfi', 'lutfi.febrianto@gmail.com', '$2y$10$5qSWQLDNChSgSfiSDlxmnOy/HEFoG0I5Dix3FBPjSBS4YpbIA68Le', 'n4WQrwYtOjBXwHpCpYNi9DZvBQlY4DMsJ0z27DeXNjDbfpj1IffUCrvTJGRA', '2018-03-08 02:49:19', '2018-03-08 02:49:19'),
(2, 'asd', 'asd@gmail.com', '$2y$10$ckiDXVSoVqCiU.k.DajxB.dKP7vKXLzoyAEVNY2.6wt7edNOkt4si', 'eJHBrvf9DBsfmnVBhEQhEmpOaakb13JMlX5QhIKCZLLjWM3XHDxqqlQhgcwC', '2018-03-08 02:54:55', '2018-03-08 02:54:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_user`
--
ALTER TABLE `cms_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dms_form`
--
ALTER TABLE `dms_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dms_master_asal`
--
ALTER TABLE `dms_master_asal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dms_master_location`
--
ALTER TABLE `dms_master_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dms_master_name`
--
ALTER TABLE `dms_master_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dms_master_phone`
--
ALTER TABLE `dms_master_phone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dms_master_plat`
--
ALTER TABLE `dms_master_plat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dms_master_project`
--
ALTER TABLE `dms_master_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dms_master_status`
--
ALTER TABLE `dms_master_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dms_master_tc`
--
ALTER TABLE `dms_master_tc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dms_master_tujuan`
--
ALTER TABLE `dms_master_tujuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dms_master_vehicle`
--
ALTER TABLE `dms_master_vehicle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dms_purpose`
--
ALTER TABLE `dms_purpose`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dms_transaction`
--
ALTER TABLE `dms_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dms_transaction_history`
--
ALTER TABLE `dms_transaction_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dms_user_group`
--
ALTER TABLE `dms_user_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dms_user_management`
--
ALTER TABLE `dms_user_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- AUTO_INCREMENT for table `cms_user`
--
ALTER TABLE `cms_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dms_form`
--
ALTER TABLE `dms_form`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `dms_master_asal`
--
ALTER TABLE `dms_master_asal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `dms_master_location`
--
ALTER TABLE `dms_master_location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dms_master_name`
--
ALTER TABLE `dms_master_name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `dms_master_phone`
--
ALTER TABLE `dms_master_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `dms_master_plat`
--
ALTER TABLE `dms_master_plat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `dms_master_project`
--
ALTER TABLE `dms_master_project`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dms_master_status`
--
ALTER TABLE `dms_master_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dms_master_tc`
--
ALTER TABLE `dms_master_tc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `dms_master_tujuan`
--
ALTER TABLE `dms_master_tujuan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `dms_master_vehicle`
--
ALTER TABLE `dms_master_vehicle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dms_purpose`
--
ALTER TABLE `dms_purpose`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dms_transaction`
--
ALTER TABLE `dms_transaction`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `dms_transaction_history`
--
ALTER TABLE `dms_transaction_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT for table `dms_user_group`
--
ALTER TABLE `dms_user_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dms_user_management`
--
ALTER TABLE `dms_user_management`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
