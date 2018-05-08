-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2018 at 10:57 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
(115, 'DMS11522614907', 'B1234CIB', 'Felicia', 1, 2, NULL, 'Bogor', '085718841359', 'Container 20''', 'DHL', 'A1234', '7', '2018-04-01 09:35:07', '1', '2018-04-18 16:50:48', NULL),
(116, 'DMS11522614998', 'F3325CIB', 'Yudhi', 1, 2, NULL, 'Malaysia', '085716423138', 'Van / L300', 'SML', 'A1444', '8', '2018-04-01 09:36:38', '1', '2018-04-18 16:51:03', NULL),
(117, 'DMS21522615084', 'F1123CIB', 'Rani', 1, 2, NULL, 'Bandung', '085718841359', 'Fuso', 'SPILL', 'A1455', '8', '2018-04-01 09:38:04', '1', '2018-04-18 16:51:10', NULL),
(120, 'DMS11522615629', 'F1123DB', 'Fakih', 1, 1, 'Medan', NULL, '085718841359', 'Container 20''', 'DHL', 'A098+', '7', '2018-04-01 09:47:09', '1', '2018-04-18 03:03:44', NULL),
(143, 'DMS11523368679', 'F3361BKD', 'Roni', 1, 1, 'Bogor', NULL, '085718841359', 'Wing-Box', 'DHL', 'A5122', '8', '2018-04-10 02:57:59', '1', '2018-04-18 03:03:36', NULL),
(144, 'DMS21523370851', 'F6543TR', 'Oman', 1, 1, 'Bogor', NULL, '085716423138', 'CDE / CD4', 'SYAKA', NULL, '7', '2018-04-10 03:34:11', '1', '2018-04-18 03:03:29', NULL),
(145, 'DMS21523370887', 'F6543TR', 'Komara', 1, 2, NULL, 'Gondangdia', '085718841359', 'CDE / CD4', 'SML', NULL, '7', '2018-04-10 03:34:47', '1', '2018-04-18 16:51:17', NULL),
(147, 'DMS11523645650', 'F1123RA', 'Felicia', 1, 1, 'Bogor', NULL, '089634848272', 'Van / L300', 'SPILL', 'A134EE', '8', '2018-04-13 07:54:10', '1', '2018-04-17 16:44:28', NULL),
(148, 'DMS21523932700', 'F1123RA', 'Riri', 1, 2, NULL, 'Jakarta', '085718888888', 'CDE / CD4', 'SYAKA', 'A1444', '8', '2018-04-16 15:38:20', '1', '2018-04-17 16:42:23', NULL),
(150, 'DMS11523933866', 'F1123RA', 'Riyon', 1, 1, 'Medan', NULL, '089634848272', 'Van / L300', 'SYAKA', 'A1234TT', '8', '2018-04-16 15:57:46', '1', '2018-04-17 16:44:34', NULL),
(151, 'DMS11523933898', 'F1233RT', 'Omen', 1, 1, 'Malaysia', NULL, '085716423138', 'Fuso', 'SPILL', 'A1234', '7', '2018-04-16 15:58:18', '13', '2018-04-17 17:13:03', NULL),
(152, 'DMS11523933943', 'F1123RE', 'Rida', 1, 1, 'Malaysia', NULL, '0877788987898', 'Wing-Box', 'SYAKA', 'A1444', '7', '2018-04-16 15:59:03', '1', '2018-04-17 16:44:58', NULL),
(154, 'DMS11523934017', 'F1233RT', 'Rema', 1, 1, 'Medan', NULL, '085716423138', 'Tronton', 'DHL', 'A1444', '7', '2018-04-16 16:00:17', '13', '2018-04-17 17:13:20', NULL),
(157, 'DMS21523934290', 'F6543TR', 'Faqoh', 1, 2, NULL, 'Jakarta', '089635675676', 'CDD / CD6', 'SYAKA', 'A1234TT', '7', '2018-04-16 16:04:50', '1', '2018-04-17 16:42:39', NULL),
(159, 'DMS21523934397', 'F1233RT', 'Fakun', 1, 2, NULL, 'Bandung', '085718888888', 'Wing-Box', 'SYAKA', 'A134EE', '7', '2018-04-16 16:06:38', '1', '2018-04-17 16:42:51', NULL),
(160, 'DMS21523934457', 'F1233RT', 'Rama', 1, 2, NULL, 'Jakarta', '085718888888', 'Van / L300', 'SPILL', 'A1234TT', '7', '2018-04-16 16:07:37', '1', '2018-04-17 16:43:14', NULL),
(174, 'DMS11524072936', 'F1233RT', 'af', 1, 2, 'f', 'f', 'f', 'Fuso', 'DHL', 'f', '7', '2018-04-18 20:35:36', '1', '2018-04-18 20:37:02', NULL),
(175, 'DMS11524072950', 'f', 'f', 1, 2, 'f', 'f', 'f', 'Fuso', 'DHL', 'f', '7', '2018-04-18 20:35:50', '1', '2018-04-18 20:37:10', NULL),
(176, 'DMS11524072963', 'f', 'f', 1, 2, 'f', 'f', 'f', 'Fuso', 'DHL', 'f', '7', '2018-04-18 20:36:03', '1', '2018-04-18 20:37:17', NULL);

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
(20, 'Malaysia', '1', NULL, '2018-04-16 16:07:38', '2018-04-16 16:07:38'),
(26, 'Medan', '1', NULL, '2018-04-16 16:10:41', '2018-04-16 16:10:41'),
(27, 'Bogor', '13', NULL, '2018-04-16 17:08:47', '2018-04-16 17:08:47'),
(28, 'Bandung', '1', NULL, '2018-04-17 16:41:31', '2018-04-17 16:41:31'),
(29, 'Tebet', '1', NULL, '2018-04-17 23:30:59', '2018-04-17 23:30:59'),
(30, 'f', '1', NULL, '2018-04-18 17:48:38', '2018-04-18 17:48:38'),
(31, 'e', '1', NULL, '2018-04-18 17:48:56', '2018-04-18 17:48:56');

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
(1, 'MUF-1', 7, '1', '', '2018-03-28 09:57:16', '2018-04-18 08:48:48'),
(2, 'MUF-2', 8, '1', '', '2018-03-28 09:57:16', '2018-04-18 08:48:55'),
(3, 'MUF-1', 8, '1', '1', '2018-03-29 04:26:33', '2018-04-18 08:49:10'),
(4, 'MUF-2', 7, '1', NULL, '2018-03-29 00:56:10', '2018-04-18 08:49:16');

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
(10, 'Yudhi', '1', NULL, '2018-04-16 15:55:18', '2018-04-16 15:55:18'),
(12, 'Oman', '1', NULL, '2018-04-16 15:58:18', '2018-04-16 15:58:18'),
(16, 'Koere', '1', NULL, '2018-04-16 16:01:18', '2018-04-16 16:01:18'),
(17, 'Fakih', '1', NULL, '2018-04-16 16:01:58', '2018-04-16 16:01:58'),
(21, 'Faqoh', '1', NULL, '2018-04-16 16:04:51', '2018-04-16 16:04:51'),
(22, 'Fasah', '1', NULL, '2018-04-16 16:05:47', '2018-04-16 16:05:47'),
(23, 'Fakun', '1', NULL, '2018-04-16 16:06:38', '2018-04-16 16:06:38'),
(24, 'Rama', '1', NULL, '2018-04-16 16:07:38', '2018-04-16 16:07:38'),
(25, 'Roni', '1', NULL, '2018-04-16 16:08:04', '2018-04-16 16:08:04'),
(27, 'Riyon', '1', NULL, '2018-04-16 16:08:43', '2018-04-16 16:08:43'),
(30, 'Rani', '1', NULL, '2018-04-16 16:10:26', '2018-04-16 16:10:26'),
(31, 'Riri', '1', NULL, '2018-04-16 16:10:41', '2018-04-16 16:10:41'),
(32, 'Komara', '13', NULL, '2018-04-16 16:26:18', '2018-04-16 16:26:18'),
(33, 'Felicia', '13', NULL, '2018-04-16 17:08:47', '2018-04-16 17:08:47'),
(34, 'Fakur', '2', NULL, '2018-04-17 16:39:13', '2018-04-17 16:39:13'),
(35, 'Rida', '1', NULL, '2018-04-17 16:44:58', '2018-04-17 16:44:58'),
(36, 'Omen', '1', NULL, '2018-04-17 16:45:04', '2018-04-17 16:45:04'),
(37, 'Rema', '13', NULL, '2018-04-17 17:13:21', '2018-04-17 17:13:21'),
(38, 'Syahrul', '1', NULL, '2018-04-17 23:30:59', '2018-04-17 23:30:59'),
(39, 'Anang', '1', NULL, '2018-04-18 17:12:04', '2018-04-18 17:12:04'),
(40, 'f', '1', NULL, '2018-04-18 17:48:38', '2018-04-18 17:48:38'),
(41, 'e', '1', NULL, '2018-04-18 17:48:56', '2018-04-18 17:48:56'),
(42, 'Suhe', '1', NULL, '2018-04-18 17:56:26', '2018-04-18 17:56:26');

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
(68, '085716423138', '1', NULL, '2018-04-16 16:00:17', '2018-04-16 16:00:17'),
(75, '089635675676', '1', NULL, '2018-04-16 16:05:47', '2018-04-16 16:05:47'),
(77, '085718888888', '1', NULL, '2018-04-16 16:07:37', '2018-04-16 16:07:37'),
(82, '089634848272', '1', NULL, '2018-04-16 16:10:08', '2018-04-16 16:10:08'),
(86, '085718841359', '13', NULL, '2018-04-16 17:08:47', '2018-04-16 17:08:47'),
(89, '082112345432', '1', NULL, '2018-04-17 23:30:59', '2018-04-17 23:30:59'),
(90, '1', '1', NULL, '2018-04-18 17:48:38', '2018-04-18 17:48:38'),
(91, '081222218234', '1', NULL, '2018-04-18 17:56:26', '2018-04-18 17:56:26'),
(92, 'f', '2', NULL, '2018-04-18 20:35:36', '2018-04-18 20:35:36');

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
(101, 'F1123RA', '1', NULL, '2018-04-16 15:57:46', '2018-04-16 15:57:46'),
(102, 'F1233RT', '1', NULL, '2018-04-16 15:58:18', '2018-04-16 15:58:18'),
(103, 'F1123RE', '1', NULL, '2018-04-16 15:59:03', '2018-04-16 15:59:03'),
(104, 'F8823TT', '1', NULL, '2018-04-16 15:59:42', '2018-04-16 15:59:42'),
(106, 'F6543TR', '1', NULL, '2018-04-16 16:01:18', '2018-04-16 16:01:18'),
(108, 'F9923DB', '1', NULL, '2018-04-16 16:02:35', '2018-04-16 16:02:35'),
(109, 'F1123RA', '1', NULL, '2018-04-16 16:02:59', '2018-04-16 16:02:59'),
(111, 'F6543TR', '1', NULL, '2018-04-16 16:04:51', '2018-04-16 16:04:51'),
(132, 'B6053PDI', '1', NULL, '2018-04-17 23:30:59', '2018-04-17 23:30:59'),
(133, 'F3361BKD', '1', NULL, '2018-04-18 03:03:36', '2018-04-18 03:03:36'),
(134, 'F1123DB', '1', NULL, '2018-04-18 03:03:44', '2018-04-18 03:03:44'),
(135, 'B1234CIB', '1', NULL, '2018-04-18 16:50:48', '2018-04-18 16:50:48'),
(136, 'F3325CIB', '1', NULL, '2018-04-18 16:51:03', '2018-04-18 16:51:03'),
(137, 'F1123CIB', '1', NULL, '2018-04-18 16:51:10', '2018-04-18 16:51:10'),
(138, 'F', '1', NULL, '2018-04-18 17:48:38', '2018-04-18 17:48:38'),
(139, 'E', '1', NULL, '2018-04-18 17:48:56', '2018-04-18 17:48:56'),
(140, 'FF1`F`F`', '1', NULL, '2018-04-18 17:53:28', '2018-04-18 17:53:28'),
(141, 'B6125VAX', '1', NULL, '2018-04-18 17:56:26', '2018-04-18 17:56:26');

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
(11, 'Bogor', '1', NULL, '2018-04-16 16:00:18', '2018-04-16 16:00:18'),
(24, 'Bandung', '1', NULL, '2018-04-16 16:10:26', '2018-04-16 16:10:26'),
(26, 'Gondangdia', '13', NULL, '2018-04-16 16:26:18', '2018-04-16 16:26:18'),
(27, 'Jakarta', '13', NULL, '2018-04-16 17:08:47', '2018-04-16 17:08:47'),
(28, 'Malaysia', '1', NULL, '2018-04-17 16:41:54', '2018-04-17 16:41:54'),
(29, 'f', '1', NULL, '2018-04-18 17:48:38', '2018-04-18 17:48:38'),
(30, 'e', '1', NULL, '2018-04-18 17:48:56', '2018-04-18 17:48:56'),
(31, 'Ciledug', '1', NULL, '2018-04-18 17:56:26', '2018-04-18 17:56:26');

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
(9, 'Container 20''', '1', NULL, '2018-04-06 08:02:10', '2018-04-09 06:41:03'),
(10, 'Container 40''', '1', NULL, '2018-04-06 08:02:18', '2018-04-09 06:41:05'),
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
(94, 'DMS11522614907', '2', '4', NULL, 'Apr 08, 18 21:55:15', '22:55:53 16/Apr/2018', '2018-04-01 16:35:07', 'Apr 10, 18 01:00:20', 0, '2018-04-01 09:35:07', '1', '2018-04-17 16:41:12', '1'),
(95, 'DMS11522614998', '2', '2', '15:21:00', 'Apr 04, 18 1:15:43', '', '2018-04-01 16:36:38', '2018-04-02 03:21:57', 0, '2018-04-01 09:36:38', '1', '2018-04-10 02:40:17', '1'),
(96, 'DMS21522615084', '2', '5', NULL, 'Apr 04, 18 2:15:33', '22:56:26 16/Apr/2018', '2018-04-01 16:38:04', NULL, 5, '2018-04-01 09:38:04', '1', '2018-04-18 16:30:14', '1'),
(99, 'DMS11522615629', '1', '3', NULL, 'Apr 04, 18 13:42:03', '16:13:30 13/Apr/2018', '2018-04-01 16:47:09', 'Apr 13, 18 16:13:30', 0, '2018-04-01 09:47:09', '1', '2018-04-16 17:18:50', '1'),
(119, 'DMS11523368679', NULL, '1', NULL, 'Apr 10, 18 09:57:59', NULL, 'Apr 10, 18 09:57:59', NULL, NULL, '2018-04-10 02:58:00', '1', '2018-04-16 16:08:04', '1'),
(120, 'DMS21523370851', '1', '6', NULL, 'Apr 10, 18 10:34:11', '10:20:18 17/Apr/2018', 'Apr 10, 18 10:34:11', 'Apr 17, 18 10:20:18', NULL, '2018-04-10 03:34:11', '1', '2018-04-17 17:20:18', '1'),
(121, 'DMS21523370887', NULL, '1', NULL, 'Apr 10, 18 10:34:47', NULL, 'Apr 10, 18 10:34:47', NULL, NULL, '2018-04-10 03:34:47', '1', '2018-04-17 16:42:07', '1'),
(123, 'DMS11523645650', NULL, '1', '23:03:00', 'Apr 13, 18 14:54:10', NULL, 'Apr 13, 18 14:54:10', NULL, NULL, '2018-04-13 07:54:10', '1', '2018-04-16 16:09:43', '1'),
(124, 'DMS21523932700', NULL, '1', NULL, 'Apr 16, 18 22:38:20', NULL, 'Apr 16, 18 22:38:20', NULL, NULL, '2018-04-16 15:38:20', '1', '2018-04-16 16:10:41', '1'),
(126, 'DMS11523933866', '1', '3', NULL, 'Apr 16, 18 22:57:46', '23:08:50 16/Apr/2018', 'Apr 16, 18 22:57:46', NULL, NULL, '2018-04-16 15:57:46', '1', '2018-04-16 16:08:50', '1'),
(127, 'DMS11523933898', NULL, '1', NULL, 'Apr 16, 18 22:58:18', NULL, 'Apr 16, 18 22:58:18', NULL, NULL, '2018-04-16 15:58:18', '1', '2018-04-17 17:13:03', '13'),
(128, 'DMS11523933943', NULL, '1', NULL, 'Apr 16, 18 22:59:03', NULL, 'Apr 16, 18 22:59:03', NULL, NULL, '2018-04-16 15:59:03', '1', '2018-04-17 16:44:58', '1'),
(130, 'DMS11523934017', NULL, '1', NULL, 'Apr 16, 18 23:00:17', NULL, 'Apr 16, 18 23:00:17', NULL, NULL, '2018-04-16 16:00:17', '1', '2018-04-17 17:13:20', '13'),
(133, 'DMS21523934290', NULL, '1', NULL, 'Apr 16, 18 23:04:50', NULL, 'Apr 16, 18 23:04:50', NULL, NULL, '2018-04-16 16:04:50', '1', '2018-04-17 16:42:39', '1'),
(135, 'DMS21523934397', NULL, '1', NULL, 'Apr 16, 18 23:06:37', NULL, 'Apr 16, 18 23:06:37', NULL, NULL, '2018-04-16 16:06:38', '1', '2018-04-17 16:42:51', '1'),
(136, 'DMS21523934457', NULL, '1', NULL, 'Apr 16, 18 23:07:37', NULL, 'Apr 16, 18 23:07:37', NULL, NULL, '2018-04-16 16:07:37', '1', '2018-04-17 16:43:14', '1'),
(152, 'DMS11524072936', NULL, '1', NULL, 'Apr 18, 18 13:35:36', NULL, 'Apr 18, 18 13:35:36', NULL, NULL, '2018-04-18 20:35:36', '2', '2018-04-18 20:37:02', '1'),
(153, 'DMS11524072950', NULL, '1', NULL, 'Apr 18, 18 13:35:50', NULL, 'Apr 18, 18 13:35:50', NULL, NULL, '2018-04-18 20:35:50', '2', '2018-04-18 20:37:10', '1'),
(154, 'DMS11524072963', NULL, '1', NULL, 'Apr 18, 18 13:36:03', NULL, 'Apr 18, 18 13:36:03', NULL, NULL, '2018-04-18 20:36:03', '2', '2018-04-18 20:37:17', '1');

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
(379, 'DMS11522614907', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-16 17:08:47', '13', '2018-04-16 17:08:47', NULL),
(380, 'DMS11523645650', NULL, NULL, '23:03:00', NULL, NULL, NULL, NULL, NULL, '2018-04-17 08:05:26', '1', '2018-04-17 08:05:26', NULL),
(381, 'DMS21523370851', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 08:21:12', '1', '2018-04-17 08:21:12', NULL),
(382, 'DMS21523370851', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 08:21:25', '1', '2018-04-17 08:21:25', NULL),
(383, 'DMS21523370851', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 08:21:57', '1', '2018-04-17 08:21:57', NULL),
(384, 'DMS21523370851', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 08:22:16', '1', '2018-04-17 08:22:16', NULL),
(385, 'DMS11522615629', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 08:23:14', '1', '2018-04-17 08:23:14', NULL),
(386, 'DMS11522615629', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 08:23:29', '1', '2018-04-17 08:23:29', NULL),
(387, 'DMS21523942697', NULL, '1', NULL, 'Apr 17, 18 01:24:57', NULL, 'Apr 17, 18 01:24:57', NULL, NULL, '2018-04-17 08:24:57', '1', '2018-04-17 08:24:57', NULL),
(388, 'DMS11523943177', NULL, '1', NULL, 'Apr 17, 18 01:32:57', NULL, 'Apr 17, 18 01:32:57', NULL, NULL, '2018-04-17 08:32:58', '2', '2018-04-17 08:32:58', NULL),
(389, 'DMS21523972353', NULL, '1', NULL, 'Apr 17, 18 09:39:13', NULL, 'Apr 17, 18 09:39:13', NULL, NULL, '2018-04-17 16:39:13', '2', '2018-04-17 16:39:13', NULL),
(390, 'DMS11522614907', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:41:12', '1', '2018-04-17 16:41:12', NULL),
(391, 'DMS11522614998', '2', NULL, '15:21:00', NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:41:18', '1', '2018-04-17 16:41:18', NULL),
(392, 'DMS21522615084', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:41:31', '1', '2018-04-17 16:41:31', NULL),
(393, 'DMS21522615084', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:41:36', '1', '2018-04-17 16:41:36', NULL),
(394, 'DMS11522614907', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:41:46', '1', '2018-04-17 16:41:46', NULL),
(395, 'DMS11522614998', '2', NULL, '15:21:00', NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:41:54', '1', '2018-04-17 16:41:54', NULL),
(396, 'DMS21522615084', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:42:03', '1', '2018-04-17 16:42:03', NULL),
(397, 'DMS21523370887', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:42:07', '1', '2018-04-17 16:42:07', NULL),
(398, 'DMS21523370887', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:42:16', '1', '2018-04-17 16:42:16', NULL),
(399, 'DMS21523932700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:42:23', '1', '2018-04-17 16:42:23', NULL),
(400, 'DMS21523370887', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:42:27', '1', '2018-04-17 16:42:27', NULL),
(401, 'DMS21523932700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:42:33', '1', '2018-04-17 16:42:33', NULL),
(402, 'DMS21523934290', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:42:39', '1', '2018-04-17 16:42:39', NULL),
(403, 'DMS21523934290', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:42:43', '1', '2018-04-17 16:42:43', NULL),
(404, 'DMS21523934397', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:42:51', '1', '2018-04-17 16:42:51', NULL),
(405, 'DMS21523934397', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:42:55', '1', '2018-04-17 16:42:55', NULL),
(406, 'DMS21523932700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:43:00', '1', '2018-04-17 16:43:00', NULL),
(407, 'DMS21523934397', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:43:08', '1', '2018-04-17 16:43:08', NULL),
(408, 'DMS21523934457', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:43:14', '1', '2018-04-17 16:43:14', NULL),
(409, 'DMS21523934457', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:43:20', '1', '2018-04-17 16:43:20', NULL),
(410, 'DMS21523934457', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:43:23', '1', '2018-04-17 16:43:23', NULL),
(411, 'DMS21523942697', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:43:29', '1', '2018-04-17 16:43:29', NULL),
(412, 'DMS21523972353', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:43:35', '1', '2018-04-17 16:43:35', NULL),
(413, 'DMS11522615629', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:44:04', '1', '2018-04-17 16:44:04', NULL),
(414, 'DMS11523368679', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:44:09', '1', '2018-04-17 16:44:09', NULL),
(415, 'DMS21523370851', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:44:17', '1', '2018-04-17 16:44:17', NULL),
(416, 'DMS21523370851', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:44:21', '1', '2018-04-17 16:44:21', NULL),
(417, 'DMS11523645650', NULL, NULL, '23:03:00', NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:44:28', '1', '2018-04-17 16:44:28', NULL),
(418, 'DMS11523933866', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:44:35', '1', '2018-04-17 16:44:35', NULL),
(419, 'DMS11523933898', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:44:43', '1', '2018-04-17 16:44:43', NULL),
(420, 'DMS11523933898', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:44:48', '1', '2018-04-17 16:44:48', NULL),
(421, 'DMS11523933898', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:44:52', '1', '2018-04-17 16:44:52', NULL),
(422, 'DMS11523933943', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:44:58', '1', '2018-04-17 16:44:58', NULL),
(423, 'DMS11523934017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:45:04', '1', '2018-04-17 16:45:04', NULL),
(424, 'DMS11523934017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:45:08', '1', '2018-04-17 16:45:08', NULL),
(425, 'DMS11523943177', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 16:45:13', '1', '2018-04-17 16:45:13', NULL),
(426, 'DMS11523973146', NULL, '1', NULL, 'Apr 17, 18 09:52:26', NULL, 'Apr 17, 18 09:52:26', NULL, NULL, '2018-04-17 16:52:26', '1', '2018-04-17 16:52:26', NULL),
(427, 'DMS11523933898', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 17:13:03', '13', '2018-04-17 17:13:03', NULL),
(428, 'DMS11523934017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-17 17:13:21', '13', '2018-04-17 17:13:21', NULL),
(429, 'DMS21523370851', NULL, '3', NULL, NULL, '10:14:54 17/Apr/2018', NULL, NULL, NULL, '2018-04-17 17:14:54', '1', '2018-04-17 17:14:54', NULL),
(430, 'DMS21523370851', NULL, '4', NULL, NULL, '10:19:29 17/Apr/2018', NULL, NULL, NULL, '2018-04-17 17:19:29', '13', '2018-04-17 17:19:29', NULL),
(431, 'DMS21523370851', NULL, '5', NULL, NULL, '10:19:48 17/Apr/2018', NULL, NULL, NULL, '2018-04-17 17:19:48', '13', '2018-04-17 17:19:48', NULL),
(432, 'DMS21523370851', NULL, '6', NULL, NULL, '10:20:18 17/Apr/2018', NULL, 'Apr 17, 18 10:20:18', NULL, '2018-04-17 17:20:18', '2', '2018-04-17 17:20:18', NULL),
(433, 'DMS11523997059', NULL, '1', NULL, 'Apr 17, 18 16:30:59', NULL, 'Apr 17, 18 16:30:59', NULL, NULL, '2018-04-17 23:30:59', '1', '2018-04-17 23:30:59', NULL),
(434, 'DMS11523997059', '3', NULL, '17:13:00', NULL, NULL, NULL, NULL, NULL, '2018-04-17 23:34:58', '1', '2018-04-17 23:34:58', NULL),
(435, 'DMS11523997059', NULL, '3', NULL, NULL, '16:35:11 17/Apr/2018', NULL, NULL, NULL, '2018-04-17 23:35:11', '1', '2018-04-17 23:35:11', NULL),
(436, 'DMS11523997059', '3', NULL, '17:13:00', NULL, NULL, NULL, NULL, NULL, '2018-04-17 23:36:17', '1', '2018-04-17 23:36:17', NULL),
(437, 'DMS11523997059', NULL, '4', NULL, NULL, '16:36:27 17/Apr/2018', NULL, NULL, NULL, '2018-04-17 23:36:27', '1', '2018-04-17 23:36:27', NULL),
(438, 'DMS11523997059', NULL, '5', NULL, NULL, '16:36:42 17/Apr/2018', NULL, NULL, NULL, '2018-04-17 23:36:42', '1', '2018-04-17 23:36:42', NULL),
(439, 'DMS11523997059', NULL, '6', NULL, NULL, '16:37:03 17/Apr/2018', NULL, 'Apr 17, 18 16:37:03', NULL, '2018-04-17 23:37:03', '1', '2018-04-17 23:37:03', NULL),
(440, 'DMS21523370851', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-18 03:03:29', '1', '2018-04-18 03:03:29', NULL),
(441, 'DMS11523368679', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-18 03:03:36', '1', '2018-04-18 03:03:36', NULL),
(442, 'DMS11522615629', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-18 03:03:44', '1', '2018-04-18 03:03:44', NULL),
(443, 'DMS21522615084', NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-18 00:07:12', '', '2018-04-18 09:07:12', NULL),
(444, 'dms21522615084', NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-18 01:24:52', '', '2018-04-18 10:24:52', NULL),
(445, 'DMS21522615084', NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-18 02:23:50', '', '2018-04-18 11:23:50', NULL),
(446, 'DMS21522615084', NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-18 02:26:44', '', '2018-04-18 11:26:44', NULL),
(447, 'DMS21522615084', NULL, '4', NULL, NULL, NULL, NULL, NULL, 5, '2018-04-18 02:36:49', '', '2018-04-18 11:36:49', NULL),
(448, 'dms21522615084', NULL, '5', NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-18 02:40:48', '', '2018-04-18 11:40:48', NULL),
(449, 'DMS11522614907', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-18 16:50:48', '1', '2018-04-18 16:50:48', NULL),
(450, 'DMS11522614907', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-18 16:50:54', '1', '2018-04-18 16:50:54', NULL),
(451, 'DMS11522614998', '2', NULL, '15:21:00', NULL, NULL, NULL, NULL, NULL, '2018-04-18 16:51:03', '1', '2018-04-18 16:51:03', NULL),
(452, 'DMS21522615084', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-18 16:51:10', '1', '2018-04-18 16:51:10', NULL),
(453, 'DMS21523370887', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-18 16:51:17', '1', '2018-04-18 16:51:17', NULL),
(454, 'DMS21523932700', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-18 16:51:22', '1', '2018-04-18 16:51:22', NULL),
(455, 'DMS21523934290', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-18 16:51:28', '1', '2018-04-18 16:51:28', NULL),
(456, 'DMS11524060724', NULL, '1', NULL, 'Apr 18, 18 10:12:04', NULL, 'Apr 18, 18 10:12:04', NULL, NULL, '2018-04-18 17:12:04', '1', '2018-04-18 17:12:04', NULL),
(457, 'DMS11524062918', NULL, '1', NULL, 'Apr 18, 18 10:48:38', NULL, 'Apr 18, 18 10:48:38', NULL, NULL, '2018-04-18 17:48:38', '1', '2018-04-18 17:48:38', NULL),
(458, 'DMS21524062936', NULL, '1', NULL, 'Apr 18, 18 10:48:56', NULL, 'Apr 18, 18 10:48:56', NULL, NULL, '2018-04-18 17:48:56', '1', '2018-04-18 17:48:56', NULL),
(459, 'DMS11524063193', NULL, '1', NULL, 'Apr 18, 18 10:53:13', NULL, 'Apr 18, 18 10:53:13', NULL, NULL, '2018-04-18 17:53:13', '1', '2018-04-18 17:53:13', NULL),
(460, 'DMS11524063208', NULL, '1', NULL, 'Apr 18, 18 10:53:28', NULL, 'Apr 18, 18 10:53:28', NULL, NULL, '2018-04-18 17:53:28', '1', '2018-04-18 17:53:28', NULL),
(461, 'DMS21524063386', NULL, '1', NULL, 'Apr 18, 18 10:56:26', NULL, 'Apr 18, 18 10:56:26', NULL, NULL, '2018-04-18 17:56:26', '1', '2018-04-18 17:56:26', NULL),
(462, 'DMS21524063408', NULL, '1', NULL, 'Apr 18, 18 10:56:48', NULL, 'Apr 18, 18 10:56:48', NULL, NULL, '2018-04-18 17:56:48', '1', '2018-04-18 17:56:48', NULL),
(463, 'DMS21524063421', NULL, '1', NULL, 'Apr 18, 18 10:57:01', NULL, 'Apr 18, 18 10:57:01', NULL, NULL, '2018-04-18 17:57:01', '1', '2018-04-18 17:57:01', NULL),
(464, 'DMS21524063386', '1', NULL, '10:50:00', NULL, NULL, NULL, NULL, NULL, '2018-04-18 17:57:48', '1', '2018-04-18 17:57:48', NULL),
(465, 'DMS21524063386', NULL, '3', NULL, NULL, '10:57:55 18/Apr/2018', NULL, NULL, NULL, '2018-04-18 17:57:55', '1', '2018-04-18 17:57:55', NULL),
(466, 'DMS21522615084', NULL, '4', NULL, NULL, NULL, NULL, NULL, 5, '2018-04-18 04:06:17', '', '2018-04-18 13:06:17', NULL),
(467, 'DMS21522615084', '2', '5', NULL, NULL, NULL, NULL, NULL, 5, '2018-04-18 04:15:53', '', '2018-04-18 13:15:53', NULL),
(468, 'DMS21522615084', '2', '4', NULL, 'Apr 04, 18 2:15:33', NULL, NULL, NULL, 5, '2018-04-18 04:17:18', '', '2018-04-18 13:17:18', NULL),
(469, 'DMS21522615084', '2', '5', NULL, 'Apr 04, 18 2:15:33', NULL, NULL, NULL, 5, '2018-04-18 04:17:30', '', '2018-04-18 13:17:30', NULL),
(470, 'DMS21522615084', '2', '4', NULL, 'Apr 04, 18 2:15:33', NULL, NULL, NULL, 5, '2018-04-18 04:20:39', '', '2018-04-18 13:20:39', NULL),
(471, 'DMS21522615084', '2', '5', NULL, 'Apr 04, 18 2:15:33', NULL, NULL, NULL, 5, '2018-04-18 04:20:44', '', '2018-04-18 13:20:44', NULL),
(472, 'DMS21522615084', '2', '4', NULL, 'Apr 04, 18 2:15:33', NULL, NULL, NULL, 5, '2018-04-18 04:22:48', '', '2018-04-18 13:22:48', NULL),
(473, 'DMS21522615084', '2', '5', NULL, 'Apr 04, 18 2:15:33', NULL, NULL, NULL, 5, '2018-04-18 04:23:09', '', '2018-04-18 13:23:09', NULL),
(474, 'dms21522615084', '2', '4', NULL, 'Apr 04, 18 2:15:33', NULL, NULL, NULL, NULL, '2018-04-18 04:27:43', '', '2018-04-18 13:27:43', NULL),
(475, 'dms21522615084', '2', '5', NULL, 'Apr 04, 18 2:15:33', NULL, NULL, NULL, NULL, '2018-04-18 04:28:39', '', '2018-04-18 13:28:39', NULL),
(476, 'DMS11524072936', NULL, '1', NULL, 'Apr 18, 18 13:35:36', NULL, 'Apr 18, 18 13:35:36', NULL, NULL, '2018-04-18 20:35:36', '2', '2018-04-18 20:35:36', NULL),
(477, 'DMS11524072950', NULL, '1', NULL, 'Apr 18, 18 13:35:50', NULL, 'Apr 18, 18 13:35:50', NULL, NULL, '2018-04-18 20:35:50', '2', '2018-04-18 20:35:50', NULL),
(478, 'DMS11524072963', NULL, '1', NULL, 'Apr 18, 18 13:36:03', NULL, 'Apr 18, 18 13:36:03', NULL, NULL, '2018-04-18 20:36:03', '2', '2018-04-18 20:36:03', NULL),
(479, 'DMS11524072936', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-18 20:37:02', '1', '2018-04-18 20:37:02', NULL),
(480, 'DMS11524072950', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-18 20:37:10', '1', '2018-04-18 20:37:10', NULL),
(481, 'DMS11524072963', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-18 20:37:17', '1', '2018-04-18 20:37:17', NULL),
(482, 'DMS21522615084', '2', '4', NULL, 'Apr 04, 18 2:15:33', NULL, NULL, NULL, 5, '2018-04-18 07:28:39', '', '2018-04-18 16:28:39', NULL),
(483, 'DMS21522615084', '2', '5', NULL, 'Apr 04, 18 2:15:33', NULL, NULL, NULL, 5, '2018-04-18 07:30:14', '', '2018-04-18 16:30:14', NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;
--
-- AUTO_INCREMENT for table `dms_master_asal`
--
ALTER TABLE `dms_master_asal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `dms_master_location`
--
ALTER TABLE `dms_master_location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `dms_master_name`
--
ALTER TABLE `dms_master_name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `dms_master_phone`
--
ALTER TABLE `dms_master_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `dms_master_plat`
--
ALTER TABLE `dms_master_plat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT for table `dms_transaction_history`
--
ALTER TABLE `dms_transaction_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;
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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
