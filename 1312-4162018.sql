-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2018 at 08:11 AM
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
(115, 'DMS11522614907', 'B 1234 CIB', 'Andis', 1, 2, 'Bogor', NULL, '089634848272', 'Container 20''', 'DHL', 'A1234', '7', '2018-04-01 09:35:07', '4', '2018-04-13 18:13:16', NULL),
(116, 'DMS11522614998', 'F 3322 CIB', 'Iman', 1, 2, 'Malaysia', NULL, '085455765762', 'Van / L300', 'SiCepat', 'A1444', '8', '2018-04-01 09:36:38', '1', '2018-04-10 02:42:01', NULL),
(117, 'DMS21522615084', 'F 1123 CIB', 'Rina', 1, 2, NULL, 'Bandung', '080987773323', 'Fuso', 'TIKI', 'A1455', '7', '2018-04-01 09:38:04', '1', '2018-04-10 02:41:59', NULL),
(119, 'DMS11522667446', 'F 1123 RE', 'Riyans', 1, 1, 'Acehs', NULL, '086667676654', 'Fuso', 'TIKI', 'A0987', '8', '2018-04-01 09:45:39', '4', '2018-04-11 05:25:34', NULL),
(120, 'DMS11522615629', 'F 1123 DB', 'Fakih', 1, 1, 'Medan', NULL, '087778878211', 'Container 20''', 'DHL', 'A0988', '8', '2018-04-01 09:47:09', '1', '2018-04-10 02:42:10', NULL),
(123, 'DMS11522659432', 'F 6543 TR', 'Anditio', 1, 1, 'Jakarta', NULL, '089767867821', 'Big Mama / Yellow', 'TIKI', 'A98KK', '8', '2018-04-01 21:57:12', '4', '2018-04-13 16:08:23', NULL),
(143, 'DMS11523368679', 'F 3361 BKD', 'Ronis', 1, 1, 'Bogor', NULL, '0877788987898', 'Wing-Box', 'DHL', 'A5122', '7', '2018-04-10 02:57:59', '4', '2018-04-13 18:12:41', NULL),
(144, 'DMS11523370156', 'F 9999 MMA', 'Antos', 1, 1, 'Indonesia', NULL, '08999009899', 'CDE / CD4', 'TIKI', 'A987K', '7', '2018-04-10 17:22:36', '4', '2018-04-11 23:54:15', NULL),
(145, 'DMS11523370218', 'F 2121 KKD', 'Samir', 1, 1, 'Bogors', NULL, '0890989098', 'Van / L300', 'TIKI', NULL, '7', '2018-04-10 17:23:38', '4', '2018-04-13 16:09:26', NULL),
(146, 'DMS11523370296', 'F 1123 RE', 'Kodi', 1, 1, 'Jakarta', NULL, '085718888888', 'Van / L300', 'JNE', NULL, '7', '2018-04-10 17:24:56', '4', '2018-04-11 05:51:49', NULL),
(147, 'DMS11523370328', 'F 1233 RT', 'Lela', 1, 1, 'Palembang', NULL, '0877788987898', 'Big Mama / Yellow', 'JNE', NULL, '7', '2018-04-10 17:25:28', '4', '2018-04-11 21:26:45', NULL),
(148, 'DMS11523370375', 'F 9999 MMA', 'Kodira', 1, 1, 'Makasar', NULL, '085718888888', 'Fuso', 'JNE', NULL, '7', '2018-04-10 17:26:15', '4', '2018-04-11 23:54:32', NULL),
(149, 'DMS11523370430', 'F 9999 MMA', 'Komar', 1, 1, 'Bali', NULL, '089635675676', 'Container 20''', 'TIKI', NULL, '7', '2018-04-10 17:27:11', '4', '2018-04-11 05:52:42', NULL),
(150, 'DMS11523370470', 'F 6543 TR', 'Pedros', 1, 1, 'Cianjur', NULL, '085718888888', 'CDE / CD4', 'Ninja Express', NULL, '7', '2018-04-10 17:27:50', '4', '2018-04-13 03:59:01', NULL),
(151, 'DMS11523370507', 'F 6543 TR', 'Solih', 1, 1, 'Aceh', NULL, '0890989098', 'CDD / CD6', 'TIKI', NULL, '7', '2018-04-10 17:28:27', '1', '2018-04-10 17:28:27', NULL),
(152, 'DMS11523370595', 'F 8823 TT', 'Pebri', 1, 1, 'Bandung', NULL, '085718841359', 'Wing-Box', 'SiCepat', NULL, '7', '2018-04-10 17:29:55', '1', '2018-04-10 17:29:55', NULL),
(153, 'DMS21523370678', 'F 6543 TR', 'Kola', 1, 2, NULL, 'Manado', '089635675676', 'CDD / CD6', 'TIKI', NULL, '7', '2018-04-10 17:31:18', '1', '2018-04-10 17:31:18', NULL),
(154, 'DMS21523370716', 'F 3361 BKD', 'Deri', 1, 2, NULL, 'Kalimantan', '089635675676', 'Container 20''', 'JNE', NULL, '7', '2018-04-10 17:31:56', '1', '2018-04-10 17:31:56', NULL),
(155, 'DMS21523370766', 'F 9999 HSD', 'Toni', 1, 2, NULL, 'Aceh', '089634812342', 'Tronton', 'J&T', NULL, '7', '2018-04-10 17:32:46', '1', '2018-04-10 17:32:46', NULL),
(156, 'DMS21523370806', 'F 1233 RT', 'Ano', 1, 2, NULL, 'Bogor', '089634848272', 'CDD / CD6', 'TIKI', NULL, '7', '2018-04-10 17:33:26', '1', '2018-04-10 17:33:26', NULL),
(157, 'DMS21523370926', 'F 1233 RT', 'Fanda', 1, 2, NULL, 'Depok', '089634848272', 'CDD / CD6', 'TIKI', NULL, '7', '2018-04-10 17:35:26', '1', '2018-04-10 17:35:26', NULL),
(158, 'DMS21523370962', 'F 8823 TT', 'Poki', 1, 2, NULL, 'Jakarta', '089635675676', 'Wing-Box', 'TIKI', NULL, '7', '2018-04-10 17:36:02', '1', '2018-04-10 17:36:02', NULL),
(159, 'DMS21523370999', 'F 3361 BKD', 'Ronade', 1, 2, NULL, 'Manado', '0877788987898', 'CDE / CD4', 'JNE', NULL, '7', '2018-04-10 17:36:39', '1', '2018-04-10 17:36:39', NULL),
(160, 'DMS21523371040', 'F 8823 TT', 'Sonari', 1, 2, NULL, 'Papua', '089635675676', 'CDD / CD6', 'TIKI', NULL, '7', '2018-04-10 17:37:20', '1', '2018-04-10 17:37:20', NULL),
(161, 'DMS21523371086', 'F 3361 BKD', 'Foki', 1, 2, NULL, 'Jakarta', '089635675676', 'CDD / CD6', 'JNE', NULL, '7', '2018-04-10 17:38:06', '1', '2018-04-10 17:38:06', NULL);

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
(56, '08999009899', '1', NULL, '2018-04-10 17:22:36', '2018-04-10 17:22:36'),
(57, '0890989098', '1', NULL, '2018-04-10 17:23:38', '2018-04-10 17:23:38'),
(58, '089634812342', '1', NULL, '2018-04-10 17:32:46', '2018-04-10 17:32:46'),
(59, '086667676654', '4', NULL, '2018-04-10 23:04:29', '2018-04-10 23:04:29'),
(60, '089767867821', '4', NULL, '2018-04-11 05:36:57', '2018-04-11 05:36:57');

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
(55, 'F 1123 RE', '3', NULL, '2018-04-01 09:45:39', '2018-04-09 06:42:17'),
(56, 'F 9923 DB', '3', NULL, '2018-04-01 09:47:09', '2018-04-09 06:42:21'),
(57, 'F 6543 TR', '3', NULL, '2018-04-01 09:48:24', '2018-04-09 06:42:24'),
(58, 'F 8823 TT', '3', NULL, '2018-04-01 09:49:32', '2018-04-09 06:42:26'),
(61, 'F 1233 RT', '2', NULL, '2018-04-01 19:52:51', '2018-04-09 06:42:29'),
(67, 'B 1234 CIB', '1', NULL, '2018-04-09 17:27:02', '2018-04-09 17:27:02'),
(90, 'F 3361 BKD', '1', NULL, '2018-04-10 02:58:00', '2018-04-10 02:58:00'),
(91, 'F 9999 MMA', '1', NULL, '2018-04-10 17:22:36', '2018-04-10 17:22:36'),
(92, 'F 2121 KKD', '1', NULL, '2018-04-10 17:23:38', '2018-04-10 17:23:38'),
(93, 'F 9999 HSD', '1', NULL, '2018-04-10 17:32:46', '2018-04-10 17:32:46');

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
(94, 'DMS11522614907', '2', '2', NULL, 'Apr 08, 18 21:55:15', '', '2018-04-01 16:35:07', 'Apr 10, 18 01:00:20', 0, '2018-04-01 09:35:07', '1', '2018-04-13 18:13:16', '4'),
(95, 'DMS11522614998', '2', '2', '15:21:00', 'Apr 04, 18 1:15:43', '', '2018-04-01 16:36:38', '2018-04-02 03:21:57', 0, '2018-04-01 09:36:38', '1', '2018-04-10 02:40:17', '1'),
(96, 'DMS21522615084', '2', '2', NULL, 'Apr 04, 18 2:15:33', '', '2018-04-01 16:38:04', NULL, 0, '2018-04-01 09:38:04', '1', '2018-04-10 02:40:15', '1'),
(98, 'DMS11522667446', '1', '2', '13:00:00', 'Apr 04, 18 4:45:32', '', '2018-04-01 16:45:39', 'Apr 09, 18 23:28:29', 0, '2018-04-01 09:45:39', '1', '2018-04-11 05:25:35', '4'),
(99, 'DMS11522615629', '1', '2', NULL, 'Apr 04, 18 13:42:03', '', '2018-04-01 16:47:09', 'Apr 04, 18 13:42:21', 0, '2018-04-01 09:47:09', '1', '2018-04-10 02:40:40', '1'),
(102, 'DMS11522659432', '1', '6', NULL, 'Apr 04, 18 5:45:12', '09:43', '2018-04-02 04:57:12', 'Apr 10, 18 09:43:57', 0, '2018-04-01 21:57:12', '1', '2018-04-11 05:36:57', '4'),
(119, 'DMS11523368679', NULL, '1', NULL, 'Apr 10, 18 09:57:59', NULL, 'Apr 10, 18 09:57:59', NULL, NULL, '2018-04-10 02:58:00', '1', '2018-04-11 21:33:12', '4'),
(120, 'DMS11523370156', NULL, '1', NULL, 'Apr 10, 18 10:22:36', NULL, 'Apr 10, 18 10:22:36', NULL, NULL, '2018-04-10 17:22:36', '1', '2018-04-11 23:54:15', '4'),
(121, 'DMS11523370218', NULL, '1', NULL, 'Apr 10, 18 10:23:38', NULL, 'Apr 10, 18 10:23:38', NULL, NULL, '2018-04-10 17:23:38', '1', '2018-04-11 21:34:03', '4'),
(122, 'DMS11523370296', NULL, '1', NULL, 'Apr 10, 18 10:24:56', NULL, 'Apr 10, 18 10:24:56', NULL, NULL, '2018-04-10 17:24:56', '1', '2018-04-11 05:37:14', '4'),
(123, 'DMS11523370328', NULL, '1', NULL, 'Apr 10, 18 10:25:28', NULL, 'Apr 10, 18 10:25:28', NULL, NULL, '2018-04-10 17:25:28', '1', '2018-04-11 21:26:22', '4'),
(124, 'DMS11523370375', NULL, '1', NULL, 'Apr 10, 18 10:26:15', NULL, 'Apr 10, 18 10:26:15', NULL, NULL, '2018-04-10 17:26:15', '1', '2018-04-11 23:54:32', '4'),
(125, 'DMS11523370430', NULL, '1', NULL, 'Apr 10, 18 10:27:10', NULL, 'Apr 10, 18 10:27:10', NULL, NULL, '2018-04-10 17:27:11', '1', '2018-04-11 05:52:42', '4'),
(126, 'DMS11523370470', NULL, '1', NULL, 'Apr 10, 18 10:27:50', NULL, 'Apr 10, 18 10:27:50', NULL, NULL, '2018-04-10 17:27:50', '1', '2018-04-13 03:59:01', '4'),
(127, 'DMS11523370507', NULL, '1', NULL, 'Apr 10, 18 10:28:27', NULL, 'Apr 10, 18 10:28:27', NULL, NULL, '2018-04-10 17:28:28', '1', '2018-04-10 17:28:28', NULL),
(128, 'DMS11523370595', NULL, '1', NULL, 'Apr 10, 18 10:29:55', NULL, 'Apr 10, 18 10:29:55', NULL, NULL, '2018-04-10 17:29:56', '1', '2018-04-10 17:29:56', NULL),
(129, 'DMS21523370678', NULL, '1', NULL, 'Apr 10, 18 10:31:18', NULL, 'Apr 10, 18 10:31:18', NULL, NULL, '2018-04-10 17:31:18', '1', '2018-04-10 17:31:18', NULL),
(130, 'DMS21523370716', NULL, '1', NULL, 'Apr 10, 18 10:31:56', NULL, 'Apr 10, 18 10:31:56', NULL, NULL, '2018-04-10 17:31:56', '1', '2018-04-10 17:31:56', NULL),
(131, 'DMS21523370766', NULL, '1', NULL, 'Apr 10, 18 10:32:46', NULL, 'Apr 10, 18 10:32:46', NULL, NULL, '2018-04-10 17:32:46', '1', '2018-04-10 17:32:46', NULL),
(132, 'DMS21523370806', NULL, '1', NULL, 'Apr 10, 18 10:33:26', NULL, 'Apr 10, 18 10:33:26', NULL, NULL, '2018-04-10 17:33:26', '1', '2018-04-10 17:33:26', NULL),
(133, 'DMS21523370926', NULL, '1', NULL, 'Apr 10, 18 10:35:26', NULL, 'Apr 10, 18 10:35:26', NULL, NULL, '2018-04-10 17:35:26', '1', '2018-04-10 17:35:26', NULL),
(134, 'DMS21523370962', NULL, '1', NULL, 'Apr 10, 18 10:36:02', NULL, 'Apr 10, 18 10:36:02', NULL, NULL, '2018-04-10 17:36:02', '1', '2018-04-10 17:36:02', NULL),
(135, 'DMS21523370999', NULL, '1', NULL, 'Apr 10, 18 10:36:39', NULL, 'Apr 10, 18 10:36:39', NULL, NULL, '2018-04-10 17:36:39', '1', '2018-04-10 17:36:39', NULL),
(136, 'DMS21523371040', NULL, '1', NULL, 'Apr 10, 18 10:37:20', NULL, 'Apr 10, 18 10:37:20', NULL, NULL, '2018-04-10 17:37:20', '1', '2018-04-10 17:37:20', NULL),
(137, 'DMS21523371086', NULL, '1', NULL, 'Apr 10, 18 10:38:06', NULL, 'Apr 10, 18 10:38:06', NULL, NULL, '2018-04-10 17:38:06', '1', '2018-04-10 17:38:06', NULL);

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
(321, 'DMS11523370156', NULL, '1', NULL, 'Apr 10, 18 10:22:36', NULL, 'Apr 10, 18 10:22:36', NULL, NULL, '2018-04-10 17:22:36', '1', '2018-04-10 17:22:36', NULL),
(322, 'DMS11523370218', NULL, '1', NULL, 'Apr 10, 18 10:23:38', NULL, 'Apr 10, 18 10:23:38', NULL, NULL, '2018-04-10 17:23:38', '1', '2018-04-10 17:23:38', NULL),
(323, 'DMS11523370296', NULL, '1', NULL, 'Apr 10, 18 10:24:56', NULL, 'Apr 10, 18 10:24:56', NULL, NULL, '2018-04-10 17:24:56', '1', '2018-04-10 17:24:56', NULL),
(324, 'DMS11523370328', NULL, '1', NULL, 'Apr 10, 18 10:25:28', NULL, 'Apr 10, 18 10:25:28', NULL, NULL, '2018-04-10 17:25:28', '1', '2018-04-10 17:25:28', NULL),
(325, 'DMS11523370375', NULL, '1', NULL, 'Apr 10, 18 10:26:15', NULL, 'Apr 10, 18 10:26:15', NULL, NULL, '2018-04-10 17:26:15', '1', '2018-04-10 17:26:15', NULL),
(326, 'DMS11523370430', NULL, '1', NULL, 'Apr 10, 18 10:27:10', NULL, 'Apr 10, 18 10:27:10', NULL, NULL, '2018-04-10 17:27:11', '1', '2018-04-10 17:27:11', NULL),
(327, 'DMS11523370470', NULL, '1', NULL, 'Apr 10, 18 10:27:50', NULL, 'Apr 10, 18 10:27:50', NULL, NULL, '2018-04-10 17:27:50', '1', '2018-04-10 17:27:50', NULL),
(328, 'DMS11523370507', NULL, '1', NULL, 'Apr 10, 18 10:28:27', NULL, 'Apr 10, 18 10:28:27', NULL, NULL, '2018-04-10 17:28:28', '1', '2018-04-10 17:28:28', NULL),
(329, 'DMS11523370595', NULL, '1', NULL, 'Apr 10, 18 10:29:55', NULL, 'Apr 10, 18 10:29:55', NULL, NULL, '2018-04-10 17:29:56', '1', '2018-04-10 17:29:56', NULL),
(330, 'DMS21523370678', NULL, '1', NULL, 'Apr 10, 18 10:31:18', NULL, 'Apr 10, 18 10:31:18', NULL, NULL, '2018-04-10 17:31:18', '1', '2018-04-10 17:31:18', NULL),
(331, 'DMS21523370716', NULL, '1', NULL, 'Apr 10, 18 10:31:56', NULL, 'Apr 10, 18 10:31:56', NULL, NULL, '2018-04-10 17:31:56', '1', '2018-04-10 17:31:56', NULL),
(332, 'DMS21523370766', NULL, '1', NULL, 'Apr 10, 18 10:32:46', NULL, 'Apr 10, 18 10:32:46', NULL, NULL, '2018-04-10 17:32:46', '1', '2018-04-10 17:32:46', NULL),
(333, 'DMS21523370806', NULL, '1', NULL, 'Apr 10, 18 10:33:26', NULL, 'Apr 10, 18 10:33:26', NULL, NULL, '2018-04-10 17:33:26', '1', '2018-04-10 17:33:26', NULL),
(334, 'DMS21523370926', NULL, '1', NULL, 'Apr 10, 18 10:35:26', NULL, 'Apr 10, 18 10:35:26', NULL, NULL, '2018-04-10 17:35:26', '1', '2018-04-10 17:35:26', NULL),
(335, 'DMS21523370962', NULL, '1', NULL, 'Apr 10, 18 10:36:02', NULL, 'Apr 10, 18 10:36:02', NULL, NULL, '2018-04-10 17:36:02', '1', '2018-04-10 17:36:02', NULL),
(336, 'DMS21523370999', NULL, '1', NULL, 'Apr 10, 18 10:36:39', NULL, 'Apr 10, 18 10:36:39', NULL, NULL, '2018-04-10 17:36:39', '1', '2018-04-10 17:36:39', NULL),
(337, 'DMS21523371040', NULL, '1', NULL, 'Apr 10, 18 10:37:20', NULL, 'Apr 10, 18 10:37:20', NULL, NULL, '2018-04-10 17:37:20', '1', '2018-04-10 17:37:20', NULL),
(338, 'DMS21523371086', NULL, '1', NULL, 'Apr 10, 18 10:38:06', NULL, 'Apr 10, 18 10:38:06', NULL, NULL, '2018-04-10 17:38:06', '1', '2018-04-10 17:38:06', NULL),
(339, 'DMS11522667446', '2', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-10 23:04:29', '4', '2018-04-10 23:04:29', NULL),
(340, 'DMS11522667446', '2', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-10 23:05:38', '4', '2018-04-10 23:05:38', NULL),
(341, 'DMS11522667446', '2', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-10 23:10:19', '4', '2018-04-10 23:10:19', NULL),
(342, 'DMS11522667446', '2', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-10 23:10:38', '4', '2018-04-10 23:10:38', NULL),
(343, 'DMS11522667446', '2', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-10 23:11:50', '4', '2018-04-10 23:11:50', NULL),
(344, 'DMS11522667446', '2', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-10 23:12:11', '4', '2018-04-10 23:12:11', NULL),
(345, 'DMS11522667446', '2', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-10 23:15:28', '4', '2018-04-10 23:15:28', NULL),
(346, 'DMS11522667446', '2', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-10 23:47:04', '4', '2018-04-10 23:47:04', NULL),
(347, 'DMS11522667446', '2', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-11 00:03:01', '4', '2018-04-11 00:03:01', NULL),
(348, 'DMS11522667446', '2', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-11 00:11:23', '4', '2018-04-11 00:11:23', NULL),
(349, 'DMS11522667446', '2', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-11 00:42:30', '4', '2018-04-11 00:42:30', NULL),
(350, 'DMS11522667446', '2', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-11 05:23:41', '4', '2018-04-11 05:23:41', NULL),
(351, 'DMS11522667446', '2', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-11 05:24:17', '4', '2018-04-11 05:24:17', NULL),
(352, 'DMS11522667446', '2', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-11 05:24:38', '4', '2018-04-11 05:24:38', NULL),
(353, 'DMS11522667446', '2', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-11 05:25:00', '4', '2018-04-11 05:25:00', NULL),
(354, 'DMS11522667446', '1', NULL, '13:00:00', NULL, NULL, NULL, NULL, NULL, '2018-04-11 05:25:35', '4', '2018-04-11 05:25:35', NULL),
(355, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 05:36:57', '4', '2018-04-11 05:36:57', NULL),
(356, 'DMS11523370296', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 05:37:14', '4', '2018-04-11 05:37:14', NULL),
(357, 'DMS11523370296', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 05:37:46', '4', '2018-04-11 05:37:46', NULL),
(358, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 05:41:18', '4', '2018-04-11 05:41:18', NULL),
(359, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 05:41:39', '4', '2018-04-11 05:41:39', NULL),
(360, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 05:42:21', '4', '2018-04-11 05:42:21', NULL),
(361, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 05:42:36', '4', '2018-04-11 05:42:36', NULL),
(362, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 05:42:47', '4', '2018-04-11 05:42:47', NULL),
(363, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 05:43:54', '4', '2018-04-11 05:43:54', NULL),
(364, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 05:45:55', '4', '2018-04-11 05:45:55', NULL),
(365, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 05:49:43', '4', '2018-04-11 05:49:43', NULL),
(366, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 05:50:35', '4', '2018-04-11 05:50:35', NULL),
(367, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 05:51:24', '4', '2018-04-11 05:51:24', NULL),
(368, 'DMS11523370296', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 05:51:49', '4', '2018-04-11 05:51:49', NULL),
(369, 'DMS11523370430', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 05:52:42', '4', '2018-04-11 05:52:42', NULL),
(370, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 21:25:46', '4', '2018-04-11 21:25:46', NULL),
(371, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 21:26:03', '4', '2018-04-11 21:26:03', NULL),
(372, 'DMS11523370328', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 21:26:22', '4', '2018-04-11 21:26:22', NULL),
(373, 'DMS11523370328', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 21:26:45', '4', '2018-04-11 21:26:45', NULL),
(374, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 21:32:14', '4', '2018-04-11 21:32:14', NULL),
(375, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 21:32:29', '4', '2018-04-11 21:32:29', NULL),
(376, 'DMS11523368679', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 21:33:12', '4', '2018-04-11 21:33:12', NULL),
(377, 'DMS11523368679', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 21:33:28', '4', '2018-04-11 21:33:28', NULL),
(378, 'DMS11523370218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 21:34:03', '4', '2018-04-11 21:34:03', NULL),
(379, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 21:40:17', '4', '2018-04-11 21:40:17', NULL),
(380, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 21:40:29', '4', '2018-04-11 21:40:29', NULL),
(381, 'DMS11523370218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 21:42:02', '4', '2018-04-11 21:42:02', NULL),
(382, 'DMS11523370218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 21:42:15', '4', '2018-04-11 21:42:15', NULL),
(383, 'DMS11523370218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 21:45:49', '4', '2018-04-11 21:45:49', NULL),
(384, 'DMS11523370218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 23:52:46', '4', '2018-04-11 23:52:46', NULL),
(385, 'DMS11523370218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 23:53:17', '4', '2018-04-11 23:53:17', NULL),
(386, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 23:53:55', '4', '2018-04-11 23:53:55', NULL),
(387, 'DMS11523370156', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 23:54:15', '4', '2018-04-11 23:54:15', NULL),
(388, 'DMS11523370375', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-11 23:54:32', '4', '2018-04-11 23:54:32', NULL),
(389, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-12 21:37:37', '4', '2018-04-12 21:37:37', NULL),
(390, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-12 21:43:39', '4', '2018-04-12 21:43:39', NULL),
(391, 'DMS11523370218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-12 21:43:48', '4', '2018-04-12 21:43:48', NULL),
(392, 'DMS11523370470', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-13 03:59:01', '4', '2018-04-13 03:59:01', NULL),
(393, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-13 16:06:59', '4', '2018-04-13 16:06:59', NULL),
(394, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-13 16:07:42', '4', '2018-04-13 16:07:42', NULL),
(395, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-13 16:08:03', '4', '2018-04-13 16:08:03', NULL),
(396, 'DMS11522659432', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-13 16:08:23', '4', '2018-04-13 16:08:23', NULL),
(397, 'DMS11523370218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-13 16:09:26', '4', '2018-04-13 16:09:26', NULL),
(398, 'DMS11523370218', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-13 16:09:36', '4', '2018-04-13 16:09:36', NULL),
(399, 'DMS11523368679', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-13 18:12:41', '4', '2018-04-13 18:12:41', NULL),
(400, 'DMS11522614907', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-13 18:13:16', '4', '2018-04-13 18:13:16', NULL);

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
(25, '2018_03_28_095350_create_master_location_table', 6);

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
-- Indexes for table `dms_master_location`
--
ALTER TABLE `dms_master_location`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
--
-- AUTO_INCREMENT for table `dms_master_location`
--
ALTER TABLE `dms_master_location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `dms_master_phone`
--
ALTER TABLE `dms_master_phone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `dms_master_plat`
--
ALTER TABLE `dms_master_plat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
--
-- AUTO_INCREMENT for table `dms_transaction_history`
--
ALTER TABLE `dms_transaction_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
