-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2024 at 04:22 PM
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
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Site Administrator'),
(2, 'user', 'Regular User');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_groups_permissions`
--

INSERT INTO `auth_groups_permissions` (`group_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 3),
(1, 10),
(2, 4),
(2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'wahid', 1, '2023-08-11 09:49:19', 0),
(2, '::1', 'wahid', 1, '2023-08-11 09:49:43', 0),
(3, '::1', 'wahid', 1, '2023-08-11 11:07:15', 0),
(4, '::1', 'wahid', 1, '2023-08-11 11:07:41', 0),
(5, '::1', 'wahid', 1, '2023-08-11 11:16:41', 0),
(6, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-11 11:18:17', 1),
(7, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-11 12:05:51', 1),
(8, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-11 12:29:24', 1),
(9, '::1', 'wahid', 1, '2023-08-11 12:29:34', 0),
(10, '::1', 'doni13', 5, '2023-08-11 12:38:50', 0),
(11, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-18 06:59:16', 1),
(12, '::1', 'doni13', 5, '2023-08-18 07:04:31', 0),
(13, '::1', 'doni13', 5, '2023-08-18 07:07:47', 0),
(14, '::1', 'doni13', 5, '2023-08-18 07:09:03', 0),
(15, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-18 07:20:28', 1),
(16, '::1', 'admin', NULL, '2023-08-18 07:20:43', 0),
(17, '::1', 'wahid', 1, '2023-08-18 07:20:52', 0),
(18, '::1', 'doni13', 5, '2023-08-18 07:23:02', 0),
(19, '::1', 'doni13', 5, '2023-08-18 07:24:43', 0),
(20, '::1', 'doni13', 5, '2023-08-18 07:27:32', 0),
(21, '::1', 'doni13', 5, '2023-08-18 07:28:03', 0),
(22, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-18 07:28:13', 1),
(23, '::1', 'doni13@gmail.com', 5, '2023-08-18 07:31:33', 1),
(24, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-18 07:31:54', 1),
(25, '::1', 'doni13@gmail.com', 5, '2023-08-18 07:32:02', 1),
(26, '::1', 'doni13@gmail.com', 5, '2023-08-19 05:42:51', 1),
(27, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-19 05:43:04', 1),
(28, '::1', 'doni13@gmail.com', 5, '2023-08-19 06:28:09', 1),
(29, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-19 06:39:45', 1),
(30, '::1', 'doni13@gmail.com', 5, '2023-08-19 06:49:33', 1),
(31, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-19 06:49:54', 1),
(32, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-19 06:57:19', 1),
(33, '::1', 'doni13@gmail.com', 5, '2023-08-19 06:58:27', 1),
(34, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-19 07:05:51', 1),
(35, '::1', 'doni13@gmail.com', 5, '2023-08-19 07:26:03', 1),
(36, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-19 07:26:14', 1),
(37, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-19 08:31:35', 1),
(38, '::1', 'doni13@gmail.com', 5, '2023-08-19 08:34:40', 1),
(39, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-19 08:34:54', 1),
(40, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-19 12:28:14', 1),
(41, '::1', 'doni13@gmail.com', 5, '2023-08-19 12:29:07', 1),
(42, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-19 12:29:21', 1),
(43, '::1', 'doni13@gmail.com', 5, '2023-08-19 12:57:46', 1),
(44, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-19 13:21:46', 1),
(45, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-20 01:57:13', 1),
(46, '::1', 'doni13@gmail.com', 5, '2023-08-20 04:01:08', 1),
(47, '::1', 'doni13@gmail.com', 5, '2023-08-20 04:01:26', 1),
(48, '::1', 'doni13@gmail.com', 5, '2023-08-21 08:39:18', 1),
(49, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-21 08:39:30', 1),
(50, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-21 16:08:55', 1),
(51, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-22 01:59:42', 1),
(52, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-22 02:07:17', 1),
(53, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-22 02:08:16', 1),
(54, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-22 02:10:19', 1),
(55, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-22 02:13:26', 1),
(56, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-22 02:14:35', 1),
(57, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-22 02:23:51', 1),
(58, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-22 02:26:07', 1),
(59, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-22 02:26:55', 1),
(60, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-22 02:34:38', 1),
(61, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-22 02:35:36', 1),
(62, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-22 02:35:45', 1),
(63, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-22 02:37:48', 1),
(64, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-22 02:41:42', 1),
(65, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-22 02:45:57', 1),
(66, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-22 02:47:43', 1),
(67, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-22 02:51:22', 1),
(68, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-22 02:51:53', 1),
(69, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-22 02:53:23', 1),
(70, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-22 03:22:50', 1),
(71, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-22 06:42:46', 1),
(72, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-23 11:18:13', 1),
(73, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-23 19:00:13', 1),
(74, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-24 01:47:00', 1),
(75, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-24 11:54:17', 1),
(76, '::1', 'muhamadwahidromdoni15@gmail.com', 3, '2023-08-25 16:21:21', 1),
(77, '::1', 'wahid15', NULL, '2024-08-17 11:51:39', 0),
(78, '::1', 'muhamadwahidromdoni13@gmail.com', NULL, '2024-08-17 11:52:23', 0),
(79, '::1', 'wahid', NULL, '2024-08-17 11:52:50', 0),
(80, '::1', 'muhamadwahidromdoni15@gmail.com', NULL, '2024-08-17 11:53:27', 0),
(81, '::1', 'wahid15', NULL, '2024-08-17 11:53:45', 0),
(82, '::1', 'doni13@gmail.com', NULL, '2024-08-17 11:54:16', 0),
(83, '::1', 'wahid13', NULL, '2024-08-17 11:54:24', 0),
(84, '::1', 'doni13', NULL, '2024-08-17 11:54:39', 0),
(85, '::1', 'doni13@gmail.com', NULL, '2024-08-17 12:01:00', 0),
(86, '::1', 'muhamadwahidromdoni15@gmail.com', NULL, '2024-08-17 12:01:49', 0),
(87, '::1', 'doni13@gmail.com', NULL, '2024-08-17 12:05:07', 0),
(88, '::1', 'muhamadwahidromdoni15@gmail.com', NULL, '2024-08-17 12:05:11', 0),
(89, '::1', 'admin', NULL, '2024-08-17 12:05:50', 0),
(90, '::1', 'muhamadwahidromdoni15@gmail.com', NULL, '2024-08-17 12:08:41', 0),
(91, '::1', 'muhamadwahidromdoni15@gmail.com', NULL, '2024-08-17 12:09:28', 0),
(92, '::1', 'muhamadwahidromdoni15@gmail.com', NULL, '2024-08-17 12:13:53', 0),
(93, '::1', 'doni13@gmail.com', NULL, '2024-08-17 12:14:02', 0),
(94, '::1', 'doni13@gmail.com', NULL, '2024-08-17 12:14:41', 0),
(95, '::1', 'muhamadwahidromdoni15@gmail.com', NULL, '2024-08-17 12:25:26', 0),
(96, '::1', 'muhamadwahidromdoni15@gmail.com', NULL, '2024-08-17 12:25:35', 0),
(97, '::1', 'adom', 10, '2024-08-17 12:26:54', 0),
(98, '::1', 'adom', 10, '2024-08-17 12:27:38', 0),
(99, '::1', 'adom@gmail.com', 10, '2024-08-17 12:29:34', 1),
(100, '::1', 'wahid15', NULL, '2024-08-17 12:35:54', 0),
(101, '::1', 'wahid15', NULL, '2024-08-17 12:36:07', 0),
(102, '::1', 'wahid15', NULL, '2024-08-17 12:36:15', 0),
(103, '::1', 'wahid15', NULL, '2024-08-17 12:36:53', 0),
(104, '::1', 'wahid15', NULL, '2024-08-17 12:40:10', 0),
(105, '::1', 'wahid15', NULL, '2024-08-17 12:44:20', 0),
(106, '::1', 'wahid15', NULL, '2024-08-17 12:45:37', 0),
(107, '::1', 'adom@gmail.com', 10, '2024-08-17 12:45:55', 1),
(108, '::1', 'adom@gmail.com', 10, '2024-08-17 12:49:07', 1),
(109, '::1', 'adom@gmail.com', 10, '2024-08-17 12:52:02', 1),
(110, '::1', 'adom@gmail.com', 10, '2024-08-17 13:00:49', 1),
(111, '::1', 'adom@gmail.com', 10, '2024-08-17 13:11:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-users', 'Manage All users'),
(2, 'manage-profile', 'Manage user\'s profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_users_permissions`
--

INSERT INTO `auth_users_permissions` (`user_id`, `permission_id`) VALUES
(5, 1),
(6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(1, 'BR001', 1, 'Pensil', 'Fabel Castel', '1500', '3000', 'PCS', '98', '6 October 2020, 0:41', NULL),
(2, 'BR002', 5, 'Sabun', 'Lifeboy', '1800', '3000', 'PCS', '38', '6 October 2020, 0:41', '6 October 2020, 0:54'),
(3, 'BR003', 1, 'Pulpen', 'Standard', '1500', '2000', 'PCS', '70', '6 October 2020, 1:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `barang1`
--

CREATE TABLE `barang1` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang1`
--

INSERT INTO `barang1` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(1, 'BR001', 1, 'Pensil', 'Fabel Castel', '1500', '3000', 'PCS', '98', '6 October 2020, 0:41', NULL),
(2, 'BR002', 5, 'Sabun', 'Lifeboy', '1800', '3000', 'PCS', '38', '6 October 2020, 0:41', '6 October 2020, 0:54'),
(3, 'BR003', 1, 'Pulpen', 'Standard', '1500', '2000', 'PCS', '70', '6 October 2020, 1:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `input`
--

CREATE TABLE `input` (
  `id` int(11) NOT NULL,
  `barang` varchar(255) NOT NULL,
  `sluk` varchar(255) NOT NULL,
  `harga` int(255) NOT NULL,
  `untung` int(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_j` datetime NOT NULL,
  `updated_j` datetime NOT NULL,
  `stock` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `input`
--

INSERT INTO `input` (`id`, `barang`, `sluk`, `harga`, `untung`, `gambar`, `created_j`, `updated_j`, `stock`) VALUES
(2, 'Cleo', 'cleo', 20000, 2000, 'cleo.jpeg', '2023-08-22 08:51:51', '2023-08-22 08:51:51', 1),
(3, 'Gas 3KG', 'gas-3kg', 20000, 2000, 'gas3.jpg', '2023-08-22 11:11:22', '2023-08-22 11:22:36', 1),
(4, 'Gas 12KG', 'gas-12kg', 230000, 2000, 'gas12.jpg', '2023-08-22 11:23:23', '2023-08-22 11:23:23', 1),
(5, 'Pulsa', 'pulsa', 0, 2000, 'pulsa.png', '2023-08-22 11:24:05', '2023-08-22 11:24:05', 1),
(6, 'Aqua Galon', 'aqua-galon', 20000, 2000, 'aq.jpg', '2023-08-22 11:25:19', '2023-08-22 11:25:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(1, 'ATK', '7 May 2017, 10:23'),
(5, 'Sabun', '7 May 2017, 10:28'),
(6, 'Snack', '6 October 2020, 0:19'),
(7, 'Minuman', '6 October 2020, 0:20');

-- --------------------------------------------------------

--
-- Table structure for table `kategori1`
--

CREATE TABLE `kategori1` (
  `katid` int(11) NOT NULL,
  `katnama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `kategori1`
--

INSERT INTO `kategori1` (`katid`, `katnama`) VALUES
(1, 'Makanan'),
(2, 'Minuman'),
(3, 'Rokok'),
(4, 'Air Kemasan'),
(5, 'minuman');

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_ats` datetime NOT NULL,
  `updated_atx` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`, `created_ats`, `updated_atx`) VALUES
(1, 'Naruto', 'naruto', 'Wahit', 'shonen jumpp', 'naruto.jpg', NULL, '2023-08-01 09:16:19', '2023-07-25 17:03:23', '2023-07-25 17:03:23'),
(2, 'One piece', 'one-piece', 'echiro oda', 'gramedia', 'onepice.jpg', NULL, NULL, '2023-07-25 17:03:23', '2023-07-25 17:03:23'),
(3, 'eyeshield', 'Eyeshild', 'gramedia', 'gramedia', 'asd', NULL, NULL, '2023-07-31 14:56:27', '2023-07-31 14:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'Fauzan Falah', 'uj harapan', '081234567890', 'example@gmail.com', 'unnamed.jpg', '12314121');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1691585140, 1),
(2, '2021-02-23-084451', 'App\\Database\\Migrations\\Kategori', 'default', 'App', 1692846658, 2),
(3, '2021-02-23-085017', 'App\\Database\\Migrations\\Satuan', 'default', 'App', 1692846658, 2),
(4, '2021-02-23-091656', 'App\\Database\\Migrations\\Produk', 'default', 'App', 1692846658, 2),
(5, '2021-02-24-161052', 'App\\Database\\Migrations\\Supplier', 'default', 'App', 1692846658, 2),
(6, '2021-02-24-161641', 'App\\Database\\Migrations\\Pembelian', 'default', 'App', 1692846659, 2),
(7, '2021-02-24-163504', 'App\\Database\\Migrations\\Pembeliandetail', 'default', 'App', 1692846659, 2),
(8, '2021-02-24-170642', 'App\\Database\\Migrations\\Pelanggan', 'default', 'App', 1692846659, 2),
(9, '2021-02-24-170646', 'App\\Database\\Migrations\\Penjualan', 'default', 'App', 1692846659, 2),
(10, '2021-02-24-170649', 'App\\Database\\Migrations\\Penjualandetail', 'default', 'App', 1692846659, 2),
(11, '2021-02-24-170651', 'App\\Database\\Migrations\\Temppenjualan', 'default', 'App', 1692846659, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `pel_kode` int(11) NOT NULL,
  `pel_nama` varchar(100) NOT NULL,
  `pel_alamat` text NOT NULL,
  `pel_telp` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `beli_faktur` char(20) NOT NULL,
  `beli_tgl` date NOT NULL,
  `beli_jenisbayar` enum('T','K') NOT NULL DEFAULT 'T',
  `beli_supkode` int(11) NOT NULL,
  `beli_dispersen` double(11,2) NOT NULL DEFAULT 0.00,
  `beli_disuang` double(11,2) NOT NULL DEFAULT 0.00,
  `beli_totalkotor` double(11,2) NOT NULL DEFAULT 0.00,
  `beli_totalbersih` double(11,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_detail`
--

CREATE TABLE `pembelian_detail` (
  `detbeli_id` bigint(11) NOT NULL,
  `detbeli_faktur` char(20) NOT NULL,
  `detbeli_kodebarcode` char(50) NOT NULL,
  `detbeli_hargabeli` double(11,2) NOT NULL DEFAULT 0.00,
  `detbeli_hargajual` double(11,2) NOT NULL DEFAULT 0.00,
  `detbeli_jml` double(11,2) NOT NULL DEFAULT 0.00,
  `detbeli_subtotal` double(11,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan1`
--

CREATE TABLE `penjualan1` (
  `jual_faktur` char(20) NOT NULL,
  `jual_tgl` date NOT NULL,
  `jual_pelkode` int(11) NOT NULL,
  `jual_dispersen` double(11,2) NOT NULL DEFAULT 0.00,
  `jual_disuang` double(11,2) NOT NULL DEFAULT 0.00,
  `jual_totalkotor` double(11,2) NOT NULL DEFAULT 0.00,
  `jual_totalbersih` double(11,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_detail`
--

CREATE TABLE `penjualan_detail` (
  `detjual_id` bigint(11) NOT NULL,
  `detjual_faktur` char(20) NOT NULL,
  `detjual_kodebarcode` char(50) NOT NULL,
  `detjual_hargabeli` double(11,2) NOT NULL DEFAULT 0.00,
  `detjual_hargajual` double(11,2) NOT NULL DEFAULT 0.00,
  `detjual_jml` double(11,2) NOT NULL DEFAULT 0.00,
  `detjual_subtotal` double(11,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `kodebarcode` char(50) NOT NULL,
  `namaproduk` varchar(100) NOT NULL,
  `produk_satid` int(11) NOT NULL,
  `produk_katid` int(11) NOT NULL,
  `stok_tersedia` double(11,2) NOT NULL DEFAULT 0.00,
  `harga_beli` double(11,2) NOT NULL DEFAULT 0.00,
  `harga_jual` double(11,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`kodebarcode`, `namaproduk`, `produk_satid`, `produk_katid`, `stok_tersedia`, `harga_beli`, `harga_jual`) VALUES
('123', 'aqua', 1, 5, 1.00, 18.00, 20.00),
('1234', 'cleo', 1, 5, 1.00, 18.00, 20.00);

-- --------------------------------------------------------

--
-- Table structure for table `satuan`
--

CREATE TABLE `satuan` (
  `satid` int(11) NOT NULL,
  `satnama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `satuan`
--

INSERT INTO `satuan` (`satid`, `satnama`) VALUES
(1, 'Minuman'),
(12, 'dd');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `sup_kode` int(11) NOT NULL,
  `sup_nama` varchar(100) NOT NULL,
  `sup_alamat` text NOT NULL,
  `sup_telp` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `temp_penjualan`
--

CREATE TABLE `temp_penjualan` (
  `detjual_id` bigint(11) NOT NULL,
  `detjual_faktur` char(20) NOT NULL,
  `detjual_kodebarcode` char(50) NOT NULL,
  `detjual_hargabeli` double(11,2) NOT NULL DEFAULT 0.00,
  `detjual_hargajual` double(11,2) NOT NULL DEFAULT 0.00,
  `detjual_jml` double(11,2) NOT NULL DEFAULT 0.00,
  `detjual_subtotal` double(11,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'CV Daruttaqwa', 'Ujung Harapan', '081234567890', 'Fauzan Falah');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'default.svg',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `fullname`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'muhamadwahidromdoni13@gmail.com', 'wahid', NULL, 'default.svg', '$2y$10$Kb7YRXX1akoIPPUrX1qYW.5JGbsRIUApgwq.bggd2hFJBG0jITpfi', NULL, NULL, NULL, '683762092f90bdddc1ecb3fca46c39f3', NULL, NULL, 1, 0, '2023-08-11 08:35:13', '2023-08-11 08:35:13', NULL),
(2, 'muhamadwahidromdoni@gmail.com', 'wahid13', NULL, 'default.svg', '$2y$10$wOOqrkvxLpDS16.YI4259eLnznLIL7qM/OdWPnGih2HiLwjiQAb3O', NULL, NULL, NULL, '1e7f6cdaf45e1bc953e19f2916204327', NULL, NULL, 0, 0, '2023-08-11 08:41:38', '2023-08-11 08:41:38', NULL),
(3, 'muhamadwahidromdoni15@gmail.com', 'wahid15', NULL, 'default.svg', '1b6709e315d3755a459da1133b253549', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2023-08-11 08:46:46', '2023-08-11 08:46:46', NULL),
(4, 'doni@gmail.com', 'doni', NULL, 'default.svg', '$2y$10$ErALp94vUbuV7Grxx4foEOkyGaYWjk9o3rAaj3TyXNY3jkTAE5.DW', NULL, NULL, NULL, '2b9747b4fe2fe774742eea604e688876', NULL, NULL, 0, 0, '2023-08-11 12:30:04', '2023-08-11 12:30:04', NULL),
(5, 'doni13@gmail.com', 'doni13', NULL, 'default.svg', '$2y$10$qzZHq4z4kTOTAlwV4UiTJOxHP5ZCbu8PvPISp7Tc4HB09d8yEvGli', NULL, NULL, NULL, '3cace485c0a02e536c5899ab0e93157b', NULL, NULL, 1, 0, '2023-08-11 12:30:31', '2023-08-11 12:30:31', NULL),
(6, 'doni12@gmail.com', 'doni12', NULL, 'default.svg', '$2y$10$LeZdRhDk7UmtrQ5DR57En.kDUnCidX.QMj1/5H/vU2eQvSqU4NDGO', NULL, NULL, NULL, '76274e9b02dee503a141bdc953c27831', NULL, NULL, 0, 0, '2023-08-18 07:09:49', '2023-08-18 07:09:49', NULL),
(10, 'adom@gmail.com', 'Kiansantang', NULL, 'default.svg', '$2y$10$scTCIQg67.CvPvvJYGsDFO6fNelX10A.cT78KcJbOi1gnqbdvSuzC', NULL, NULL, NULL, '506b57de1442d3b9e4411101ad2e9c92', NULL, NULL, 1, 0, '2024-08-17 12:26:42', '2024-08-17 12:26:42', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang1`
--
ALTER TABLE `barang1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `input`
--
ALTER TABLE `input`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `kategori1`
--
ALTER TABLE `kategori1`
  ADD PRIMARY KEY (`katid`);

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`,`created_ats`,`updated_atx`) USING BTREE;

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`pel_kode`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`beli_faktur`),
  ADD KEY `pembelian_beli_supkode_foreign` (`beli_supkode`);

--
-- Indexes for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  ADD PRIMARY KEY (`detbeli_id`),
  ADD KEY `pembelian_detail_detbeli_faktur_foreign` (`detbeli_faktur`),
  ADD KEY `pembelian_detail_detbeli_kodebarcode_foreign` (`detbeli_kodebarcode`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `penjualan1`
--
ALTER TABLE `penjualan1`
  ADD PRIMARY KEY (`jual_faktur`),
  ADD KEY `penjualan_jual_pelkode_foreign` (`jual_pelkode`);

--
-- Indexes for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD PRIMARY KEY (`detjual_id`),
  ADD KEY `penjualan_detail_detjual_faktur_foreign` (`detjual_faktur`),
  ADD KEY `penjualan_detail_detjual_kodebarcode_foreign` (`detjual_kodebarcode`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kodebarcode`),
  ADD KEY `produk_produk_satid_foreign` (`produk_satid`),
  ADD KEY `produk_produk_katid_foreign` (`produk_katid`);

--
-- Indexes for table `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`satid`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sup_kode`);

--
-- Indexes for table `temp_penjualan`
--
ALTER TABLE `temp_penjualan`
  ADD PRIMARY KEY (`detjual_id`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `barang1`
--
ALTER TABLE `barang1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `input`
--
ALTER TABLE `input`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kategori1`
--
ALTER TABLE `kategori1`
  MODIFY `katid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `pel_kode` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  MODIFY `detbeli_id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `detjual_id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `satuan`
--
ALTER TABLE `satuan`
  MODIFY `satid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `sup_kode` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_penjualan`
--
ALTER TABLE `temp_penjualan`
  MODIFY `detjual_id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_beli_supkode_foreign` FOREIGN KEY (`beli_supkode`) REFERENCES `supplier` (`sup_kode`) ON UPDATE CASCADE;

--
-- Constraints for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  ADD CONSTRAINT `pembelian_detail_detbeli_faktur_foreign` FOREIGN KEY (`detbeli_faktur`) REFERENCES `pembelian` (`beli_faktur`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pembelian_detail_detbeli_kodebarcode_foreign` FOREIGN KEY (`detbeli_kodebarcode`) REFERENCES `produk` (`kodebarcode`) ON UPDATE CASCADE;

--
-- Constraints for table `penjualan1`
--
ALTER TABLE `penjualan1`
  ADD CONSTRAINT `penjualan_jual_pelkode_foreign` FOREIGN KEY (`jual_pelkode`) REFERENCES `pelanggan` (`pel_kode`) ON UPDATE CASCADE;

--
-- Constraints for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD CONSTRAINT `penjualan_detail_detjual_faktur_foreign` FOREIGN KEY (`detjual_faktur`) REFERENCES `penjualan1` (`jual_faktur`) ON UPDATE CASCADE,
  ADD CONSTRAINT `penjualan_detail_detjual_kodebarcode_foreign` FOREIGN KEY (`detjual_kodebarcode`) REFERENCES `produk` (`kodebarcode`) ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_produk_katid_foreign` FOREIGN KEY (`produk_katid`) REFERENCES `kategori1` (`katid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `produk_produk_satid_foreign` FOREIGN KEY (`produk_satid`) REFERENCES `satuan` (`satid`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
