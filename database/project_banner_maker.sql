-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 25, 2021 at 01:18 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_banner_maker`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'this app is based on festival post to upload and delete your post as category wise ...........', '2021-03-05 11:31:27', '2021-03-05 11:31:27', NULL),
(2, NULL, '2021-03-09 12:22:12', '2021-03-09 12:22:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'parth@admin.com', '$2y$10$Cm30FxrruOLXw.L2JOLNmOPpcoEPWWP6BStAoUOSERhNQoQRg4h/C', 'i8dtCMc2ZmE0qBOWHf43cSKHkWwdzrxkeBhD1qZLI7f6ofduYQlHa2ukkUOs', '2019-11-16 06:04:40', '2021-10-20 11:21:41'),
(2, 'bmaker', 'oin68564@cuoly.com', '$2y$10$B6fBwHFQXWo.WYxgXFIN/e9qxQL7O3weBTmpZoLSAwqONeQHnpYfe', NULL, '2021-10-01 06:38:21', '2021-10-01 06:38:21'),
(3, 'sagar', 'user@gmail.com', '$2y$10$5PLOtAAhuvSHAo0S97Ehquga7tmmGDp6fZ8f6clVTec5ZDPXWRBxe', NULL, '2021-10-18 10:37:50', '2021-10-18 10:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_password_resets`
--

INSERT INTO `admin_password_resets` (`email`, `token`, `created_at`) VALUES
('admin@admin.com', '$2y$10$je8XZBwrFaM/K8c629cdZ.fOb8iklEAILBOFS26OKdagAQIUEvx0q', '2021-10-01 18:31:58');

-- --------------------------------------------------------

--
-- Table structure for table `banner_upload`
--

