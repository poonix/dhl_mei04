-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2018 at 11:48 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

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
(115, 'DMS11522614907', 'B 1234 CIB', 'Felicia', 1, 2, 'Bogor', NULL, '085718841359', 'Container 20\'', 'DHL', 'A1234', '7', '2018-04-01 09:35:07', '1', '2018-04-13 06:57:13', NULL),
(116, 'DMS11522614998', 'F 3322 CIB', 'Yudhi Prabowo', 1, 2, 'Malaysia', NULL, '085716423138', 'Van / L300', 'SiCepat', 'A1444', '8', '2018-04-01 09:36:38', '1', '2018-04-11 06:41:00', NULL),
(117, 'DMS21522615084', 'F 1123 CIB', 'Rina', 1, 2, NULL, 'Bandung', '085718841359', 'Fuso', 'TIKI', 'A1455', '7', '2018-04-01 09:38:04', '1', '2018-04-11 06:13:35', NULL),
(119, 'DMS11522667446', 'F 1123 RE', 'Riyan', 1, 1, '.', NULL, '085716423138', 'Tronton', 'JNE', 'A098+', '7', '2018-04-01 09:45:39', '1', '2018-04-13 08:07:00', NULL),
(120, 'DMS11522615629', 'F 1123 DB', 'Fakih', 1, 1, 'Medan', NULL, '085718841359', 'Container 20\'', 'DHL', 'A098+', '8', '2018-04-01 09:47:09', '1', '2018-04-13 08:06:52', NULL),
(123, 'DMS11522659432', 'F 6543 TR', 'Anditio', 1, 1, 'Jakarta', NULL, '085716423138', 'Big Mama / Yellow', 'TIKI', 'A98KK', '7', '2018-04-01 21:57:12', '1', '2018-04-11 06:13:52', NULL),
(143, 'DMS11523368679', 'F 3361 BKD', 'Roni', 1, 1, 'Bogor', NULL, '085718841359', 'Wing-Box', 'DHL', 'A5122', '7', '2018-04-10 02:57:59', '1', '2018-04-11 06:13:39', NULL),
(144, 'DMS21523370851', 'F 6543 TR', 'Oman', 1, 2, NULL, 'Bogor', '085716423138', 'CDE / CD4', 'JNE', NULL, '7', '2018-04-10 03:34:11', '1', '2018-04-11 06:13:55', NULL),
(145, 'DMS21523370887', 'F 6543 TR', 'Komara', 1, 2, NULL, 'Gondangdia', '085718841359', 'CDE / CD4', 'J&T', NULL, '7', '2018-04-10 03:34:47', '1', '2018-04-11 06:13:42', NULL),
(146, 'DMS11523640635', 'g', 'lutfi', 1, 1, 'Bogor', 'Jakarta', 'g', 'CDE / CD4', 'TIKI', 'g', '7', '2018-04-13 06:30:35', '1', '2018-04-13 06:30:35', NULL),
(147, 'DMS11523645650', 'F1123Ra', 'Felicia', 1, 1, 'Bogor', 'Jakarta', '089634848272', 'Van / L300', 'SiCepat', 'A134EE', '7', '2018-04-13 07:54:10', '1', '2018-04-13 07:54:10', NULL);

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
(4, '.', '1', NULL, '2018-04-13 08:07:00', '2018-04-13 08:07:00');

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
(4, 'Fakih', '1', NULL, '2018-04-13 08:06:52', '2018-04-13 08:06:52');

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
(57, 'g', '1', NULL, '2018-04-13 06:30:35', '2018-04-13 06:30:35');

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
(94, 'F 1123 DB', '1', NULL, '2018-04-13 08:06:52', '2018-04-13 08:06:52');

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
(3, 'TIKI', NULL, NULL, '2018-03-13 15:10:31', '2018-03-13 15:10:31'),
(4, 'JNE', NULL, NULL, '2018-03-13 15:10:31', '2018-03-13 15:10:31'),
(5, 'J&T', NULL, NULL, '2018-03-13 15:10:31', '2018-03-13 15:10:31'),
(6, 'SiCepat', NULL, NULL, '2018-03-13 15:10:31', '2018-03-13 15:10:31'),
(7, 'Ninja Express', '1', NULL, '2018-03-15 01:09:12', '2018-04-09 06:41:25'),
(8, 'JNT', '1', NULL, '2018-03-23 02:09:33', '2018-04-09 06:41:28');

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
(2, NULL, '1', NULL, '2018-04-13 06:58:43', '2018-04-13 06:58:43');

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
(94, 'DMS11522614907', '2', '3', NULL, 'Apr 08, 18 21:55:15', '13:52', '2018-04-01 16:35:07', 'Apr 10, 18 01:00:20', 0, '2018-04-01 09:35:07', '1', '2018-04-13 06:52:02', '1'),
(95, 'DMS11522614998', '2', '2', '15:21:00', 'Apr 04, 18 1:15:43', '', '2018-04-01 16:36:38', '2018-04-02 03:21:57', 0, '2018-04-01 09:36:38', '1', '2018-04-10 02:40:17', '1'),
(96, 'DMS21522615084', '2', '2', NULL, 'Apr 04, 18 2:15:33', '', '2018-04-01 16:38:04', NULL, 0, '2018-04-01 09:38:04', '1', '2018-04-10 02:40:15', '1'),
(98, 'DMS11522667446', '3', '6', '13:00:00', 'Apr 04, 18 4:45:32', '11:31', '2018-04-01 16:45:39', 'Apr 11, 18 11:31:07', 0, '2018-04-01 09:45:39', '1', '2018-04-12 11:21:36', '1'),
(99, 'DMS11522615629', '1', '6', NULL, 'Apr 04, 18 13:42:03', '16:13:30 13/Apr/2018', '2018-04-01 16:47:09', 'Apr 13, 18 16:13:30', 0, '2018-04-01 09:47:09', '1', '2018-04-13 09:13:30', '1'),
(102, 'DMS11522659432', '1', '6', NULL, 'Apr 04, 18 5:45:12', '09:43', '2018-04-02 04:57:12', 'Apr 10, 18 09:43:57', 0, '2018-04-01 21:57:12', '1', '2018-04-10 02:43:57', '1'),
(119, 'DMS11523368679', NULL, '1', NULL, 'Apr 10, 18 09:57:59', NULL, 'Apr 10, 18 09:57:59', NULL, NULL, '2018-04-10 02:58:00', '1', '2018-04-10 02:58:00', NULL),
(120, 'DMS21523370851', NULL, '1', NULL, 'Apr 10, 18 10:34:11', NULL, 'Apr 10, 18 10:34:11', NULL, NULL, '2018-04-10 03:34:11', '1', '2018-04-10 03:34:11', NULL),
(121, 'DMS21523370887', NULL, '1', NULL, 'Apr 10, 18 10:34:47', NULL, 'Apr 10, 18 10:34:47', NULL, NULL, '2018-04-10 03:34:47', '1', '2018-04-10 03:34:47', NULL),
(122, 'DMS11523640635', NULL, '1', NULL, 'Apr 13, 18 13:30:35', NULL, 'Apr 13, 18 13:30:35', NULL, NULL, '2018-04-13 06:30:35', '1', '2018-04-13 06:30:35', NULL),
(123, 'DMS11523645650', NULL, '1', NULL, 'Apr 13, 18 14:54:10', NULL, 'Apr 13, 18 14:54:10', NULL, NULL, '2018-04-13 07:54:10', '1', '2018-04-13 07:54:10', NULL);

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
(345, 'DMS11522615629', NULL, '6', NULL, NULL, '16:13:30 13/Apr/2018', NULL, 'Apr 13, 18 16:13:30', NULL, '2018-04-13 09:13:30', '1', '2018-04-13 09:13:30', NULL);

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
(2, 'security1', 'Sec.Cib', '1234', NULL, 3, 1, 7, '1', '1', '2018-03-09 02:54:37', '2018-04-09 06:39:05'),
(3, 'security2', 'Sec.Sby', '1234', NULL, 3, 2, 7, '1', '1', '2018-03-09 02:54:37', '2018-04-09 06:39:07'),
(4, 'admin1a', 'Adm.Cib.Sch', '1234', NULL, 2, 1, 7, '1', '1', '2018-03-19 07:25:56', '2018-04-09 06:39:09'),
(5, 'admin1b', 'Adm.Cib.Mon', '1234', NULL, 2, 1, 8, '1', '1', '2018-03-23 02:08:28', '2018-04-09 06:39:11'),
(6, 'admin2a', 'Adm.Sby.Sch', '1234', NULL, 2, 2, 7, '1', '1', '2018-03-19 07:25:56', '2018-04-09 06:39:13'),
(7, 'admin2b', 'Adm.Sby.Mon', '1234', NULL, 2, 2, 8, '1', '1', '2018-03-23 02:08:28', '2018-04-09 06:39:15'),
(8, 'checker1a', 'Chk.Cib.Sch', '1234', NULL, 4, 1, 7, '1', '1', '2018-03-27 23:09:04', '2018-04-09 06:39:18'),
(9, 'checker1b', 'Chk.Cib.Mon', '1234', NULL, 4, 1, 8, '1', '1', '2018-03-27 23:09:04', '2018-04-09 06:39:20'),
(10, 'checker2a', 'Chk.Sby.Sch', '1234', NULL, 4, 2, 7, '1', '1', '2018-03-27 23:09:04', '2018-04-09 06:39:22'),
(11, 'checker2b', 'Chk.Sby.Mon', '1234', NULL, 4, 2, 8, '1', '1', '2018-03-27 23:09:04', '2018-04-09 06:39:25');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `dms_master_asal`
--
ALTER TABLE `dms_master_asal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dms_master_location`
--
ALTER TABLE `dms_master_location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dms_master_name`
--
ALTER TABLE `dms_master_name`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dms_master_phone`
--
ALTER TABLE `dms_master_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `dms_master_plat`
--
ALTER TABLE `dms_master_plat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dms_master_tujuan`
--
ALTER TABLE `dms_master_tujuan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `dms_transaction_history`
--
ALTER TABLE `dms_transaction_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT for table `dms_user_group`
--
ALTER TABLE `dms_user_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dms_user_management`
--
ALTER TABLE `dms_user_management`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