CREATE TABLE `banner_upload` (
  `id` int(20) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Inactive',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner_upload`
--

INSERT INTO `banner_upload` (`id`, `image`, `title`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'banner_image/XfL1hryNOoh59Nq3NbaJEibPxtYcWbaQVlIRLviW.png', 'new business', 'New business', 'Active', '2021-05-26 06:03:15', '2021-05-26 06:03:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` int(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ca', 'Active', '2021-06-03 05:46:04', '2021-10-18 04:27:11', NULL),
(2, 'Advocate', 'Active', '2021-06-03 05:46:20', '2021-10-18 04:27:12', NULL),
(3, 'Software engineer', 'Active', '2021-06-03 05:46:43', '2021-10-18 04:27:13', NULL),
(4, 'builder', 'Active', '2021-06-05 08:38:02', '2021-10-18 04:27:13', NULL),
(5, 'sdasdadas', 'Active', '2021-10-25 09:39:52', '2021-10-25 09:40:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_categories`
--

CREATE TABLE `business_categories` (
  `id` int(11) NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_categories`
--

INSERT INTO `business_categories` (`id`, `language`, `name`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'INSURANCE AGENT', 'business_category/YSwjvMtROLHXcqm4AEhlNxOlDhq3q2ptngllQGCm.jpeg', 'Active', '2021-06-05 08:29:08', '2021-06-22 12:50:27', NULL),
(2, NULL, 'Jewellery', 'business_category/fhutp3hUJrKTgE4mkXxHhSaFXA0S3xsiLlDhQASY.jpeg', 'Active', '2021-06-14 10:22:28', '2021-06-14 10:22:28', NULL),
(3, NULL, 'Courier Service', 'business_category/OATWrlznZ2RQUakh3s2ORcLPYxxnzWV9lkb15C5Y.jpeg', 'Active', '2021-06-14 10:23:12', '2021-06-14 10:23:12', NULL),
(4, NULL, 'Hotel', 'business_category/928Zf3ifLeHPyJN468mNtekI9x6t4STJGPMubate.jpeg', 'Inactive  ', '2021-06-14 10:23:49', '2021-10-17 08:13:19', NULL),
(5, NULL, 'Hospital', 'business_category/eL8jhftzfvRc7EAzIcDZw7dIntKnKAYyWfED9GA5.jpeg', 'Active', '2021-06-14 10:24:05', '2021-06-14 10:24:05', NULL),
(6, NULL, 'Advocate', 'business_category/Mv00AGT2llwrDPRb8jIQCOcVrgvZ5GohsqfHY6qE.jpeg', 'Active', '2021-06-14 10:24:36', '2021-10-13 14:12:18', NULL),
(7, NULL, 'Education Business', 'business_category/AztQDdWt98LfnaBlb2IMrJSupjdoFrDXh5mllyzi.jpeg', 'Inactive  ', '2021-06-22 12:37:47', '2021-10-14 19:03:17', NULL),
(8, NULL, 'Restaurant and Catering', 'business_category/vMwUVLBi8u5TfUtShXqPmUbWU4JP2Ho0iEf5xxrm.jpeg', 'Active', '2021-06-22 13:02:06', '2021-06-22 13:04:37', '2021-06-22 13:04:37'),
(9, NULL, 'Restaurant and Catering', 'business_category/72FtQY2H4cn4jqxXOyGOhfEuiVBsCMDMPyYCtR31.jpeg', 'Active', '2021-06-22 13:02:08', '2021-06-22 13:02:08', NULL),
(10, NULL, 'test', 'business_category/8e8nbr4zJetoh3OZGlM7MvJqKiGrltjccewlMbjk.jpeg', 'Active', '2021-06-22 13:04:02', '2021-06-22 13:04:32', '2021-06-22 13:04:32'),
(11, NULL, 'test', 'business_category/LNCZLDX3SWPim27l94J2wSsrQlJ8wpWEih1Dl3Fr.jpeg', 'Active', '2021-06-22 13:05:02', '2021-06-22 13:05:24', '2021-06-22 13:05:24'),
(12, NULL, 'test', 'business_category/YUNSML58JX9tqhN8gsE0T6OKKT2obavDlryj0TfT.jpeg', 'Active', '2021-06-22 13:05:03', '2021-06-22 13:05:18', '2021-06-22 13:05:18');

-- --------------------------------------------------------

--
-- Table structure for table `business_category_image_upload`
--

CREATE TABLE `business_category_image_upload` (
  `id` int(20) NOT NULL,
  `business_category_id` int(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Inactive',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business_category_image_upload`
--

INSERT INTO `business_category_image_upload` (`id`, `business_category_id`, `image`, `title`, `description`, `language`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'business_category_image/pZo7pzsf6uXNU2n31S2G3lB1aHv5Nirc8CvzNN5d.jpeg', 'LIFE INSURANCE', 'become life agent', 'English', 'Active', '2021-06-05 08:31:42', '2021-06-05 19:01:53', '2021-06-05 19:01:53'),
(2, 1, 'business_category_image/Cq9NcyYC8FYWkBj8hTUQlJZBa3RcBU3WmTR5CZ0i.jpeg', 'LIFE INSURANCE 2', 'hi', 'Hindi', 'Active', '2021-06-05 08:33:09', '2021-08-11 13:46:59', '2021-08-11 13:46:59'),
(3, 1, NULL, '1', NULL, NULL, 'Active', '2021-06-05 13:00:10', '2021-06-05 19:01:59', '2021-06-05 19:01:59'),
(4, 1, 'business_category_image/az9cQlstJGwuO4MW93StjqxqAuorLrdO9iSp8FWb.jpeg', 'hi', NULL, NULL, 'Active', '2021-06-05 13:00:37', '2021-08-11 13:47:10', '2021-08-11 13:47:10'),
(5, 1, 'business_category_image/01OchJHOc5oA8S13C02Wnr2oHeRFlMKSBc4dkQoy.jpeg', 'a', 'aaaa', 'English', 'Active', '2021-06-05 19:02:19', '2021-08-11 13:47:15', '2021-08-11 13:47:15'),
(6, 7, 'business_category_image/9aAil69MjfL7rfrPyGppdAlGGSSOnu0DSlIy5Y5y.jpeg', 'Get best Education', 'Best Education', 'English', 'Active', '2021-06-22 12:39:15', '2021-08-11 13:47:22', '2021-08-11 13:47:22'),
(7, 7, 'business_category_image/ep5Nk5vA8jlCVTnPRv551yh8250aDBWDwKQDbXeS.jpeg', 'Best Education', 'all type of study', 'Hindi', 'Active', '2021-06-22 12:42:58', '2021-08-11 13:47:26', '2021-08-11 13:47:26'),
(8, 9, 'business_category_image/aMwoWx4kHGUdwvlQGuxvTIYXJu6lgLp9CAg7a18h.jpeg', 'Restaurant 1', 'aachi seva aur bhogan', 'Hindi', 'Active', '2021-06-22 13:06:55', '2021-08-11 13:47:29', '2021-08-11 13:47:29'),
(9, 9, 'business_category_image/8pubP6FMvizE4QE5YxzhzlnC1SGnw33XhX7akAE6.jpeg', 'Restaurant 2', 'restaurant sabse aache chef k saath', 'Hindi', 'Active', '2021-06-22 13:11:50', '2021-08-11 13:47:32', '2021-08-11 13:47:32'),
(10, 9, 'business_category_image/011Qm0dDNBtjYno5mpPOCbNcCToDtEXFoBxHPEOG.jpeg', 'Restaurant 3', 'a restaurant that makes your tummy happy', 'English', 'Active', '2021-06-22 13:13:43', '2021-08-11 13:47:36', '2021-08-11 13:47:36'),
(11, 9, 'business_category_image/9u0yGP1QuRNONttueL6ZWyZz1fuQOtPPl7TTeXSD.jpeg', 'Restaurant 4', 'we have the finest chef in our restaurant', 'English', 'Active', '2021-06-22 13:15:01', '2021-08-11 13:47:42', '2021-08-11 13:47:42'),
(12, 9, 'business_category_image/yT6JGFeLg7FdfFqTilbTaGjSOBChVcY3JlnsO3c2.jpeg', 'Restaurant 5', 'most clean restaurant with good food', 'English', 'Active', '2021-06-22 13:15:52', '2021-08-11 13:47:47', '2021-08-11 13:47:47'),
(13, 9, 'business_category_image/cQaGuU4HinlGYFNqJK8Sdol4q9BK8AJH8dZwUo16.jpeg', 'Restaurant 6', 'catering services', 'Hindi', 'Active', '2021-06-22 13:16:42', '2021-08-11 13:47:54', '2021-08-11 13:47:54'),
(14, 9, 'business_category_image/I83uQfvGH3vc7SDenVtIGPCpDyhhPa2Olc37xzCt.jpeg', 'Restaurant 7', 'shaddi k liye catering', 'Hindi', 'Active', '2021-06-22 13:18:33', '2021-08-11 13:48:02', '2021-08-11 13:48:02'),
(15, 9, 'business_category_image/KmYWQhfVpoVIo989dBSAgvf9AxDqjZi0H8tRdJWE.jpeg', 'Restaurant 8', 'catering services', 'Hindi', 'Active', '2021-06-22 13:19:24', '2021-08-11 13:48:07', '2021-08-11 13:48:07'),
(16, 9, 'business_category_image/bgOS5j2yc61JfSPBQ3IKGpqvDWaseSO30yXGZ5zQ.jpeg', 'Restaurant 9', 'hum sabse aache vikalp hai', 'Hindi', 'Active', '2021-06-22 13:20:26', '2021-08-11 13:48:10', '2021-08-11 13:48:10'),
(17, 9, 'business_category_image/Sc2dGbAdRXf3q9s5oUHzI2nRhwhjd71m7ABvfgXf.jpeg', 'Restaurant 10', 'hum swadist bhojan k saath aachi seva pradan krte hai', 'Hindi', 'Active', '2021-06-22 13:22:48', '2021-08-11 13:48:13', '2021-08-11 13:48:13'),
(18, 7, 'business_category_image/XnIE1ruN2GHJb4CkkiPgqBzNscbNsc8pPAE4eJay.jpeg', 'Education 2', 'hamare saath aapne baacho k aachi siksha de', 'Hindi', 'Active', '2021-06-22 13:27:00', '2021-08-11 13:48:18', '2021-08-11 13:48:18'),
(19, 7, 'business_category_image/iOkPrit9kxJhfnozll4lXZDecDbvEOXGzTJmo6Bd.jpeg', 'Education 3', 'we provide online education', 'English', 'Active', '2021-06-22 13:29:07', '2021-08-11 13:48:21', '2021-08-11 13:48:21'),
(20, 7, 'business_category_image/Vt4SlhaYhpOkErW0XjDqkcIZXDFHkKxSK2433rrA.jpeg', 'Education 4', 'we provide all collage corses', 'English', 'Active', '2021-06-22 13:29:52', '2021-08-11 13:48:25', '2021-08-11 13:48:25'),
(21, 7, 'business_category_image/NcG5hGEVCkKQUZu4bbTFXKptYevSW1RvAj0o0VZu.jpeg', 'Education 5', 'we provide online education in all classes', 'English', 'Active', '2021-06-22 13:31:13', '2021-08-11 13:48:28', '2021-08-11 13:48:28'),
(22, 7, 'business_category_image/XixAjBxogL9OwepYaS4r4tf4Z0GwhXxO3MBSR98O.jpeg', 'Education 6', 'give good education to your kids', 'English', 'Active', '2021-06-22 13:32:14', '2021-08-11 13:48:32', '2021-08-11 13:48:32'),
(23, 7, 'business_category_image/PJuy8BdMZbkjbFAWMcCAvaxRbBfLKKVAbk3TSTMS.jpeg', 'Education 7', 'hamare sikshak bohat hosiyaar he', 'Hindi', 'Active', '2021-06-22 13:33:05', '2021-08-11 13:48:35', '2021-08-11 13:48:35'),
(24, 7, 'business_category_image/kTsYF3uGTJCTZNW76ADp8pB6QjJN8V4yps9U63DE.jpeg', 'Education 9', 'aapne bacho ko hamare saath hosiyar banaye', 'Hindi', 'Active', '2021-06-22 13:34:34', '2021-08-11 13:48:45', '2021-08-11 13:48:45'),
(25, 7, 'business_category_image/WbsXf1TVVJF3J4tgQMkHcwLptT8C0wE4skbfePF2.jpeg', 'Education 10', 'admissions open', 'English', 'Active', '2021-06-22 13:36:54', '2021-08-11 13:48:48', '2021-08-11 13:48:48'),
(26, 7, 'business_category_image/4p6XdgwrLlOiZYWXwtCTF5twbmy09TLlAQeWh5y5.jpeg', 'Education 111', 'education is power', 'English', 'Active', '2021-06-22 13:37:45', '2021-06-22 13:46:48', '2021-06-22 13:46:48'),
(27, 7, 'business_category_image/887wfH66SiON4N7wKNqXrgedV2LH1BrdJOBX12AZ.jpeg', 'Education 12', 'we provide online class', 'English', 'Active', '2021-06-22 13:38:29', '2021-08-11 13:48:51', '2021-08-11 13:48:51'),
(28, 7, 'business_category_image/akH6KATYbGKQdcQax5DeDmbsL3gh2ad5iaOM5H2L.jpeg', 'Education 14', 'we provide quality education', 'English', 'Active', '2021-06-22 13:40:38', '2021-08-11 13:48:54', '2021-08-11 13:48:54'),
(29, 7, 'business_category_image/pUU6JIphtt79wVp5MNUkRgyEKh8Gs1U9LDmAHiLO.jpeg', 'Education 15', 'online classes', 'English', 'Active', '2021-06-22 13:41:17', '2021-08-11 13:48:58', '2021-08-11 13:48:58'),
(30, 7, 'business_category_image/YKFw2iXjyz91DlAWZE71ZfzvhAPQExt4gaV1V7WC.jpeg', 'Education 16', 'register now', 'English', 'Active', '2021-06-22 13:42:18', '2021-08-11 13:49:01', '2021-08-11 13:49:01'),
(31, 7, 'business_category_image/TO3Odht2pa9YlFpJzy6NnG6qDZ06pg0Ud0yyt1j8.jpeg', 'Education 17', 'hum online siksha pradan krte hai', 'Hindi', 'Active', '2021-06-22 13:43:13', '2021-08-11 13:49:04', '2021-08-11 13:49:04'),
(32, 6, 'business_category_image/cpA8jkg2k6uYGF7LPwHGX8OsCQqxzoXn3w897lW4.png', 'Advocate', 'Advocate', 'English', 'Active', '2021-08-11 13:49:47', '2021-08-11 13:49:47', NULL),
(33, 6, 'business_category_image/EHgRerOjPfJ3c7xldJ0wz216GLjuCZIHxlPYR147.png', 'Advocate', 'Advocate', 'English', 'Active', '2021-08-11 13:50:00', '2021-08-11 13:50:00', NULL),
(34, 6, 'business_category_image/FBcE2iLwP4Wrb2wch6h7qQPtX5zEhN7DkNqUYYPK.png', 'Advocate', 'Advocate', 'English', 'Active', '2021-08-11 13:50:13', '2021-08-11 13:50:13', NULL),
(35, 6, 'business_category_image/zB7uDiEcqFheesmdsGbp5PAlcYuk3PlCavEELopU.png', 'Advocate', 'Advocate', 'English', 'Active', '2021-08-11 13:50:53', '2021-08-11 13:50:53', NULL),
(36, 6, 'business_category_image/YCIYEGgu1xSjrPfOkwoK1YnlUxBV4JmpkDjovg1f.png', 'Advocate', 'Advocate', 'English', 'Active', '2021-08-11 13:51:09', '2021-08-11 13:51:09', NULL),
(37, 6, 'business_category_image/TPFuiWjXCWUcGYF1nJmpMWLXUqMDzuHvqUx6vAj9.png', 'Advocate', 'Advocate', 'English', 'Active', '2021-08-11 13:51:23', '2021-08-11 13:51:23', NULL),
(38, 3, 'business_category_image/wyUtJZEC1xSVrlzb70Zm2Jzxjcanxs29QYY87kN2.png', 'Courier Service', 'Courier Service', 'English', 'Active', '2021-08-11 13:52:57', '2021-08-11 13:52:57', NULL),
(39, 3, 'business_category_image/YkMHSlqsagS9paDtiaFMxjAXOISC8y1oMbcUY0DV.png', 'Courier Service', 'Courier Service', 'English', 'Active', '2021-08-11 13:53:13', '2021-08-11 13:53:13', NULL),
(40, 3, 'business_category_image/e5qg7IoVGRBh5p0uuGrfIuObAqzZ6tDuHZAiqeXS.png', 'Courier Service', 'Courier Service', 'English', 'Active', '2021-08-11 13:53:28', '2021-08-11 13:53:28', NULL),
(41, 3, 'business_category_image/AXVIJ8hSJCBgQ7L5qXQakFXVX0AN5ALsJsWSQfVA.png', 'Courier Service', 'Courier Service', 'English', 'Active', '2021-08-11 13:53:48', '2021-08-11 13:53:48', NULL),
(42, 3, 'business_category_image/uTYJvVsoftrkul5YVAg8aBjpaZ70mkHCwMsE6O7Q.png', 'Courier Service', 'Courier Service', 'English', 'Active', '2021-08-11 13:54:06', '2021-08-11 13:54:06', NULL),
(43, 3, 'business_category_image/2R4dsALmGffWLXW6jXeBI5z0JRZyJReUNIMiDbro.png', 'Courier Service', 'Courier Service', 'English', 'Active', '2021-08-11 13:54:20', '2021-08-11 13:54:20', NULL),
(44, 1, 'business_category_image/6XoL3gUfVQSYYB41Dl1xy9z0tJ2pJ3c2IqBIJKNB.png', 'Insurance Agent', 'Insurance Agent', 'English', 'Active', '2021-08-11 13:54:56', '2021-08-11 13:54:56', NULL),
(45, 1, 'business_category_image/hSFDTxjQXCCdmgnzGTyPsLwdp4CmcTPHrJ2Y5unm.png', 'Insurance Agent', 'Insurance Agent', 'English', 'Active', '2021-08-11 13:55:10', '2021-08-11 13:55:10', NULL),
(46, 1, 'business_category_image/HPHvwjuGDLUfH8Y5YK4qr406uvwXoN1fljkuypag.png', 'Insurance Agent', 'Insurance Agent', 'English', 'Active', '2021-08-11 13:55:22', '2021-08-11 13:55:22', NULL),
(47, 1, 'business_category_image/oX8nOolm0sfKMeXZqvoJllRujlJ6ejp4EcRpIvHm.png', 'Insurance Agent', 'Insurance Agent', 'English', 'Active', '2021-08-11 13:55:32', '2021-08-11 13:55:32', NULL),
(48, 1, 'business_category_image/I7Vo48pvWIpiMH6jlUqqrYmzorCcWAdemU7tZbBo.png', 'Insurance Agent', 'Insurance Agent', 'English', 'Active', '2021-08-11 13:55:43', '2021-08-11 13:55:43', NULL),
(49, 1, 'business_category_image/ePmqEJl5oFoEU4QRxEmeyofFmF51bv54ED7Eq04n.png', 'Insurance Agent', 'Insurance Agent', 'English', 'Active', '2021-08-11 13:55:53', '2021-08-11 13:55:53', NULL),
(50, 1, 'business_category_image/zrMhfnyWCtJIwV2Un32CmLon5GR4KcscSZCMS8sC.png', 'Insurance Agent', 'Insurance Agent', 'English', 'Active', '2021-08-11 13:56:03', '2021-08-11 13:56:03', NULL),
(51, 2, 'business_category_image/iLHzYL96DXI6UKRwpnJJ3BGH2kDnavDYfBTqnDoQ.png', 'Jewellery', 'Jewellery', 'English', 'Active', '2021-08-11 13:56:46', '2021-08-11 13:56:46', NULL),
(52, 2, 'business_category_image/kJJoxtgCgub99t6sHbUJGikLpW7lzZwnf8xb4jw2.png', 'Jewellery', 'Jewellery', 'English', 'Active', '2021-08-11 13:57:09', '2021-08-11 13:57:09', NULL),
(53, 2, 'business_category_image/giVPhFM8mCucHQflVRZwPOP91uTUvqPhgqMelj2s.png', 'Jewellery', 'Jewellery', 'English', 'Active', '2021-08-11 13:57:10', '2021-08-11 13:57:10', NULL),
(54, 2, 'business_category_image/OfFG0jclSvMjTYHAY8AowtMyvvASICF1bahlxc9v.png', 'Jewellery', 'Jewellery', 'English', 'Active', '2021-08-11 13:57:23', '2021-10-14 14:46:46', NULL),
(55, 2, 'business_category_image/wwS8C1Hg5MXxvA7QQrNhtKVLsszdel2brfEW2G1c.png', 'Jewellery', 'Jewellery', 'English', 'Active', '2021-08-11 13:57:36', '2021-08-11 13:57:36', NULL),
(56, 2, 'business_category_image/G1EGZu7hRZGYNYJPseXTyfXzDKSjXrcfQ2gya7jI.png', 'Jewellery', 'Jewellery', 'English', 'Active', '2021-08-11 13:57:47', '2021-08-11 13:57:47', NULL),
(57, 2, 'business_category_image/qbRfSyNZMgPBwT54gZAinGSLbjJDcSm4HSVG04ZC.png', 'Jewellery', 'Jewellery', 'English', 'Active', '2021-08-11 13:58:06', '2021-08-11 13:58:06', NULL),
(58, 2, 'business_category_image/0rRv6Vi9bH2fn7SebHinyaJbJ0xhPA16rRfxEHoL.png', 'Jewellery', 'Jewellery', 'English', 'Active', '2021-08-11 13:58:06', '2021-08-11 13:58:06', NULL),
(59, 4, 'business_category_image/HoOcZYwppYYlE0y16umFVwpVRBg9ZkHGL7JVZRTW.png', 'Hotel', 'Hotel', 'English', 'Active', '2021-08-11 13:58:31', '2021-08-11 13:58:31', NULL),
(60, 4, 'business_category_image/AbxhmZo5VSC9NtAbQ18K9Uu6ZkLgUosS36QBYebA.png', 'Hotel', 'Hotel', 'English', 'Active', '2021-08-11 13:59:07', '2021-08-11 13:59:07', NULL),
(61, 4, 'business_category_image/QgIzQEaUw1a9AQNgmGgSLd0qztsu44BIfEupGMma.png', 'Hotel', 'Hotel', 'English', 'Active', '2021-08-11 13:59:19', '2021-08-11 13:59:19', NULL),
(62, 4, 'business_category_image/ea1UfknlV5QQfoMlD1tNNYq151WK4G3Am6PKV5OG.png', 'Hotel', 'Hotel', 'English', 'Active', '2021-08-11 13:59:48', '2021-08-11 13:59:48', NULL),
(63, 7, 'business_category_image/y9FhBLFueBLQTzTO431nTSfY0PacngvfOlTA9hiY.png', 'Education', 'Education', 'English', 'Active', '2021-08-11 14:00:57', '2021-08-11 14:00:57', NULL),
(64, 7, 'business_category_image/5TP4o15V2O73PCqesIPc5rGC0uM0qm7AHr7CgOfZ.png', 'Education', 'Education', 'English', 'Active', '2021-08-11 14:01:17', '2021-08-11 14:01:17', NULL),
(65, 7, 'business_category_image/4t3zrq6ym65e0XaBssnbP0EoiUl6xT2NRPLxpWq0.png', 'Education', 'Education', 'English', 'Active', '2021-08-11 14:01:35', '2021-08-11 14:01:35', NULL),
(66, 7, 'business_category_image/a0znPjiCMoQgY1F3WyDuvMFeFYoFrY6X390fAz6B.png', 'Education', 'Education', 'English', 'Active', '2021-08-11 14:01:51', '2021-08-11 14:01:51', NULL),
(67, 7, 'business_category_image/1Hi3OoeSS8ZmdN34cU392IXmOc7DdQgR6CL3JTLx.png', 'Education', 'Education', 'English', 'Active', '2021-08-11 14:02:08', '2021-08-11 14:02:08', NULL),
(68, 9, 'business_category_image/WmyfAMBDfUOKRGfanxcn1F3QjV1tKBwZVXsPWrgB.png', 'Restaurant and catering', 'Restaurant and catering', 'English', 'Active', '2021-08-11 14:02:44', '2021-08-11 14:02:44', NULL),
(69, 9, 'business_category_image/xV8p7Vqgs1s1goSEuttvsMKEIIeLulANJOxaiCTe.png', 'Restaurant and catering', 'Restaurant and catering', 'English', 'Active', '2021-08-11 14:02:55', '2021-08-11 14:02:55', NULL),
(70, 9, 'business_category_image/JzHH68nkm4xBzItJpxlYiTdzz79UriI51iIF8vXo.png', 'Restaurant and catering', 'Restaurant and catering', 'English', 'Active', '2021-08-11 14:03:14', '2021-08-11 14:03:14', NULL),
(71, 9, 'business_category_image/uBkiFRrNws14wE9cXsDh0p864tYhipLcGl0MX67T.png', 'Restaurant and catering', 'Restaurant and catering', 'English', 'Active', '2021-08-11 14:03:37', '2021-08-11 14:03:37', NULL),
(72, 5, 'business_category_image/nFTZtnFp3C4zxNliruW0UdtekeglsAyn8jrVt7q9.png', 'Hospital', 'Hospital', 'English', 'Active', '2021-08-11 14:04:21', '2021-08-11 14:04:21', NULL),
(73, 5, 'business_category_image/gwgPaj6GLUFqKzh7lDD5CdrSyoT8MMNKItcTJb6I.png', 'Hospital', 'Hospital', 'English', 'Active', '2021-08-11 14:04:33', '2021-08-11 14:04:33', NULL),
(74, 5, 'business_category_image/URoewH8E6Q6EwwK1hoGDEnO1N7vJ90RtaJQMRnbr.png', 'Hospital', 'Hospital', 'English', 'Active', '2021-08-11 14:04:45', '2021-08-11 14:04:45', NULL),
(75, 5, 'business_category_image/0hXaqoUKkRkbhTNJ6YTYlBLnvUvZnf5kfcmfxdYj.png', 'Hospital', 'Hospital', 'English', 'Active', '2021-08-11 14:05:00', '2021-08-11 14:05:00', NULL),
(76, 5, 'business_category_image/hCsWYCVmwbNFaVmjRi0duPIgoKg5g5xZzqAsKWDH.png', 'Hospital', 'Hospital', 'English', 'Active', '2021-08-11 14:05:21', '2021-08-11 14:05:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_video_upload`
--

CREATE TABLE `business_video_upload` (
  `id` int(20) NOT NULL,
  `business_id` int(20) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Inactive',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `business_video_upload`
--

INSERT INTO `business_video_upload` (`id`, `business_id`, `video`, `title`, `language`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 'health', 'Gujarati', 'test', 'Active', '2021-06-05 08:34:24', '2021-06-05 08:34:51', '2021-06-05 08:34:51'),
(2, 1, NULL, 'health', 'Gujarati', 'test', 'Active', '2021-06-05 08:34:25', '2021-06-05 08:35:55', '2021-06-05 08:35:55'),
(3, 1, 'business_video/DOz1agIouZ3oBczMyQnTxCRfvYeAxeA4OA4XM9H9.mp4', 'fv d', 'Hindi', 'dfg', 'Inactive  ', '2021-06-05 19:02:45', '2021-10-17 08:13:44', NULL),
(4, 1, 'business_video/4cawzMC1PK61Fjemq37Ogee4yj5iGy4a5MxYatQV.mp4', 'health', 'Hindi', 'insurance', 'Active', '2021-06-14 07:11:43', '2021-06-14 07:11:43', NULL),
(5, 1, 'business_video/Ox440YMZ9HLliKgVWdK8rBQyLwXokG7HTDvzFr8T.txt', 'life', 'English', 'insurancw', 'Active', '2021-06-14 07:17:41', '2021-06-18 11:01:14', '2021-06-18 11:01:14'),
(6, 1, 'business_video/wyikogv0pHERCv843046W7m5AF0JMOKFn1FO1F3N', 'tt', 'Hindi', 'tt', 'Active', '2021-10-01 06:44:27', '2021-10-01 06:45:22', '2021-10-01 06:45:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  `festival_date` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `active_from` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `language`, `festival_date`, `name`, `image`, `status`, `active_from`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, NULL, 'Navartri', 'category/msErpd5jUINaXMCyT08dhPmOYzQaBWBnNYOHQkrt.jpeg', 'Active', '2021-06-30', '2021-06-05 07:45:45', '2021-06-05 08:02:35', '2021-06-05 08:02:35'),
(2, NULL, NULL, 'Holi', 'category/j9Sr9tBuXN3gRqmsSWKNCiuVBDr7BRenCyABsnJK.jpeg', 'Active', '2021-06-06', '2021-06-05 08:42:16', '2021-06-08 08:03:49', '2021-06-08 08:03:49'),
(3, NULL, NULL, 'Diwali', 'category/Rji7iIJIdXEQpcQaCzCMVD2zZS2yeiYEs8vMbCf1.png', 'Active', '2021-06-08', '2021-06-08 07:42:15', '2021-06-08 08:05:25', '2021-06-08 08:05:25'),
(4, NULL, NULL, 's', NULL, 'Active', NULL, '2021-06-08 07:47:15', '2021-06-08 08:05:31', '2021-06-08 08:05:31'),
(5, NULL, NULL, 'holli', 'category/oeZneiJoMk6UtfCEcRixD8Q8dt3gDsuiFsbTNocB.jpeg', 'Active', '2021-06-17', '2021-06-08 08:11:34', '2021-06-14 07:26:17', '2021-06-14 07:26:17'),
(6, NULL, NULL, 'Vat savitri Day', 'category/eqGvcr26mvlTcitOQSXSfYiNld5hj68Tvdsb72or.png', 'Active', '2021-06-25', '2021-06-10 06:02:33', '2021-08-09 11:40:19', '2021-08-09 11:40:19'),
(7, NULL, NULL, 'Holy', 'category/lB3ql0FywVqpxj331tFwLxPxJV2FSGIwow5lF5zG.jpeg', 'Active', '2021-06-14', '2021-06-14 07:27:12', '2021-08-09 11:40:24', '2021-08-09 11:40:24'),
(8, NULL, NULL, 'diwali', 'category/2W3EoF7HkPpb2zQeLjNTnqX22dUYPysuVIvvi8Jn.jpeg', 'Active', '2021-06-14', '2021-06-14 08:03:53', '2021-06-14 08:06:43', '2021-06-14 08:06:43'),
(9, NULL, NULL, 'Diwali', 'category/booYG4fDlbLup3u5ZDtXiDvMaX273ZmT2bk1HaSv.jpeg', 'Active', '2021-06-14', '2021-06-14 08:08:41', '2021-08-09 11:40:27', '2021-08-09 11:40:27'),
(10, NULL, '2021-10-20', 'Makar Sankranti', 'category/XKTVIYI85lwlbaQymtGkOzmokmgdDtfwuXmXw50V.png', 'Active', '2021-10-05', '2021-08-09 11:41:11', '2021-10-18 09:15:43', NULL),
(11, NULL, '2021-10-22', 'Republic Day', 'category/huP83TtnuIFb0FjIxKq8uJlJLu8v48VqKxr1laEJ.png', 'Active', '2021-10-06', '2021-08-09 12:28:40', '2021-10-08 05:03:38', NULL),
(12, NULL, '2021-10-25', 'Indian Army Day', 'category/wXwu1SHDTQEvdBOTO6vZE4BPJoakr92gGKCTYGrf.png', 'Active', '2021-10-05', '2021-08-09 13:43:09', '2021-10-13 14:09:29', '2021-10-13 14:09:29'),
(13, NULL, '2021-10-25', 'World Cancer Day', 'category/KzHojxBtjWHwJZNx24ghtvRsjKmLYjypOseHeQcQ.png', 'Inactive  ', '2021-10-03', '2021-08-09 18:34:18', '2021-10-14 08:47:20', NULL),
(14, NULL, '2021-10-25', 'Maha Shivratri', 'category/iiK7SK1DxkpW8XX7A2bl26O8pFRgXGmMH74iGYrd.png', 'Active', '2021-10-08', '2021-08-09 19:10:10', '2021-10-13 12:49:51', NULL),
(15, NULL, '2021-10-31', 'Ramnavami', 'category/lLLWx1f3MTdymLBuwVEP8CYkNYGvpXuPpjzlCbgs.png', 'Active', '2021-10-01', '2021-08-09 19:13:10', '2021-10-12 11:28:59', NULL),
(16, NULL, '2021-10-30', 'Mahavir Jayanti', 'category/pHMSRUUfh8vCmglFWtBmoEx3CEHkzYRbLkAHL2XF.png', 'Active', '2021-10-04', '2021-08-09 19:16:09', '2021-10-08 05:05:48', NULL),
(17, NULL, '2021-10-29', 'Hanuman Jayanti', 'category/TeeLYcMpj10KKfHliW4neuutnArlCNrfaTJ0ByKy.png', 'Active', '2021-10-03', '2021-08-09 19:41:51', '2021-10-08 05:05:57', NULL),
(18, NULL, '2021-10-28', 'Rathyatra', 'category/QnFeLjhuCbr2gLkUDh7KWXymLXoeFIoD0uOXFuk5.png', 'Active', '2021-10-26', '2021-08-09 19:51:11', '2021-10-08 05:06:06', NULL),
(19, NULL, '2021-10-30', 'Guru Purnima', 'category/ZL2GbitYojbIe2cqk4JRvMMwLGxyEI4hvEjiRkn1.png', 'Active', '2021-11-02', '2021-08-09 20:00:27', '2021-10-08 05:06:15', NULL),
(20, NULL, '2021-10-20', 'Kargil Vijay Diwas', 'category/FPcZLJwPTABHKqpSO9j5eb5i0AjTgP7ix4eOFujd.png', 'Active', '2021-10-15', '2021-08-10 06:39:26', '2021-10-08 05:03:08', NULL),
(21, NULL, '2021-11-05', 'Rakshabandhan', 'category/5ObqtVgcwBi1B2CxdNJ5A4EHydGYHn9blCMpbzak.png', 'Active', '2021-10-04', '2021-08-10 06:53:27', '2021-10-08 05:06:32', NULL),
(22, NULL, '2021-11-04', 'Janmastami', 'category/wa3I3cDFnshuwzm0ClzQKDFqEDpmLHWByHZE1uCe.png', 'Active', '2021-10-06', '2021-08-10 07:07:32', '2021-10-08 05:06:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories_video`
--

CREATE TABLE `categories_video` (
  `id` int(11) NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'inactive',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `user_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `email`, `address`, `contact`, `website`, `logo`, `status`, `created_at`, `updated_at`, `deleted_at`, `user_id`) VALUES
(1, 'vgh', 'fgyj@gmail.com', 'ghjkk', '56258336', 'fhjkk.', 'company/W6qVqOLNaqTyFcmqCpfHtH2I4v4Mi8pAKehmPCxq.jpeg', 'inactive', '2021-06-03 11:48:26', '2021-06-12 07:15:41', '2021-06-15 11:37:40', 7),
(2, 'cvhn', 'gghj@gmail.com', 'ghjjk', '5566', 'ghjk', 'company/LK47A1B3d8Th0ftNQQ6fepnjLj4SNQ5BSZyDT3IS.jpeg', 'inactive', '2021-06-03 12:05:07', '2021-06-03 12:05:35', NULL, 13),
(3, 'janvi creation', 'itrdata114@gmail.com', 'vaniyawadi, near circle, Rajkot', '7567195104', 'janvi.com', NULL, 'inactive', '2021-06-04 07:48:51', '2021-06-04 07:48:51', NULL, 15),
(4, 'hardik', 'hardik.patel886625@gmail.com', 'rajkot', '9712166670', 'test.com', 'company/kizrTToQJyJCBie7G6Yh1yvX60I36GfN1pGoG7Ye.jpeg', 'inactive', '2021-06-04 08:34:04', '2021-06-04 08:34:04', NULL, 16),
(5, 'test Kumar', 'san@gmail.com', 'Bhayandar, Mumbai', '1234567891', 'WWW.goohhle.com', 'company/HFGcB42vx9zENe2jH765uJRJr78sL5h2zqr2J7Ho.jpeg', 'inactive', '2021-06-12 07:59:44', '2021-10-02 07:05:31', NULL, 2),
(6, 'n k investment', 'eveparkendra@gmail.com', 'Rajkot', '9898990506', NULL, 'company/nSBQvOISV1rULO1flnGapf9ha82PQ05lejRgiAjP.jpeg', 'inactive', '2021-06-14 06:54:15', '2021-06-14 06:54:15', NULL, 3),
(7, 'cv', 'fvvbn@gmail.com', 'fghj', '58939', 'fghjj', 'company/66ITavL14JctwWvEm70KSflXhUxX6ne7XOoVOih0.jpeg', 'inactive', '2021-06-18 12:48:32', '2021-06-18 12:48:32', NULL, 7),
(8, 'hooi', 'hooi@gmail.com', 'vbb', '8469176588', 'ghjk', 'company/9sN46D4MHdO8zTjrk1NNHcWWRsnUpAYMbuNHQG2I.jpeg', 'inactive', '2021-06-29 05:00:15', '2021-06-29 05:00:15', NULL, 19),
(9, 'Ekta Cab', 'gopal12190@gmail.com', 'mumbai', '8757893246', 'www.aradhyasoft.com', 'company/L9dZua2pmVBOZxiA9F4w9UsU2jTdJbc6uirxuu46.jpeg', 'inactive', '2021-09-29 16:19:01', '2021-09-29 16:19:01', NULL, 27),
(10, 'ccctgg', 'tfcx@gmail.com', 'fgjk', '5882588255', 'ghjj', 'company/g7hXtb270XDkZblt61tNNfZJHveHCdyLj41EZCAC.jpeg', 'inactive', '2021-09-30 12:15:59', '2021-09-30 12:15:59', NULL, 31),
(11, 'tag11 infotech pvt ltd', 'Jn.rakesh@gmail.com', 'jaipur', '9214324318', 'www.tag11infotech.com', 'company/RnswqWQFx7HYIKNzcGa5UME5LHbZLtJdWcDO53vD.jpeg', 'inactive', '2021-10-02 05:50:31', '2021-10-02 05:50:31', NULL, 59),
(12, 'banner makers', 'test@gmail.com', '611, movadi,rajkot', '8866253284', 'www.test.com', 'company/CmQlmWouEX24o7keYXuVHOuPLMQhcZnEavtWczE4.jpeg', 'inactive', '2021-10-03 12:10:47', '2021-10-13 11:33:40', NULL, 87),
(13, 'parth company', 'parth1@gmail.com', 'movadi, rajkot', '9998887776', 'www.parth1.com', 'company/pVsIESWVuuoONpwQ9jKP2LaOMQR0nQEMT3SbObNE.jpeg', 'inactive', '2021-10-04 06:32:54', '2021-10-04 06:32:54', NULL, 89),
(14, 'Aurosoft Technologies', 'aurosoft13@gmail.com', 'Vijay Para, Visnagar, Gujarat 384315, India', '6352404644', 'http://www.aurisoft.co.in', 'company/HYs84IpYOLUfe3VG9AMZzGsQ50f44RIogHKDOKBa.jpeg', 'inactive', '2021-10-04 13:54:55', '2021-10-04 13:54:55', NULL, 90),
(15, 'it', 'hhhh@gmail.com', 'amd amd', '8888888888', 'hhh.com', 'company/ADoNIFs5r2URZPVm9vTsPTMNxv9rQmdxIMJSjX5V.jpeg', 'inactive', '2021-10-04 14:37:14', '2021-10-04 14:37:14', NULL, 91),
(16, 'rajavir solutions', 'rajavirsolutions@gmail.com', '150ft ring road, Rajkot', '8160326884', 'rajavirsolutions.com', 'company/tykHtVrjdceZnHMDYDM3rGehKBf4yMmeSQn8aKmU.jpeg', 'inactive', '2021-10-04 15:02:06', '2021-10-04 15:02:06', NULL, 86),
(17, 'Meu negócio', 'alv@alv.com', NULL, '888888', NULL, 'company/sl2SuqJdt79AapmDncDx9idaTt3LNGN7C7VoUytK.jpeg', 'inactive', '2021-10-04 19:10:41', '2021-10-04 19:10:41', NULL, 93),
(18, 'i9W', 'lindomar@i9w.com.br', 'Cariacica', '2799677781', 'i9w.com.br', 'company/PE9eu0EOkcKFP6LKjiZglu3zX62NpCgc0vlrwBhW.jpeg', 'inactive', '2021-10-04 20:15:17', '2021-10-04 20:15:17', NULL, 94),
(19, 'CodeandMania', 'ponomol77@gmail.com', 'deneme deneme', '05416328257', 'www.codeandmania.com', 'company/lylzd1q8akOGJ1JKUfAT2jJvN2NV6B7TFFy6j4D1.jpeg', 'inactive', '2021-10-04 22:12:56', '2021-10-04 22:12:56', NULL, 95),
(20, 'hfhdj', 'nxnxnxn', 'xjjdjdjdkifodbs', '9599865', 'nxjskkakanxnnx', 'company/Rs9yI43DtpDoYCALk3d8okMhs0JRyJaI3c8jz1if.jpeg', 'inactive', '2021-10-05 03:24:41', '2021-10-05 03:24:41', NULL, 96),
(21, 'VFlix prime', 'vflixprime@gmail.com', NULL, '1', NULL, 'company/yFER6sip29lN8qygnoT7Vfnyn00v42aqEpxqtfTs.jpeg', 'inactive', '2021-10-05 03:43:36', '2021-10-05 03:43:36', NULL, 97),
(22, 'Smart Home Solutions', 'smarthomes467@gmail.com', 'Lucknow', '7380325516', 'Smart Home Solutions', 'company/20l4bIh5OCNHlHYJ2DS0OfLGlIctbojOvjqujUtL.jpeg', 'inactive', '2021-10-05 07:32:56', '2021-10-05 07:32:56', NULL, 98),
(23, 'MISSION PASS', 'srkbusiness@gmail.com', '824, Babe jilla, post office, jikanpura', '98987513244', 'sbdhrkfor.com', 'company/LIy1ueqXvY7ZiMub6UPYu17XmrT8Q4ND8nuHDmjo.jpeg', 'inactive', '2021-10-05 12:14:56', '2021-10-05 12:14:56', NULL, 100),
(24, 'name', 'email@gmail.com', 'address', 'contact', 'website', 'company/C87BVH1UuR213E1JS11kQK7BmpGa7nYBYFQnLhPV.png', 'inactive', '2021-10-05 13:01:46', '2021-10-05 13:01:46', NULL, 99),
(25, 'A', 'A', 'A', '7', 'A', 'company/4raLSPHDz1d1noONqxGFBNAhN555Q654ejVTxcMa.jpeg', 'inactive', '2021-10-05 15:07:26', '2021-10-05 15:07:26', NULL, 102),
(26, 'raghav', 'raghavsoni2580@gmail.com', '1726', '9582891675', 'test.co.', 'company/THHDPFptLR21m1FGwxIgxFX01LtxNkHRRkEupRE6.jpeg', 'inactive', '2021-10-05 15:10:37', '2021-10-05 15:10:37', NULL, 103),
(27, 'ssbwebworks', 'ssbwebworks@gmail.com', 'mv puthur, sivagiri , eeode', '9488000990', 'ssbwebworks.com', 'company/k5bvLsZEVImUIxjGPnwyeVoHXLC0LKqKwv5ophu5.jpeg', 'inactive', '2021-10-06 03:35:27', '2021-10-06 03:35:27', NULL, 105),
(28, 'CYPHERNATE', 'info.cyphernate.com', NULL, '8128933400', 'cyphernate.com', 'company/WYKD63ebJCD7XnOnMH1EfZTNz0l28ZtaowIjlOB7.jpeg', 'inactive', '2021-10-06 04:10:38', '2021-10-06 04:10:38', NULL, 106),
(29, 'test', 'demo@gmail.com', 'rajkot', '9876543210', 'test.com', 'company/wDvqr5rb3homPVakbOZ2THTTCtnuxe7VdOGGcZOQ.jpeg', 'inactive', '2021-10-06 09:24:57', '2021-10-06 09:24:57', NULL, 109),
(30, 'ram', 'Mummaditharun@gmail.com', 'Andhra', '9885879555', 'example.com', 'company/Xb3MKpNGtWLINKAreHJWtOjRNeO60vaeqkpN9rO3.jpeg', 'inactive', '2021-10-06 15:36:41', '2021-10-06 15:36:41', NULL, 111),
(31, 'NDTECH', 'contact@ndtech.in', 'Raipur | Bilaspur', '7987239155', 'www.ndtech.in', 'company/PDXd2vcg3w8Mdo1FI3BAFrz56nKFEhXfaTzUNNla.jpeg', 'inactive', '2021-10-06 20:05:44', '2021-10-06 20:09:14', NULL, 112),
(32, 'high kiw', 'kuchnai@gmail.com', 'anana bshs', '9876543211', 'ajajjs.ckm', 'company/nEQIh06cTghWyDK9CicXgJqpvVpn8BG2ApRZ2VYb.jpeg', 'inactive', '2021-10-07 06:53:20', '2021-10-07 06:53:20', NULL, 113),
(33, 'hiren Motwani', 'hirenmotwani35@gmail.com', 'Rajkot', '9722227276', 'hiren.com', 'company/DJw38FA7hL21YFMtHYtvij7VFvVmBBECR355SFH4.jpeg', 'inactive', '2021-10-07 07:48:30', '2021-10-07 07:48:30', NULL, 117),
(34, 'shyam', 'alexcruzz2026@gmail.com', 'surat', '9898989898', 'www.divine.com', 'company/InhYMj586mQvyHrZWeAAA88LJTh6Jpw2a6qDeOZ2.jpeg', 'inactive', '2021-10-07 08:58:23', '2021-10-07 08:58:23', NULL, 118),
(35, 'SharmaCommunication', 'dhananjaysharma89@gmail.com', NULL, '8427109840', NULL, 'company/thEBSMaqXwK6kN3DcqmdEtjwq0V1yV4fVjKpqHMM.jpeg', 'inactive', '2021-10-07 22:18:10', '2021-10-07 22:18:10', NULL, 120),
(36, 'jewellers', 'hsoni3122@gmail.com', NULL, '7016565412', NULL, 'company/lzayo7Mbq3fs8JrEavewBX4Hr3Djd6szhT6bA8vL.jpeg', 'inactive', '2021-10-08 21:52:42', '2021-10-08 21:52:42', NULL, 123),
(37, 'sdf', 'sdf@sfgd.fgh', 'dfgdfg', '465', 'dgdfg', 'company/hItDgnRFuGCw7OHdSzoLJvXBUqqYgEHgpjERK07B.jpeg', 'inactive', '2021-10-08 23:32:29', '2021-10-08 23:32:29', NULL, 124),
(38, 'Sarma Metta', 'sarmametta@gmail.com', NULL, '+917382101505', 'not yet created', 'company/hB63cDBWJmcmvRe1RpvxYCKlSy9df4DkQydjtXru.jpeg', 'inactive', '2021-10-09 04:07:12', '2021-10-09 04:07:12', NULL, 125),
(39, 'hhh', 'gj@fk.vv', 'ekkd,dkfk,fkfd', '1111111111', 'eeee.fffff.f', 'company/CnJHcWizI8zhnBt3iUoXlHyk9cOa3gunRrq2VPTr.jpeg', 'inactive', '2021-10-09 11:44:07', '2021-10-09 11:44:07', NULL, 130),
(40, 'Android Developer', 'jasminpatel1497@gmail.com', 'Address Gondal', '9601712186', 'www.nextapp.com', 'company/0isNyBVkT4Jd9eYwXTWHn3AbTI9BXmIzLD7kvk1x.jpeg', 'inactive', '2021-10-09 19:54:34', '2021-10-09 19:54:34', NULL, 132),
(41, 'Parksoft Incororation', 'parksoft.b22@gmail.com', 'Khagual Road Danapur', '9470601112', 'parksoft.in', 'company/Vxv41uMi9Pr6CYlZk9HapeszNeqIuYSGwVPQvzXB.jpeg', 'inactive', '2021-10-10 05:40:49', '2021-10-10 05:40:49', NULL, 133),
(42, 'ghhnb', 'gfgh@gmail.com', 'vvnjgxvn', '56658885885', 'cgjmncxfhn', 'company/PQLzs9HJL1TaIVeT69Qtdna8GWdmjmY3zm7tRPge.jpeg', 'inactive', '2021-10-11 05:19:14', '2021-10-11 05:19:14', NULL, 136),
(43, 'Primera Systems Pvt. Ltd.', 'primerasystems@gmail.com', 'Surat', '7600760048', NULL, 'company/iTMjYNVm2Ix3dQTpNkjYDcMR17wjUHfVnWfdsSOv.jpeg', 'inactive', '2021-10-11 06:52:32', '2021-10-11 06:52:32', NULL, 137),
(44, 'CT INFOTECH', 'pateltejas827@gmail.com', 'Variyav Road, Municipal Corporation, Jahangir Pura, Surat, Gujarat 394520, India', '7227068777', 'Tejas.com', 'company/koGsx5xftTUQRvDvxCLUJhVfDIhfFwMzLbXOUbbk.jpeg', 'inactive', '2021-10-12 07:41:49', '2021-10-12 07:41:49', NULL, 140),
(45, 'divinity', 'divyeshsabhaya822@gmail.com', 'gb complex', '8320190004', 'www.divinityinfosoft.com', 'company/OylUmcDaV9CXn45BrYbyoeilF6aYmjtNUqfCsq7J.jpeg', 'inactive', '2021-10-12 09:47:26', '2021-10-12 09:47:26', NULL, 143),
(46, 'demo', 'demi@demo.com', NULL, '9999999999', NULL, 'company/UZtutyPVIB0UOJmeGH3me4xG75WeUw87iBq7Edk7.jpeg', 'inactive', '2021-10-12 12:12:12', '2021-10-12 12:12:12', NULL, 144),
(47, 'sillytowns', 'abc@gmail.com', 'pimpri', '9428379273', 'www.google.com', 'company/0vPMsbsmqw17JP3uLHMbaIAYwnD9TsBD4NuVoDyP.jpeg', 'inactive', '2021-10-12 12:22:50', '2021-10-12 12:22:50', NULL, 145),
(48, 'Jainam Agri Food', 'jaydipsurani@gmail.com', 'Rajkot', '9978468886', NULL, 'company/JdESLYRNn3O9IsPlGJMgUWHH6IHJUcFY48AoQHxD.jpeg', 'inactive', '2021-10-12 23:00:19', '2021-10-12 23:00:19', NULL, 147),
(49, 'GR Enterprise', 'gritr01@gmail.com', 'surat', '9033989768', 'null', 'company/ixKhi9DYaS0CWWiHyU0KfyVYE4WRWLHSaopJsRFh.jpeg', 'inactive', '2021-10-13 06:37:38', '2021-10-13 06:51:30', NULL, 149),
(50, 'Satish Lomate', 'satishlomate@gmail.com', 'Pune', '8805555057', 'www.satishlomate@gmail.co.', 'company/bpyqPnUdaSd6i3HpIwW2stmNUNgW0s8zQdKqP6Yg.jpeg', 'inactive', '2021-10-13 08:07:16', '2021-10-13 08:07:16', NULL, 150),
(51, 'yhdjdj', 'gshssj', 'bfhjfj', '03649499', 'vxhdjjxjx', 'company/f4dsEbigvgoK8E3LCHZtrinVhvJMFe3NLcZbN37n.jpeg', 'inactive', '2021-10-13 11:12:54', '2021-10-13 11:12:54', NULL, 151),
(52, 'sai construction', 'info@saiconstruction.in', 'bhatar road surat', '9874563210', 'www.saiconstruction.in', 'company/OYJgV7FGROCxqruLCeij71ID2h2itRBFpif5q5CL.jpeg', 'inactive', '2021-10-13 12:03:18', '2021-10-13 12:03:18', NULL, 152),
(53, 'ack group', 'info@ac.com', 'pakistan', '9876543210', 'ack.com', 'company/2bBMTcyRbZRZchdN7GaiF6xm6LlOMkfYbQpMDKz3.jpeg', 'inactive', '2021-10-13 19:37:42', '2021-10-13 19:37:42', NULL, 153),
(54, 'Madhav Institute', 'madhavporbandar@gmail.com', 'M. G. Road, Porbandar, Gujarat, near Vodafone Street, Khijadi Plot, Panch Hatdi, Porbandar, Gujarat 360575, India', '9033392721', 'www.miwtindia.com', 'company/IV7yhbJJ4WeF8qlXIH2QnImoaobBTSyUOkKJV65X.jpeg', 'inactive', '2021-10-14 04:10:25', '2021-10-14 04:10:25', NULL, 154),
(55, 'AsyTech', 'aaadisy@gmail.com', 'Tanda', '7080013463', 'www.asytech.in', 'company/yYFrYiv6rNmuXfpCY33aPJxahDcEfKJi6MnQJHXX.jpeg', 'inactive', '2021-10-14 04:28:26', '2021-10-14 04:28:26', NULL, 155),
(56, 'demo2', 'demo2@gmail.com', 'rajkot', '9876549870', 'test.com', 'company/hNZYtKbmyi0bmGbPQbXw38R0zoLtjMg4YodGgHZX.jpeg', 'inactive', '2021-10-14 05:02:39', '2021-10-14 05:02:39', NULL, 156),
(57, 'mit', 'mit@gmail.com', 'home address', '9998899', 'mit.com', 'company/QF0Wfyu1Ql2heBIJVLuPxOeZxsndsyOBLuiXcMHC.jpeg', 'inactive', '2021-10-14 06:07:41', '2021-10-14 06:07:41', NULL, 157),
(58, 'Rajin Print', 'byzedbin3@gmail.com', 'Bazar Rd, Gazipur, Bangladesh', '01830747554', 'rajinprint.com', 'company/Dbjq0kqJtnK6IM8WCFsPxsudnT9TJ6and6b8X3mn.jpeg', 'inactive', '2021-10-15 08:26:10', '2021-10-15 08:26:10', NULL, 159),
(59, 'Sahu Books', 'rupendrasahu1102@gmail.com', 'Godhi Road Murmunda', '9669005281', NULL, 'company/6D1H4SuCM7KgxZ6O3XMNjzAJtiwLpkyZeOKNnV8D.jpeg', 'inactive', '2021-10-15 08:48:41', '2021-10-15 08:48:41', NULL, 160),
(60, 'FACT Education', 'info@facteducation.in', 'Main Road ranchi', '9876543210', 'www.facteducation.in', 'company/9G0zsCVl7Cs2AW0b4ngXZejSoVC3ScOEyVfYKWuJ.jpeg', 'inactive', '2021-10-15 11:36:28', '2021-10-17 05:38:33', NULL, 161),
(61, 'Smart Restra', 'ssridharatiwari@gmail.com', 'Smart Restra', '8233388802', 'www.smartrestra.com', 'company/FcAH2quE3U38BojLwEAfhvNFb5kEzjAg8EQr270G.jpeg', 'inactive', '2021-10-15 14:47:17', '2021-10-15 14:47:17', NULL, 166),
(62, 'Clc Jaipur', 'sanjeev6833@gmail.com', '95 mukesh nagar jaipur', '+919571077660', NULL, 'company/MC4Fnn4v5OBsaZnvaxB9ZpcSZojAzYGtVQ2r0aG9.jpeg', 'inactive', '2021-10-15 15:07:32', '2021-10-15 15:07:32', NULL, 167),
(63, 'test', 'test@gmail.com', 'test', '8882133205', 'test.com', 'company/embMhBAQuJKaKblyxCEdMii680fa8SwROzXfFMcm.jpeg', 'inactive', '2021-10-16 03:03:32', '2021-10-16 03:03:32', NULL, 168),
(64, 'Online Neta', 'test@emal.com', 'Not Yet', '000000000', 'www.Testweb.com', 'company/QNhzz7OFRA2nhnbu90ajWiHWbVXyWjIdi0XTgrzU.jpeg', 'inactive', '2021-10-16 03:50:03', '2021-10-16 03:50:03', NULL, 169),
(65, 'crown entertainment', 'mspatel@gmail.com', 'amd', '9726763997', NULL, 'company/CziC5iHaj31JqfvqbFH6MbXQepXAwOHSq4mbRiG3.jpeg', 'inactive', '2021-10-16 05:03:53', '2021-10-16 05:03:53', NULL, 170),
(66, 'thenextin', 'parth21@gmail.com', '611, sasnskar height, rajkot', '9998366123', 'www.thenextin.com', 'company/h3PJ7uQguI1cJZn0E4THoubvGKjnWD4UtA6zHywn.jpeg', 'inactive', '2021-10-18 06:39:41', '2021-10-18 06:39:41', NULL, 172),
(67, 'bname', 'k@k.com', 'banglore', '8989898989', 'www.gg.com', 'company/yVU06os5unUEEvwMN5mQbDSiwYU6TfNZMMvUAI0k.jpeg', 'inactive', '2021-10-18 08:32:13', '2021-10-18 08:41:46', NULL, 173),
(68, 'parth22', 'parth22@gmail.com', 'rajkot', '2222233333', 'www.thenextwebs.com', 'company/9bqdco8X2DqrTsaLVXv7IgmtGOpeLEpzKAGjydai.jpeg', 'inactive', '2021-10-18 09:40:32', '2021-10-18 09:40:32', NULL, 175),
(69, 'hii', 'dhdh@rh.com', 'jffj', '12344', 'djdj.com', 'company/jbL6JWM9ag24WVAiPjnApJnyKlVNGJ8GJxINEeE4.jpeg', 'inactive', '2021-10-18 17:34:52', '2021-10-18 17:34:52', NULL, 181),
(70, 'Navneet Sharma', 'navneet.power@gmail.com', '905, Ghanshyam Enclave, Lalji Pada, New Link Rd, near Laljipada police chowky, Kandivali, Shankar Pada, Kandivali West, Mumbai, Maharashtra 400067, India', '+919987717555', 'MyNavneet.in', 'company/zzpkoeJgPwT9MivqMVhk635M33VDCTAjNOB5LhV5.jpeg', 'inactive', '2021-10-19 07:49:11', '2021-10-19 07:49:11', NULL, 88),
(71, 'kagu', 'harshkagu29@gmail.com', '499, 29th Main Rd, EWS Colony, Stage 2, BTM 2nd Stage, Bengaluru, Karnataka 560076, India', '+919773207180', 'kagu. com', 'company/2OMGetk9I20Nbr9rODWvb5EzkFR3qfp8F5DYDEGB.jpeg', 'inactive', '2021-10-19 08:54:13', '2021-10-19 08:54:13', NULL, 185),
(72, 'Ns', 'kellysanim@gmail.com', 'no', '3176828970', 'no', 'company/ovGPBhMT7I3I8GGPDXmxV7yEdz8tmOPNIrjGkYie.jpeg', 'inactive', '2021-10-19 11:31:58', '2021-10-19 11:31:58', NULL, 186),
(73, 'sambhu', 'a@gmail.con', 'bhatar road surat', '9874563210', 'www.a.com', 'company/T53tqERCyt4n6ihjQs4oAW1EoVyEcDNrNMM1SPyk.jpeg', 'inactive', '2021-10-20 15:09:32', '2021-10-20 15:09:32', NULL, 187),
(74, 'Juggle Solutions', 'jugglesolutions@gmail.com', 'Borivali, Mumbai', '9619190912', 'juggle.Solutions', 'company/9U3Y7NfKyemlVWaH5SfxTir0WCOcSHSc5nZaYOMw.jpeg', 'inactive', '2021-10-20 19:42:06', '2021-10-20 19:42:06', NULL, 188),
(75, 'twst', 'divya.kathpalia@gmail.com', 'rohini', '931513584557', 'ywbsh.com', 'company/mZSpCFFzP6xkMh0fUeWRFtcJeuyqwMjTNKr8qFYQ.jpeg', 'inactive', '2021-10-20 20:32:34', '2021-10-20 20:32:34', NULL, 189),
(76, 'name', 'email@gmail.com', 'address', 'contact', 'website', 'company/TJzWnzAwLov6KqL2rsn7GbgXC2AkCOW0Vuf8vOwG.png', 'inactive', '2021-10-21 05:58:08', '2021-10-21 05:58:08', NULL, 141),
(77, 'K H infitech', 'd@gmail.com', 'Ahemdabad', '7016387082', NULL, 'company/DAxaVKfiwBB8Nl70YiQEgj1R1QDzQdItN5L1FwB6.jpeg', 'inactive', '2021-10-21 08:49:55', '2021-10-21 08:49:55', NULL, 191),
(78, 'vggg', 'ffffgg', 'vggg', '7405463308', 'vvvg', 'company/KI9GlkmctJCa6AlJZ4OQdiGo9QJHf2CBj5dhga5S.jpeg', 'inactive', '2021-10-21 10:33:41', '2021-10-21 10:33:41', NULL, 192),
(79, 'Liveclicks', 'liveclivkstwch@gmail.com', 'ajmer', '7073071993', 'www.liveclicks.in', 'company/NcEvlfQZyF2mWW5efVUrbUB4RhjE6hFeW0oct7lj.jpeg', 'inactive', '2021-10-21 23:56:28', '2021-10-21 23:56:28', NULL, 194),
(80, 'Bhiwandi City', 'bollywoodsongs45@gmail.com', 'Anjurphata Bhiwandi', '9999999999', NULL, 'company/gfblJPmkwexucuup6DQgXJTQtpXCIXpa1kAK8Wqj.jpeg', 'inactive', '2021-10-22 03:55:55', '2021-10-22 03:55:55', NULL, 195),
(81, 'company', 'abc@mail.com', 'jamnagar', '8889997770', NULL, 'company/XoN3ZexAD2iU9Hsd8Rupb4LLjuqYbO9qfEEZLVbl.jpeg', 'inactive', '2021-10-22 05:34:46', '2021-10-22 05:34:46', NULL, 196),
(82, 'SIMU AUTOMOBILES', 'simuhonda2020@gmail.com', 'MAIN ROAD DOHANA SHANKARGARH', '9399066921', 'www.simuhonda2020.com', 'company/AImad5ul2sstluVfWO06wNiOZI9ua17BGpBVrfSY.jpeg', 'inactive', '2021-10-23 06:54:09', '2021-10-23 06:54:09', NULL, 199),
(83, 'Venkatesh GFX', 'abcd@gmail.com', 'Hyderabad', '123456789', 'www.abcd.com', 'company/x3F2qoH8yjyExkzy41VJMWXWLFKkV0DSyn5W0MJ5.jpeg', 'inactive', '2021-10-23 07:40:05', '2021-10-23 07:40:05', NULL, 200),
(84, 'bt', 'nareshmalviya.nitham@gmail.com', 'ddd', '7042910792', 'dfc', 'company/bzDhHLV9EdBI4luAWfBbMpVP9fKHebNFMAGGgrjv.jpeg', 'inactive', '2021-10-24 08:59:44', '2021-10-24 08:59:44', NULL, 202),
(85, 'IO Codex Private Limited', 'iocodex360@gmail.com', 'Patan', '9589401108', 'iocodex. com', 'company/GvmQNHaVu4V80sVKPqymXGUocAKYxuOtiXDZEdgZ.jpeg', 'inactive', '2021-10-24 20:17:22', '2021-10-24 20:17:22', NULL, 204),
(86, 'TheNextWebs', 'parthchangela@gmail.com', 'rajkot', '9998366123', 'www.thenextwebs.com', 'company/BSNPVIq7S9sTSE9pU4D49oilqFsV32wKqStIINi9.png', 'inactive', '2021-10-25 04:27:58', '2021-10-25 06:03:08', NULL, 205),
(87, 'highsense', 'jaydipkanpariya108@gmail.com', 'hhg', '+918154843965', 'fff', 'company/LYiTiEgCLxnrZChFaRWhZQCCkqZuqS2wty4278hr.jpeg', 'inactive', '2021-10-25 05:17:50', '2021-10-25 05:17:50', NULL, 206);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `contact`, `email`, `website`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '7796144444', 'business@brandberry.in', 'www.brandberry.in', '2021-07-30 16:23:05', '2021-10-15 06:33:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(20) NOT NULL,
  `user_id` int(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `name`, `description`, `contact`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 2, 'parth', 'Great app', '9998366123', '2021-09-25 07:50:56', '2021-09-25 07:50:56', NULL),
(6, 87, 'test', 'you sh s and a little bit more than anything else you are not able to do that and you can get a good friend of you are interested and', '8866253284', '2021-10-05 10:14:53', '2021-10-05 10:14:53', NULL),
(7, 87, 'test', 'you sh s and a little bit more than anything else you are not able to do that and you can get a good friend of you are interested and', '8866253284', '2021-10-05 10:20:03', '2021-10-05 10:20:03', NULL),
(8, 100, 'Shahrukh Khan', 'hello', '9898989898', '2021-10-05 12:54:20', '2021-10-05 12:54:20', NULL),
(9, 87, 'test', 'g rrnhryjejt', '8866253284', '2021-10-09 04:35:32', '2021-10-09 04:35:32', NULL),
(10, 141, 'name', 'description', 'contact', '2021-10-18 10:10:30', '2021-10-18 10:10:30', NULL),
(11, 188, 'nayan', 'test', '9619190912', '2021-10-20 19:48:53', '2021-10-20 19:48:53', NULL),
(12, 87, 'name', 'description', 'contact', '2021-10-21 06:22:06', '2021-10-21 06:22:06', NULL),
(13, 87, 'ghghghg', 'ghghghghg', '56565656', '2021-10-21 06:33:11', '2021-10-21 06:33:11', NULL),
(14, 87, 'ghghghg', 'ghghghghg', '56565656', '2021-10-21 06:33:49', '2021-10-21 06:33:49', NULL),
(15, 87, 'ghghghg', 'ghghghghg', '56565656', '2021-10-21 06:34:32', '2021-10-21 06:34:32', NULL),
(16, 87, 'ghghghg', 'ghghghghg', '56565656', '2021-10-21 06:34:34', '2021-10-21 06:34:34', NULL),
(17, 87, 'ghghghg', 'ghghghghg', NULL, '2021-10-21 06:37:09', '2021-10-21 06:37:09', NULL),
(18, 141, NULL, 'ghghghghg', NULL, '2021-10-21 06:37:42', '2021-10-21 06:37:42', NULL),
(19, 141, NULL, 'ghghghghg', NULL, '2021-10-21 06:38:29', '2021-10-21 06:38:29', NULL),
(20, 87, 'ghghghg', 'ghghghghg', '56565656', '2021-10-21 06:50:58', '2021-10-21 06:50:58', NULL),
(21, 87, 'ghghghg', 'ghghghghg', '56565656', '2021-10-21 06:59:50', '2021-10-21 06:59:50', NULL),
(22, 87, 'ghghghg', 'ghghghghg', '56565656', '2021-10-21 06:59:59', '2021-10-21 06:59:59', NULL),
(23, 87, 'ghghghg', 'ghghghghg', '56565656', '2021-10-21 07:18:41', '2021-10-21 07:18:41', NULL),
(24, 87, 'ghghghg', 'ghghghghg', '56565656', '2021-10-21 07:19:54', '2021-10-21 07:19:54', NULL),
(25, 87, 'ghghghg', 'ghghghghg', '56565656', '2021-10-21 07:21:33', '2021-10-21 07:21:33', NULL),
(26, 87, 'ghghghg', 'ghghghghg', '56565656', '2021-10-21 07:21:38', '2021-10-21 07:21:38', NULL),
(27, 87, 'ghghghg', 'ghghghghg', '56565656', '2021-10-21 07:21:41', '2021-10-21 07:21:41', NULL),
(28, 87, 'ghghghg', 'ghghghghg', '56565656', '2021-10-21 07:28:07', '2021-10-21 07:28:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `festival_video_upload`
--

CREATE TABLE `festival_video_upload` (
  `id` int(20) NOT NULL,
  `festival_id` int(20) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Inactive',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `festival_video_upload`
--

INSERT INTO `festival_video_upload` (`id`, `festival_id`, `video`, `title`, `language`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 2, 'festival_video/IZACjkwSmyCVHIIaw9sHG0R0hJEQcLIZ91zxEtBC.mp4', 'f dsf d', 'Gujarati', 'dsfds', 'Active', '2021-06-05 18:53:04', '2021-06-08 08:03:49', '2021-06-08 08:03:49'),
(4, 5, 'festival_video/G2J4Svv0a3Y3tYhBAivp1ORGvPQP8Mkt2T6mR3XQ.mp4', 'holo festival', 'English', 'holy', 'Active', '2021-06-14 07:07:01', '2021-06-14 07:26:17', '2021-06-14 07:26:17'),
(5, 7, 'festival_video/n0YQ2JfYX9gurRwkqIVQZaXBDLgey55hM2yujDeY.mp4', 'holi', 'Gujarati', 'holy', 'Active', '2021-06-14 07:30:10', '2021-08-09 11:40:24', '2021-08-09 11:40:24'),
(6, 7, 'festival_video/bBiwGryCpAG9fxhhDx4YzgnapZsn6qCT9SGIb1eg.mp4', 'holi', 'Hindi', 'holy', 'Active', '2021-06-14 07:30:55', '2021-08-09 11:40:24', '2021-08-09 11:40:24'),
(7, 7, 'festival_video/TI8Ji1b316jcT4JU2qTlDXdrQzn8PE35eIAhW6It.mp4', 'holi', 'English', 'test', 'Active', '2021-06-14 07:32:12', '2021-08-09 11:40:24', '2021-08-09 11:40:24'),
(8, 22, 'festival_video/bRzljWpYBI8RYdWNy4IheXWGMR0NF6SczCvzt2F4.mp4', 'Janmastami', 'English', 'Janmastami', 'Active', '2021-08-18 08:10:06', '2021-10-16 10:55:20', NULL),
(9, 22, 'festival_video/Os8N97zezKwoq1peDVXGO8DuMdkOFHnyRa0cxEVD.mp4', 'Janmastami', 'English', 'Janmastami', 'Active', '2021-08-18 08:10:20', '2021-08-18 08:10:20', NULL),
(10, 22, 'festival_video/qFiU5yBPdOQB0DLmIxdil9K2QsmqjhgHoBtT8bRb.mp4', 'Janmastami', 'English', 'Janmastami', 'Active', '2021-08-18 08:10:35', '2021-08-18 08:10:35', NULL),
(11, 22, 'festival_video/r7XVj7vEh4FwTYb1DqHbpCNnVl8oacZ2dSmSGqzs.mp4', 'Janmastami', 'Hindi', 'Janmastami', 'Active', '2021-08-18 08:10:58', '2021-08-18 08:10:58', NULL),
(12, 22, 'festival_video/36itPc0JnugLzJLRnb4v8bVpxK4vU2yMlQ2qnaoF.mp4', 'Janmastami', 'Gujarati', 'Janmastami', 'Active', '2021-08-18 08:13:19', '2021-08-18 08:13:19', NULL),
(13, 21, 'festival_video/lcqTRdNgm2z1IL3UQLuuvEaFTaRNmAH3dBK7TBDu.mp4', 'Rakshanbandhan', 'Hindi', 'Rakshanbandhan', 'Active', '2021-08-18 09:23:44', '2021-08-18 09:23:44', NULL),
(14, 21, 'festival_video/rq6QsBy27YhOjslmRBI38ZMfQoPxjA2SP4uQ4tx9.mp4', 'Rakshanbandhan', 'English', 'Rakshanbandhan', 'Active', '2021-08-18 09:25:07', '2021-08-18 09:25:07', NULL),
(15, 21, 'festival_video/ij9SHO9srbK8PE6J4kredlpIlX0RqdgOT7HXQkc2.mp4', 'Rakshanbandhan', 'Hindi', 'Rakshanbandhan', 'Active', '2021-08-18 09:25:48', '2021-08-18 09:25:48', NULL),
(16, 21, 'festival_video/ka8T60tyfUIRUHts8EOGQSBk2p5lswwxtLq3XsnR.mp4', 'Rakshanbandhan', 'Gujarati', 'Rakshanbandhan', 'Active', '2021-08-18 09:26:06', '2021-08-18 09:26:06', NULL),
(17, 20, 'festival_video/jQbCmE3a0S0Ucyc5it0p3UycwwSyUeGXRSxUvBOa.mp4', 'kargil vijay diwas', 'English', 'kargil vijay diwas', 'Active', '2021-08-18 09:26:41', '2021-08-18 09:26:41', NULL),
(18, 10, 'festival_video/jCxXyumGkOSXUpdE3hEW7u3hApCVVDMQngJYJo9x.mp4', 'kargil vijay diwas', 'Hindi', 'kargil vijay diwas', 'Active', '2021-08-18 09:27:11', '2021-08-18 09:27:11', NULL),
(19, 20, 'festival_video/yCneHwDkj2WHcqoTRSoRAkIhrIdyyLtwgRsUUbC1.mp4', 'kargil vijay diwas', 'English', 'kargil vijay diwas', 'Active', '2021-08-18 09:28:33', '2021-08-18 09:28:33', NULL),
(20, 19, 'festival_video/uDHnfZMfrHITm7qXj3b8d59aPBzQcJXPQTLAJg7O.mp4', 'Guru Purnima', 'English', 'Guru Purnima', 'Active', '2021-08-18 09:29:06', '2021-08-18 09:29:06', NULL),
(21, 19, 'festival_video/70ivYRHPmEkZDecmhLY7CxZHa45Y8EU33337HU2G.mp4', 'Guru Purnima', 'Hindi', 'Guru Purnima', 'Active', '2021-08-18 09:29:54', '2021-08-18 09:29:54', NULL),
(22, 15, 'festival_video/NgGLGda3WmksnlrlZXcroRlIjZTa2f784TtfSEMR', 'ram', 'Hindi', 'test', 'Active', '2021-10-01 06:40:28', '2021-10-01 06:43:05', '2021-10-01 06:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `greeting_categories`
--

CREATE TABLE `greeting_categories` (
  `id` int(25) NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `greeting_categories`
--

INSERT INTO `greeting_categories` (`id`, `language`, `name`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'Happy Birthday', 'greeting_category/j1nAiuTHrgbEuN6UkZLZi1SEbRQ8Jgk3tIMXUiau.png', 'Active', '2021-06-11 11:33:02', '2021-06-11 12:47:42', '2021-06-11 12:47:42'),
(2, NULL, 'Happy Birthday', 'greeting_category/XwFD0frwE1ShxnLvCopINqs8I9tBcGQ3wywG7Pik.png', 'Active', '2021-06-12 03:50:03', '2021-06-12 03:50:03', NULL),
(3, NULL, 'Women\'s Day', 'greeting_category/HzhcFPbpfGsghSUMQmFu0z9npv1vaBc2adDumOEa.png', 'Active', '2021-08-19 11:25:12', '2021-08-19 11:25:12', NULL),
(4, NULL, 'National Day', 'greeting_category/Y7a1NtzM1OnrAmMwCMIoEYzvbnZ3XAIYOabBeHFC.png', 'Active', '2021-08-19 11:28:51', '2021-08-19 11:28:51', NULL),
(5, NULL, 'Monther\'s Day', 'greeting_category/s4WwiYOQ2rIRsLFySxzBFTEpBgoqG1A6P6VLPXqf.png', 'Active', '2021-08-19 11:31:38', '2021-08-19 11:31:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `greeting_image`
--

CREATE TABLE `greeting_image` (
  `id` int(11) NOT NULL,
  `greeting_id` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `greeting_image`
--

INSERT INTO `greeting_image` (`id`, `greeting_id`, `image`, `title`, `description`, `language`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 'greeting_image/zB4nwHlRQRH6I7jgyeToe2YZmjLhmxYCAadHGHUG.png', 'Milk day', 'aaaa', 'English', 'Active', '2021-06-11 11:33:21', '2021-06-11 12:47:21', '2021-06-11 12:47:21'),
(2, '1', 'greeting_image/s82xEVhA7RPirHFxRI8psjAsd9RgSjVIRmWoSPpU.png', 'a', 'aaaa', 'Gujarati', 'Active', '2021-06-11 11:33:34', '2021-06-11 12:47:25', '2021-06-11 12:47:25'),
(3, '1', 'greeting_image/KvWYsIvmBkvYjadhEI2wHPVAjlfG8BkOn2jU7mH3.png', 'Milk day', 'hfghdf', 'Hindi', 'Active', '2021-06-11 11:33:48', '2021-06-11 12:47:28', '2021-06-11 12:47:28'),
(4, '1', 'greeting_image/PXeYg0RKfEjEj1GL1ctiaVmmxZCYS29lowNWDLj3.png', 'fgdf', 'df', 'English', 'Active', '2021-06-11 11:34:02', '2021-06-11 12:47:31', '2021-06-11 12:47:31'),
(5, '1', 'greeting_image/eVeTIMtV4OBsDDgA2uuEGcpAuMk61xDxdN8KxtF2.png', 'fgdf', 'hfghdf', 'English', 'Active', '2021-06-11 11:34:16', '2021-06-11 12:47:34', '2021-06-11 12:47:34'),
(6, '2', 'greeting_image/XaSWcFUM8gMDNU4TRPEEPGn3YDtHpNJShxOGvc6x.png', 'Happy Birthday', 'Happy Birthday', 'English', 'Active', '2021-06-12 03:50:30', '2021-06-12 03:50:30', NULL),
(7, '2', 'greeting_image/sLH3gB1XW4WIWI1Gl4cTDbWdJFPsfKJG1vzWSI3f.png', 'Happy Birthday', 'Happy Birthday', 'Hindi', 'Active', '2021-06-12 03:50:55', '2021-08-19 11:27:13', NULL),
(8, '2', 'greeting_image/BRgNegV6ZT8jkdh96a6N8oDbGSuOS7QR0LazPtUF.png', 'Happy Birthday', 'Happy Birthday', 'English', 'Active', '2021-06-12 03:51:07', '2021-06-12 03:51:07', NULL),
(9, '2', 'greeting_image/EB5UH6b90decJVCPUU9ALAOBAgsnGXAOisvkm1db.png', 'Happy Birthday', 'Happy Birthday', 'Hindi', 'Active', '2021-06-12 03:51:19', '2021-06-12 03:51:19', NULL),
(10, '2', 'greeting_image/fNfkdFobk1U9Nz3PcDedkA4eXHsEiNChsNFIEDas.png', 'Happy Birthday', 'Happy Birthday', 'English', 'Active', '2021-06-12 03:52:31', '2021-06-12 03:52:31', NULL),
(11, '2', 'greeting_image/qxwuvb8OJxq2wkQXnu9lpDCtZwgChzWsBMnKXtkj.png', 'Birthday', 'Greeting', 'Gujarati', 'Active', '2021-06-24 07:42:46', '2021-06-24 08:22:30', '2021-06-24 08:22:30'),
(12, '2', 'greeting_image/riNu0nZrJ5jhMgIiipcVKl8gxaMVGZg9KnIDCpas.png', 'Birthday', 'Greeting', 'Hindi', 'Active', '2021-06-24 07:44:56', '2021-06-24 08:22:25', '2021-06-24 08:22:25'),
(13, '2', 'greeting_image/kFM4bNl8VR8OEqIeubXCS1plv7PBBIFTWae7ziiw.png', 'a', 'a', 'Gujarati', 'Active', '2021-06-24 08:19:28', '2021-06-24 08:22:39', '2021-06-24 08:22:39'),
(14, '2', 'greeting_image/OQs8MG2uRGSb4LytuT6Hrpsstg4B72JvqLDjgYeT.png', 'FRAME1', 'FRAME', 'English', 'Active', '2021-06-25 05:44:21', '2021-06-25 05:44:21', NULL),
(15, '2', 'greeting_image/jU3ny3yZBWhBCnRkhwYYitGf2zHupE9csgVMQoNi.jpeg', 'f1', 'f', 'English', 'Active', '2021-06-25 05:59:30', '2021-10-13 12:23:04', NULL),
(16, '2', 'greeting_image/FA6Cfgxkh4aZ7kw7E5ouesvuZ1QG0K2TC9JplOCp.png', 'f new', 'new', 'Gujarati', 'Active', '2021-06-25 06:01:43', '2021-06-25 06:01:43', NULL),
(17, '2', 'greeting_image/9iIy9jUwoUT2NkF0XYvqAh5XOQONweACgZMpaepr.jpeg', 'aa', 'aaaa', 'Gujarati', 'Active', '2021-06-25 06:38:42', '2021-06-25 07:23:29', '2021-06-25 07:23:29'),
(18, '2', 'greeting_image/h3TfMcS4MytpPIfin70zZp0WzlbqvoJIlbzUtLbE.png', 'nk inv', 'savitri', 'Hindi', 'Active', '2021-06-25 06:39:33', '2021-06-25 07:23:20', '2021-06-25 07:23:20'),
(19, '2', 'greeting_image/DVKCk7OiNd1vfPf8RmoeXj5MybA9xAfxu9HRfq1R.png', 'canva', 'c', 'Gujarati', 'Active', '2021-06-25 07:20:14', '2021-06-25 07:23:24', '2021-06-25 07:23:24'),
(20, '2', 'greeting_image/x4Z1h45rcQCYl8a1ihd3vkeaikhrxie8dEAdbwS1.png', 'img2', 'im', 'English', 'Active', '2021-06-25 07:22:18', '2021-06-25 07:23:14', '2021-06-25 07:23:14'),
(21, '2', 'greeting_image/xm8wDU3hNuhs4431oGNSy8SolByULB8vhbBb6Vbd.png', 'nk inv', 'FRAME', 'Hindi', 'Active', '2021-06-25 07:23:44', '2021-06-25 07:29:39', '2021-06-25 07:29:39'),
(22, '2', 'greeting_image/laciASgk5fVdW4pwmrLMS99s7Ql56rOLdgijPcyQ.png', 'nk inv', 'FRAME', 'English', 'Active', '2021-06-25 07:26:07', '2021-06-25 07:29:34', '2021-06-25 07:29:34'),
(23, '2', 'greeting_image/iLarX8m2lJB81Cr91R6RlE9lmPsSllwqDuituyzJ.png', 't', 'tt', 'Hindi', 'Active', '2021-06-25 07:29:19', '2021-06-25 07:29:19', NULL),
(24, '2', 'greeting_image/rotLErnb2GU6orDcfjtywaUhJnuBDWBxeGexGYIH.png', 'aa', 'aaaa', 'English', 'Active', '2021-06-25 07:33:37', '2021-06-25 07:41:09', '2021-06-25 07:41:09'),
(25, '2', 'greeting_image/x6BnqvEcoJlBMCyFWctUd89hQXoFgEgPWc53wU6O.png', 'aa', 'aaaa', 'Hindi', 'Active', '2021-06-25 07:33:51', '2021-06-25 07:33:51', NULL),
(26, '2', 'greeting_image/RQg6xQpdyVN4GxUvq7WuEvGLMug8AdUB0UWSD11e.png', 'BIRTHDAY', 'BIRTHDAY1', 'Hindi', 'Active', '2021-06-25 07:41:50', '2021-06-25 07:41:50', NULL),
(27, '2', 'greeting_image/TUV5F3C5rW5lBeVQzugjDez8CTf8byNOHQLQQ5im.png', 'BIRTHDAY', 'BIRTHDAY2', 'English', 'Active', '2021-06-25 07:42:04', '2021-06-25 07:42:04', NULL),
(28, '2', 'greeting_image/p6M62lGIPC7FFBlB2W6LvQ1ac24w2X1LX6e69vbW.png', 'BIRTHDAY', 'BIRTHDAY3', 'Hindi', 'Active', '2021-06-25 07:42:18', '2021-06-25 07:42:18', NULL),
(29, '2', 'greeting_image/e48nL3K27iPHDlxR3LLHWOHrWv3lKkViqMMtcSXT.png', 'BIRTHDAY', 'BIRTHDAY4', 'English', 'Active', '2021-06-25 07:42:31', '2021-06-25 07:42:31', NULL),
(30, '2', 'greeting_image/LMmlWcGyBbKKOeUt8lpIjyLty57xsZEGXLnLnf6e.png', 'BIRTHDAY', 'BIRTHDAY5', 'English', 'Active', '2021-06-25 07:42:44', '2021-06-25 07:42:44', NULL),
(31, '3', 'greeting_image/rRwxNI8nQNg9K7ZcInyUC4t9jzI6czmFZb0r7DPS.png', 'Women\'s Day', 'Women\'s Day', 'English', 'Active', '2021-08-19 11:25:45', '2021-08-19 11:25:45', NULL),
(32, '3', 'greeting_image/JeQmYllutW9rzumWts1NCLC8gUjPDiKmw7nVzYnl.png', 'Women\'s Day', 'Women\'s Day', 'English', 'Active', '2021-08-19 11:26:03', '2021-08-19 11:26:03', NULL),
(33, '3', 'greeting_image/gvZFOoYwm9fdGo3vROoa07GVIU4ikItTG4Z0peOL.png', 'Women\'s Day', 'Women\'s Day', 'Hindi', 'Active', '2021-08-19 11:26:54', '2021-08-19 11:26:54', NULL),
(34, '3', 'greeting_image/5PjFCZAStO8JvqVWXG7mMZknHgVi2p6uY3uhjbPS.png', 'Women\'s Day', 'Women\'s Day', 'Gujarati', 'Active', '2021-08-19 11:27:08', '2021-08-19 11:27:08', NULL),
(35, '3', 'greeting_image/DOIuKCznNIWKAKPCxKaRE8SRbCWNPJyWf4ew22Dt.png', 'Women\'s Day', 'Women\'s Day', 'English', 'Active', '2021-08-19 11:27:29', '2021-08-19 11:27:29', NULL),
(36, '4', 'greeting_image/YBQGByZGS5S69lU074HL7B6k8MRrJ1yXDtBIHag7.png', 'National Day', 'National Day', 'English', 'Active', '2021-08-19 11:29:27', '2021-08-19 11:29:27', NULL),
(37, '4', 'greeting_image/MAJMWpfxV9Vdh9vQPcdSu1kak7HiPZvp1W6U6lba.png', 'National Day', 'National Day', 'Gujarati', 'Active', '2021-08-19 11:29:42', '2021-08-19 11:29:42', NULL),
(38, '4', 'greeting_image/pHz7SVAcGrThUd1wC2sKirrQJPdTB55nbhpVCix0.png', 'National Day', 'National Day', 'Hindi', 'Active', '2021-08-19 11:30:12', '2021-08-19 11:30:12', NULL),
(39, '4', 'greeting_image/bwDBep7pRaIzcQC2aKTGm4MVTmoZrI64G1mAprRB.png', 'National Day', 'National Day', 'Hindi', 'Active', '2021-08-19 11:30:30', '2021-08-19 11:30:30', NULL),
(40, '4', 'greeting_image/Ne7rcfTFAEW2oSmwp7Z9UJCct8TXrRlt1AyIFjga.png', 'National Day', 'National Day', 'Hindi', 'Active', '2021-08-19 11:30:50', '2021-08-19 11:30:50', NULL),
(41, '4', 'greeting_image/x77RiimmBwIo1zkpix6xKYJtJj3MzLWk3pXEVY75.png', 'National Day', 'National Day', 'Hindi', 'Active', '2021-08-19 11:31:08', '2021-08-19 11:31:08', NULL),
(42, '5', 'greeting_image/9F2IEpx4nVSAB41JaAAW9GWK0Zh8SgIcIpzjqK2O.png', 'Monther\'s Day', 'Monther\'s Day', 'English', 'Active', '2021-08-19 11:32:16', '2021-08-19 11:32:16', NULL),
(43, '5', 'greeting_image/hbdI9Ji41MqD7YcPd95GpdTnIfQMQFBk7AjrUzoj.png', 'Monther\'s Day', 'Monther\'s Day', 'English', 'Active', '2021-08-19 11:32:32', '2021-08-19 11:32:32', NULL),
(44, '5', 'greeting_image/KPcp4IPvvi4qICEILty18HcHbgSmWRC9ZpTnPkPQ.png', 'Monther\'s Day', 'Monther\'s Day', 'Hindi', 'Active', '2021-08-19 11:32:50', '2021-08-19 11:32:50', NULL),
(45, '5', 'greeting_image/4h7cJBssbenx92iMxhJVGHfyGYTIqI7O36kC5lkU.png', 'Monther\'s Day', 'Monther\'s Day', 'Gujarati', 'Active', '2021-08-19 11:33:13', '2021-08-19 11:33:13', NULL),
(46, '5', 'greeting_image/Crlaxh9vfYqdfn1FSboO9cfOOQqiBN6HrCoi5WvH.png', 'Monther\'s Day', 'Monther\'s Day', 'Gujarati', 'Active', '2021-08-19 11:33:32', '2021-08-19 11:33:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_upload`
--

CREATE TABLE `image_upload` (
  `id` int(20) NOT NULL,
  `category_id` int(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'Inactive',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `image_upload`
--

INSERT INTO `image_upload` (`id`, `category_id`, `image`, `title`, `language`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'category_image/GunGl1hrF3IAuRc8KcH0tcSdnADJ7qblfAkJ1TiE.jpeg', 'ts', NULL, NULL, 'Active', '2021-06-05 07:49:41', '2021-06-05 08:02:35', '2021-06-05 08:02:35'),
(2, 1, 'category_image/iiKfcATwWiktd2OclQSuVtAEnoGWhqKOrM8odtbn.jpeg', 'adkfjaksdfjaksdjfk akdjfkajsdkfjaksdjfkolajsdfkkaxdjfkjaskodf jkasjdfkjuasiofjalksdjfklajskolf akoljsdfkljaskold fj sdf asdfasdfasdfasdfasdf adfsa dfsadfas dfasdf sdf adsf asfd', NULL, 'adkfjaksdfjaksdjfk akdjfkajsdkfjaksdjfkolajsdfkkaxdjfkjaskodf jkasjdfkjuasiofjalksdjfklajskolf akoljsdfkljaskold fj sdf asdfasdfasdfasdfasdf adfsa dfsadfas dfasdf sdf adsf asfds dlfklaksdlfkasldkflaks', 'Active', '2021-06-05 07:50:43', '2021-06-05 08:02:35', '2021-06-05 08:02:35'),
(3, NULL, NULL, 'test', NULL, 'teste', 'Active', '2021-06-05 08:03:15', '2021-06-05 08:40:49', '2021-06-05 08:40:49'),
(4, NULL, NULL, 'a', NULL, NULL, 'Active', '2021-06-05 08:03:30', '2021-06-05 08:07:39', '2021-06-05 08:07:39'),
(5, 2, 'category_image/3viTijf907Xqt7zzMiMCFJzMQ5X1pmbfhaVr5O50.jpeg', 'fds', 'English', 'g', 'Active', '2021-06-05 18:52:33', '2021-06-08 08:03:49', '2021-06-08 08:03:49'),
(6, 5, 'category_image/eRBOchsICSh01dAAz5dJp7J2DCE999i6zj0Qu6Nz.png', 'health', 'Gujarati', 'test', 'Active', '2021-06-08 08:12:31', '2021-06-14 07:23:05', '2021-06-14 07:23:05'),
(7, 6, 'category_image/fShYQhCFIk8gpgXBy8eBrqwNzZ62eNg3F2zvIo16.jpeg', 'tila1', 'Gujarati', 'hii', 'Active', '2021-06-10 06:03:19', '2021-08-09 11:40:19', '2021-08-09 11:40:19'),
(8, 5, 'category_image/rcJ55PD76D8lIY0hOleuigTurPiOpiYSP9uboqim.jpeg', 'Milk day', 'Hindi', 'Milk day', 'Active', '2021-06-11 04:43:26', '2021-06-14 07:23:52', '2021-06-14 07:23:52'),
(9, 5, 'category_image/2ITCtn0PIyUWmnPAivwQ0XsxTabLUdJ2DurkNDRi.jpeg', 'dfg df', 'English', 'df g', 'Active', '2021-06-11 04:44:53', '2021-06-14 07:26:17', '2021-06-14 07:26:17'),
(10, 5, 'category_image/IcbUe5dJIDWsVyp9K0u1cEIEs1GzKdV2tXiSKJje.jpeg', 'hi', 'Gujarati', 'holy', 'Active', '2021-06-14 07:23:25', '2021-06-14 07:26:17', '2021-06-14 07:26:17'),
(11, 6, 'category_image/2uFeSQPkFDHsq6VowpGD16UbR56UQ10uBf51tJi9.jpeg', '12', 'Hindi', 'aaa', 'Active', '2021-06-14 07:24:14', '2021-08-09 11:40:19', '2021-08-09 11:40:19'),
(12, 7, 'category_image/77qIzMChPmyuSm3dH6jDxVztTwmJtX1fUezJEwH7.jpeg', 'hi', 'Gujarati', 'hi', 'Active', '2021-06-14 07:28:38', '2021-06-14 07:32:44', '2021-06-14 07:32:44'),
(13, 7, 'category_image/9pVElYqCPjB6lbhnbRtHow6vUnGeQ5xq7mCEOnMO.jpeg', 'hi', 'Gujarati', 'hi', 'Active', '2021-06-14 07:28:39', '2021-06-14 07:32:49', '2021-06-14 07:32:49'),
(14, 7, 'category_image/uANmuyKusXEZyRgqI367KjW9dvPLu1iaFRDue7Aj.jpeg', 'hi', 'Hindi', 'hi', 'Active', '2021-06-14 07:28:59', '2021-08-09 11:40:24', '2021-08-09 11:40:24'),
(15, 7, 'category_image/lmK7MLmpgKzQ1EQgFAuJBuqWcZvHqL6q8Dx4ZHI8.jpeg', 'holi', 'English', 'holi', 'Active', '2021-06-14 07:29:30', '2021-08-09 11:40:24', '2021-08-09 11:40:24'),
(16, 7, 'category_image/E1ehXQw0oOXO3XU42OjGh3c4Utun6Pe5xUNQKjyV.jpeg', 'holi', 'Gujarati', 'holy', 'Active', '2021-06-14 07:33:39', '2021-08-09 11:40:24', '2021-08-09 11:40:24'),
(17, 8, 'category_image/d0xs4YeUVSU8abVyifqTZFvoycxvZVNjzNfuzeZz.jpeg', 'd1', 'Hindi', 'd1', 'Active', '2021-06-14 08:04:19', '2021-06-14 08:06:43', '2021-06-14 08:06:43'),
(18, 8, 'category_image/st2Ugx9OrDM9S1Tjozuaph5dv3cHYee7mFSRi9mV.jpeg', 'ddd', 'Gujarati', 'ad', 'Active', '2021-06-14 08:04:40', '2021-06-14 08:06:43', '2021-06-14 08:06:43'),
(19, 8, 'category_image/kyYVcvmVug4W5uWsdnZQKOXJnHs3JsabRmKiukgh.jpeg', 'd1', 'English', 'dsa', 'Active', '2021-06-14 08:04:59', '2021-06-14 08:06:43', '2021-06-14 08:06:43'),
(20, 9, 'category_image/rJakoXf1vzskGbCP4VSRm8NAjpjxDtWbE96LvluL.jpeg', 'hi', 'Gujarati', 'test', 'Active', '2021-06-14 08:09:47', '2021-08-09 11:40:27', '2021-08-09 11:40:27'),
(21, 10, 'category_image/l9dm4iSK22ZU4y5WZxr4W9MoNgfzAMJDMMHbpUPx.png', 'make sankranti', 'English', 'make sankranti', 'Active', '2021-08-09 11:42:18', '2021-10-18 09:20:11', NULL),
(22, 10, 'category_image/LWR8zpDvWKZvj5XSn50ZiczFcLMreqCvC8kizLJM.png', 'make sankranti', 'English', 'make sankranti', 'Active', '2021-08-09 11:42:32', '2021-08-09 11:42:32', NULL),
(23, 10, 'category_image/4bLA4YVn6lVU4ADlxRV0XwWgnZuCVra2kAylUB2S.png', 'make sankranti', 'English', 'make sankranti', 'Active', '2021-08-09 11:42:52', '2021-10-13 06:30:38', NULL),
(24, 10, 'category_image/9fIXAMhwjrNss289RabxeP1rK3SsnQEdp5ylWATh.png', 'make sankranti', 'English', 'make sankranti', 'Active', '2021-08-09 11:43:03', '2021-08-09 11:43:03', NULL),
(25, 10, 'category_image/fET0OX3ngwcZ5DDroLdScFSGaxuHUQEJEBaKc3er.png', 'make sankranti', 'English', 'make sankranti', 'Active', '2021-08-09 11:43:15', '2021-08-09 11:43:15', NULL),
(26, 10, 'category_image/VgIr3ffKvF8Wnx5u0BxLBFG1eyT1448V6mwWqCIy.png', 'make sankranti', 'English', 'make sankranti', 'Active', '2021-08-09 11:43:32', '2021-08-09 11:43:32', NULL),
(27, 10, 'category_image/zFQiSh0HqwkLTPj96LJ0HrdPNO8gpRw7rfEDFaaH.png', 'make sankranti', 'English', 'make sankranti', 'Active', '2021-08-09 11:43:41', '2021-08-09 11:43:41', NULL),
(28, 10, 'category_image/FQwyhklxVx7TxWrPNYN5v5qI95nBCxc3t1pF43ah.png', 'make sankranti', 'English', 'make sankranti', 'Active', '2021-08-09 11:43:54', '2021-08-09 11:43:54', NULL),
(29, 10, 'category_image/XMqHJBHqzq5U5CfQDebFH8zQnf1307podc3Bcn5M.png', 'make sankranti', 'English', 'make sankranti', 'Active', '2021-08-09 11:44:05', '2021-08-09 11:44:27', NULL),
(30, 10, 'category_image/8U8wtmM9FtXjC0LXL7tFvxo5CybpKx0qjCiwcweW.png', 'make sankranti', 'English', 'make sankranti', 'Active', '2021-08-09 11:44:38', '2021-08-09 11:44:38', NULL),
(31, 11, 'category_image/ExjrqZyCmfiiX8kfHUyfVX6idXerVfJ141iR1nuN.png', 'Republic Day', 'English', 'Republic Day', 'Active', '2021-08-09 12:29:23', '2021-08-09 12:29:23', NULL),
(32, 11, 'category_image/GcdxXYl5oXIZPR5HNBbtuPBHdQgL6O7usIRvj1ke.png', 'Republic Day', 'English', 'Republic Day', 'Active', '2021-08-09 12:29:40', '2021-08-09 12:29:40', NULL),
(33, 11, 'category_image/tLyaNAbuqSgRzMLFiW8QyxgjAaa3SkhLyZWhdMUA.png', 'Republic Day', 'English', 'Republic Day', 'Active', '2021-08-09 12:29:53', '2021-08-09 12:29:53', NULL),
(34, 11, 'category_image/ltcc4MYS5Lw2LvObsGCebZlTGIVhuWhqJTd0CW2L.png', 'Republic Day', 'Hindi', 'Republic Day', 'Active', '2021-08-09 12:30:05', '2021-08-09 12:33:02', NULL),
(35, 11, 'category_image/e3HNoqtv1XrIhOqFFwtjwcqhBgzYJOudUeALaTu7.png', 'Republic Day', 'English', 'Republic Day', 'Active', '2021-08-09 12:30:17', '2021-08-09 12:33:07', NULL),
(36, 11, 'category_image/iXZpVbs32pwDqCPf52Ds9JLVTwkwUtxEkKVhRW5C.png', 'Republic Day', 'English', 'Republic Day', 'Active', '2021-08-09 12:30:30', '2021-08-09 12:33:14', NULL),
(37, 11, 'category_image/dWqUYOcggdgjwD1T6JOOQ6uMw4joGrDwwkHjNfHs.png', 'Republic Day', 'English', 'Republic Day', 'Active', '2021-08-09 12:30:48', '2021-08-09 12:30:48', NULL),
(38, 11, 'category_image/zCWoPIpcHfVI2JmTRdZm6WdWgUgkkDCZc0gqDNhK.png', 'Republic Day', 'English', 'Republic Day', 'Active', '2021-08-09 12:31:00', '2021-08-09 12:31:00', NULL),
(39, 11, 'category_image/oG2xmf7tP6q4CxjLfraFbeUH6vkiwbaDLeeaIOyI.png', 'Republic Day', 'English', 'Republic Day', 'Active', '2021-08-09 12:31:09', '2021-08-09 12:35:16', NULL),
(40, 11, 'category_image/vhbg6AXERWcBay0bzP4lpCNLHywPmmsbf87LilU7.png', 'Republic Day', 'English', 'Republic Day', 'Active', '2021-08-09 12:31:42', '2021-08-09 12:31:42', NULL),
(41, 12, 'category_image/mmAAG6ytt93ZN3YhZOKRm9ga2E3c1xJx9SV002aJ.png', 'Indian Army Day', 'English', 'Indian Army Day', 'Active', '2021-08-09 13:43:27', '2021-10-13 14:09:29', '2021-10-13 14:09:29'),
(42, 12, 'category_image/KitIltrK7vpx2ZmXEJlpLHFyEJU8qHg07gO1FsQ0.png', 'Indian Army Day', 'English', 'Indian Army Day', 'Active', '2021-08-09 13:43:38', '2021-10-13 14:09:29', '2021-10-13 14:09:29'),
(43, 12, 'category_image/bXHejKcnQzAS0Sc9uWBEfSjKuA9dKeqN9mBYb4p7.png', 'Indian Army Day', 'English', 'Indian Army Day', 'Active', '2021-08-09 13:43:51', '2021-10-13 14:09:29', '2021-10-13 14:09:29'),
(44, 10, 'category_image/h7uS5K44Dsw0Nkn3js07GOk8ZySRUsXi6tbWJZCE.png', 'Indian Army Day', 'English', 'Indian Army Day', 'Active', '2021-08-09 13:44:07', '2021-08-09 13:44:07', NULL),
(45, 12, 'category_image/sYXvRXH7mnkIHeOTzL9BjV5nEaAcAaTGvCBVcahB.png', 'Indian Army Day', 'English', 'Indian Army Day', 'Active', '2021-08-09 13:44:22', '2021-10-13 14:09:29', '2021-10-13 14:09:29'),
(46, 12, 'category_image/bWmPqkFg1pRwVoCGiHg619XVQea4eijWAvaIWpG1.png', 'Indian Army Day', 'English', 'Indian Army Day', 'Active', '2021-08-09 13:44:36', '2021-10-13 14:09:29', '2021-10-13 14:09:29'),
(47, 12, 'category_image/WwkPd6Ov7Y44sWnIaGwFembBr5AhhcIJdvJyYSqt.png', 'Indian Army Day', 'English', 'Indian Army Day', 'Active', '2021-08-09 13:44:47', '2021-10-13 14:09:29', '2021-10-13 14:09:29'),
(48, 12, 'category_image/5xXThmbTNOksfmABBa9CojWAZfggUclLxpqLvQag.png', 'Indian Army Day', 'English', 'Indian Army Day', 'Active', '2021-08-09 13:45:27', '2021-10-13 14:09:29', '2021-10-13 14:09:29'),
(49, 12, 'category_image/Pmg6nAHDBHQ4Cr66Ga0DulWEWDvMFSmGYuaxStXB.png', 'Indian Army Day', 'English', 'Indian Army Day', 'Active', '2021-08-09 13:45:40', '2021-10-13 14:09:29', '2021-10-13 14:09:29'),
(50, 13, 'category_image/XKvpLdtyWH4nvm8uS6zyRqvOnvtNGos8rQjaRaEi.png', 'World Cancer Day', 'English', 'World Cancer Day', 'Active', '2021-08-09 18:34:36', '2021-08-09 18:34:36', NULL),
(51, 10, 'category_image/SFFBCbBUczkD7KZxQ3wHNNjPQxnycBJ2Q0UfQctC.png', 'World Cancer Day', 'English', 'World Cancer Day', 'Active', '2021-08-09 18:38:21', '2021-08-09 18:38:21', NULL),
(52, 13, 'category_image/nlJq6LNkg1iWlHeHgNFbptwprbhx4SJhORWnLAVZ.png', 'World Cancer Day', 'English', 'World Cancer Day', 'Active', '2021-08-09 18:41:29', '2021-08-09 18:41:29', NULL),
(53, 13, 'category_image/elXlx6J2ZEBn0Z3OV15g1MGzdiPjAsHviDpUNLoC.png', 'World Cancer Day', 'English', 'World Cancer Day', 'Active', '2021-08-09 18:41:42', '2021-08-09 18:41:42', NULL),
(54, 13, 'category_image/2p05SyFzuJ1D1a2zPLnvYtM3b5Q8IFM5597yBi9c.png', 'World Cancer Day', 'English', 'World Cancer Day', 'Active', '2021-08-09 18:41:55', '2021-08-09 18:41:55', NULL),
(55, 13, 'category_image/53hm8u0hPJlADRyQpMfGQy0MFDvnhFCSl1OAPn1z.png', 'World Cancer Day', 'English', 'World Cancer Day', 'Active', '2021-08-09 18:42:08', '2021-08-09 18:42:08', NULL),
(56, 13, 'category_image/m4SqK44RqQPzZcHv9S92Rb8v2xlOBORr3n0zBder.png', 'World Cancer Day', 'English', 'World Cancer Day', 'Active', '2021-08-09 18:42:20', '2021-08-09 18:42:20', NULL),
(57, 10, 'category_image/LgNGy4tIpJlWufiPEEoxe9ZUVqOqJNSB6CEabOXS.png', 'World Cancer Day', 'English', 'World Cancer Day', 'Active', '2021-08-09 18:42:30', '2021-08-09 18:42:30', NULL),
(58, 13, 'category_image/8QitBLPWI2rLBBS4C2agc3zjlQmh9fzrG0VW9jZ6.png', 'World Cancer Day', 'English', 'World Cancer Day', 'Active', '2021-08-09 18:42:42', '2021-08-09 18:43:28', '2021-08-09 18:43:28'),
(59, 13, 'category_image/vSDE4Wdl3OLkd5nMJiXblcHyp4UFSCHvZoRBaqEA.png', 'World Cancer Day', 'English', 'World Cancer Day', 'Active', '2021-08-09 18:43:02', '2021-08-09 18:43:02', NULL),
(60, 13, 'category_image/Yzs4DatOjMUJUuNw5dZ1Wfhn0MXv8C6QuDWJhkEo.png', 'World Cancer Day', 'English', 'World Cancer Day', 'Active', '2021-08-09 18:43:15', '2021-08-09 18:43:15', NULL),
(61, 14, 'category_image/pSzYTAbmQg1BfxgNKP9Vj3BxMTpZfCedBf9bBAep.png', 'Maha Shivratri', 'English', 'Maha Shivratri', 'Active', '2021-08-09 19:10:27', '2021-08-09 19:10:27', NULL),
(62, 14, 'category_image/SsFQemUVuxIMc5JDmsP66rPZwAHCdex9448vaVKu.png', 'Maha Shivratri', 'English', 'Maha Shivratri', 'Active', '2021-08-09 19:11:06', '2021-08-09 19:11:06', NULL),
(63, 14, 'category_image/Ord1Zq9jQAEHoCaH6OwZfp3fiJPg9f1xSXGdJjiv.png', 'Maha Shivratri', 'English', 'Maha Shivratri', 'Active', '2021-08-09 19:11:21', '2021-08-09 19:11:21', NULL),
(64, 14, 'category_image/sr2ttTt0tcbdE4HkGNECTCqW4PkpREcpexzTZdmm.png', 'Maha Shivratri', 'English', 'Maha Shivratri', 'Active', '2021-08-09 19:11:33', '2021-08-09 19:11:33', NULL),
(65, 14, 'category_image/LgtM9JEcTjubEM5L8OZIWRnChqXtCniHcpzE0nJM.png', 'Maha Shivratri', 'English', 'Maha Shivratri', 'Active', '2021-08-09 19:11:45', '2021-08-09 19:11:45', NULL),
(66, 14, 'category_image/8fDVgm6wNae6iy4ybLZKXX5B2fNM5WaeFDZn1Q4L.png', 'Maha Shivratri', 'English', 'Maha Shivratri', 'Active', '2021-08-09 19:12:00', '2021-08-09 19:12:00', NULL),
(67, 14, 'category_image/bMg9tDd6145Vxq4VnSBNSG8JdLva4lMnI7jVAghw.png', 'Maha Shivratri', 'English', 'Maha Shivratri', 'Active', '2021-08-09 19:12:25', '2021-08-09 19:12:25', NULL),
(68, 15, 'category_image/pj4aYvV8If6Ftv4F2igwxg8mW2NtG77akMbzN3gK.png', 'Ramnavami', 'English', 'Ramnavami', 'Active', '2021-08-09 19:13:26', '2021-08-09 19:13:26', NULL),
(69, 15, 'category_image/grKGGSn6CygUv0h6k8SQbcfGp1WgUBi3EpT5Hja9.png', 'Ramnavami', 'English', 'Ramnavami', 'Active', '2021-08-09 19:13:45', '2021-08-09 19:13:45', NULL),
(70, 15, 'category_image/lENWT9blsTuf7B0g4MyweAxSwlh64KnX55PSKyBF.png', 'Ramnavami', 'English', 'Ramnavami', 'Active', '2021-08-09 19:14:03', '2021-08-09 19:14:03', NULL),
(71, 15, 'category_image/vv6dqH8iY45bVEn8kVMDmvGTvYVlN4JPiCAgHmjd.png', 'Ramnavami', 'English', 'Ramnavami', 'Active', '2021-08-09 19:14:16', '2021-08-09 19:14:16', NULL),
(72, 15, 'category_image/RFEizAxBwlCAT6FhdNqO1OmJcVp3WKENEGLJHFm1.png', 'Ramnavami', 'English', 'Ramnavami', 'Active', '2021-08-09 19:14:27', '2021-08-09 19:14:27', NULL),
(73, 15, 'category_image/bil0z0tQ5RZ1kAE7yr0sf3ZzpnuniyFiCdr8oY7Q.png', 'Ramnavami', 'English', 'Ramnavami', 'Active', '2021-08-09 19:14:48', '2021-08-09 19:14:48', NULL),
(74, 15, 'category_image/DUvhliOMdlQg3sn6LctjaLajCyR5CJnBd3NglsQq.png', 'Ramnavami', 'English', 'Ramnavami', 'Active', '2021-08-09 19:15:03', '2021-08-09 19:15:03', NULL),
(75, 16, 'category_image/dNyBWaNMYVvYcVGDzTS0KZ4gUUNgG18MukJRXRCx.png', 'Mahavir Jayanti', 'English', 'Mahavir Jayanti', 'Active', '2021-08-09 19:33:43', '2021-08-09 19:33:43', NULL),
(76, 16, 'category_image/k12Xhr917Rzb32BlJKl2V96iRoCfmX54n2AiSuAo.png', 'Mahavir Jayanti', 'English', 'Mahavir Jayanti', 'Active', '2021-08-09 19:33:55', '2021-08-09 19:33:55', NULL),
(77, 16, 'category_image/l6jmYG8Giafj6d3GoZ3wGal082MDu4npsJB2wqm5.png', 'Mahavir Jayanti', 'English', 'Mahavir Jayanti', 'Active', '2021-08-09 19:34:23', '2021-08-09 19:34:23', NULL),
(78, 16, 'category_image/SAHypBgiSzPXvaoWkS7gprphk68WP1SryeeIXrpe.png', 'Mahavir Jayanti', 'English', 'Mahavir Jayanti', 'Active', '2021-08-09 19:34:35', '2021-08-09 19:34:35', NULL),
(79, 16, 'category_image/IZWNLNgT1CxsuZqA5UESJM9f2Vt6ACo4oudifNNc.png', 'Mahavir Jayanti', 'English', 'Mahavir Jayanti', 'Active', '2021-08-09 19:34:48', '2021-08-09 19:34:48', NULL),
(80, 16, 'category_image/SBTRIXs2k9W6saWbuZgjuAGl44i3Q0KLzcGpAqku.png', 'Mahavir Jayanti', 'English', 'Mahavir Jayanti', 'Active', '2021-08-09 19:35:02', '2021-08-09 19:35:02', NULL),
(81, 16, 'category_image/VRXXOIDchB9h9Sy1LvOuSefqaESnYngtqJFiTif1.png', 'Mahavir Jayanti', 'English', 'Mahavir Jayanti', 'Active', '2021-08-09 19:35:14', '2021-08-09 19:35:14', NULL),
(82, 16, 'category_image/zVAUTdOHYIhWsPe26vGnikYgI1IpXMlfLrffYNOX.png', 'Mahavir Jayanti', 'English', 'Mahavir Jayanti', 'Active', '2021-08-09 19:35:41', '2021-08-09 19:35:41', NULL),
(83, 16, 'category_image/qJbbi7yWyIYPe2IOgfywynmErBzWtbub21RbJgeN.png', 'Mahavir Jayanti', 'English', 'Mahavir Jayanti', 'Active', '2021-08-09 19:35:59', '2021-08-09 19:35:59', NULL),
(84, 17, 'category_image/HiXWWKMzloPhDaCJ8Kt7e4TfcWJdIxcNq40LHvka.png', 'Hanuman Jayanti', 'English', 'Hanuman Jayanti', 'Active', '2021-08-09 19:42:07', '2021-08-09 19:42:07', NULL),
(85, 17, 'category_image/PW3chPNDqgX6pdU2xO3ZFWot72I1pIpm6j2BjEjb.png', 'Hanuman Jayanti', 'Hindi', 'Hanuman Jayanti', 'Active', '2021-08-09 19:42:19', '2021-08-09 19:42:19', NULL),
(86, 17, 'category_image/n4Ce5oCFq2EPwS5JiFxk1bnF2FUplvbAogqYFFwh.png', 'Hanuman Jayanti', 'Hindi', 'Hanuman Jayanti', 'Active', '2021-08-09 19:42:52', '2021-08-09 19:42:52', NULL),
(87, 17, 'category_image/SoQsAyhgme9VSqBBGe01oSFbX8D59GyVP3bMv7g2.png', 'Hanuman Jayanti', 'English', 'Hanuman Jayanti', 'Active', '2021-08-09 19:43:15', '2021-08-09 19:43:15', NULL),
(88, 17, 'category_image/1hxCd3qhXBWP9s5VJJ1yWpJGRJQbvnOrelzQ3de9.png', 'Hanuman Jayanti', 'English', 'Hanuman Jayanti', 'Active', '2021-08-09 19:43:34', '2021-08-09 19:43:34', NULL),
(89, 17, 'category_image/KguDv29ueNxBvwzStWdnm2xAPKteExEDE7muTqx6.png', 'Hanuman Jayanti', 'Hindi', 'Hanuman Jayanti', 'Active', '2021-08-09 19:44:02', '2021-08-09 19:44:02', NULL),
(90, 17, 'category_image/bHuHpnxKEdwJ00EyJjX8wrdVPVSKIf2ZHCFc4qsC.png', 'Hanuman Jayanti', 'Hindi', 'Hanuman Jayanti', 'Active', '2021-08-09 19:46:53', '2021-08-09 19:46:53', NULL),
(91, 17, 'category_image/KOGBxptSSDIGvNIlVnwyLooALbhQkEG6IqppYneo.png', 'Hanuman Jayanti', 'Hindi', 'Hanuman Jayanti', 'Active', '2021-08-09 19:47:07', '2021-08-09 19:47:07', NULL),
(92, 10, 'category_image/Kai8dUYftknQ4OhroVieFXQcPkMUxzYy14wszy3r.png', 'Hanuman Jayanti', 'Hindi', 'Hanuman Jayanti', 'Active', '2021-08-09 19:47:19', '2021-08-09 19:47:19', NULL),
(93, 17, 'category_image/Yr2GwcaAItp971zuESHx6tllwucP6uhtBkOembuJ.png', 'Hanuman Jayanti', 'English', 'Hanuman Jayanti', 'Active', '2021-08-09 19:47:34', '2021-08-09 19:47:34', NULL),
(94, 18, 'category_image/XtlJd0BlxWLeYrvwEz9ht3pgERXfJuY7At8u7EPx.png', 'Rathyatra', 'English', 'Rathyatra', 'Active', '2021-08-09 19:57:31', '2021-08-09 19:57:31', NULL),
(95, 18, 'category_image/ay6TUiPKEEqHAEUrbE7HRW4hcs0MF0nK7g23G8C6.png', 'Rathyatra', 'English', 'Rathyatra', 'Active', '2021-08-09 19:57:58', '2021-08-09 19:57:58', NULL),
(96, 18, 'category_image/oErXj7OTzc5KP70aXRxt4SddXrKJdgSw9MzGOmEh.png', 'Rathyatra', 'English', 'Rathyatra', 'Active', '2021-08-09 19:58:12', '2021-08-09 19:58:12', NULL),
(97, 18, 'category_image/madjCJ8ILHcu8rKGGKy0uKAO9LJ2W6Krp38gIwe8.png', 'Rathyatra', 'English', 'Rathyatra', 'Active', '2021-08-09 19:58:24', '2021-08-09 19:58:24', NULL),
(98, 18, 'category_image/ZSTw8UL2IB4faaYjosFmYg4LBBSrcEee5tg33H64.png', 'Rathyatra', 'Hindi', 'Rathyatra', 'Active', '2021-08-09 19:58:39', '2021-08-09 19:58:39', NULL),
(99, 18, 'category_image/uwj7kbM3MKwzTwAN6hatKfa17KdkbEDBSiFL7XLV.png', 'Rathyatra', 'English', 'Rathyatra', 'Active', '2021-08-09 19:58:52', '2021-08-09 19:58:52', NULL),
(100, 18, 'category_image/jXhikUAQ8H4ZqClBSH6NNeUzGPi3QqCaNJDyNasR.png', 'Rathyatra', 'English', 'Rathyatra', 'Active', '2021-08-09 19:59:13', '2021-08-09 19:59:13', NULL),
(101, 19, 'category_image/FyOdtm8lKjIXFFkOOg5MXY9AYIRT6h3rP6DcRdXk.png', 'Guru Purnima', 'English', 'Guru Purnima', 'Active', '2021-08-09 20:05:03', '2021-08-09 20:05:03', NULL),
(102, 19, 'category_image/XMfh7sXZrwMbp0iajyU3pcEQ2U2whby4MLrarHqu.png', 'Guru Purnima', 'Hindi', 'Guru Purnima', 'Active', '2021-08-09 20:05:17', '2021-08-09 20:05:17', NULL),
(103, 19, 'category_image/Zcmsryl0nJ6jVZHTDpFaZpOCWPEIF1A1fle4bkKW.png', 'Guru Purnima', 'Hindi', 'Guru Purnima', 'Active', '2021-08-09 20:05:50', '2021-08-09 20:05:50', NULL),
(104, 19, 'category_image/eTc3m4wxiNz80l26yyTIvT0w2QFlTZnRFXL0YkWR.png', 'Guru Purnima', 'Hindi', 'Guru Purnima', 'Active', '2021-08-09 20:09:54', '2021-08-09 20:09:54', NULL),
(105, 19, 'category_image/MVMePirogbTBXdu4M4xja9Ql7uAZj5Y2u8HojvHw.png', 'Guru Purnima', 'Hindi', 'Guru Purnima', 'Active', '2021-08-09 20:12:18', '2021-08-09 20:12:18', NULL),
(106, 19, 'category_image/2DajdWMMoA1quKPDzVkLsxmo064iIIakFKBXZgMX.png', 'Guru Purnima', 'Hindi', 'Guru Purnima', 'Active', '2021-08-09 20:12:37', '2021-08-09 20:12:37', NULL),
(107, 19, 'category_image/Wlgns5Te934GhDT0odMhOtRwDk7f6UW2BHvJaycw.png', 'Guru Purnima', 'Hindi', 'Guru Purnima', 'Active', '2021-08-09 20:13:08', '2021-08-09 20:13:08', NULL),
(108, 19, 'category_image/F6OMBCZ9a4JQh4kFkLBs7SRRcny0oFCXjXyJZW45.png', 'Guru Purnima', 'English', 'Guru Purnima', 'Active', '2021-08-09 20:13:22', '2021-08-09 20:13:22', NULL),
(109, 20, 'category_image/3tAfBJ4DExlo0aG4PpwG5IpPOYaFEqxg7b7WKKIf.png', 'Kargil Vijay Diwas', 'English', 'Kargil Vijay Diwas', 'Active', '2021-08-10 06:40:13', '2021-08-10 06:40:13', NULL),
(110, 20, 'category_image/ZuBJibW2y3YJfDBHN9uL7amBRFDQ6sxAxVEB4Vzo.png', 'Kargil Vijay Diwas', 'English', 'Kargil Vijay Diwas', 'Active', '2021-08-10 06:40:52', '2021-08-10 06:40:52', NULL),
(111, 20, 'category_image/BDSPmKqpCWyprgsbp6YmzLD6qTiZnd2FdrxfFR0M.png', 'Kargil Vijay Diwas', 'English', 'Kargil Vijay Diwas', 'Active', '2021-08-10 06:41:27', '2021-08-10 06:41:27', NULL),
(112, 20, 'category_image/1eoI6bURVAsRJJtIOfsqr4fSkI2zaLY0zxNy8Vrn.png', 'Kargil Vijay Diwas', 'English', 'Kargil Vijay Diwas', 'Active', '2021-08-10 06:41:46', '2021-08-10 06:41:46', NULL),
(113, 21, 'category_image/PyKvaTdGS9J55Z8M10WRcbwcdvmXBzTrGWJTEIa5.png', 'Rakshabandhan', 'English', 'Rakshabandhan', 'Active', '2021-08-10 07:01:59', '2021-08-10 07:01:59', NULL),
(114, 10, 'category_image/7pYOAbLxBtJ9JXKXy1FiZ1491FaZxs81DrXWbWc6.png', 'Rakshabandhan', 'Hindi', 'Rakshabandhan', 'Active', '2021-08-10 07:02:26', '2021-08-10 07:02:26', NULL),
(115, 10, 'category_image/dULL1dzUEhxqXO5YznSVOq9QAgwMCm8k3k0Pq4cc.png', 'Rakshabandhan', 'Hindi', 'Rakshabandhan', 'Active', '2021-08-10 07:02:49', '2021-08-10 07:02:49', NULL),
(116, 21, 'category_image/UenmQ7pz7df7aSaZGItJHp29SSd4IRT4WDPyHrXK.png', 'Rakshabandhan', 'English', 'Rakshabandhan', 'Active', '2021-08-10 07:03:11', '2021-08-10 07:03:11', NULL),
(117, 21, 'category_image/2aLOXUoNHvyn7GCv5PjhdvPWIn4RBdsL5Pw9bOnN.png', 'Rakshabandhan', 'Hindi', 'Rakshabandhan', 'Active', '2021-08-10 07:03:54', '2021-08-10 07:03:54', NULL),
(118, 21, 'category_image/W7ul9kF3IwOJOIaIKhLeffWNp2dqBQDUPRuQnU0g.png', 'Rakshabandhan', 'Hindi', 'Rakshabandhan', 'Active', '2021-08-10 07:04:07', '2021-08-10 07:04:07', NULL),
(119, 21, 'category_image/RwUZC2Ub7ZGK70wjAGY6jc9g2b6oV7OoAs6rYb7h.png', 'Rakshabandhan', 'English', 'Rakshabandhan', 'Active', '2021-08-10 07:04:20', '2021-08-10 07:04:20', NULL),
(120, 22, 'category_image/mxZVZZWBKvkXV5vv8Ta0zGUcYa0bxUYtGIk3OzY7.png', 'Janmastami', 'English', 'Janmastami', 'Active', '2021-08-10 07:08:19', '2021-08-10 07:08:19', NULL),
(121, 22, 'category_image/RA997Duk1ZrYLxF9C2ciCc0g0BtpC6QoSvwia3tX.png', 'Janmastami', 'English', 'Janmastami', 'Active', '2021-08-10 07:08:34', '2021-08-10 07:08:34', NULL),
(122, 22, 'category_image/MLUYDB2fvuqoXr3HQxFnPDNqWzDQJXboV2Mk0YwB.png', 'Janmastami', 'English', 'Janmastami', 'Active', '2021-08-10 07:08:50', '2021-08-10 07:08:50', NULL),
(123, 22, 'category_image/xFpdpHgbHLL3YVDiCzWKtvSqJuGW93Xzvhvxu05g.png', 'Janmastami', 'Gujarati', 'Janmastami', 'Active', '2021-08-10 07:09:06', '2021-08-10 07:09:06', NULL),
(124, 22, 'category_image/Wz3iw7fMQjl89k6yenoSLKrRxpeHF3ckuDzxdYBY.png', 'Janmastami', 'English', 'Janmastami', 'Active', '2021-08-10 07:09:39', '2021-08-10 07:09:39', NULL),
(125, 22, 'category_image/0AyJQ7bnIFVgKv82mc2r2Psr36TFjn75N1nyrDB6.png', 'Janmastami', 'Hindi', 'Janmastami', 'Active', '2021-08-10 07:09:59', '2021-08-10 07:09:59', NULL),
(126, 22, 'category_image/lE4AHNteIkeGIqJIJLbEPWhsWq2mV5Okmla6Oxhl.png', 'Janmastami', 'Hindi', 'Janmastami', 'Active', '2021-08-10 07:10:21', '2021-08-10 07:10:21', NULL),
(127, 22, 'category_image/pAej4SkkjR883IkGliLUZDSh6Aga1UgYc8RydYZG.png', 'Janmastami', 'English', 'Janmastami', 'Active', '2021-08-10 07:10:41', '2021-08-10 07:10:41', NULL),
(128, 22, 'category_image/fcNzvucVZqKefLj7a848FR6mzGG37fSSLcsqDYdc.png', 'Janmastami', 'English', 'Janmastami', 'Active', '2021-08-10 07:11:04', '2021-08-10 07:11:04', NULL),
(129, 22, 'category_image/AEm1H1aNJO8ywMOmW20nEoFml1EE6GYbszynLY9h.png', 'Janmastami', 'Hindi', 'Janmastami', 'Active', '2021-08-10 07:11:37', '2021-08-10 07:11:37', NULL),
(130, 10, 'category_image/CHndmv8V8N04BpPgH4gZiAADaBC21AxfrtLOfkrx.png', 'dsghj', 'Gujarati', 'dhsgh', 'Active', '2021-10-18 09:19:28', '2021-10-18 09:19:28', NULL),
(131, 22, 'category_image/dx4wrG0bVInh9Gc6Dru9T1FwAhN0bFqg8phuGJiL.png', 'dfjkahj', 'Gujarati', 'djhsjk', 'Active', '2021-10-18 09:20:07', '2021-10-18 09:20:07', NULL),
(132, 22, 'category_image/Mc1JeK1NMFOXkEoMsmr06MP1EXgS3CfpNPiuRD8X.png', 'fdsf', 'Gujarati', 'fdsf', 'Active', '2021-10-18 09:20:26', '2021-10-18 09:20:26', NULL),
(133, 22, 'category_image/P5xDi06jZWAzfwtMCYhCSDwctsK74LAx32JjwCik.png', 'fdsfds', 'Gujarati', 'fdsf', 'Active', '2021-10-18 09:20:55', '2021-10-18 09:20:55', NULL),
(134, 22, 'category_image/8XnFf3fpXf2OxAB987XMS04rzWPpJkS9uHDfEJ0p.png', 'dfdsf', 'Gujarati', 'fds', 'Active', '2021-10-18 09:21:08', '2021-10-18 09:21:08', NULL),
(135, 22, 'category_image/X1lHfqipZ2laaO8LNPT2M2YyUy2B8ZWLpTQ8yZ2J.png', 'gdfg', 'Gujarati', 'fdgdfs', 'Active', '2021-10-18 09:21:25', '2021-10-18 09:21:25', NULL),
(136, 22, 'category_image/0dnosJwnwopyXQY9LCCfGFjbkRLXRCoQv43cXvkD.png', 'v fg', 'Gujarati', 'dfgdf', 'Active', '2021-10-18 09:21:41', '2021-10-18 09:21:41', NULL),
(137, 22, 'category_image/BSC798wc3ykRjtdDObhyvnsjuEvCoZmGbOQnK73s.png', 'fdsf', 'Gujarati', 'dsfas', 'Active', '2021-10-18 09:22:03', '2021-10-18 09:22:03', NULL),
(138, 22, 'category_image/yOW5Qafmgc2CCQb0pPPmn7pKYNhnLt6Iy7MAtwdr.png', 'dfgdf', 'Gujarati', 'gdf', 'Active', '2021-10-18 09:22:20', '2021-10-18 09:22:20', NULL),
(139, 22, 'category_image/ClfekHh28YDwyAFLyqEQiaqP8zZmJEcJcSUU61so.png', 'fgfd', 'Gujarati', 'fsgdfs', 'Active', '2021-10-18 09:22:36', '2021-10-18 09:22:36', NULL),
(140, 22, 'category_image/dJDVoYeZcAEy5TlaujtF0WgqphaS29mt9fnPTBuN.png', 'fgdf', 'Gujarati', 'fgdfg', 'Active', '2021-10-18 09:22:54', '2021-10-18 09:22:54', NULL);

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
(3, '2019_11_16_112415_create_admins_table', 1),
(4, '2019_11_16_112416_create_admin_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `detail`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'privacy policy', 'privacy-policy', 'this app privacy policy is a legal statement that discloses how a party gathers, stores, and uses the personal information it collects from app users. Personal information refers to anything that can be used to identify an individual, including names, phone numbers, email addresses, device IDs, and locations', 'Active', '2021-10-07 10:02:58', '2021-10-19 05:09:07', NULL),
(2, 'about us', 'about-us', 'this app is based on banner post to upload and delete your post as category wise ...........', 'Active', '2021-10-07 10:07:09', '2021-10-07 10:07:09', NULL);

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
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `plan_image` varchar(255) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `plan_amount` float(8,2) DEFAULT NULL,
  `payment_image` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `plan_image`, `days`, `plan_amount`, `payment_image`, `contact`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'plan/h1tj93bmEpUWisgF0NE5eLsMCXvDI9CwdXgOCJC3.jpeg', NULL, NULL, 'payment/KaHJaaVmFBngPBRjrQUWwZvZqIToCxO0wNupZAPS.jpeg', '9712166671', '2021-10-07 11:55:14', '2021-10-08 07:51:08', '2021-10-08 07:51:08'),
(2, 'plan/e9DngFRNglwMfHRuLhFbuAniLDTlL1X3TaY56ZuO.jpeg', NULL, NULL, 'payment/R1DAPUTzHlnyGrPEjfKEYVSvmkGjijxXfH1VRSqX.jpeg', '9712166671', '2021-10-08 07:42:44', '2021-10-08 07:49:13', '2021-10-08 07:49:13'),
(3, 'plan/TdJPB2oh612eCtNeKM4FW9bYtzCddquvJcSKzsjP.jpeg', NULL, NULL, 'payment/jufXoEdxXl6gacT2IVufSQIOINS6yLeJ2Swshosi.jpeg', '9712166671', '2021-10-08 07:49:04', '2021-10-08 07:51:11', '2021-10-08 07:51:11'),
(4, 'plan/60PNA9ex18caGN2jEtltu67QOAK5GIXFqcEN0xkG.jpeg', NULL, NULL, 'payment/SkHvt0X8UABmdGBKxYAHG6G1MKNwJ1QmDWuVIbRR.jpeg', '9712166671', '2021-10-08 07:49:58', '2021-10-08 07:51:14', '2021-10-08 07:51:14'),
(5, 'plan/LRKnoGNW1Pu8anDyXOpc1CQvyrsefhdtgbzgIl3d', NULL, NULL, 'payment/YOZ33rY4207uakHK3Gc0gwWjOdB6az2xp8Aptnp8.jpeg', '9712166670', '2021-10-08 07:51:32', '2021-10-12 19:10:59', '2021-10-12 19:10:59'),
(6, 'plan/3smgNdk7YWWBkO5Am4UxTT9zGOm0YONBa4GEL0Ay.jpeg', 365, 1200.00, 'payment/V3A0ZV3o8yAVxmk7XrhiEwzw9plQTJtfzNbMB5A8.jpeg', '+917796144444', '2021-10-13 07:34:49', '2021-10-25 08:38:18', NULL),
(7, 'plan/Z4AUIOv9iFpk5uh8YoolKFGk7QyOAZkA7xBVMLa8.png', NULL, NULL, 'payment/KYgp1Gzsf3yabC0E7qz7CceH9kUSScF4T36noiRZ.jpeg', '+917796144444', '2021-10-13 19:57:49', '2021-10-16 10:04:48', '2021-10-16 10:04:48');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `plan_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `payment_data` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `user_id`, `plan_id`, `company_id`, `amount`, `status`, `payment_data`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 109, 6, NULL, '500', 'success', '{status=sucess}', '2021-10-25 10:17:15', '2021-10-25 10:17:15', NULL),
(2, 109, 6, NULL, '1200', 'success', '{\"data\":{\"nameValuePairs\":{\"razorpay_payment_id\":\"pay_IDX0VxaTaLcwdW\",\"razorpay_order_id\":\"order_IDWzUiSqnvOuSQ\",\"razorpay_signature\":\"f2261ad14fe70b6a57c57f8a2807816b6de5fe4d4941c216d5e6e492379bde34\",\"org_logo\":\"\",\"org_name\":\"Razorpay Software Private Ltd\",\"checkout_logo\":\"https://cdn.razorpay.com/logo.png\",\"custom_branding\":false}},\"orderId\":\"order_IDWzUiSqnvOuSQ\",\"paymentId\":\"pay_IDX0VxaTaLcwdW\",\"signature\":\"f2261ad14fe70b6a57c57f8a2807816b6de5fe4d4941c216d5e6e492379bde34\",\"userContact\":\"+917016031765\",\"userEmail\":\"demo@gmail.com\"}', '2021-10-25 10:17:55', '2021-10-25 10:17:55', NULL),
(3, 109, 6, NULL, '1200', 'success', '{\"data\":{\"nameValuePairs\":{\"razorpay_payment_id\":\"pay_IDX0VxaTaLcwdW\",\"razorpay_order_id\":\"order_IDWzUiSqnvOuSQ\",\"razorpay_signature\":\"f2261ad14fe70b6a57c57f8a2807816b6de5fe4d4941c216d5e6e492379bde34\",\"org_logo\":\"\",\"org_name\":\"Razorpay Software Private Ltd\",\"checkout_logo\":\"https://cdn.razorpay.com/logo.png\",\"custom_branding\":false}},\"orderId\":\"order_IDWzUiSqnvOuSQ\",\"paymentId\":\"pay_IDX0VxaTaLcwdW\",\"signature\":\"f2261ad14fe70b6a57c57f8a2807816b6de5fe4d4941c216d5e6e492379bde34\",\"userContact\":\"+917016031765\",\"userEmail\":\"demo@gmail.com\"}', '2021-10-25 10:18:07', '2021-10-25 10:18:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `name`, `image`, `link`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'slider post', NULL, NULL, 'Active', '2021-05-31 11:32:33', '2021-06-01 12:22:54', '2021-06-01 12:22:54'),
(2, 'slider post1', NULL, NULL, 'Active', '2021-05-31 11:32:38', '2021-06-01 12:22:58', '2021-06-01 12:22:58'),
(3, 'slider post2', NULL, NULL, 'Active', '2021-05-31 11:32:41', '2021-06-01 12:23:02', '2021-06-01 12:23:02'),
(4, 'name', 'slider/0zemv4fuvqf3vL6HcZ2Z1OaUbxgBd7Q5crIPn2Dw.png', NULL, 'Active', '2021-06-01 12:23:35', '2021-06-01 12:50:15', '2021-06-01 12:50:15'),
(5, 'name 2', 'slider/JMTS3Csffi7IYYjoPM9hSRz8W2vqs1M2NvvWz588.jpeg', NULL, 'Active', '2021-06-01 12:25:08', '2021-06-01 12:50:18', '2021-06-01 12:50:18'),
(6, 'name 3', 'slider/ZFCnXMV4u6pfM4MGclknzNAMd9c1sEs0FJQ7STls.png', NULL, 'Active', '2021-06-01 12:25:52', '2021-06-02 05:43:19', '2021-06-02 05:43:19'),
(7, 'f dsf', 'slider/KfKuAfwWTMMC7GNUM4esw8a7BoVa586F5iiexkI4.png', NULL, 'Active', '2021-06-01 12:50:36', '2021-06-02 05:43:14', '2021-06-02 05:43:14'),
(8, 'gdf', 'slider/QTppPc6k1BHn2KwcWnsDbfbiD04OvcXyWEmMti5i.png', NULL, 'Active', '2021-06-01 12:50:49', '2021-06-05 08:36:29', '2021-06-05 08:36:29'),
(9, 'APP BANNER', 'slider/PiTmT93hRrNCN4h33U0vlfiT6vPraSdOWUJDuTBh.jpeg', NULL, 'Active', '2021-06-02 05:43:39', '2021-06-05 08:36:34', '2021-06-05 08:36:34'),
(10, 'POSTER APP', 'slider/4e8UjtIc9WYfIaSZvQExVHy0oCWSMKoIYJXA7lvl.jpeg', NULL, 'Active', '2021-06-02 05:43:55', '2021-06-05 08:36:39', '2021-06-05 08:36:39'),
(11, 'd d', 'slider/y13reQNaqhZYfByfe4X3n96GkuhVwLKX9co8YBd6.png', NULL, 'Active', '2021-06-08 05:43:17', '2021-06-11 12:39:51', '2021-06-11 12:39:51'),
(12, 'happy diwali', 'slider/tATyuJzWdKXj8gWrhu8RUCBcRtYiLloFQKfxWNXJ.png', NULL, 'Active', '2021-06-08 07:45:09', '2021-06-11 12:41:57', '2021-06-11 12:41:57'),
(13, 'Banner 1', 'slider/jBnrji0zIW4pNmVPUntIck06Ki6Wl6ldet2TzGTR.png', NULL, 'Active', '2021-06-11 12:41:50', '2021-06-11 12:53:17', '2021-06-11 12:53:17'),
(14, 'banner', 'slider/rIPsbfoIlsMz92MyH8jCI4lwr9CjEsLWOz30XHRE.png', NULL, 'Active', '2021-06-11 12:53:28', '2021-06-11 13:03:35', '2021-06-11 13:03:35'),
(15, 'Banner 1', 'slider/Gy0knbJ3YiMGLgSp6VoRjVlmA4hAKayZ11OiCTRJ.jpeg', 'http://thenextwebs.com/', 'Active', '2021-06-11 13:02:13', '2021-10-18 08:46:19', NULL),
(16, 'Banner 2', 'slider/e4mV1MYifIcb5YOfBmza9llLBVW0qEMVEmhucLge.jpeg', 'http://thenextwebs.com/', 'Active', '2021-06-11 13:02:29', '2021-10-18 08:46:20', NULL),
(17, 'BANNER 3', 'slider/lchF1aq4eVscusrrbPFazIjZXBADvUqGFHWXYK75.jpeg', 'http://thenextwebs.com/', 'Active', '2021-06-11 13:32:23', '2021-10-22 06:38:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_verify` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sms_otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan_start` date DEFAULT NULL,
  `plan_end` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `api_token`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `city`, `device`, `device_id`, `image`, `business`, `contact`, `contact_verify`, `sms_otp`, `reset_otp`, `plan_start`, `plan_end`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(60, 's3ZIDzrWVntK4q6twSfcI4ZuXQCS8kfxDGX2KJc1l1f8fysk8eW71OOhMmNPhYPNiv9Fggeq4L6sIDxygo2P28MuXoC7Bx9i8oPi', 'hshd', 'letsdoabhinav@gmail.com', NULL, '$2y$10$mmYJm9tHSnRDlyDzy/UMtO9AI2cVp0bT7eGXZ7R1eiNEvSM8ZItiK', NULL, 'delhi', NULL, NULL, NULL, 'builder', '+917877444069', '0', NULL, NULL, '2021-10-12', '2022-10-12', 'Inactive', '2021-10-02 05:50:11', '2021-10-18 10:41:03', NULL),
(61, '03ZN98K1aJgkdcrSeXvXMiWtK2uiKHWrzAVHfLP3tteXQLGuULBwmROAH0Y4c6VdsgnBfbt7CiysWJ31no4lCFNK6diB0ddtGEdC', 'kaushik', 'johnkarl536@yahoo.com', NULL, '$2y$10$2jzHyXQGNCjRVfgwC0d08ONIq.cC1da4NbROUvqMETXzHUNJ9xD1i', NULL, 'test@123', NULL, NULL, NULL, 'Software engineer', '8200479972', '0', '626682', '433251', '2021-10-13', '2022-10-13', 'Inactive', '2021-10-02 06:16:16', '2021-10-18 10:41:04', NULL),
(62, '6BsiedoXyg8WHtSeMqldECtDojvC1tF4c24aqXjJuC9TKRpWpxfieCXtn4u6NXslBVJRXV3rhC3Tp0ukDEph2c3tHxACI1l5U4Rc', 'Test', 'pespujigni@vusra.com', NULL, '$2y$10$0gTgMTAZyzECol55QA6FnukT3POQ.xUO5UDHzO6GunNAz5qaRdPs2', NULL, 'US', NULL, NULL, '', 'builder', '7428723247', '0', '756483', '898753', '2021-10-13', '2022-10-13', 'Inactive', '2021-10-02 06:33:20', '2021-10-22 06:41:52', NULL),
(63, 'tQDQwC8fQovSUSrGP7iq4diPUHTlUh7yn4IBxA6F1WBcGtStBv5m5Sde7Uoyjp4P9T85a5wQvtdeaFF4mA3bik5Uap2UgXtvV3BZ', 'John', 'girdajalma@vusra.com', NULL, '$2y$10$W/xOjalX6s2q594hM6XPSOh/gPH202u7xqzoXDkW.rK20IIjOWbey', NULL, 'Palitana', NULL, NULL, NULL, 'Ca', '917428730894', '0', '428660', '506759', '2021-10-13', '2022-10-13', 'Inactive', '2021-10-02 06:36:09', '2021-10-18 10:41:07', NULL),
(64, 'agWlcsQSBmaHTbKar0JAkndS8puaqJvEZnj0QEAn08cJCaURs1e5GFipiD7mMPLFuWzW0IFzQukDebKBEuUbGEP3ND6660xdPTrX', 'Bharti', 'bharti@gmail.com', NULL, '$2y$10$IuqVRFq/Mqr/hLRDaV746OjyM9VfBQCnG6MqSw46/ZpLSea.cnkiO', NULL, 'Mumbai', NULL, NULL, NULL, 'Advocate', '8527834283', '0', '328498', NULL, '2021-10-13', '2022-10-13', 'Inactive', '2021-10-02 06:42:19', '2021-10-18 10:41:09', NULL),
(65, '3FnMXEmvXaMdpkoKXeBuHzEaqcB8YBp4t07bL9NhYDeBNk2m4DyflpDhp9FcH2thc4jxop3AfV59gwOyRCPYxyDb2U1h93okwmtD', 'Bharat', 'bharat@gmail.com', NULL, '$2y$10$jE65OJu8o3ubHRiuFTDsUuxAdJK/122zl5DviTJRrkTwhcwYSd0cm', NULL, 'Mumbai', NULL, NULL, NULL, 'Advocate', '8527834259', '0', '394755', NULL, '2021-10-13', '2022-10-13', 'Inactive', '2021-10-02 06:45:42', '2021-10-18 10:41:12', NULL),
(67, 'F5IqW6jJbqGhKTP7gxb2h3qiDq0RMMkrvJ2LuTdXOrBpkscq3wnrBSfN4oyjxUqa29JZc7302rxsEgGM9wJ32tu9Koemd0ynPQMN', 'ramansinh', 'demo@mail.com', NULL, '$2y$10$zqBXQV9NkmjwjfLgIyY1YOxmlmlLcmFZu8oQmJeylNvjW31SVfXWO', NULL, 'deesa', NULL, NULL, NULL, 'Software engineer', '7600405532', '0', '785637', '549709', '2021-10-13', '2022-10-13', 'Inactive', '2021-10-02 10:46:19', '2021-10-18 10:41:13', NULL),
(68, 'wJk6Cry5sltbfRg9ymGRaRrnCFk32UZUGEqkVoT2dan2rfhbpjqsrsGGNhflJW6GK19Evy98VnFxJIlFexqTD6M0krEsN5fFwKUQ', 'ramansinh', 'fa.kamodi.lakhani@gmail.com', NULL, '$2y$10$qyLlCTsTKeJLipYQhgokfe/rf6Ql9tUAAzAe5tB/pGiM0KvUhmOsm', NULL, 'deesa', NULL, NULL, NULL, 'Software engineer', '9727730710', '0', '669466', NULL, '2021-10-13', '2022-10-13', 'Inactive', '2021-10-02 10:52:30', '2021-10-18 10:41:14', NULL),
(69, 'dFqEZdQHdZoHCB1UOi8rLtDK9PBEmK2sIy4StPLWYoHI7lcVGnyyU63DVZmGc4uB0bhr0mNBdslpvEy529EazRms5kCbLww4YccG', 'vd', 'vd@hotmail.com', NULL, '$2y$10$XnLoab8REjN2jFcNQb9s6OaWsWqvPiAWYah6pHpjYQhImBQ/oxEAe', NULL, 'surat', NULL, NULL, NULL, 'Advocate', '7046632531', '0', '445922', '518129', '2021-10-13', '2022-10-13', 'Inactive', '2021-10-02 12:16:33', '2021-10-18 10:41:15', NULL),
(70, 'N6lDhiG4X27aQCCD26nvZjpxRD1hZsXXDcwgl9YhCVSxyxnCfbjbD0D0PILaf3uRR38hzQxPDrb0oRvTq1KtAeGpPBZEWyfxPshO', 'Rohit', 'rohit@gmail.com', NULL, '$2y$10$akwJViVOiE5FppnPd9CM3ugdsH0GdHGMqG6FslffYGfJcy4l3EtTa', NULL, 'Rajkot', NULL, NULL, NULL, 'Software engineer', '9988776655', '0', NULL, NULL, NULL, NULL, 'Active', '2021-10-02 13:35:58', '2021-10-02 13:35:58', NULL),
(71, 'Orzola82n9I0VTF5MK2THuMXcj088Pz0TPlbs1JrYHaYothcJa2Kice6Q75mJbriwB5AgccdrZ8rL8UEmp2l1qnrPWGcydt1mZW4', 'name', 'email22@gmail.com', NULL, '$2y$10$A7eZh6tGORctAu7eHZDwquVDnln2J9/UbhDxxy.f9JIvA8qa.1yLq', NULL, 'surat', NULL, NULL, NULL, 'Software engineer', '9974746809', '0', '758069', '269031', NULL, NULL, 'Active', '2021-10-02 13:37:26', '2021-10-22 08:57:38', NULL),
(72, 'dFRAsmTd4tC9SCMO5rtkyg6sOMUpYmWr6vSsQy2ySl86kF1KLyxc6zOGHFcNAoq0lsRoWBABspKqiuyV7tg6zVuIewEVlOfF4FR0', 'Rohit Baraiya', 'rohitbaraiya888@gmail.com', NULL, '$2y$10$YL1bOjTVPT/5PbKGSTz2xOzHXsAt6GylHer0e4zVKx3CZHbUQoA2W', NULL, 'Surat Gujarat', NULL, NULL, NULL, 'Software engineer', '8320009366', '0', '815895', NULL, NULL, NULL, 'Active', '2021-10-02 13:40:36', '2021-10-02 13:40:46', NULL),
(73, '95cCBpWFE7wxQsDaUZ5oVGmBRmz7zWCwTGecOxg5CxOA1DGUwhjnZyOe0ihIpF9wEp3hwAakuoBGmvHaC1OS6jdw5mXUtEv3CpwB', 'Fenil', 'fjmoradiya@gmail.com', NULL, '$2y$10$u73fD6W5jsLfWK9zn5D4KecqEZYdrHEbr6nNtwdQ8r6L8wmRWCTUu', NULL, 'Surat', NULL, NULL, NULL, 'Software engineer', '7573056506', '0', '431305', NULL, NULL, NULL, 'Active', '2021-10-02 14:59:07', '2021-10-02 14:59:17', NULL),
(74, 'xfZ8pUAvnxxcubjpWBm85aJz41F4kms3xBwnB0HSxulKLpBNxJVgyW36w7Jw25thD24UKyxoxWvZVH6HTmR9ZR9eDy0zXrA3Pkee', 'ali', 'a@b.com', NULL, '$2y$10$zDNTp/kvdHns1N6S1Bsv..o1xCsISLwnJ/H9QcdlNvFMzPBX4/lsS', NULL, 'wrgh', NULL, NULL, NULL, 'builder', '099999999', '0', '296647', NULL, '2021-10-15', '2022-10-15', 'Active', '2021-10-02 17:56:42', '2021-10-15 07:12:26', NULL),
(75, 's8UnwFnuajlz7jKy8j1YmAINGUizEuQ4mGB9YXt62T32i6bhajU4AdY3CLyCk51uMlVusXwsX9tDh1W4HyfEmgjgGvpxJb9euGmd', 'ali', 'a@c.com', NULL, '$2y$10$KHw5cm/tIagrUXvfzzQSiurSZepDyx3d10yp3p9XsbJ7i21DRJCXe', NULL, '123456', NULL, NULL, NULL, 'Ca', '989914762406', '0', '294624', NULL, '2021-10-15', '2022-10-15', 'Active', '2021-10-02 17:59:04', '2021-10-15 07:12:56', NULL),
(76, 'rhybUqGPu3cMsvkeCc5LEVAXcUWKGoqAETLfV1Fb7FW3gALFViu4Q1frWdzoxx1IEjv8TfMg5B6YGkIX2XyVoPmjU3sKxV2m4RY4', 'test', 'testing@test.com', NULL, '$2y$10$a6IUb0ZiIpiZwt2NA6DW4eU2FCL9jYk3NygimfqXPnS.bJtCEFhQu', NULL, 'mumbai', NULL, NULL, NULL, 'Advocate', '1234567841', '0', '993088', NULL, NULL, NULL, 'Active', '2021-10-02 18:07:06', '2021-10-02 18:07:21', NULL),
(77, 'KlEzl4IKjRmkYwtDNwyXZWY6FcXR5Dle0iPDBpeGGqZer5d96C9anc5pehQUnPEYkkywCbRuDnuWEUWZBznlq2G9lgQzG4vnVMFB', 'Qudrat', 'rehmatzalmi2021@gmail.com', NULL, '$2y$10$EFNAg5380bakn1ttTA3rIeQU9XOut4Yx.cWiL2zskIdkZGNS.cWtK', NULL, 'kohat', NULL, NULL, NULL, 'builder', '03249061569', '0', '171454', NULL, NULL, NULL, 'Active', '2021-10-02 18:42:51', '2021-10-02 18:43:54', NULL),
(78, 'GVg3IyPge4qn4EorQhZWbHqIqcm1NoXxz601NZzvve7fYZUaIdYQvYmE03uL94klwBuLAPT73u8CXcDK8YOi0LiN9SeZLyfOZCUP', 'x', 'v@g.c', NULL, '$2y$10$FBKYzdYCfQ5mt4THd8PWq.yydvQYJNb4Kh440I78RnKrCBd/FV4km', NULL, 'dd', NULL, NULL, NULL, 'Software engineer', '9984177644', '0', NULL, NULL, NULL, NULL, 'Active', '2021-10-03 01:51:42', '2021-10-03 01:51:42', NULL),
(79, '8SqtPrVupL58cZ0sazHStlndxri9gnxt9U47kFrA8xTNnNvRKr9lJA1FZPkJcNux5acaNs4Zg38cdTesqRe8CZZbj9vroayOpiEG', 'Tee Danny', 'kingcracker@protonmail.com', NULL, '$2y$10$.ff58whoaXdDRMecdSyVxO0/CQH1l0RGURpRsXdrrC71IJWjd2HDW', NULL, 'Lag', NULL, NULL, NULL, 'Software engineer', '0815232655', '0', '134659', NULL, '2021-10-13', '2022-10-13', 'Active', '2021-10-03 03:04:30', '2021-10-13 14:10:59', NULL),
(82, 'NkXSgA3sArE17mJA6sLl9LoPRvUmsfF11HzVCZwidrI6p8kdFxlnN9paNVYNXkYrN05BSGUVpyqi7BLN4gXBNRMncKqNgJ6mJOX6', 'rahul developer', 'suvarahul6@gmail.com', NULL, '$2y$10$FX0w1DDF2L.TGFZLiyqmdOxxqBHI7OO43mo36sjhmYk7l.R0PK256', NULL, 'Jamnagar', NULL, NULL, NULL, 'Software engineer', '9773126516', '0', '320938', NULL, NULL, NULL, 'Active', '2021-10-03 06:56:00', '2021-10-03 07:31:41', NULL),
(83, 'mCtw7hLcwBdos7MWlGmnH3MxjvalWyBmKRhgolP416SCE7G6YIJEenEdxgrapOvLIJKhu9hWHvyWTW3NR2agNWv1VBni5KecZbhm', 'Kartik Chaudhari', 'kartikchaudhari456@gmail.com', NULL, '$2y$10$j6MSkUriUwNikEBiFNlwE.v7xmZGuq7k3.j.Q1qDgTgHtPt4OJ/fO', NULL, 'abc.1234', NULL, NULL, NULL, 'Software engineer', '8153976277', '0', '737300', NULL, NULL, NULL, 'Active', '2021-10-03 07:24:24', '2021-10-03 07:24:36', NULL),
(84, '68Kobgm0IlN7W0DXCs3CCmIaDaFswXFBRkTMgqHzEl5fpAV1Z7m7IYI9BspcdfvUzWH07NYTfJqezx4IQ9pOAD4vCSqW7S96Rbyu', 'Pushpendra Kumar', 'pklive9400@gmail.com', NULL, '$2y$10$9dcd.iHpYZkmCTzMLmyNPejcP.11pKZ8lr37dTjnWz4rwT2h4q9vy', NULL, 'karhal', NULL, NULL, NULL, 'Ca', '7906660445', '0', '721324', '262838', NULL, NULL, 'Active', '2021-10-03 07:57:53', '2021-10-03 08:13:26', NULL),
(85, 'OHDDpsmszF5HbVCfi6k6IAem3qqFOwSYM1vqBag61ui96RfbZlrzge9vkhFs62xKwSIHTItO2aMykXOZ7GHVXuZaf3FJX90qDKBk', 'hardik', 'hardikgondaliya007@gmail.com', NULL, '$2y$10$MXNcIliEkeVhgpoYd3bvF.a672Fad0me3STxIuX8HmY23ADF.eyI.', NULL, NULL, NULL, NULL, NULL, 'Advocate', '9265524241', '0', '878933', NULL, NULL, NULL, 'Active', '2021-10-03 10:19:39', '2021-10-03 10:19:47', NULL),
(86, 'lzhLuyf0DriiE2jKhLWD8nNqxBU0PabUefQE0elivHdU5FJa1iC81KVRgqGv5abZRxe3yTfoPjxwYjW30Eb8a13JVqkgANaFKqYk', 'rajavir solutions', 'rajavirsolutions@gmail.com', NULL, '$2y$10$pZUuwS0CnfdcFRQP1F6VMuecLndztC5J2slriIo7QfBATncY6V7tm', NULL, 'Rajkot', NULL, NULL, NULL, 'Software engineer', '8160326884', '1', '253753', NULL, NULL, NULL, 'Active', '2021-10-03 11:01:25', '2021-10-04 14:59:57', NULL),
(87, '8fMqWxrHeDA2y9K5DC1qD4UJO01fJHpRVSwrCOUGhVwmuGYCMXhHGQShEsXgDOPqyoVJyuyYImdZrii8Z1J4ZUGP5uGcaFjj11TF', 'names', 'email111@gmail.com', NULL, '$2y$10$55hgalgDUb8dBGOoOMV2bO5jw64hgh94JegH8IuxZn/4v86bbNMUG', NULL, 'surat', NULL, NULL, 'user/UNywepRxxoQfFb5oeKOv5IcOZEoB3KRhr42thOfF.jpeg', 'Advocate', '8866253284', '1', '914441', '289387', '2020-10-10', '2021-10-10', 'Active', '2021-10-10 12:05:49', '2021-10-22 08:43:16', NULL),
(88, 'Tfr0Di1gkuE5FID68nEAyQ6azYSvgCxQZVaZmDMP5q9hP236FR4vcHZTAf7g2xwvrZuQt2ic11eVfOLKSKOezdA9K16OBnMWuboG', 'parth', 'parth@gmail.com', NULL, '$2y$10$5.PZ8fcxIj662EKK1q/m9epRTVk5dOj/1dIv3gr4Tp2.agqecQvB.', NULL, 'rajkot', NULL, NULL, 'user/ecZZi6UAsub078nvNoGHOEEF6xT8sObnd13d8yns.jpeg', 'Advocate', '9988776644', '1', '779551', NULL, '2021-10-13', '2022-10-13', 'Active', '2021-10-04 05:20:07', '2021-10-25 04:28:08', NULL),
(89, 'pPT4CfVGE1ZwhC4A5V7oBaWFeWB3H99kvN5aLnTYk7YjWI5u3r8sjJV8iVflAsP2sXEpycLA9CYnrj8cjE7J7VzPZNvJdcdWgWwN', 'parth1', 'parth1@gmail.com', NULL, '$2y$10$e3LAQ43j/cYGdOWmfWKgbu1k8wLWAMr6IqDf5OKcBz96fphTBEmxi', NULL, 'rajkot', NULL, NULL, 'user/qE6Jm0zvSaVZdcWrZZkCdp35kfxXwnYfDfaMLOtZ.jpeg', 'Advocate', '9998887776', '1', '502862', NULL, NULL, NULL, 'Active', '2021-10-04 06:31:28', '2021-10-13 06:12:53', NULL),
(90, 'UBV3D1WYRfe8JdRL9vhkPiosRgfFzDVYa1Jgoq8dyPlaoVKnl3x7F9SnERGOOIb4b5obb7L4SGFzq6zPOuWhcyH8sf86qDAhh6K9', 'kiran', 'kiran2soni@gmail.com', NULL, '$2y$10$4Ac9Agn9flyc3szboQlbau/RyWqkY98AG1A/DRHxtxt94suzKN3A.', NULL, 'Ahmedabad', NULL, NULL, NULL, 'builder', '9408616361', '1', '169640', NULL, NULL, NULL, 'Active', '2021-10-04 13:51:59', '2021-10-04 13:52:16', NULL),
(91, 'aUdRuOwoKOviwH8UZpePstYIDj8ydi0yImVWSokOqfTG21zjJ7sMyLLw8bpi6691dVOYBm6oFXBuNLV3k7Z5wyvnJFHbAvJ6qEw9', 'hhhh', 'hhhh@gmail.com', NULL, '$2y$10$iTwcu7mHZGseERLhVzo2eO.JlCJoPlyVGqwpuJfIuIcDya3HRFuzC', NULL, 'amd', NULL, NULL, NULL, 'Software engineer', '8888888888', '1', '595721', '833075', NULL, NULL, 'Active', '2021-10-04 14:34:39', '2021-10-05 10:59:15', NULL),
(92, 'hkjQ53Z1sOxcjkQqyp7PpC2dPf4ezOF9p9Q97KUedS2YKpAiqsh8cUB0Czh57sr6XFRhtkbdOwGZsUVt2JUpiFGurzy7bp3qwgXJ', 'dummy', 'dummy3@gmail.com', NULL, '$2y$10$xe.BHbeDMQUz0.elcGhb6OkiYWjFRBUGCdTSfT2GiWmAqxMUN7gYS', NULL, 'indian', NULL, NULL, NULL, 'Ca', '1234567893', '1', '614053', NULL, '2021-10-14', '2022-10-14', 'Active', '2021-10-04 16:42:15', '2021-10-14 14:49:34', NULL),
(93, 'jLgGPIc7eZmoxFEzCSio3BVDERzuj43wGsGpHcBbL3H9HW7u2fHHRUJ80cc1vDApudYYPLAArKnortbHd6j100KDTPdtY6TUcZYi', 't stes', 'alv@alv.com', NULL, '$2y$10$lutEtIkkJZO0WR2QKQBfouajQUFV3lDJk0so4gkxjcU6EYnNwzqGG', NULL, '12345', NULL, NULL, NULL, 'Software engineer', '888889994949464948', '1', '385390', NULL, NULL, NULL, 'Active', '2021-10-04 19:06:08', '2021-10-04 19:06:34', NULL),
(94, '0yLIl16yrtYEZQxaTlhCEpELeKG7nQ92JaoaR624Gaw9JRHs30JuoXo9T1pdNm9DOnGCdiRkjNuT9hTiYvtEDxXha6TocmZ0O8DQ', 'Lindomar', 'ti.lindomar@gmail.com', NULL, '$2y$10$to5.smc7VahYzNsXrzB9xu.zMKWxfl6Wp8EUWsApur5edVQHvFo0q', NULL, 'Cariacica', NULL, NULL, NULL, 'builder', '2799677781', '1', '339400', NULL, NULL, NULL, 'Active', '2021-10-04 20:11:36', '2021-10-04 20:11:58', NULL),
(95, 'XbXQbUBBuSHRMc8p7Np8EkWmYzsfTrIAjEsEnHgjpHZvHEE5Nqbr8g07gsuBI9QrN9psAI4ivBxlzSas1kYZWMIXnrGiqm4w0Jdc', 'deneme', 'deneme@deneme.com', NULL, '$2y$10$/agkjVVZdbQK3ivh9c9iweU46rKifnazDpjX8YQiWswLca2AtWc/q', NULL, 'turkey', NULL, NULL, NULL, 'builder', '05416328251', '1', '495621', NULL, NULL, NULL, 'Active', '2021-10-04 22:11:12', '2021-10-04 22:11:40', NULL),
(96, 'WQ2aPDG1bm3vwlbb2lwq8oNvFCf0D4Xwm7SvvgbvAfrglcAGcIWGBp92Llf2t2evut8KsEHBsZAT8c7dMj2VorQoGIqsI5VQQtNC', 'Ravi Kumar', 'ravipincky942@gmail.com', NULL, '$2y$10$ZqcC9YsyaSF6SOz.AoQPYeSzkU1e7f4T0wu2WCNZQLlxI13AbAWrC', NULL, 'jaipur', NULL, NULL, NULL, 'builder', '+19950715445', '1', '506383', NULL, NULL, NULL, 'Active', '2021-10-05 03:23:38', '2021-10-05 03:23:55', NULL),
(97, 'yeT0DXHyMxFwU90g7hFrfel79iCPiB0vDYIoc4LinBVo8ZYo1pNH1opQfk6jbzwECQeZ4L75ZbiyzbJ5Xq5WYfkJlkVS1eAMrIK0', 'mehul patel', 'mehulit77@gmail.com', NULL, '$2y$10$dupIRNfv7JF971xe0lY2/e9Tx.CU55C7j/4Bsnnc/2cvuPhup0vta', NULL, 'abc', NULL, NULL, NULL, 'Advocate', '9427981380', '1', '449339', NULL, NULL, NULL, 'Active', '2021-10-05 03:41:53', '2021-10-05 03:42:03', NULL),
(98, 'xxQuCzneUahwUlbWjbcP19l6J4OVbrVjXN7kdLlWAQB6FGbku3HvPkKwUapT5EMpaS8oASrcAHo2U0OvLBTJukmLr7ib2wvkS1Rs', 'Arun', 'smarthomes467@gmail.com', NULL, '$2y$10$.OjW1aHTI9hWfSWHYSJAOeUvSN3ZAjpDt9jeZKh7rcopgV4de3fiC', NULL, 'Lucknow', NULL, NULL, NULL, 'Software engineer', '7380325516', '1', '519522', NULL, NULL, NULL, 'Active', '2021-10-05 07:24:27', '2021-10-05 07:26:55', NULL),
(99, 'nsIiWGGLhlxgqxUF33TO2DiSWScrdvmiYjD9YTGzNkTJoqQ5FUz7KrOh4y1IZxW3nukUvmpjU4OBy55P8FJJ5plafkbraHqoaGQ9', 'name', 'email@gmail.com', NULL, '$2y$10$sieMdjbnjr5MEaTyZwFBLeYmaFyEQjfRV8J2lgPatYah3YIn9IYfe', NULL, 'surat', NULL, NULL, 'user/2tD53UxpUx9FGIyJh8d4hZZLs8WEY2aPPuTbWfyp.jpeg', 'business', 'contact', '0', '405304', NULL, NULL, NULL, 'Inactive', '2021-10-05 11:27:35', '2021-10-18 10:59:56', NULL),
(100, 'lqR3fzQUXkXMyg104mGHi1bPLfTawblOCPFnZ3ppU2EvJgiZh4qqCmpZVBsvhmRgJv3yESH45ki1grRAeYLSguTHo4TgsfTFzzam', 'Shahrukh Khan', 'shahrukh@khan.com', NULL, '$2y$10$YdL40nbasbJu1liS3YOsweOAKrWp.c5uOhn84jmDeU1u8D7H7LbqO', NULL, 'Mumbai', NULL, NULL, NULL, 'Advocate', '9898989898', '1', '203663', NULL, '2021-10-15', '2022-10-15', 'Active', '2021-10-05 11:42:51', '2021-10-15 09:11:49', NULL),
(101, 'xvi3lJwrm9W4U2mybJtxCt5UlEk2f6on6n28q8oNJ4v2s27XXxVeiULusbje0ecfbvRVYvZVMghwwAIDu0pRdQqWtmAQUqXv9avV', 'Test golo', 'hejwkwlwlw@gmail.com', NULL, '$2y$10$X1DKJHOcmN4SxTIxPRFaQuh47oZRdQWAcZG0w1hW7lkmwJc/msRjK', NULL, 'pjne', NULL, NULL, NULL, 'select Business', '5461321685', '0', NULL, NULL, NULL, NULL, 'Active', '2021-10-05 11:51:04', '2021-10-05 11:51:04', NULL),
(102, 'yc9IAJi9LpppQD1bpOAs0Jpj5GS5NQYaetuxcI2lKCgQ62f0ezXcAWpKWeEVVDWQA7TwdyUsi0j04UZBZC6Sm0PVr73WeeU1O1zO', 'A', 'A@a.com', NULL, '$2y$10$7vteCWIwSAKaROQAsyv.Qe9P5WIWBdL7HRCy2vePgUtllcqGrG1Ta', NULL, 'A', NULL, NULL, NULL, 'Software engineer', '4', '1', '478000', NULL, '2021-10-15', '2022-10-15', 'Active', '2021-10-05 15:05:38', '2021-10-15 07:11:46', NULL),
(103, 'Nx52DM0L3Fp8tpgPmbmKWIiw26N0p4Nyh0b0zKSS2ljhagddKiiifYWSiiqLUCqxqcrXYPvFHWKvbUrLQxj1oUIrmX3fmVtuWQ1C', 'raghav', 'raghavsoni2580@gmail.com', NULL, '$2y$10$1Az8WTqq.Pm9w9AOywmFHeVL/u5CZFfEvFxSJJp.s6j8yKubEIHDO', NULL, 'Faridabad', NULL, NULL, NULL, 'Software engineer', '9582891675', '1', '480894', '226509', NULL, NULL, 'Active', '2021-10-05 15:09:20', '2021-10-18 10:04:33', NULL),
(104, 'I45KBWvfYMklO3RD4otXeJOKD8YMqL8ujXmU9WN0wkotZUbdTr9TJwh8k6qkvFaVy58uS7EzZyhW2reBWurEOUqs0FA2QY6u4WpG', 'Test2', 'deep617ds@gmail.com', NULL, '$2y$10$Q/WgsKd6kFd/zyksfYXqUuBVzXQUthCIuHK1uISCTA1PfqNN1Tzxq', NULL, 'Bareilly', NULL, NULL, 'user/nLFbfiA34ZIh0U69hTg2UnDADb0hvwfSCbezhbMA.jpeg', 'Software engineer', '827995572', '0', '701891', NULL, NULL, NULL, 'Active', '2021-10-05 16:18:30', '2021-10-05 16:23:53', NULL),
(105, 'TIXuOgcpnVL1DU9JPOQViPneYqcvjmpAdiOBCR0nokm57d830Ti8tpfSGNzGATw7rUL8nfUlsNUDtMIsaKvvrcxgt0pgASFqdwss', 'ssbala', 'ssbwebworks@gmail.com', NULL, '$2y$10$SUZzExXZtX/6p9sulVrnOOZcJoxaQy8j9IGsGPnwEqCEpYJOzQK9G', NULL, 'erode', NULL, NULL, NULL, 'Ca', '9965768780', '1', '111701', NULL, NULL, NULL, 'Active', '2021-10-06 03:33:38', '2021-10-06 03:33:53', NULL),
(106, 'zK4Fuyts7gFNajt67jq2f4lh7sblylheA48IeAyG0F3XFBXi2REPJYlE0sBeZXFIDWR34ZQT6cgWKhpP2MrohdpogtNxFZG2TCz3', 'Ankit', 'megaworkers1@gmail.com', NULL, '$2y$10$GM6AW/tLfzHxOILkmYIMXecQm4MP0q3iYuzNmZBNHwh4sdBSPwFs.', NULL, 'Surat', NULL, NULL, NULL, 'Software engineer', '8128933400', '1', '702692', NULL, NULL, NULL, 'Active', '2021-10-06 04:08:40', '2021-10-06 04:08:55', NULL),
(107, 'yP6HU0XcwRtUjZIOuLYCHwN5AQziQpWRQNh6ASGTI5NtWzsOAJdSd4fHqrasYaKkwpXRp7R8Sc5NsR3K6RrDUSVZzSum7wyc1MDG', 'Jenish Chanchad', 'jc.idea2code@gmail.com', NULL, '$2y$10$lhsr3RsYBhov1Ijp2ryy2ubxl408jXJX89Uc8KW8TuyrYisSi1uDK', NULL, 'surat', NULL, NULL, NULL, 'Software engineer', '7069525025', '0', '372379', '248514', '2021-10-18', '2022-10-18', 'Active', '2021-10-06 06:01:11', '2021-10-18 09:01:07', NULL),
(108, 'a7Emw8178H2m3hw0Vg1Y2qByLlFuPXRF27CTaPLuPbku2QfAy7s9fxCvgbLfcNcCkHIPoHELq6R8YO8RMdoQjBTe6BUVxL9c2k5X', 'Raj', 'lksthakur@gmail.com', NULL, '$2y$10$oc.iimCHIWFdss0MUR1HReDXHpRDK6Y.Ku2TF1SafCskJMhLXtP/O', NULL, 'Dilshad Garden', NULL, NULL, NULL, 'Advocate', '9555213604', '0', '593490', NULL, '2021-10-18', '2022-10-18', 'Active', '2021-10-06 06:52:27', '2021-10-18 08:59:46', NULL),
(109, 'xW5LIrp3mx8zK6R89k6uLqpdnz9DkGuFbQnejPTqetRYzhZeVC0ztYPOUcgd871Rt9b6FohdbebS44bd7NzByAL27PcUcEaFdcj7', 'test', 'demo@gmail.com', NULL, '$2y$10$WItugYvqFIZ0ThcdI/.8ru9u.5U6.w986aJaoUrRGrhbkcVovENla', NULL, 'Rajkot', NULL, NULL, 'user/2FeFm3aXEfJR8bGmlcy561g5yUokcbIp4cdK8zJO.jpeg', 'Advocate', '9876543210', '1', '300191', '559764', '2021-10-25', '2022-10-25', 'Active', '2021-10-06 08:57:51', '2021-10-25 10:17:15', NULL),
(110, 'Vot7Tvx0pMZJ95QBi9liiQ8uP9vrudG9MY3bVHouWeOFgjTivUHpxMZrhKrYd4VwvRdWtcz7MNocLS7cs8ljx5ru42gZTFykpoki', 'Nirav', 'niravgorasiya10@gmail.com', NULL, '$2y$10$eGShCGxkUEKX8D4zV/uIXuXUJqAKU2cy/tLwSvoCVAr9xNFefGsCu', NULL, 'surat', NULL, NULL, NULL, 'Software engineer', '7069224753', '0', NULL, NULL, '2021-10-18', '2022-10-18', 'Active', '2021-10-06 11:53:20', '2021-10-18 09:00:08', NULL),
(111, 'F2oxPf75SMi9WJwjql0wT1YlUy0KRFN3ZX8WIUDex5QhSdygl7hkoFjEyH5MsOGJ8tozktzAOHPfCdeYiRfsll4lp5dGo73fEkuf', 'ram', 'Mummaditharun@gmail.com', NULL, '$2y$10$DLSLETADOGHCSH9tVvjzr.8cw8jpLzy6LbJv/B7kXHOrCCu0sVD0q', NULL, 'Hyderabad', NULL, NULL, NULL, 'Software engineer', '9885879555', '1', '762569', NULL, NULL, NULL, 'Active', '2021-10-06 15:34:12', '2021-10-06 15:34:36', NULL),
(112, 'v9O7t01lJ2BErwi2ibUmfisJnxs942NJkZZix2878L8cg0spVke22SECIu0JeyUiyUPzCvf2NJxpM2PZhBR040pkeT6Kgikd93F4', 'naveen', 'ndewangan940@gmail.com', NULL, '$2y$10$oQ66fmd4wE0fFmmG6qtB4uG39zZF0Npu1nx6R3Mnv.VBNO6XtOrv6', NULL, 'raipur', NULL, NULL, NULL, 'Software engineer', '7987239155', '1', '203511', '291668', NULL, NULL, 'Active', '2021-10-06 19:48:50', '2021-10-06 20:03:37', NULL),
(113, 'uTq87wyIZ1Uqd620h3e4vJ2JXj2gkJZ1FLN31fpBmzsVEhalHP8NjnK2Ez9NnQlJIsfNd1Ym0si6KdsPza53tKuuijB5w9VpI8gV', 'akii', 'akiirocks2@gmail.com', NULL, '$2y$10$SvGJX0U.cL/mps7Y4bM5MuXbgXoZU/g94qWSlrjwagPU8udXQynzi', NULL, 'halwa nagar', NULL, NULL, NULL, 'Advocate', '9876543211', '1', '150041', NULL, NULL, NULL, 'Active', '2021-10-07 06:48:34', '2021-10-07 06:48:47', NULL),
(114, 'rTbQn0SG1nk3UXWnJ6IQj0l86xUQT7Lapi1pWUxdky0RF234HfKP6Fv6hcwExOCju10lUOKZtuy8dHgAjUMx1ScADCbborjF0reO', 'test', 'abcd@gmail.com', NULL, '$2y$10$othcZIxiubnIn.ZtXH7QteJ2F6q4WWgDP3jUrR/RhJgf3bUC15vny', NULL, 'sauidas', NULL, NULL, NULL, 'Advocate', '999999999', '0', NULL, NULL, NULL, NULL, 'Active', '2021-10-07 07:09:03', '2021-10-07 07:09:03', NULL),
(115, 'rdEmPzBdjyHN3LFc0CDzYW32AOJGDaTsgtT3kzwxQmPXQPFfJjBOCsqVk3vJru9RVYzgKC0mzvwkzbSu6jdc7vIWV6907dvrF2gd', 'abc', 'abcd@gmail1.com', NULL, '$2y$10$eYZbY/HM9UD.bWBBFEVR1uHcDP8x7SYFMw8ct1CB6FRB/3JH2.zJS', NULL, 'himalay', NULL, NULL, NULL, 'Advocate', '999999998', '0', '670039', NULL, NULL, NULL, 'Active', '2021-10-07 07:10:25', '2021-10-07 07:10:50', NULL),
(116, 'ONNPL9Nb8cO48riBpabnbjkPPW2jsUg8er3Z2HL37NnkN8t0vDkD4bQl5JYy1wIeAbWNctMYUUgL76tEsHiF7g8KX5jM8M5xpNRE', 'test', 'cbh83201@zwoho.com', NULL, '$2y$10$Cr4071xChbgi9YIUilerXOodU51RYdYJul8uYhjkpNlhfOlOXZrH6', NULL, 'test', NULL, NULL, NULL, 'Ca', '9512207779', '0', '627336', '568211', NULL, NULL, 'Active', '2021-10-07 07:13:40', '2021-10-07 07:19:21', NULL),
(117, 'hnCo6eJe6jPlCLa13Zpm0AnVZurmjFBqzRFuCn21k1cC2Bv8JwkDWRKb52BdLmqcs0gK7yWyZN1bxQ5dsKiOslLEiiSc7J7Vq8A5', 'hiren Motwani', 'hirenmotwani35@gmail.com', NULL, '$2y$10$DrMzycYwPRHlXvTSzLbTeOb8cNxSkoteoejUa8tBzokqYWmkyQQ.m', NULL, 'Rajkot', NULL, NULL, NULL, 'Advocate', '9722227276', '1', '878032', NULL, NULL, NULL, 'Active', '2021-10-07 07:14:21', '2021-10-07 07:46:52', NULL),
(118, 'xA4STikTxvfV5H8UAw1Ek3sJN4ovPwSjddvAfdrw6G8utZ2fQCS3Ve3v7yj2xyjhjc7rycNbMov9JJ8wjsFLGrbl2XoOst7fvkHX', 'shyam', 'Lex@gmail.com', NULL, '$2y$10$8bmv0IR5ukm9U.dqU8plC.VfyzLJCo40tHI5nxcrDRatj8i7wO/m6', NULL, 'surat', NULL, NULL, NULL, 'Advocate', '888888888888', '1', '935818', NULL, NULL, NULL, 'Active', '2021-10-07 08:56:58', '2021-10-07 08:57:27', NULL),
(119, 'T2qdPkLOEyEUK4hxbTXmEuMub4Erw5pVzvZb9oVvBxtA0niQxKKEAmGs3MP4zq2MYBq2eSrXrXZ6wDT0tofDyCqqeWzqOK39xsw0', 'bejd', 'test@outlook.com', NULL, '$2y$10$DJSbl3jNAtMl2gtkKfrDDeskjFJ61EvKDSEI6k0Uy4yeO7azdchMK', NULL, 'grhwhnw', NULL, NULL, 'user/eKb5imzIvAFu8naruis8yUdpEywNQPmCFZmCVl8P.jpeg', 'Advocate', '6565654946494', '0', NULL, NULL, NULL, NULL, 'Active', '2021-10-07 18:05:13', '2021-10-07 18:05:13', NULL),
(120, 'SKJGL5CS2odDkcy3kw4pZ3aewSPG74aI9gGzWo5e6ds56ulDh58AWrMTRLTaysmm2tVStJVFxQA54cD9lers321YWashtD6y0mzN', 'Dhananjay sharma', 'dhananjaysharma89@gmail.com', NULL, '$2y$10$hTCq.s78SFxh3ukrmh8nCO.DJuI0IaoHKCKiZlymj.4xmMqC4bA.q', NULL, NULL, NULL, NULL, NULL, 'select Business', '+918427109840', '1', '588683', NULL, NULL, NULL, 'Active', '2021-10-07 22:16:31', '2021-10-07 22:16:44', NULL),
(121, 'HVvNqrx9nOrhji54H0n5wDwPGqppkrJxr62mMTAyZqQ7WXojQ0QkyzDU62mpGsCwncGpYaf7D6zfk6L3npntZPRYzb7QhklKKZVo', 'Rakesh Rajpara', 'rp162495@gmail.com', NULL, '$2y$10$eLDvWibAN6522YduULwMye/Xx6kgFsnzNE.ad9KR.UFzlaa/CBosa', NULL, 'Ahmedabad', NULL, NULL, NULL, 'Software engineer', '7016248207', '1', '792899', NULL, NULL, NULL, 'Active', '2021-10-08 06:52:07', '2021-10-08 06:52:25', NULL),
(122, '2XO5aejHYArDrYMGQHFb7USLGZ5wyBQUO6535PuLIncEyBQrWzpejY9KaJh3deTScSyJUj8NUTVsKhXAT8QrOdzzLA7ZDUjAqlDY', 'dharmesh', 'drpatel250295@gmail.com', NULL, '$2y$10$A1r3xAMIL.SRexrYq2tpfe.H7VzMaamwx2n.9t.V4ncfrn1QQaBU2', NULL, 'bhavnager', NULL, NULL, 'user/9m7kT78uzJXBHxajG6x5qQGcNaDRxfLj4asYXoNW.jpeg', 'Software engineer', '7567051091', '0', '560875', NULL, NULL, NULL, 'Active', '2021-10-08 12:37:01', '2021-10-08 12:37:25', NULL),
(123, 'dbZhEMAe0K2lh8MGfKmXGL6Mac09DIItfNGRu4x8Js1AqmtQEIpjzuopuRWmH627EdwSKcTgPfKhodjwI2CfdLiXcEYxdkMPijTQ', 'hardik', 'hsoni3122@gmail.com', NULL, '$2y$10$vIuvAmu93Xn5j5XJjAOiM.u8vF4JMQxmoE.MpvT6cQsDaXT05qBke', NULL, 'rajkot', NULL, NULL, NULL, 'Advocate', '7016565412', '1', '983755', NULL, NULL, NULL, 'Active', '2021-10-08 21:51:17', '2021-10-08 21:51:27', NULL),
(124, '2W0GQxbIwst1ZPzHE0cRST6rhLBDnCZidXQVFPHchGwUwRVjeiuwsMPdMGmUtUUX30ZfLXKlwQXODVSBaSnsHXXjIKqEgcx58zeL', 'saewed', 'saeed41073@yahoo.com', NULL, '$2y$10$f3Xu7G1H.XzjeSVskCwAveLYKDJH8L39SLGGmqhamWXpECfRZ7pP2', NULL, 'c', NULL, NULL, NULL, 'builder', '989155813930', '1', '804728', NULL, NULL, NULL, 'Active', '2021-10-08 23:30:48', '2021-10-08 23:31:13', NULL),
(125, 'K1qJhboIc0xqoqKkOCp3CFBse8GiaqkIpnxzcRJFU7dldi4H9GIIRX4cSIEDhev8Oq9VQotYJpyIwGYDMbmOUecESigo3V7xiM9T', 'phani', 'sarmametta@gmail.com', NULL, '$2y$10$2kN5xh7kglKAmuMBDEqKWuBFVo2yHUr1Q0kx1.jLfKxf0RO6rA23S', NULL, 'visakhapatnam', NULL, NULL, NULL, 'Ca', '+917382101505', '1', '934922', NULL, NULL, NULL, 'Active', '2021-10-09 04:04:16', '2021-10-09 04:04:34', NULL),
(126, 't9f3HlABlLgsTMqBIvOwLp4lg4NllVJRqjB7QDr6SnRHXpmmIOvRb4aF1vGHxQIIQ1qkFOhvaWQNkOb0GoiU9z8yohPwXgk4IyYk', 'Pavan Sahu', 'pavansahu78ps@gmail.com', NULL, '$2y$10$bloV8X4A.N5ElnNW3oITvOfIjRw6t3ruquwNMNTJ/dmNDrx0Gw5LO', NULL, 'Surat', NULL, NULL, NULL, 'Advocate', '7874651389', '0', '930827', NULL, NULL, NULL, 'Active', '2021-10-09 04:47:18', '2021-10-09 04:50:58', NULL),
(127, 'JHOdF7Ct0RNtEnCT1xGM034ERxs24avqIvVKOxfvjEpPNNs38bLoHv3iXyW49Td3seSyoRubjdRkju2rmZdSQ1Jl3bpXwsiZ4EqG', 'test', 'k@mailinator.com', NULL, '$2y$10$UIir6jVP7DKGi/7it2jQx.Dq6HqrDkUTPFzyMM6phtx75rDnzsYXe', NULL, 'surat', NULL, NULL, NULL, 'Advocate', '9999955555', '0', NULL, NULL, NULL, NULL, 'Active', '2021-10-09 10:49:44', '2021-10-09 10:49:44', NULL),
(128, 'pywRQxGbwcGOwpl8Jd8RLR2aFYlp4pIDZ3Khtfw3E8Y81cJ9m8xOWDmPo9a5EBuVsF8twF9toIlIIg4R6VvzQIaG97chNNCnAONq', 'user', 'user@gmail.com', NULL, '$2y$10$JpAquaplf4WnyXOEdCJw7.ae8yl03JvjNZwumvZhXkiVtxweoos4a', NULL, 'surat', NULL, NULL, NULL, 'builder', '9999966666', '0', '294288', NULL, NULL, NULL, 'Active', '2021-10-09 10:50:32', '2021-10-09 10:50:43', NULL),
(129, 'L5o7SQBdIrILRyVIPM0iK1PJEAiwQvARW9VyRxVGVDd2GobJApvE4vs7s7oUYnkKlzM7VW9zQF48olZ3B8MmATv7P0fGHHXbtY4l', 'user', 'u@mailinator.com', NULL, '$2y$10$IB14d0rq6Lc8a0E..lbBj.2i1hXKVBzcmKYcj9fUqiYhqVepGGVHS', NULL, 'surat', NULL, NULL, NULL, 'builder', '9090275237', '0', '134377', '224465', NULL, NULL, 'Active', '2021-10-09 10:52:16', '2021-10-09 10:57:54', NULL),
(130, 'fuqT9JrzEfOkYCIhGjSkOim5DhreFKhyQc6Qp9S1BrQEDQ0350OPONOHOKx7j4eeupBwStilsaPcpxvxyiwrEMx1RUv4ImmeJLhu', 'jk', 'jk@gmail.com', NULL, '$2y$10$AY6AXuHOCy6qPOV/xOdo3Ozq9TwyL4f3/BtWptPIujSDH1Tw9NJqq', NULL, 'ss', NULL, NULL, NULL, 'Advocate', '123456489', '1', '682465', NULL, NULL, NULL, 'Active', '2021-10-09 11:42:20', '2021-10-09 11:42:40', NULL),
(131, 'FIXi9Z5PVdRMMtpXoPAKDtDYb1Pgw6ztaFO9SEMHp9TStuHxn8BYahLcSNGQd5oSuAROITBH4aQ4TeQPxHeEJ00ZA0ebMxxzK8Ur', 'harshil', 'hkachhadiya@gmail.com', NULL, '$2y$10$g7z0C1moSRj7k7VhhrODFuj4XF.8ER5D1TSkkUB42xlb2GJskxixG', NULL, 'amd', NULL, NULL, NULL, 'Software engineer', '8980345749', '0', '484093', NULL, NULL, NULL, 'Active', '2021-10-09 12:03:19', '2021-10-09 12:11:16', NULL),
(132, '3gjZJytdmbl2Uub7wodIFxSLwY3u9Q2CJYVG2kwpQi43FS1t80IvnqGHfAoyuCr6Czcf98vSrXE1pR4m3PpSysh05BPsdCMpdhwH', 'Jasmin Patel', 'jasminpatel1497@gmail.com', NULL, '$2y$10$OYt2GvakMn1PPUfyjXAiTuDNawqnz6zkb2ZjBewb6x9W6ye9zO8sm', NULL, 'Gondal', NULL, NULL, NULL, 'Software engineer', '9601712186', '1', '923319', NULL, NULL, NULL, 'Active', '2021-10-09 19:50:33', '2021-10-09 19:51:13', NULL),
(133, 'offb3rOEW8cLpKC1m8pwV9R1GOW1Fg1HnzVaFZrwYRbalqH7XiJSEMQgKlEFd0iJxtEGpwrPglpUW7yvWMF4NgEaq1upuN1mYtXl', 'Rajnikant', 'rajnikant.k22@gmail.com', NULL, '$2y$10$9GP/7WXbhhouuMBhSXfadOhkkhda/nVhCbEeFav/P6y6lyaoBgtRy', NULL, 'patna', NULL, NULL, NULL, 'Software engineer', '9430950634', '1', '448019', NULL, NULL, NULL, 'Active', '2021-10-10 05:39:09', '2021-10-10 05:39:21', NULL),
(134, 'pT6DtjaFUeTCFznApaB359c5NaJkssx9439UIyJR6oRTNKdkD8nZ1PLWE2sZXtRNrEbB8gO1Xc7jjgTmeafV9OYJUJ99YuU4XlG6', 'vfgg', 'prideappcummunity@gmail.com', NULL, '$2y$10$R.idS8Xf5pEu3R1AnDThZeVitdspalh2c7mHdLfizCyC4LwpIQ3Ye', NULL, 'bnl', NULL, NULL, NULL, 'select Business', '8556648897', '0', '664005', NULL, NULL, NULL, 'Active', '2021-10-10 06:04:40', '2021-10-10 06:05:07', NULL),
(135, 'Fgz1bKuf6dthvMfZCQRoUlqb5osfFkEwcc6IEJ7UDFFLSdrsRU3AM8lWuh7uHsguZUVNMWT1WTc55KQzyr2Qf8I6NoIDHd0IWby4', 'dharmesh', 'dharmesh@ecardonline.in', NULL, '$2y$10$EAIPdVKZqDJXV0LdrexdD.6yxwkRor.0b.0Bq09G.AKkliwfDmWrO', NULL, 'surat', NULL, NULL, NULL, 'select Business', '8866266554', '0', '141108', NULL, NULL, NULL, 'Active', '2021-10-10 11:24:59', '2021-10-10 11:31:11', NULL),
(136, 'EGtW4KESPs29BKAJwKOf5sRDI0DWASHMBSOEuOJ0aClCNvHWtjF13gkHDhtsfxFNgu9ZvewWX9UCFSF8MjfQ9kSSfJj0w79f4kpS', 'mahi', 'mahi@gmail.com', NULL, '$2y$10$S/vTYzrdj1W/d6KFsynshe3L/w6LI5OF9Yc6OK7oIDOnehAMW7mMG', NULL, 'mumbai', NULL, NULL, NULL, 'Software engineer', '9874563210', '1', '625447', NULL, NULL, NULL, 'Active', '2021-10-11 05:17:21', '2021-10-11 05:17:37', NULL),
(137, '7pMedHq5ITo1qwnRK7p3pLr8NMPXpyl0lURUDYccEqRRKJsaUbq33jwx7D0ggFIViayK8nV4R241qQ5HQiaI5hH0Bagkn8ptaUDV', 'Alpesh Savaliya', 'alpeshsavalya@gmail.com', NULL, '$2y$10$8Gr/2gCo.Fint5BiKzRc5.fM/goKeHtX9/UXQEPXX1KAqMyMpwtYG', NULL, 'Surat', NULL, NULL, NULL, 'Software engineer', '7600760048', '1', '843159', NULL, NULL, NULL, 'Active', '2021-10-11 06:40:31', '2021-10-11 06:50:45', NULL),
(138, 'SQY9CsptlHttyIgPuFiyNOjuCM8kI7h3qvKTjuvvEmhMQiB3cOK5ZJ1VOB1UHSvpWb8KiRcok9hBgdLAwye5pj87nUnbKAlFvLGz', 'sjsjsjs', 'desaijaydeep10@gmail.com', NULL, '$2y$10$orhfS0mWpCHlP1mNN.oT4OCdhS8Hpob3crrQIB5HcI84fCWYfoOg.', NULL, 'surat', NULL, NULL, NULL, 'select Business', '7434923064', '0', NULL, NULL, NULL, NULL, 'Active', '2021-10-11 15:44:13', '2021-10-11 15:44:13', NULL),
(139, '3StJLy1Qz3oe0WFgu6Nl4HXvjKhyYacKwkNyA0wZBDflskQJvwOi9MBgbGT4EsqqVjVWHSnP2vWTbmUGMDk1RbvuMle9iNt0ctUH', 'shyam', 'shyam@gmail.com', NULL, '$2y$10$/X4k4ZLZTRtNhdHVcDeSAeZfafe6PwapDEOXctIyBUG6hvj5r4BVi', NULL, 'india', NULL, NULL, NULL, 'Software engineer', '9999988888', '1', '988323', NULL, NULL, NULL, 'Active', '2021-10-12 05:04:54', '2021-10-12 05:05:24', NULL),
(140, 'fMY2hVMevOLNODSlNiRkCDwF3xjcxvDMs46kq307OPBa1TrnIMNQC36dTcrEsRYnf6VGqjb17mspdUDPxy2qsjAFqEuMpqoGYNFp', 'Tejas', 'pateltejas827@gmail.com', NULL, '$2y$10$I52aFzhdXypOY9zWsa0nGej13S6.K4ix0ZXon8B56dimnGo4589fq', NULL, 'Surat', NULL, NULL, NULL, 'builder', '7227068777', '1', '594142', NULL, NULL, NULL, 'Active', '2021-10-12 07:40:42', '2021-10-12 09:03:56', NULL),
(141, NULL, 'namess', 'email11sss1@gmail.com', NULL, '$2y$10$jzxwgh..KW96bIBGFUJwLuckNHdRR5EVyFVIEcun5bMYDI53JPc6S', NULL, 'surat', NULL, NULL, '/opt/lampp/temp/phpjMCe1a', 'Software engineer', '9909508088', '0', NULL, NULL, '2021-10-12', '2022-10-12', 'Active', '2021-10-12 08:58:00', '2021-10-21 11:38:45', NULL),
(142, 'lJR40O68XHiPg1aSxOWaNJRjWD3Z0WhCxm9ggdjlC6xi5uRL5GjfqbvWulL9Zx88nPCEc0hbdllzKxbJxN2YVzKkxTNBvFIJjDy2', 'Rohit Vishwakarma', 'rv410619@gmail.com', NULL, '$2y$10$qfO/DAC9E9aWmH4559sUuex17/f7Zs6hUh7AUzkjClb17T0predIa', NULL, 'Nashik', NULL, NULL, NULL, 'Advocate', '+917071723322', '0', '970672', NULL, NULL, NULL, 'Active', '2021-10-12 09:41:29', '2021-10-12 09:41:38', NULL),
(143, 'mGv303h9e4ZYtmYpWHqw30Y6uujxCPX3Ctkcym55WKbw12OOM9UVClOy7BOjAQLAnkpJhUco7LIYQRjp6z7G8MRpEoO1OLVNxUgh', 'divyesh', 'divyeshsabhaya822@gmail.com', NULL, '$2y$10$uEmwnu1vvhPY8/eym2aQOezI2gFf2YVypuvsqPuPXpq4UxZc4DXHq', NULL, 'rajkot', NULL, NULL, NULL, 'Advocate', '8320190004', '1', '707413', NULL, NULL, NULL, 'Active', '2021-10-12 09:45:27', '2021-10-12 09:45:55', NULL),
(144, 'kDh0gHPCgymW0vwUJYOHDYznApIM8GsRTns5uhnkSBGdjNWHBIPawC4izTTuxjVEeIaEaYFFWQthCmvVQKRXYLOo574aC9Sw3cQp', 'Admin', 'admin@admin.com', NULL, '$2y$10$wRCKF0rkLeTkplpXmECjaOPzX6zUPGoI7OdhJaEAVAHs0URCXqY3e', NULL, NULL, NULL, NULL, '/opt/lampp/temp/phpgks3ab', 'Software engineer', '8989898989', '1', '930889', NULL, '2021-10-12', '2022-10-12', 'Active', '2021-10-12 12:10:29', '2021-10-20 17:08:06', NULL),
(145, 'AxfMqpJmdCzQZq7a9UgOwEbcT70XJ6evOQdeDLcXcvSilCv49fKN5ExJ8zpbfutw4JMi6X1jD7l5llEzayh2OUwEC5eQDBSCcYNR', 'hiren', 'abv@gmail.com', NULL, '$2y$10$neW/5ZkBsyshFHx4VW/8pu4bb8YVQ01V/rT.h2FdEpNHcFd.9IjWW', NULL, 'ahwa', NULL, NULL, NULL, 'Software engineer', '9494252311', '1', '665760', NULL, NULL, NULL, 'Active', '2021-10-12 12:21:16', '2021-10-12 12:21:42', NULL),
(146, '1WSgSBgTMH8mW5tG2vxqVyuiFJflqLJhHUU0FtZcuxDEaP5dRRGZYNS3fHqUAYy0b6PNHb0TbkpJKU12FTunz84RTh8pEQQ7EYPm', 'kuldeep', 'kuldeepkurre360@gmail.com', NULL, '$2y$10$G8.Y8Xk2sr3vQouJM17SBuigbudPfiuEPhwDFlQTZ5X4JgOKB7/ga', NULL, 'patan', NULL, NULL, NULL, 'Software engineer', '+919589401108', '0', NULL, NULL, NULL, NULL, 'Active', '2021-10-12 13:20:21', '2021-10-12 13:20:21', NULL),
(147, 'z5U74Q77VX179eXYUopAZEHGxMJ3PHx8CzrxxLcd0hFetkNIcu2qrIV1okSw6D1NKPbW3Tl7tXFGhIxbubHP5tzZ2DCo36Jkc362', 'jaydips', 'jaydipsurani@gmail.com', NULL, '$2y$10$Ut6Ytz7IZYwKxM2MJZ2APurpMz1y1Z9x8zhYR7NNbl7AR3tHZp.ZK', NULL, 'Rajkot', NULL, NULL, NULL, 'Software engineer', '9978468886', '1', '285613', NULL, '2021-10-12', '2022-10-12', 'Active', '2021-10-12 22:56:25', '2021-10-12 22:57:13', NULL),
(148, 'mt9fKb1QzoSogbYbVpWcVjVrtlQ1Iq2l9lhzWcfKV6pYMrzCXSLWSNKL7JBIs4M334i3hfRCvpeit5wy1SDp6SNmYaJl8jK9PCcB', 'jatinmodi', 'jatin.nicm@gmail.com', NULL, '$2y$10$foiMPt0IDbWwfgoxSh89iuQtC7bXLo39K62tj8lBQlep2k3hw93WG', NULL, 'ahmedabad', NULL, NULL, NULL, 'Software engineer', '9106408920', '0', '391860', NULL, NULL, NULL, 'Active', '2021-10-13 06:09:30', '2021-10-13 06:10:09', NULL),
(149, 'ejyMrxfrRhzMyx5IqsLCKj7s651G2nzfwUb8WNjDewjwapStjrH1JmObHDMogjjFm4RvhzOWFa5UpsxMm7gqwf9rBlvx2OIzZmtI', 'chirag', 'radadiyac63@gmail.com', NULL, '$2y$10$yYuIKoz6jipidGL/axMaKO2NUVHB67qWvK/osz3bVdHYE/uQ/xo5.', NULL, 'surat', NULL, NULL, NULL, 'Software engineer', '9033989768', '1', '459795', NULL, NULL, NULL, 'Active', '2021-10-13 06:35:54', '2021-10-13 06:36:10', NULL),
(150, 'XprV0CSraco5YpZ4MmI7FjRH36HcGhOQRVAm9JWKxeAcECfmsjtC2YOKLdqyxJk8VyeIKDPuAjQxk7fsLWG5RN4O9aC9xhkNcjCW', 'Satish', 'satishlomate@gmail.com', NULL, '$2y$10$E06ep72a6nkBPJ.0SX28duq0NJQ6tFDRuGhLjtUjNP.nu5li7FuiW', NULL, '123456789', NULL, NULL, NULL, 'Advocate', '8805555057', '1', '580537', NULL, NULL, NULL, 'Active', '2021-10-13 07:56:40', '2021-10-13 08:06:08', NULL),
(151, 'cA4tKfiaOb54JteLYyXLLiqOA0bC0uSxEjcvwXzKkzNUIva9xjMnp1j4mezRlFLoixgH9jqm2ZfjFBmNxdYX2PXJUDDCQwrARVTS', 'apple', 'hammad.zahid@finz.io', NULL, '$2y$10$e/IYp6eOyzd3tC2Xt7XQzuzlMyBtO0CI9/9vKNHLtpv1WCjerOrSa', NULL, 'lhr', NULL, NULL, NULL, 'Software engineer', '03334658115', '1', '402244', NULL, NULL, NULL, 'Active', '2021-10-13 11:10:17', '2021-10-13 11:11:23', NULL),
(152, '19W0WTeWlr3SD26dZ3UY7eLZcn8z288C8AufhRQO9pZFfBnWIHtJOBLv8359cmOyPTpypVRRzMLblGaX3WmwdClOXqygLmyhtDaQ', 'preetni', 'preetni005@gmail.com', NULL, '$2y$10$Njj7wRoH6J0RmvuZZLmR8OR7XhYl/DsYfeIsj7c8yiPzGGzkXXnBy', NULL, 'surat', NULL, NULL, NULL, 'builder', '9988422551', '1', '781379', NULL, '2021-10-15', '2022-10-15', 'Active', '2021-10-13 11:59:36', '2021-10-15 09:11:41', NULL),
(153, 'Oq3qCLCfnt7Afo2oDmlIv5PQ419KvWQava2Dw70S8QTf8xZATWfEzdJ7fvQ1Sm38FtMbLIQ1D1bQs1WJvyEODvC9aCpC47TxJJAR', 'sandeep', 'sandeep1@gmail.com', NULL, '$2y$10$WCQgTK/qfFz/8mSK7isK7.64VJYtoMngYpPu04J87m/w75fPNcKsm', NULL, 'pakistan', NULL, NULL, NULL, 'Advocate', '6876543211', '1', '778262', NULL, NULL, NULL, 'Active', '2021-10-13 19:34:15', '2021-10-13 19:34:52', NULL),
(154, 'pbX5mFNeJlnnFZTh2iJ4a8s3iwx9lu2mfZIGl5lbdkdHskaJ7vNAUSQsSD3uPK1fYYzVQRlKwUrar2MZZpUggbieFF2fropgRMe6', 'Bhavesh Joshi', 'madhavporbandar@gmail.com', NULL, '$2y$10$D3IQse3fz1QSeHLiyUqRcuwmMK0ePZ3o/8yPO2qQ0OPCyhsF8xY3q', NULL, 'Porbandar', NULL, NULL, NULL, 'Software engineer', '9033392721', '1', '513170', NULL, NULL, NULL, 'Active', '2021-10-14 04:08:22', '2021-10-14 04:08:44', NULL),
(155, 'bWLqmtFEO5asSLxrOPSZNsJgZKKA8AboczU7bz8bfeqL8ARspTdOm5nmhD7EAimt8eBHriPTdDEDBKbHmFlVO5BesneZTGSVViXh', 'Aadi', 'aaadisy@gmail.com', NULL, '$2y$10$JxyqW0IR1AcYDtEm1gBfDOWfwMsHXH5tphKtQsiT6/W0GaCmDt.RC', NULL, 'lko', NULL, NULL, NULL, 'Software engineer', '7080013463', '1', '344817', NULL, NULL, NULL, 'Active', '2021-10-14 04:26:04', '2021-10-14 04:26:19', NULL),
(156, 'bu940VJDyLnelspLyrWvT3pFNM2B0DLiCD6lOM1Lrag1kILaiEs4NX5qbfBZ3Hf7R5BzUlRUdOLfq32vfar0AQEZM2eXrE14NGlX', 'demo2', 'demo2@gmail.com', NULL, '$2y$10$V0x88iznX9bDHbBEOPsZPuDToCjFBP.uC.Al8ljmFQrIczxvTA7qq', NULL, 'rajkot', NULL, NULL, NULL, 'Software engineer', '7016031765', '1', '545197', NULL, NULL, NULL, 'Active', '2021-10-14 04:58:13', '2021-10-25 04:33:52', NULL),
(157, 'SQrjK4mstZTUtQsCoagAJ9wxjw0zbn3SOK3tokxexV3hIza6b0pj6DSHjwlmAy5SEurQNFjtYXQsPC3hTAMfRKreYSbvicGEHQCg', 'mig', 'mit@gmail.com', NULL, '$2y$10$4aYsMesDM/5R5xVDIHVwE.QO.0yVe4Ci2gIhm3F81zWI58BB47vSq', NULL, '123456', NULL, NULL, NULL, 'Ca', '9999988899', '1', '385944', NULL, NULL, NULL, 'Active', '2021-10-14 06:05:11', '2021-10-14 06:05:31', NULL),
(158, 'JJ2zUgma76N2Y4kUf4TeK5HP3NdxDNPxSCbJatRYG1VYLzlf6vFfK4EkNyOYszPkFyWfY1ev2D4w873PniRorm4g7GoSYAQOtfMc', 'shubham jain', 'jainshubham411@gmail.com', NULL, '$2y$10$5/uxNfFJpJmB2crjuDTTMeRw.N1M.7y0.1nyKofUhUgf8HMXTFN4O', NULL, 'mumbai', NULL, NULL, NULL, 'Ca', '9594835650', '1', '605714', NULL, NULL, NULL, 'Active', '2021-10-15 03:01:27', '2021-10-15 03:01:43', NULL),
(159, 'SY3srVG4alXKz7WPIw45wCcx4Zl42JHPHyWV4eal70gRK7NpC9U3jNff8H7I1PVARH2YL0MhJubtSCYxbUkCcbJkwE9p1iy0NCz2', 'Byzed Amin', 'byzedbin3@gmail.com', NULL, '$2y$10$gt/lLXFeP9aimyFMyv/Hr.VlxdpFEeY03m37.bp00f2gfHk4y7.mK', NULL, '123456', NULL, NULL, NULL, 'Software engineer', '01830747554', '1', '229860', NULL, NULL, NULL, 'Active', '2021-10-15 08:24:42', '2021-10-15 08:24:54', NULL),
(160, '8LK4FImrSc9Dps7R1cIyyPl2JMtKP2gYJsK8bfFXWLSaI7r95HU6kuhPRfRURuwyCAHKBI8KQaXGNL2L43v5jd2kMlH8Eu2mnqpS', 'rupendra sahu', 'rupendrasahu1102@gmail.com', NULL, '$2y$10$YxDeZkRsfQznREsdHBkv5u5cRIxkApXdYr/.LMFh.kdczREPIzn/W', NULL, 'Bhilai', NULL, NULL, NULL, 'Software engineer', '9669005281', '1', '461316', NULL, NULL, NULL, 'Active', '2021-10-15 08:47:12', '2021-10-15 08:47:33', NULL),
(161, 'Zu3s5HN0ryJbtUyBSqvATvD6VJMRSGv23rMU8g5svadhkXyVFilut8xihtAlC0AX58G3ENvUxWZMB9MfnF15yOd35TzQXTVna8VB', 'Test', 'test@mk.com', NULL, '$2y$10$dFZku1dp5lVQV25MayjzxukK5Y8ppzdXS9H8Rl6064OGJpPwOzqOS', NULL, '321456', NULL, NULL, NULL, 'Software engineer', '99551234567', '1', '786396', NULL, NULL, NULL, 'Active', '2021-10-15 11:33:31', '2021-10-15 11:34:17', NULL),
(162, 'in1E4ermLd8mvFWdiTLYX2ii8trU1dkm368iLN7Ru0OIBicGwyelc115ftrf6ncnYNlnVjH4xYimH30Dx9oSSFoYrJPF0I3QLwDe', 'parth15', 'parth15@gmail.com', NULL, '$2y$10$KmIGTP2PE4hpCrHWp5T.z.5uTao728eozjW8UK3SvyujpzfSO/f9O', NULL, 'rajkot', NULL, NULL, 'user/Quh3PDqEbRCLMsj552BHIg6ClaE6S39uTjFSh3IW.jpeg', 'Advocate', '1122334455', '0', '338021', NULL, NULL, NULL, 'Active', '2021-10-15 11:47:40', '2021-10-15 11:58:26', NULL),
(163, 'p4Ztmr1UETGAcjUHFAWCHhvk22HS4ZcgbcINAq1GJfMbfLbx3MEWvRFp41TcjF0grJtkQJR03KXyNiNvGA9UqN5lQOcfEfTczki3', 'user', 'karala2607@proxiesblog.com', NULL, '$2y$10$Fg/FwuhetbEADdyq5aDz4OiVOUHepiXT0MF339VTHZW3lD8PHSypa', NULL, 'aa', NULL, NULL, NULL, 'Advocate', '9979999799', '0', '779569', NULL, NULL, NULL, 'Active', '2021-10-15 11:50:53', '2021-10-15 11:51:14', NULL),
(164, 'aSCU3Hi6Ntg5gH5r458mdMsm60tPRuxFnybo6kumm3oWThvOBK8nTAY0777QQ09aFZASqIIOy2Xzs0dAo9l6nvBxot3fOgQq8xum', 'parth16', 'parth16@gmail.com', NULL, '$2y$10$4ggPOvgePPTdnhqrugznM.Qn7M.S5xemi4NKFkzZYvin5HeYWgHhC', NULL, 'rajkot', NULL, NULL, 'user/3JmqU4YNtXgfknYwlSSYVA5o57DWPMMaODK1K7sC.jpeg', 'Ca', '2233445566', '1', '463336', NULL, NULL, NULL, 'Active', '2021-10-15 12:09:32', '2021-10-15 12:12:17', NULL),
(165, 'wKDR0y3CFkxY89n76ZODIeK2CQyZcnVuybQ2Cw6og2AbXzfQLpXoDT7jiQ5Q3MI4bWlIjGSOlEavN9SEZ0jXzmqhQuiv2JEpdo6r', 'kunal', 'kunalsojitra0@gmail.com', NULL, '$2y$10$kAf7NxSFrMYd3B2Zy3u6XOfjExufNnLDCNmn88idLS/8z4EnorQBm', NULL, 'Rajkot', NULL, NULL, NULL, 'Software engineer', '8780999561', '0', '745240', NULL, NULL, NULL, 'Active', '2021-10-15 13:02:09', '2021-10-15 13:02:21', NULL),
(166, 'SEy7UXsJuEFZCjrCyDJo2KBZ5NXlZlltWEerjKOZsrcCmSlLZPGX8JKSdE1bLloHL90Gkjs3BLqmiGQ2zQZa3B2w1PBlspJ3HyLx', 'Shridhar Tiwari', 'ssridharatiwari@gmail.com', NULL, '$2y$10$nvS5gY4mphEMLHaqFbQFS.sXJXzFNQpJOTQxHiEglmrPA/nO9hqhy', NULL, 'Ajmer', NULL, NULL, NULL, 'Software engineer', '8233388802', '0', '360693', NULL, NULL, NULL, 'Active', '2021-10-15 13:32:47', '2021-10-15 14:11:03', NULL),
(167, 'YPMFccd8NrTS36dWmlVTwfaEDWNtatEqkNvTwea6b7WpvhAvWFYRKwfqPT8CvpuzMfhRTehoeZaQKc42rbZ2GLHEqXjcurbjOgFj', 'sanjeev', 'sanjeev6833@gmail.com', NULL, '$2y$10$q8aw27PRxCFfcbi6xDYFG.X5HQjCsfwAG2PMQ8YDmFbdLsS.JcJWm', NULL, 'jaipur', NULL, NULL, NULL, 'builder', '9079636515', '1', '735562', NULL, NULL, NULL, 'Active', '2021-10-15 15:06:08', '2021-10-23 10:16:03', NULL),
(168, '9PXzOHCO3OJpzsI5a3fHfohcO3ICd2iHFFXnsBJR2ikUARAXq9zGyYUIFj0cPnSJHSLh9d8NFyep16IU48BLU59z4pgbAYZiMKNO', 'raghav', 'raghavsoni335@gmail.com', NULL, '$2y$10$cfvqNvqzv3X2kYcFzLefzunPiRCAwRVq3RG/.JNpsLcHJK3unP8n6', NULL, 'faridabad', NULL, NULL, NULL, 'Software engineer', '8882133205', '1', '688446', NULL, NULL, NULL, 'Active', '2021-10-16 03:02:26', '2021-10-18 18:44:29', NULL),
(169, '4NEWdlQEJSZuDJqPGbMn510mgmteivr4VNbpLfqILwymzsoxa75J8DSyv5BL4AdKXcVHN0WMVPFa20upZDk9L0Vi5mISfRsyIhR8', 'test', 'test@emal.com', NULL, '$2y$10$9ItRKQ5ZBBrmmqMPDPOhSOV.QROvD7pDuOOmCzJCwKIGqCx6I8Apm', NULL, 'Ahmedabad', NULL, NULL, NULL, 'Advocate', '9999858599', '1', '465479', NULL, NULL, NULL, 'Active', '2021-10-16 03:48:39', '2021-10-16 03:48:59', NULL),
(170, 'kEo2S7cTTfgFaTqV1XFWSOkIr3a5FpTh5Awk75lk3LADddtIPbDFT1RIMW6ZhJU7g9UfBV5IE4MMvbkB4X3Nlt9gRjw6ykylpfx3', 'ms', 'mspatel@gmail.com', NULL, '$2y$10$E3Anw9BlheW1aFnivhMwwezjR1NLwfXreYHQ7/x67goGn1uGBLF2a', NULL, 'amd', NULL, NULL, NULL, 'Advocate', '9726763997', '1', '535040', NULL, NULL, NULL, 'Active', '2021-10-16 05:02:50', '2021-10-16 05:03:02', NULL),
(171, NULL, 'abakadai', 'abakadai@gmail.com', NULL, '$2y$10$rIUU1ijwRnXvD7Ew.82I/exsFSubNfKMTR7lonubXkwE/AbFh4Cti', NULL, NULL, NULL, NULL, '/opt/lampp/temp/phpr6TvjO', 'Ca', '5849584954', '0', NULL, NULL, NULL, NULL, 'Active', '2021-10-17 11:55:35', '2021-10-17 11:55:35', NULL),
(172, '9sme4NSboKTko7zsLC2Al0ZKf30lvY1PIYVjMlL4T7mK0pn7M9Gjvi1clxEoEFBodo9d45e566MXXtz3UY4NLY1pGoD3RLLRDUFE', 'parth21', 'parth21@gmail.com', NULL, '$2y$10$QWb1WvaHIfxV/Id3zdST7euR191rcA8KoT0tcBSJGX1crj7mJuSlS', NULL, 'rajkot', NULL, NULL, 'user/ayjriHO1yLDFIUCoc7VryU8Rim1n3OQtW4GQaoqu.jpeg', 'builder', '1111122222', '1', '871526', NULL, '2020-10-01', '2021-10-01', 'Active', '2021-10-01 06:37:05', '2021-10-25 07:50:45', NULL),
(173, '83CfhqDuECKnPyery4f6C3xoIrMsqGu8k9BuabpeTAF0A5AgnBpMzkl7lTgPMYyAIubkcEGTigMUOcqyWgM9NAy4x6Yfk0niFGDA', 's', 'k@k.com', NULL, '$2y$10$i2VoPjZFenc1K3P/np4SCe87oQGnU8IeivWyIxC0Cnr9FFLL5rCOK', NULL, 'rt', NULL, NULL, NULL, 'Software engineer', '9999999999', '0', '801953', NULL, NULL, NULL, 'Active', '2021-10-18 06:42:44', '2021-10-18 08:40:38', NULL),
(174, '8uvrTNUBWf6PZfxMtzY7ii0q0tCLxyYpfLmZQmRCo7faKsjY4xtgI4IBQQLeZZskQwLAZxjZd0se8eTYpBeOdF8tuaJ102TaR5w5', 'ad', 'adthedeveloper@gmail.com', NULL, '$2y$10$9hVHVI36lKQdgi9OqJGz2esGrTDI72H9ULdWBRTgOvjaMBHhb0USy', NULL, 'rt', NULL, NULL, NULL, 'Software engineer', '8866253325', '0', '460297', NULL, NULL, NULL, 'Active', '2021-10-18 06:47:15', '2021-10-18 06:52:36', NULL),
(175, 'ntoHEXGKXGnOmkNZf6jUKrGjGlEdRFERJqffdFM4PotAZREDXjSgEORSeDCsAyKwao4d8SX7kaIY2IzE2NzfltBLhInsUId3LIf0', 'parth22', 'parth22@gmail.com', NULL, '$2y$10$Cc6amcM4a495PqakleQsT.WReoq9VLx7h26yjes7QHSP2DGySKRHS', NULL, 'rajkot', NULL, NULL, 'user/EeelMKAZcaNF3KZyb1epNb0bbYe2rBh4gssN1yVp.jpeg', 'Ca', '2222233333', '1', '988280', NULL, NULL, NULL, 'Active', '2021-10-18 07:39:21', '2021-10-19 08:01:05', NULL),
(176, 'iOxEgQlyrTV3JzTqPs3IAVdx3CGeLwk9wUoNHwkgx6UuCeMTXUzcnT9oUKSwYKeP8q5Yh0E10ewkfcVivjFpq01yRxJrIralrRHL', 'kkk', 'kkk@gmail.com', NULL, '$2y$10$o69Yv9vihFlcoD5Zcw5d.OWMBoVLzTyyoc4snfzRWibrhP/p0xjf2', NULL, 'Delhi', NULL, NULL, NULL, 'Software engineer', '9896543210', '0', '270315', NULL, NULL, NULL, 'Active', '2021-10-18 09:00:31', '2021-10-18 09:00:43', NULL),
(177, '5ND2FQhTYmfRF7jwnwr8KXF2npEBWLXTvFuXok71hYN6PV5VseWkU8X55iLBtY3jX1znXhU2ObODAmaS08MiwfaGyaBgcC47uydZ', 'Mainuddin Sk', 'mainuddinsekh7864@gmail.com', NULL, '$2y$10$IYuZxc9YyE4ETyCrrYUtsOasll5MqrgN8/r539I7MUJryaRo9Maia', NULL, 'Kolkata', NULL, NULL, NULL, 'Software engineer', '8016627088', '0', '127262', NULL, NULL, NULL, 'Active', '2021-10-18 09:11:22', '2021-10-18 09:33:16', NULL),
(178, 'XCH6BSnNSnLyVlgHgL7iRLmocUtReeFbcXdvqzooDBIhNe7gINz6pFrqlqhHvohl8ZaNTSkkZEww6DNaDsEwGDfkFM4a3OJ4NOIt', 'Dhananjay', 'dkarche675@gmail.com', NULL, '$2y$10$x3RKukTP0qIGDafsCVs5lOvIlugtKk2ef2.f89wxxKsnyU3mpytUq', NULL, 'Mumbai', NULL, NULL, NULL, 'builder', '8149337333', '0', '513393', NULL, NULL, NULL, 'Active', '2021-10-18 09:30:21', '2021-10-18 09:34:17', NULL),
(179, 'faMtnONH8Nhs1iGBdlhlvCnvpNI8vkSED8TY5jTTS1rbwXD1MqBdBAFS1WJo5OfTQYpRoYnKrdl2S3jDKQtlcsWejjuXwVevhP6Q', 'parth23', 'parth23@gmail.com', NULL, '$2y$10$NFA.Ptx06PXS1OvW3ak57.3fbyWXeNN1zLmqJ4sHiK/13lOuPSN0a', NULL, 'rajkot', NULL, NULL, 'user/kB196iQeo8vlNd00T6i9la5KND4iQXTusI6jGT1u.jpeg', 'Software engineer', '4444455555', '1', '967290', NULL, NULL, NULL, 'Active', '2021-10-01 10:56:22', '2021-10-18 11:51:04', NULL),
(180, 'a8itEOlre0pYpyQSDVPbAzWUm73p4a9YDYNDnAMzm2SEruEEriFEsMnEXcPKP6qgKiLWSkcwwqwtaAe9l40GKzFyCcSlhPAcS2Ns', 'piyush', 'ydy@fsg.com', NULL, '$2y$10$i2AkvPY1.UlE8dMSvBFjm./qoNipv8X3QXMdyiMyBUmpWqRBXXtim', NULL, 'ajhs', NULL, NULL, NULL, 'Advocate', '1111111111', '0', NULL, NULL, NULL, NULL, 'Active', '2021-10-18 17:16:20', '2021-10-18 17:16:20', NULL),
(181, 'pyaILYlBWV5eOz59mgNAWJtAXkcSyS7fZURwQPF6S4n4xCBSx0szSKA1U1QzHv6mYBf0zn91dRfVdw7qyO0OAUii0JZXc9WkiVIw', 'taat', 'g@g.com', NULL, '$2y$10$OCtnyVcf6wba5wcDN.0GH.Z/EQ/TSNTvYrHeZwS/zqQIQi7xNNjai', NULL, 'ttaa', NULL, NULL, NULL, 'Advocate', '123', '1', '518772', NULL, NULL, NULL, 'Active', '2021-10-18 17:17:10', '2021-10-18 17:17:41', NULL),
(182, 'Ugh8JNl89oUzHAfQnE6nd3VpZla8SnNz70e9RReMouB5hSn05cAv4QeBeG2OgTJT6nLJ7UTCqRVH9NJa0ZMcySqRuufWmZQGPIJB', 'nameghghg', 'ssemail@gmail.comm', NULL, '$2y$10$O.NthzG9L/DsK1UeWoEzB.0lulIHinsHLYjV.b7oqtixMJ90TkRlK', NULL, 'city', NULL, NULL, 'user/ld6u5BUJiKdWhm9yIjg5vzeBeDn6B5wLYATkAWgd.png', 'business', 'contacts', '0', NULL, NULL, NULL, NULL, 'Active', '2021-10-19 03:53:01', '2021-10-19 03:53:01', NULL),
(183, 'yO5zK1moDFBQB262ifVdXZsS2xGbGDUbpZoobigd2khR5dkjhdgtnImtKgrjjl2ETVhOazcoSEaMUkcagCQFr9lvYalc21CBU4QE', 'nameghghg', 'ssemddail@gmail.comm', NULL, '$2y$10$Hnqa.KNniLlx/AE0B8SpouKcCHS88q9A5ryozcMustY6lKKwLhOWa', NULL, 'city', NULL, NULL, 'user/yMMFuo7vA1yKHZmyNvNLgy9fJWOdI6oJz34vhRrt.png', 'business', 'contactss', '0', NULL, NULL, NULL, NULL, 'Active', '2021-10-19 04:34:13', '2021-10-19 04:34:13', NULL),
(184, '4L6oqBBtWnBY0a4Kp07BMN6o4DmSW9zCfcVOJ3IxqK6QtSdunOZYi3GTJ39TH3k4wjl7qN1e9BWzRTBrNjk02yXoTLLj9oomSlE8', 'nameghghg', 'ssemdddail@gmail.comm', NULL, '$2y$10$lLDNsys6oWeMvQZY1uMTM.gMi9iPvnfqotKFhqM0pgMuM4UcxleAy', NULL, 'city', NULL, NULL, 'user/qhkFdtM27LEZ3MGUcFOLQ5HN53LrpZLDMA2dxySR.png', 'business', 'contactssd', '0', NULL, NULL, NULL, NULL, 'Active', '2021-10-19 05:12:37', '2021-10-19 05:12:37', NULL),
(185, 'pPfNn1z0vDaqVqV71jT5Ef3G25Jv47CV4j7aKjcCKF1DSuYIrFfLvwtuE5T2CG0PwYVZ838XQKohMackS2IdCgGBDnSvnlYsemMQ', 'kagu', 'harshkagu29@gmail.com', NULL, '$2y$10$n4hx.94gS8rnuFrb1JKLNe5DAWpqHi3oQnmSRbK9eiSHRdLbQxENm', NULL, 'morbi', NULL, NULL, NULL, 'Advocate', '+919773207180', '1', '707702', NULL, NULL, NULL, 'Active', '2021-10-19 08:52:54', '2021-10-19 08:53:06', NULL),
(186, 'PEEtjeN7JMaFYvfpFbIjPPMPPQTtP7klZin5Xxka5NK7XMC0i4lFovZRtwsvDwmdiFKOiTsG5r4gw5ofBNplYxwPdmcTx4ciF3Zz', 'ayesha', 'kellysanim@gmail.com', NULL, '$2y$10$ABDHDMRRZasLo7S15uZagu9FbLR6YPSZCSQ6YnUm482JtihK406Zm', NULL, 'pnjab', NULL, NULL, NULL, 'Software engineer', '3176828970', '1', '618490', NULL, NULL, NULL, 'Active', '2021-10-19 11:28:49', '2021-10-19 11:29:09', NULL),
(187, 'HvgcHw6wnMW9pGUzipKMtVjXI3Tz9uhhR7IHfsqQpZwDpOlKXB8mbrjgLyoOzLqmFkFuJpqgS4jrJlzdUS5zQSRaAWR0mUVIedxs', 'd', 'a@gmail.com', NULL, '$2y$10$UBU.hoWpQneLm.ssxiVjoOz9Ts4R2qyA/9wAjxL58N0EZBGhIys02', NULL, 'aa', NULL, NULL, NULL, 'builder', '11', '1', '876631', NULL, NULL, NULL, 'Active', '2021-10-20 15:07:21', '2021-10-20 16:07:50', NULL),
(188, 'PtcXOPGGje3SqEzwoZQKnjqPzewnsE2WCC4Km7IQ8gfTBVTiiN8VF6nz2YjTNqz3973sArD8VRcm2svWJkK4NlwxGeMk83jZ54bV', 'nayan', 'nnaayyaann@gmail.com', NULL, '$2y$10$2Dy.URK.ZDE1LgF2oSMHe.YeL6KRkqLgMNn.zZ7LCNVImYfHnBAtC', NULL, 'Mumbai', NULL, NULL, NULL, 'Software engineer', '9619190912', '1', '683636', NULL, NULL, NULL, 'Active', '2021-10-20 19:39:25', '2021-10-20 19:39:42', NULL),
(189, 'GegUNVfLmlcFhFby4U3UNKZYF2I38dIooyQO0Pxfu5LPXh81V7vjhoMrzbprbKImM40oOzbQfB2ZYulHwpA8fGm3mTU8Ujf2XUEZ', 'div', 'divya.kathpalia3@gmail.com', NULL, '$2y$10$U1.Ek4XD7K7g7Jht.vpdeO/5UiGL5LCVNm52FmtoTY07JKzsAWKWa', NULL, 'delhi', NULL, NULL, NULL, 'Software engineer', '9315135842', '1', '970874', NULL, NULL, NULL, 'Active', '2021-10-20 20:28:29', '2021-10-20 20:29:47', NULL),
(190, 'PfZzBiBFFIVwxEE4qhbq4ELYt3CMyu3BFSvXP47bsKVmOGnSICq6yg0XG3RUNLLnRGmfOh2vU4L37i4RjaGhN0hhDmddaP401L1N', 'abcmnp', 'qwerty@gmail.com', NULL, '$2y$10$Ju2IBhHbSafBRHE5S84/ROo93sNtCjRiT2r4Udk5pDjkNi8od4kO6', NULL, 'Baroda', NULL, NULL, NULL, 'builder', '963852741', '0', '690389', NULL, NULL, NULL, 'Active', '2021-10-21 06:13:05', '2021-10-21 06:13:35', NULL),
(191, 'SCA7Olwk5ly5OpeIVrnbNAecKLArgqjAL5NHbxcPlqDB1NPIvmD6ykQQU5FvLHWtpDw17G9aG8is4xNcv4PDFTKvAE2kpuBqRsJR', 'test', 'd@gmail.com', NULL, '$2y$10$QL8oT6oO9Myfo37Pbi/x.uFVYuoA81rApYS0NaNFRooZROlDjhNtG', NULL, 'ahmedabad', NULL, NULL, NULL, 'Software engineer', '7202800172', '1', '477134', NULL, NULL, NULL, 'Active', '2021-10-21 08:42:48', '2021-10-21 08:48:30', NULL),
(192, 'vOjSYaJHNEfZXECjipDbZN2dXI4d1Skg4k026XbdbNtRLZgcwCjEFkSWF4i7dH7oJEn1o6B2loU4ihtb1BHb9X7pIF0SQb1DOC3I', 'Bharat Vasoya', 'vasoya44@gmail.com', NULL, '$2y$10$yy3HQ5F/ZcKkw7DCT2zBieBuyKZRz3TmvhYAGO4WxX1ZIl2f.In3i', NULL, 'surat', NULL, NULL, NULL, 'Software engineer', '7405553525', '1', '747242', NULL, NULL, NULL, 'Active', '2021-10-21 10:32:35', '2021-10-21 10:32:46', NULL),
(193, 'GTt1ZU4ZovIM981uxXIRZLk7p2oWVZS9DSg0Qm6KXPAqv7ZKtpB7YT02VBZlS16euA2RcgDdwQJeBycDLTtRzcPGGHXR956JjUMO', 'parth33', 'parth33@gmail.com', NULL, '$2y$10$zYyVrz43aSUJT8cfaX2oH.n/g6iAX2XFkGZGT0t1sU4bmAk196Xla', NULL, 'rajkot', NULL, NULL, 'user/gSHk7TSHcKCAP3JGv2TSHdSF7rJVMMO9IAYliUoO.jpeg', 'Advocate', '2222333344', '1', '885162', NULL, NULL, NULL, 'Active', '2021-10-21 12:35:47', '2021-10-21 12:36:00', NULL);
INSERT INTO `users` (`id`, `api_token`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `city`, `device`, `device_id`, `image`, `business`, `contact`, `contact_verify`, `sms_otp`, `reset_otp`, `plan_start`, `plan_end`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(194, 'R4Nkj4cBPoNlrFBVN5P5gUixmHf5NiYWG9sjMXztZjDHf8rErtsK7GOWgug8bRZrcZnbTokUkqNjVOZRqPxkA5Itp8fdklTiyz1w', 'gaurav', 'webchoudhary1995@gmail.com', NULL, '$2y$10$67NGytoynQPadpWY7VC6keXWaoN.RAVDfiFuKPLgwPufXBxFIezHy', NULL, 'ajmer', NULL, NULL, NULL, 'Software engineer', '7073071993', '1', '714683', NULL, NULL, NULL, 'Active', '2021-10-21 23:54:26', '2021-10-21 23:54:46', NULL),
(195, '9YB2UQ7DBQUdp7kqswuJCgt9SIvC69ACMkeQyqfLpAdAvFsZ9bVzFh2CmfDSZsawe7OBvYrYHiLtHha3nikU5WnAeLdNYe0xvp8d', 'preet', 'bollywoodsongs45@gmail.com', NULL, '$2y$10$tn29G8UN6eBWQPQcecxGieWTUhqP3fteHEV0NKUmAhLl9M7nUxVKC', NULL, 'mumbai', NULL, NULL, NULL, 'Software engineer', '9730208161', '1', '181869', NULL, NULL, NULL, 'Active', '2021-10-22 03:53:48', '2021-10-22 03:54:10', NULL),
(196, '6czrS6wcYaTS76OLqClYEioe89BaobYboexwMI12MKlpAWvg0U9FwlHVAmnJXrxa4GltZ3FxL3gf9P6VvYys9h7lqwuhUHrAta3P', 'kuldip', 'kuldipajudiya@gmail.com', NULL, '$2y$10$FIAT/fXIh1xFoZmG0cLUmOmdMXICYt2844It/dQznvUJL8wUmNxl.', NULL, 'jamnagar', NULL, NULL, NULL, 'Software engineer', '8200532250', '1', '587019', NULL, NULL, NULL, 'Active', '2021-10-22 05:33:08', '2021-10-22 05:33:27', NULL),
(197, 'P9S760VBAn0pBQf8O244gSlg9c1u1FBT2WhbQJ7DsQkNWmgvh8l2d9eCqcuf9bpB4RyOlPyT19pUBxXGaGYyAeyAyWxWzMkCEVYV', 'vatsal', 'vatsalsd@gmail.com', NULL, '$2y$10$fQCYhH40JFw7yvIOWy81jeL8RwLO8dFlU9wMSSEsi5LXh1/NDmULi', NULL, 'idar', NULL, NULL, NULL, 'Advocate', '9925665414', '0', '935419', NULL, NULL, NULL, 'Active', '2021-10-22 11:58:27', '2021-10-22 11:59:17', NULL),
(198, 'g2xq6gaw3qrLy1zyCQlPjM1olkBHvRBfE69TXiMmXHK76YXNG1oyIavrlyWIjPiIHg9EWzJmKBsq0ABPOCnSZFREA4ymMLieni2o', 'aman', 'amansayyad420@gmail.com', NULL, '$2y$10$JAEFt91BjBmTNWIxrX.4ROpvalIxcUUJtjJNuGEJgwoF1vqmE/l3C', NULL, 'barshi', NULL, NULL, NULL, 'Software engineer', '+919604692255', '1', '590344', NULL, NULL, NULL, 'Active', '2021-10-22 18:15:06', '2021-10-22 18:15:23', NULL),
(199, 'RqdZDpeaWcBm1Lfd95OKlajhLBkQwLB0ni4hnlZXrYPTVJP52DIOmOl1MEMj4qlywbX6gaH8zMjRiOIedUqeqeWmZawuDSnktUGX', 'yash agrawal yk', 'simuhonda2020@gmail.com', NULL, '$2y$10$QfNXpzKhxvazEt.zFyBWzutCODTV.1QJQd1kSeb31FaawglqP0V7i', NULL, 'main road dohana shankargarh', NULL, NULL, NULL, 'select Business', '9399066921', '1', '915463', NULL, NULL, NULL, 'Active', '2021-10-23 06:51:05', '2021-10-23 06:51:29', NULL),
(200, 'uucTSJjabAv4ysVvOIzwt9OdoHIY6ZmtACg8x4nYdd5zzaSFjTwnBfc1OZhfI3z0SMXD2174JWdMZuDnsKwqZ7R9vDOEchzvgILH', 'Rocky rockz', 'venkateshgandhidomada@gmail.com', NULL, '$2y$10$UV7.Z/jfzIwyrOb4xc28q.j2ECnVoyqfqA/pW/l.QJWCcH7Wo8/bS', NULL, 'Hyderabad', NULL, NULL, NULL, 'Software engineer', '9676871634', '1', '989875', NULL, NULL, NULL, 'Active', '2021-10-23 07:38:37', '2021-10-23 07:38:50', NULL),
(201, 'l6WnDtlfd8JWEaHKFUS6tLf0blWEFJb6vHrQuxgo1nPfQwtwABEDK5KNBAwzwjKyWnFuR4qsiHRKCeO9xZdhTRxE1xrDO6vabG4b', 'SOMNATH J', 'somajadhav0@gmail.com', NULL, '$2y$10$nS4MgFxenRfcuhU1yVzm3emtTlxtHLDPma9JkiVV9HRFNJYbPbI9G', NULL, 'pune', NULL, NULL, NULL, 'Advocate', '7972625580', '1', '310886', NULL, NULL, NULL, 'Active', '2021-10-24 02:36:38', '2021-10-24 02:36:47', NULL),
(202, 'D8f5J5WjR7BkfGgf9knzw4K2M8EfjjdDFRUoAg5kGtzjOygLHBKBlJBwdqApAM08XZ9YfCtR4YWkrTtdBkAKMuWPE6SYRnG7vkDY', 'Naresh Kumar', 'nareshmalviya.nitham@gmail.com', NULL, '$2y$10$OfKmm5s0SaxHFK1JCCEGA.PfpG8k49bN0iPnx2sbd3h1ZLFOVooSy', NULL, 'ffff', NULL, NULL, NULL, 'builder', '7042910792', '1', '497212', NULL, NULL, NULL, 'Active', '2021-10-24 08:58:36', '2021-10-24 08:58:56', NULL),
(203, 'XK25kUbciUfcqnwHHmDKDryn3DFee92prdCC9Qxg6XR05ob5001s2z3eJQ8ywRKzFwRzLR2ukSttc5UypRw4jjV8JUGLgND1zHRY', 'kuldeep', 'iocodex360@gmail.com', NULL, '$2y$10$Ky10LZBFO/CukEWW1/bjKuHJ5BZG/BwpVja1gZgFq7UgHtkcv7aji', NULL, 'patan', NULL, NULL, NULL, 'Software engineer', '7771088464', '0', NULL, '462181', NULL, NULL, 'Active', '2021-10-24 20:10:56', '2021-10-24 20:12:43', NULL),
(204, 'yePurcehkHNhk37bJ90PJHYdE1RzovyATuHR3MPvVMAauspUSe9JirrycLqsCHMtYr4aDJffJEITSzDq54iabikUD5ydHlJjmH1w', 'kuldeep', 'freepsd360@gmail.com', NULL, '$2y$10$bI7Had5Rl/BAlsUfz.obQ.EL1ocjlpjlOSVbc67.s4R4y0T.YJX0O', NULL, 'patan', NULL, NULL, NULL, 'Software engineer', '9589401108', '1', '651988', NULL, NULL, NULL, 'Active', '2021-10-24 20:14:30', '2021-10-24 20:14:54', NULL),
(205, 'HkaunxVVXFJ3TH1Ip4VV1X2P3EuvvxebmXg3VVtKsaVGAujFVGZlYcGPApZbylJpS1oXROZSZovJyfUrIYj0HJsMGXm1VZgsQVWK', 'parth50', 'parth50@gmail.com', NULL, '$2y$10$TXqgWfZ5kTfkeWcpOnh1BeVUC3hZSbnzXYZuRO9QlKStYEpb0RkrK', NULL, 'rajkot', NULL, NULL, 'user/ZJTgs19nWGI5G5p84bYfYYA1bTMOsNQGhwqFuw0A.jpeg', 'builder', '2222266666', '1', '408957', NULL, NULL, NULL, 'Active', '2021-10-25 04:22:33', '2021-10-25 07:46:20', NULL),
(206, '4Ydn121zJL5onP40ARbvbAGQoDxk3jpF1ZEKgIuWaEf2VK2Yz4TIqGWZyORSKF3Mjij9fyHtPt69CleSwng63BXXCXRoDVVZ68gp', 'Jaydip', 'jaydipkanpariya108@gmail.com', NULL, '$2y$10$C242yi0x4akcMfwiw6Up4.T4V54t4uygAWGSPvnpMXjX904xk3u1W', NULL, 'surat', NULL, NULL, NULL, 'Advocate', '8154843965', '0', '350281', NULL, NULL, NULL, 'Active', '2021-10-25 05:15:44', '2021-10-25 05:15:53', NULL),
(207, 'qxTfhUoJSOU1rJ7NFta7lTW00AN7yvLcatu2FDUtOell9xPVmegSxvZ93LV0lMnFCqlWQcO8vGu5cVTMIQxCa9O4n9mphDeYAI7V', 'SK', 'sanketkapole17@gmail.com', NULL, '$2y$10$TU/CsjDdklKVZUH0yRW12.u7ygXc2OSWHIVDJIcJI9ft/WA0N9p/C', NULL, 'Mumbai', NULL, NULL, NULL, 'select Business', '9970177408', '1', '376566', NULL, NULL, NULL, 'Active', '2021-10-25 09:48:44', '2021-10-25 09:49:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `video_upload`
--

CREATE TABLE `video_upload` (
  `id` int(20) NOT NULL,
  `video_category_id` int(20) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Inactive',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`),
  ADD KEY `admin_password_resets_token_index` (`token`);

--
-- Indexes for table `banner_upload`
--
ALTER TABLE `banner_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_categories`
--
ALTER TABLE `business_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_category_image_upload`
--
ALTER TABLE `business_category_image_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_video_upload`
--
ALTER TABLE `business_video_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_video`
--
ALTER TABLE `categories_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `festival_video_upload`
--
ALTER TABLE `festival_video_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `greeting_categories`
--
ALTER TABLE `greeting_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `greeting_image`
--
ALTER TABLE `greeting_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_upload`
--
ALTER TABLE `image_upload`
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
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `video_upload`
--
ALTER TABLE `video_upload`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banner_upload`
--
ALTER TABLE `banner_upload`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `business_categories`
--
ALTER TABLE `business_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `business_category_image_upload`
--
ALTER TABLE `business_category_image_upload`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `business_video_upload`
--
ALTER TABLE `business_video_upload`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `categories_video`
--
ALTER TABLE `categories_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `festival_video_upload`
--
ALTER TABLE `festival_video_upload`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `greeting_categories`
--
ALTER TABLE `greeting_categories`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `greeting_image`
--
ALTER TABLE `greeting_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `image_upload`
--
ALTER TABLE `image_upload`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `video_upload`
--
ALTER TABLE `video_upload`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
