-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2019 at 10:49 AM
-- Server version: 10.3.12-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pin_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2019-01-21 21:30:06', '2019-01-21 21:30:06'),
(2, NULL, 1, 'Category 2', 'category-2', '2019-01-21 21:30:06', '2019-01-21 21:30:06');

-- --------------------------------------------------------

--
-- Table structure for table `datapoints`
--

CREATE TABLE `datapoints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sensor_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sensor_height` float DEFAULT NULL,
  `distance_report` float DEFAULT NULL,
  `water_height` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `datapoints`
--

INSERT INTO `datapoints` (`id`, `sensor_id`, `location_id`, `data`, `created_at`, `updated_at`, `sensor_height`, `distance_report`, `water_height`) VALUES
(12, 1, 1, 'abc', '2019-02-06 20:46:12', '2019-02-06 20:46:12', NULL, NULL, NULL),
(13, 1, 1, 'abc', '2019-02-06 21:10:36', '2019-02-06 21:10:36', NULL, NULL, NULL),
(14, 1, 1, 'abc', '2019-02-06 21:25:18', '2019-02-06 21:25:18', NULL, NULL, NULL),
(15, 1, 1, 'abc', '2019-02-07 02:25:39', '2019-02-07 02:25:39', NULL, NULL, NULL),
(16, 1, 1, 'abc', '2019-02-07 02:26:34', '2019-02-07 02:26:34', NULL, NULL, NULL),
(17, 1, 1, 'abc', '2019-02-07 02:27:56', '2019-02-07 02:27:56', NULL, NULL, NULL),
(18, 1, 1, 'abc', '2019-02-07 02:33:40', '2019-02-07 02:33:40', NULL, NULL, NULL),
(19, 1, 1, 'abc', '2019-02-07 02:33:42', '2019-02-07 02:33:42', NULL, NULL, NULL),
(20, 1, 1, 'abc', '2019-02-07 02:33:58', '2019-02-07 02:33:58', NULL, NULL, NULL),
(21, 1, 1, 'abc', '2019-02-07 02:34:10', '2019-02-07 02:34:10', NULL, NULL, NULL),
(22, 1, 1, 'abc', '2019-02-07 02:36:41', '2019-02-07 02:36:41', NULL, NULL, NULL),
(23, 1, 1, 'abc', '2019-02-08 02:06:07', '2019-02-08 02:06:07', NULL, NULL, NULL),
(24, 1, 1, 'abc', '2019-02-09 10:12:13', '2019-02-09 10:12:13', NULL, NULL, NULL),
(25, 1, 1, 'abc', '2019-02-09 10:50:50', '2019-02-09 10:50:50', NULL, NULL, NULL),
(26, 1, 1, 'abc', '2019-02-09 20:29:11', '2019-02-09 20:29:11', NULL, NULL, NULL),
(27, 1, 1, 'abc', '2019-02-09 20:40:42', '2019-02-09 20:40:42', NULL, NULL, NULL),
(28, 1, 1, 'abc', '2019-02-09 20:43:37', '2019-02-09 20:43:37', NULL, NULL, NULL),
(29, 1, 1, 'abc', '2019-02-09 20:44:08', '2019-02-09 20:44:08', NULL, NULL, NULL),
(30, 1, 1, 'abc', '2019-02-09 20:44:15', '2019-02-09 20:44:15', NULL, NULL, NULL),
(31, 1, 1, 'abc', '2019-02-09 20:45:29', '2019-02-09 20:45:29', NULL, NULL, NULL),
(32, 1, 1, 'abc', '2019-02-09 20:45:47', '2019-02-09 20:45:47', NULL, NULL, NULL),
(33, 1, 1, 'abc', '2019-02-09 21:06:37', '2019-02-09 21:06:37', NULL, NULL, NULL),
(34, 1, 1, 'abc', '2019-02-09 21:06:49', '2019-02-09 21:06:49', NULL, NULL, NULL),
(35, 1, 6, 'abc', '2019-02-11 00:43:00', '2019-02-25 01:57:31', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, NULL, 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(23, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(25, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(26, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(27, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(28, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(29, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(30, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(31, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(32, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(33, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(34, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(35, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(36, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(37, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(38, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(39, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(40, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(41, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(42, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(43, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(44, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(45, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(46, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(47, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(48, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(49, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(50, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(51, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(52, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(53, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(54, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(55, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(56, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12),
(57, 8, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(58, 8, 'external_id', 'text', 'External Id', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\",\"unique:usertokens\"],\"messages\":{\"required\":\"The external id field is required.\",\"unique\":\"The external id has already been taken.\"}}}', 2),
(59, 8, 'type', 'select_dropdown', 'Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"Water\",\"options\":{\"Water\":\"Water\",\"Air\":\"Air\",\"Ground water\":\"Ground water\"},\"validation\":{\"rule\":[\"required\"],\"messages\":{\"required\":\"The external id field is required.\"}}}', 3),
(60, 8, 'parameters', 'text', 'Parameters', 0, 0, 1, 1, 1, 1, '{}', 4),
(61, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 5),
(62, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, '{}', 6),
(63, 8, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(118, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(119, 16, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:50\",\"messages\":{\"required\":\"The name field is required.\",\"max\":\"This  field maximum :max.\"}}}', 2),
(120, 16, 'type', 'select_dropdown', 'Type', 0, 1, 1, 1, 1, 1, '{\"default\":\"Water\",\"options\":{\"Water\":\"Water\",\"Air\":\"Air\",\"Ground water\":\"Ground water\"},\"validation\":{\"rule\":[\"required\"],\"messages\":{\"required\":\"The User Id field is required.\"}}}', 3),
(121, 16, 'latitude', 'text', 'Latitude', 0, 1, 1, 1, 1, 1, '{}', 4),
(122, 16, 'longitude', 'text', 'Longitude', 0, 1, 1, 1, 1, 1, '{}', 5),
(123, 16, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(124, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(125, 16, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 9),
(126, 16, 'sensor_id', 'select_dropdown', 'Sensor Id', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\",\"unique:locations\"],\"messages\":{\"required\":\"The sensor field is required.\",\"unique\":\"The sensor has already been taken.\"}},\"relationship\":{\"key\":\"id\",\"label\":\"name\",\"Sensor_slug\":\"Sensor\"}}', 6),
(127, 16, 'location_belongsto_sensor_relationship', 'relationship', 'sensors', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Sensor\",\"table\":\"sensors\",\"type\":\"belongsTo\",\"column\":\"sensor_id\",\"key\":\"id\",\"label\":\"external_id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(128, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(129, 17, 'sensor_id', 'text', 'Sensor Id', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"],\"messages\":{\"required\":\"The sensor field is required.\"}}}', 6),
(130, 17, 'location_id', 'text', 'Location Id', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\"],\"messages\":{\"required\":\"The location field is required.\"}}}', 7),
(131, 17, 'data', 'text', 'Data', 0, 1, 1, 1, 1, 1, '{}', 4),
(132, 17, 'created_at', 'timestamp', 'Timestamp', 0, 1, 1, 1, 0, 1, '{}', 5),
(133, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(134, 17, 'datapoint_belongsto_sensor_relationship', 'relationship', 'Sensor', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Sensor\",\"table\":\"sensors\",\"type\":\"belongsTo\",\"column\":\"sensor_id\",\"key\":\"id\",\"label\":\"external_id\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(135, 17, 'datapoint_belongsto_location_relationship', 'relationship', 'Location', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Location\",\"table\":\"locations\",\"type\":\"belongsTo\",\"column\":\"location_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(136, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(137, 19, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":[\"required\",\"unique:usertokens\"],\"messages\":{\"required\":\"The user name field is required.\",\"unique\":\"The user name has already been taken.\"}}}', 4),
(138, 19, 'api_token', 'text_area', 'Api Token', 0, 0, 1, 1, 1, 1, '{}', 3),
(139, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, '{}', 5),
(140, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(141, 19, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, '{}', 7),
(142, 19, 'usertoken_belongsto_user_relationship', 'relationship', 'User Name', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(143, 21, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(144, 21, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(145, 21, 'api_token', 'text', 'Api Token', 0, 1, 1, 1, 1, 1, '{}', 3),
(146, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(147, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(148, 21, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 1, 1, 1, 1, '{}', 6),
(149, 16, 'sensor_height', 'text', 'Sensor Height', 0, 0, 1, 1, 1, 1, '{}', 10),
(150, 16, 'watch_level', 'text', 'Watch Level', 0, 0, 1, 1, 1, 1, '{}', 11),
(151, 16, 'warning_level', 'text', 'Warning Level', 0, 0, 1, 1, 1, 1, '{}', 12),
(152, 16, 'severe_level', 'text', 'Severe Warning Level', 0, 0, 1, 1, 1, 1, '{}', 13),
(153, 16, 'status', 'select_dropdown', 'Status', 0, 0, 1, 1, 1, 1, '{\"default\":\"Test\",\"options\":{\"Test\":\"Test\",\"Plan\":\"Plan\",\"Operational\":\"Operational\"},\"validation\":{\"rule\":[\"required\"],\"messages\":{\"required\":\"The status field is required.\"}}}', 14),
(154, 8, 'sim_card', 'text', 'Sim Card', 0, 0, 1, 1, 1, 1, '{}', 8),
(155, 8, 'firmware_version', 'text', 'Firmware Version', 0, 0, 1, 1, 1, 1, '{}', 9),
(156, 8, 'hardware_version', 'text', 'Hardware Version', 0, 0, 1, 1, 1, 1, '{}', 10),
(157, 8, 'hardware_des', 'text', 'Hardware Des', 0, 0, 1, 1, 1, 1, '{}', 11),
(158, 8, 'last_boot', 'text', 'Last Boot', 0, 0, 1, 0, 0, 0, '{}', 12);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2019-01-21 21:28:21', '2019-01-21 21:28:21'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-01-21 21:28:22', '2019-01-21 21:28:22'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-01-21 21:28:22', '2019-01-21 21:28:22'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2019-01-21 21:30:05', '2019-01-21 21:30:05'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2019-01-21 21:30:06', '2019-01-21 21:30:06'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-01-21 21:30:08', '2019-01-21 21:30:08'),
(8, 'sensors', 'sensors', 'Sensor', 'Sensors', 'voyager-terminal', 'App\\Sensor', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-01-22 03:08:56', '2019-02-25 01:33:37'),
(16, 'locations', 'locations', 'Location', 'Locations', NULL, 'App\\Location', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-01-22 19:15:55', '2019-02-24 21:34:41'),
(17, 'datapoints', 'datapoints', 'Datapoint', 'Datapoints', NULL, 'App\\Datapoint', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-01-22 19:43:49', '2019-02-06 19:04:20'),
(19, 'usertokens', 'usertokens', 'Usertoken', 'Usertokens', NULL, 'App\\Usertoken', NULL, '\\App\\Http\\Controllers\\Voyager\\UserTokensController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-01 01:52:25', '2019-02-06 19:01:32'),
(21, 'tests', 'tests', 'Test', 'Tests', NULL, 'App\\Test', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-02-04 19:30:48', '2019-02-04 19:30:48');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `sensor_id` int(11) DEFAULT NULL,
  `sensor_height` float DEFAULT NULL,
  `watch_level` float DEFAULT NULL,
  `warning_level` float DEFAULT NULL,
  `severe_level` float DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `type`, `latitude`, `longitude`, `created_at`, `updated_at`, `deleted_at`, `sensor_id`, `sensor_height`, `watch_level`, `warning_level`, `severe_level`, `status`) VALUES
(6, 'Location 01', 'Water', NULL, NULL, '2019-02-25 01:02:30', '2019-02-25 01:02:30', NULL, 1, NULL, NULL, NULL, NULL, 'Test'),
(7, 'Location 2', 'Water', NULL, NULL, '2019-02-25 01:07:20', '2019-02-25 01:07:20', NULL, 2, NULL, NULL, NULL, NULL, 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-01-21 21:28:24', '2019-01-21 21:28:24'),
(2, 'PIN', '2019-01-22 00:48:58', '2019-01-22 00:48:58');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-01-21 21:28:24', '2019-01-21 21:28:24', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 8, '2019-01-21 21:28:24', '2019-02-01 01:55:07', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 7, '2019-01-21 21:28:24', '2019-02-01 01:55:07', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 6, '2019-01-21 21:28:24', '2019-02-01 01:55:07', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 12, '2019-01-21 21:28:24', '2019-02-01 01:55:02', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-01-21 21:28:24', '2019-01-22 03:16:00', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-01-21 21:28:24', '2019-01-22 03:16:00', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-01-21 21:28:24', '2019-01-22 03:16:00', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-01-21 21:28:24', '2019-01-22 03:16:00', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 13, '2019-01-21 21:28:24', '2019-02-01 01:55:02', 'voyager.settings.index', NULL),
(11, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 11, '2019-01-21 21:30:05', '2019-02-01 01:55:07', 'voyager.categories.index', NULL),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 9, '2019-01-21 21:30:07', '2019-02-01 01:55:07', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 10, '2019-01-21 21:30:09', '2019-02-01 01:55:07', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-01-21 21:30:12', '2019-01-22 03:16:00', 'voyager.hooks', NULL),
(16, 1, 'Sensors', '', '_self', 'voyager-terminal', '#000000', NULL, 3, '2019-01-22 03:08:57', '2019-01-22 19:36:55', 'voyager.sensors.index', 'null'),
(24, 1, 'Locations', '', '_self', 'voyager-images', '#000000', NULL, 2, '2019-01-22 19:15:56', '2019-01-22 19:38:11', 'voyager.locations.index', 'null'),
(25, 1, 'Datapoints', '', '_self', 'voyager-calendar', '#000000', NULL, 4, '2019-01-22 19:43:50', '2019-01-22 19:53:08', 'voyager.datapoints.index', 'null'),
(26, 1, 'User Token', '', '_self', 'voyager-wifi', '#000000', NULL, 5, '2019-02-01 01:52:26', '2019-02-05 19:31:21', 'voyager.usertokens.index', 'null'),
(27, 1, 'Tests', '', '_self', NULL, NULL, NULL, 14, '2019-02-04 19:30:48', '2019-02-04 19:30:48', 'voyager.tests.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(27, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(28, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(29, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(30, '2016_06_01_000004_create_oauth_clients_table', 3),
(31, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
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
('0514c7feadea4256c4e8061b27025f3c2fcbf76656c0c8b98d5507ff13a04d1fbdce134d0e6cf055', 1, 2, NULL, '[]', 0, '2019-02-05 02:09:09', '2019-02-05 02:09:09', '2039-01-31 09:09:09'),
('051592e4150aaf8d1a40eaf360da85d3aff96421b1e350e990f1e28c4b46f75b27a7dffdcf8cb5d3', 1, 2, NULL, '[]', 0, '2019-02-06 01:19:17', '2019-02-06 01:19:17', '2039-02-06 08:19:17'),
('0727fc6169b3b9bfb7cec3782559b11c839ce9d2689f5748a9785c1548a591ff6b47b6ea19092310', 1, 2, NULL, '[]', 0, '2019-02-04 22:45:01', '2019-02-04 22:45:01', '2039-01-31 05:45:00'),
('097af5d2138cdbd70787bbeb64a95c1847db45593e406a77ff494e559be3d90ecad142c51ced95ca', 1, 2, NULL, '[]', 0, '2019-02-04 22:15:32', '2019-02-04 22:15:32', '2039-01-31 05:15:32'),
('0ba3c782fc6593a902ed3be467b9bf67c2b9b8cd24adaae4303a3980547139b96a5ee87c8bb6856b', 1, 2, NULL, '[]', 0, '2019-02-05 02:03:27', '2019-02-05 02:03:27', '2039-01-31 09:03:27'),
('0bfc186c66b6dc4b699f545ebf76293c01a992932fa7344bb1886d840dc0e32b376e135d34866bbf', 1, 2, NULL, '[]', 0, '2019-02-05 01:13:34', '2019-02-05 01:13:34', '2039-01-31 08:13:34'),
('1166787350ed78151ea258ee1ab7cff2830181c2ccaa3ff54e58f37a4c01c0f1b972952f7d974a6c', 1, 2, NULL, '[]', 0, '2019-02-04 22:46:52', '2019-02-04 22:46:52', '2039-01-31 05:46:52'),
('12c7f694128492f9e14a35fc5728170ebcca9c6f537c6010c58f9fcb89b1753b6aec86bb832b110e', 1, 2, NULL, '[]', 0, '2019-02-04 17:59:56', '2019-02-04 17:59:56', '2039-01-31 00:59:55'),
('1867bd041f0591691e8f41db4c42ad60c23f669277825d56fbb94b58809095ba80c5d1f4b5420cd0', 1, 2, NULL, '[]', 0, '2019-02-05 02:27:21', '2019-02-05 02:27:21', '2039-01-31 09:27:21'),
('1bc193dc3fd1132f8188ac486d896c63c1517298fcefe4f6747d3d229fa1f7385e49845d4018f68d', 2, 2, NULL, '[]', 0, '2019-02-05 02:46:31', '2019-02-05 02:46:31', '2039-01-31 09:46:31'),
('1c80782584b313317f77827b940d03397f524a4d2c8318ad67c4b7ef55efa625dabdfbbfef8265b0', 2, 2, NULL, '[]', 0, '2019-02-05 02:31:30', '2019-02-05 02:31:30', '2039-01-31 09:31:30'),
('1db21bf45b46b5ccb881a34b174800c5524cc71be978bd020c267f9987a549820bea48cd3c248389', 1, 2, NULL, '[]', 0, '2019-02-04 02:27:00', '2019-02-04 02:27:00', '2039-01-30 09:27:00'),
('20e3645000f07d5bb51431546ed820166242de586b18b76910fade5908cbcff4dc104623f3b4ab2b', 1, 2, NULL, '[]', 0, '2019-02-04 22:10:43', '2019-02-04 22:10:43', '2039-01-31 05:10:43'),
('2135de241c7f115a85caa153f9aa0726c8fbac39fc4799032962281bc85d5a1b55084522d8b4f595', 1, 2, NULL, '[]', 0, '2019-02-04 22:41:34', '2019-02-04 22:41:34', '2039-01-31 05:41:33'),
('2864826e8ab0583e570a464f9405a0da2d75703ecd6866635784090959a8ebd2c5afa2702184468d', 1, 2, NULL, '[]', 0, '2019-02-04 23:27:03', '2019-02-04 23:27:03', '2039-01-31 06:27:03'),
('2adff1e8eddbcaad854ba9ab469c97e9ed608d16473b4718562fc8de98d237d1af6813ba5704a3f6', 1, 2, NULL, '[]', 0, '2019-02-04 22:27:07', '2019-02-04 22:27:07', '2039-01-31 05:27:07'),
('2d02df43ebfd93ab04fa07d09fbf772144994a56ee7bc9736983879ecc8546764a4516fc8a8fcad4', 1, 2, NULL, '[]', 0, '2019-02-04 02:20:54', '2019-02-04 02:20:54', '2039-01-30 09:20:54'),
('2d3a169a27ed7d340e45ece879d2c3730585c0d0f70abc962602181bea0d4942943c37e7730c2e1d', 1, 2, NULL, '[]', 0, '2019-02-06 01:54:48', '2019-02-06 01:54:48', '2022-02-06 08:54:48'),
('2e35ca31da7060be08b4009261fb87cbc2e67b25032b88157ec5ba8080617b424dde26d70c312076', 2, 2, NULL, '[]', 0, '2019-02-10 18:52:13', '2019-02-10 18:52:13', '2037-02-11 01:52:13'),
('2eef4e7cd64e3d765ffe57efdc3a11e9f8541d64af02c180242e61f85fd9e3caa8dcda20a7359320', 1, 2, NULL, '[]', 0, '2019-02-06 01:55:58', '2019-02-06 01:55:58', '2038-02-06 08:55:58'),
('2fe56e959e1c85b6233c34fbb896bd911546dad76527c10fb41740bd7548f65a6d546924a2313234', 1, 2, NULL, '[]', 0, '2019-02-05 22:46:00', '2019-02-05 22:46:00', '2039-02-01 05:46:00'),
('3179bf93bf6bb3d09e83a081aac78efb642fe53fb7538a9e62615fa912acf3e2f612ca3cadc52b89', 1, 2, NULL, '[]', 0, '2019-02-06 01:54:38', '2019-02-06 01:54:38', '2021-02-06 08:54:38'),
('39ffb0b8011129522e8ae1e10dd8c5870e3e45a3e911b9d279140729ec201ca4a208f7d7f4c0b6c9', 1, 2, NULL, '[]', 0, '2019-02-04 22:58:00', '2019-02-04 22:58:00', '2039-01-31 05:57:59'),
('3f0fa91ebcc8263aa5501e2f51a147993b7c2a0c3a4f45ff27137aef48186e9acd60bfdf521e3b2b', 2, 2, NULL, '[]', 0, '2019-02-10 18:52:14', '2019-02-10 18:52:14', '2037-02-11 01:52:14'),
('3f23dea5d4ae895f3767dc47ffc6ca4aaaaee6774cd0d34cfab60f78e2122b074480bd097455359b', 1, 2, NULL, '[]', 0, '2019-02-05 02:01:39', '2019-02-05 02:01:39', '2039-01-31 09:01:39'),
('4002a4ee501248515c95be7fc8fba342af81f9538c577e5c641040c5779f1488335105ec5782080c', 1, 2, NULL, '[]', 0, '2019-02-05 02:04:37', '2019-02-05 02:04:37', '2039-01-31 09:04:37'),
('40f5726e5a8512b61d1cd4574f30304d496cfd6e3c5749fcbadc695b83af5aa9db8d3a300a1b40c2', 1, 2, NULL, '[]', 0, '2019-02-04 22:49:21', '2019-02-04 22:49:21', '2039-01-31 05:49:21'),
('4195e8914af3f3fae7f443c4142f03d7f2b21afe5f307c7cf709e9776d86317af54a23b6de9d62d3', 1, 2, NULL, '[]', 0, '2019-02-05 01:13:33', '2019-02-05 01:13:33', '2039-01-31 08:13:33'),
('43511226b47d81a0b19a9a537d221f34e13bb0bee63a36098f0b621a6c975923febdc7ab611ae7e5', 1, 2, NULL, '[]', 0, '2019-02-05 02:29:50', '2019-02-05 02:29:50', '2039-01-31 09:29:50'),
('46fbbe33cbf14ceb8023e8b7f1239e87f74d87e255bf14f26da1d901f672f530239063a19e85db26', 1, 2, NULL, '[]', 0, '2019-02-04 23:28:37', '2019-02-04 23:28:37', '2039-01-31 06:28:37'),
('479cc3e1ad2a531e91306b8bd3e36a80f888c8d1965ec793e14e714ef658d75136bfb1c132993283', 1, 2, NULL, '[]', 0, '2019-02-05 02:11:31', '2019-02-05 02:11:31', '2039-01-31 09:11:31'),
('4a8d6ad02e070a0548e764e22548e5bd787e248a975d7226dfae618b69b56c845f3c9a3076afe70a', 1, 2, NULL, '[]', 0, '2019-02-05 03:00:16', '2019-02-05 03:00:16', '2039-01-31 10:00:16'),
('4f3387999afcfab82c52919864de6ea076beaa2195eccdcc098de53808e47226979da137d8223580', 1, 2, NULL, '[]', 0, '2019-02-06 02:00:13', '2019-02-06 02:00:13', '2037-02-06 09:00:13'),
('54cc1798dc7af37fcad72cb886680d4bb07ac119d1594c2482e05a68a010ffc0990a4927c9bb70a1', 1, 2, NULL, '[]', 0, '2019-02-05 22:46:01', '2019-02-05 22:46:01', '2039-02-01 05:46:01'),
('598b8c4ab0c7ee4683c255b0b3bc52b9bd3432846b880683e41b4ae6376da5d84a762c9a4c97069d', 2, 2, NULL, '[]', 0, '2019-02-05 02:31:29', '2019-02-05 02:31:29', '2039-01-31 09:31:29'),
('599aa9722fbbc60d1ac8e501b39106d5d0b5d366156d513ba009ad6badee3b8a317de997ff6b4771', 1, 2, NULL, '[]', 0, '2019-02-04 22:49:52', '2019-02-04 22:49:52', '2039-01-31 05:49:52'),
('599da9d4a80c74fb36964057ef51998efc50983f506f6be0794543cac3538226c44f330006040d57', 1, 2, NULL, '[]', 0, '2019-02-06 01:56:19', '2019-02-06 01:56:19', '2037-02-06 08:56:19'),
('5ac8a535292c4b43d65ffef3812946eb6963ef26ac74d33aaeb49f2924a773226ae804e6c3ae7b43', 1, 2, NULL, '[]', 0, '2019-02-04 22:50:54', '2019-02-04 22:50:54', '2039-01-31 05:50:54'),
('5bd1c891b757c6390fdc58b8409ecab324f04d1c6d1ebb315c74d1603507de1a3b994aac8d7c2d2e', 1, 2, NULL, '[]', 0, '2019-02-04 23:28:35', '2019-02-04 23:28:35', '2039-01-31 06:28:35'),
('665aa249b62371aa449dd47ff25a04dd80e71ab89dc82e2514fff17b8d56d8f12f1ff2aa0ac13aeb', 1, 2, NULL, '[]', 0, '2019-02-04 22:15:46', '2019-02-04 22:15:46', '2039-01-31 05:15:46'),
('679d6162526cec12f40c5cf163b5c04f01d2f1fd14c000107ce9c1b023cd9f11dbe7e09e93863545', 1, 2, NULL, '[]', 0, '2019-02-04 23:34:22', '2019-02-04 23:34:22', '2039-01-31 06:34:22'),
('6a0305a1a47e2612592dff8689c6a3346e187f4aa76d40b071dca6eaf0101f9838e773d4c0270a60', 1, 2, NULL, '[]', 0, '2019-02-06 01:54:17', '2019-02-06 01:54:17', '2039-02-06 08:54:17'),
('6d3b95e003861b3abe989b45fd3ffea496e73ad31f32f2eef733384805e15d0e4b914eb88421b002', 1, 2, NULL, '[]', 0, '2019-02-05 00:39:22', '2019-02-05 00:39:22', '2039-01-31 07:39:21'),
('6dbdcbfa21e4a33a838857f8e0dc5ee9348a51b30dc00f2878ff66c424099761f3d479be9fc2a547', 1, 2, NULL, '[]', 0, '2019-02-06 20:08:25', '2019-02-06 20:08:25', '2037-02-07 03:08:24'),
('6fe8b8754bdb3e80421d45c941791dda0f70ea8decc9806b94e60120319868f5218d77e83f7a1e0f', 1, 2, NULL, '[]', 0, '2019-02-05 02:29:35', '2019-02-05 02:29:35', '2039-01-31 09:29:35'),
('719722d980be2f15f93294d121ec91aec9f9e72518b20b339fcfe47f235803317f272ba4aabe7a67', 1, 2, NULL, '[]', 0, '2019-02-04 23:27:40', '2019-02-04 23:27:40', '2039-01-31 06:27:40'),
('747ca6a8ad0f3a9e06248c5cbf510ecba3160747818ec6860f226aeaec44f7f2ac5810673565497c', 1, 2, NULL, '[]', 0, '2019-02-04 22:12:27', '2019-02-04 22:12:27', '2039-01-31 05:12:26'),
('77a0683232f313cc3cd45ecbbf0f1cfdb556f2b7c18d6756d9ef1aa17fb0fbd6807a49675b33043e', 1, 2, NULL, '[]', 0, '2019-02-06 01:55:35', '2019-02-06 01:55:35', '2034-02-06 08:55:34'),
('789710d84120e4786508586903debba0aa1f495c8f709bbd9cd1c18fa833ebeb45554905f0bc7725', 1, 2, NULL, '[]', 0, '2019-02-06 01:13:42', '2019-02-06 01:13:42', '2020-02-06 08:13:42'),
('7be073df2b992b32e35179bf4dd6344a13a7c75f02d3cdbc55f5409ea6a2297f4fcc3cc8d78b6744', 1, 2, NULL, '[]', 0, '2019-02-06 01:19:20', '2019-02-06 01:19:20', '2039-02-06 08:19:20'),
('7c2d83e1ee7eb4df52e8f7ccbc228a8114570aef4ac24b57ebcd70cc3701ecb0746652686eb92b88', 2, 2, NULL, '[]', 0, '2019-02-10 18:52:12', '2019-02-10 18:52:12', '2037-02-11 01:52:11'),
('7d46ed0c3992bcd258dba19343feff90438dba65d3360d929148020dad1a48a38f6be2608f8d13f3', 1, 2, NULL, '[]', 0, '2019-02-04 22:12:49', '2019-02-04 22:12:49', '2039-01-31 05:12:49'),
('7e07ba1d58e55142852f765f770fec352a619ce81724d5d072cd939952a910093da4827cb3310556', 1, 2, NULL, '[]', 0, '2019-02-04 02:28:06', '2019-02-04 02:28:06', '2039-01-30 09:28:06'),
('7e6c341e8f00be4a718b01764062015cdcda9b5b643ee76472256796e8c81e2de66ac4f4ab3b612d', 1, 2, NULL, '[]', 0, '2019-02-05 19:13:59', '2019-02-05 19:13:59', '2039-02-01 02:13:59'),
('80190991a152ab7b1e417c5fd3c2a2e62ced1fc452c9a60e9b30fe7a21698610883e1814761176f1', 2, 2, NULL, '[]', 0, '2019-02-07 02:32:50', '2019-02-07 02:32:50', '2037-02-07 09:32:50'),
('8328f48427ac3645387edfba0a9c747fcc7555b8fcc0a3601e5cd0c2617d599bf599e1da61ecdc4c', 1, 2, NULL, '[]', 0, '2019-02-05 01:59:02', '2019-02-05 01:59:02', '2039-01-31 08:59:02'),
('83729978cbf29afd215dc6eed847fe35b992b231e8c429298f0b7ca984c6adf787990d91628026f0', 1, 2, NULL, '[]', 0, '2019-02-05 02:01:42', '2019-02-05 02:01:42', '2039-01-31 09:01:42'),
('8557745250daa4ba880e208552535a6a6f7bddbe086d6630a492cf83a3ec09c4495624ec2e9692ad', 1, 2, NULL, '[]', 0, '2019-02-05 20:33:07', '2019-02-05 20:33:07', '2039-02-01 03:33:07'),
('855d8abb200a9664e546f6c3c8224b90106142dcd85f7f800cc2e858478c57b14d176ab09bf7eb97', 1, 2, NULL, '[]', 0, '2019-02-05 19:20:17', '2019-02-05 19:20:17', '2039-02-01 02:20:17'),
('872c339718bbfd765973c6fc82d42c7654e46f8975071ef8d86234f9aa199809a24a4e920214f2d4', 1, 2, NULL, '[]', 0, '2019-02-05 02:23:48', '2019-02-05 02:23:48', '2039-01-31 09:23:48'),
('8805a9f30d09207b5130a1f21e9fa4c28beaaf93fffaecada6d6bbf11b6e41391d51871ac5c6e0f2', 1, 2, NULL, '[]', 0, '2019-02-04 02:14:24', '2019-02-04 02:14:24', '2039-01-30 09:14:24'),
('88ed74e3477ed058dc006caa77696ecbd37d765aa9652ae6c333f3197ca6642329fbb3328b80b2ed', 1, 2, NULL, '[]', 0, '2019-02-06 00:39:22', '2019-02-06 00:39:22', '2039-02-01 07:39:22'),
('8ed9b343d2bf41521c217f75662d27b517959f1ccb64ed1badbad70f82fd9990d36e3e50a2aff65e', 1, 2, NULL, '[]', 0, '2019-02-04 23:28:36', '2019-02-04 23:28:36', '2039-01-31 06:28:36'),
('8f43043e7c71871695cf2831102b07dcb07dff4ba1269b9cb3e661241cd74ac9cfcf4455d48b0687', 1, 2, NULL, '[]', 0, '2019-02-04 22:57:25', '2019-02-04 22:57:25', '2039-01-31 05:57:25'),
('8f98d75e757974673b28810325ba8b077422ec4d4b134367d9f24489e7a530b5538e31febc0a3189', 1, 2, NULL, '[]', 0, '2019-02-06 00:51:34', '2019-02-06 00:51:34', '2039-02-01 07:51:34'),
('90ce07b225a02c8b6ce344b077e93a722721254d0335192ae62b728a31e6b01b2a8ccf6687c32cf8', 1, 2, NULL, '[]', 0, '2019-02-06 01:54:35', '2019-02-06 01:54:35', '2021-02-06 08:54:35'),
('919d41770fedc26a3ba7ce48582cf36df4adbb26dc6f13d64a0b192faffb3f7924e9917f00e7563d', 2, 2, NULL, '[]', 0, '2019-02-09 20:43:04', '2019-02-09 20:43:04', '2037-02-10 03:43:03'),
('9284c219c9ffa767efcc0f5253e4363416750d6cef132a6a81c56dcbe2abc4f6ab84c41f0535c8d1', 1, 2, NULL, '[]', 0, '2019-02-04 23:28:33', '2019-02-04 23:28:33', '2039-01-31 06:28:33'),
('93814975e563e32c431701d60c568d9bde19dfbc4a0a48a8df2e9e3ef22c92c804dfe832187d30a7', 2, 2, NULL, '[]', 0, '2019-02-05 02:46:30', '2019-02-05 02:46:30', '2039-01-31 09:46:29'),
('979db07dcc84b0d37936ba40721a73c832df5188d548bf67842a4d0e921d8918c42314ce2a4330c1', 1, 2, NULL, '[]', 0, '2019-02-05 19:20:18', '2019-02-05 19:20:18', '2039-02-01 02:20:18'),
('97da57455e7129c8068f292419fdfb4c64ee27f5375476312e185265f9f8684a7a5e5df8e937ec2c', 1, 2, NULL, '[]', 0, '2019-02-04 02:28:14', '2019-02-04 02:28:14', '2039-01-30 09:28:14'),
('97f39de8829cebf1653388f2b77f1aa9939ca883932489bcb3d2370dbb448a473ab6fdba72af29d8', 1, 2, NULL, '[]', 0, '2019-02-04 22:47:49', '2019-02-04 22:47:49', '2039-01-31 05:47:49'),
('9afd8eacdd14c6d15604af1cf779536269af29e42991dd70ba65f810f4965cd646726c8f2ebe1a8f', 2, 2, NULL, '[]', 0, '2019-02-07 02:32:49', '2019-02-07 02:32:49', '2037-02-07 09:32:49'),
('9c35a229d55428e36ae2e914974675f437204154d59191c337297147268f68b9a736ea0389128712', 1, 2, NULL, '[]', 0, '2019-02-05 02:26:14', '2019-02-05 02:26:14', '2039-01-31 09:26:14'),
('9d915a249218c0254a9f0c9a87d06a35457385196e45a53caaaf0ce55ad3a72de774296a2134d722', 1, 2, NULL, '[]', 0, '2019-02-06 01:55:13', '2019-02-06 01:55:13', '2028-02-06 08:55:13'),
('9f086bb3acbfe199e4a235d363ca6030d0b91ada77ee3d941b93c8b626372daf6675c89f1000d3eb', 1, 2, NULL, '[]', 0, '2019-02-04 22:42:10', '2019-02-04 22:42:10', '2039-01-31 05:42:10'),
('9f52ab6422663914716a3dc2ec573cab5a5b1b8600bec4c103dc4915c4f8c667876cd69ae19ae4d2', 1, 2, NULL, '[]', 0, '2019-02-04 22:45:06', '2019-02-04 22:45:06', '2039-01-31 05:45:05'),
('a14ba5aa032215316538600c8ada53cd26f6796962c3572a9ce0402524f6591dc4d77b9bec05e125', 1, 2, NULL, '[]', 0, '2019-02-04 02:28:09', '2019-02-04 02:28:09', '2039-01-30 09:28:09'),
('a2e9c4809eb2467975ccae8f8fa58cfa7dda3fdb9bf4b028bf2883d4b1d18309672e684b54abe8c7', 1, 2, NULL, '[]', 0, '2019-02-04 22:25:20', '2019-02-04 22:25:20', '2039-01-31 05:25:20'),
('a91795229ad7ef453830f7faa21c2c815ddf88a57e499f468c310a8f4e373be300b004301c2cbfd7', 1, 2, NULL, '[]', 0, '2019-02-04 22:52:16', '2019-02-04 22:52:16', '2039-01-31 05:52:16'),
('aef8f514865dd5864119cc2a4cba8cd0e51b9b20c4c22c494ca8832a1b18510005602d0af97ce359', 1, 2, NULL, '[]', 0, '2019-02-06 20:06:48', '2019-02-06 20:06:48', '2037-02-07 03:06:48'),
('b113db00c9b5391948c74a169a981fee2d5b07423268fc63eca6fa58ad766e0b5f892fabe868e0e8', 1, 2, NULL, '[]', 0, '2019-02-04 22:57:52', '2019-02-04 22:57:52', '2039-01-31 05:57:52'),
('b20ed773c1eb366c549bae26a425ba79455d9290c9136184b148ed9e22f6c7eed85191e25a32f313', 1, 2, NULL, '[]', 0, '2019-02-04 02:20:29', '2019-02-04 02:20:29', '2039-01-30 09:20:29'),
('b25542139ee0c58fb70b98083a7caa76c8d877a37c77c6859ef91a73dcc8abfc61d766fe5a7d84db', 1, 2, NULL, '[]', 0, '2019-02-04 22:16:39', '2019-02-04 22:16:39', '2039-01-31 05:16:39'),
('b6244253d878a96ef438c4c277fc200e62a0aee48ef765f867f26a15fbfbfd19e73c3be0e2183752', 1, 2, NULL, '[]', 0, '2019-02-06 01:56:31', '2019-02-06 01:56:31', '2037-02-06 08:56:31'),
('b852f81546229676edf53784ed6021ab116bc3013c4b3d366f1991c3c9a94829a90f095da2fb59bf', 1, 2, NULL, '[]', 0, '2019-02-04 23:33:03', '2019-02-04 23:33:03', '2039-01-31 06:33:03'),
('bbd5ec32d975724c1889ea111a9743e586b784fa7ff454f8f3f7fb3015d7b2610ca31c6a39a67754', 1, 2, NULL, '[]', 0, '2019-02-06 01:55:23', '2019-02-06 01:55:23', '2029-02-06 08:55:23'),
('bf302d634af45c19c5db71e9573a92a8ef7a474f51bc52a214ee8ba090241a924fbeb6f0c0da63c5', 1, 2, NULL, '[]', 0, '2019-02-05 02:27:18', '2019-02-05 02:27:18', '2039-01-31 09:27:18'),
('c065cb4777868ab5bb006607b6e688cca4d128ef3d27cb4064a23733fcb7eaa65a53b1a9da8ca509', 1, 2, NULL, '[]', 0, '2019-02-06 01:53:24', '2019-02-06 01:53:24', '2039-02-06 08:53:24'),
('c2b34b24c5aa04db1cfc65ab96a3a72ec6dc32551812e026d36cc095327f4ec1a04391b7ddbc14cb', 1, 2, NULL, '[]', 0, '2019-02-06 01:56:13', '2019-02-06 01:56:13', '2037-02-06 08:56:13'),
('c57e5457773935200a06a00ae055733f4393a5872858e869af8da982c5f3dbdbae2bfdef25a7d653', 1, 2, NULL, '[]', 0, '2019-02-04 22:57:19', '2019-02-04 22:57:19', '2039-01-31 05:57:19'),
('c678e2f5fb2a74c319a615f33fa8f467141e74c01e1eceaba602b8743157a9b03f163ef760d7319c', 1, 2, NULL, '[]', 0, '2019-02-05 00:59:21', '2019-02-05 00:59:21', '2039-01-31 07:59:21'),
('c6c5805a7a9433c269a0d73af5b6b24edd0c6ae038fff970bc242561472f260a66f762f98476f384', 1, 2, NULL, '[]', 0, '2019-02-04 22:47:40', '2019-02-04 22:47:40', '2039-01-31 05:47:40'),
('c98af547799beb814594b9505f422036f0826e270deb0b49160128be0278cfc05c636020508111c2', 1, 2, NULL, '[]', 0, '2019-02-04 23:27:41', '2019-02-04 23:27:41', '2039-01-31 06:27:41'),
('d24746cd8aa72153c86fa1d7d913e3557643eca259668c2a6e222f345171bc58c25741177017fb1a', 2, 2, NULL, '[]', 0, '2019-02-09 20:43:03', '2019-02-09 20:43:03', '2037-02-10 03:43:03'),
('d53f92b285ee5ce5ca5d11ae401f2ad4c82d6abae9aa8d72a89f7769ae66bb74c0f541dadbc54c74', 1, 2, NULL, '[]', 0, '2019-02-06 01:55:01', '2019-02-06 01:55:01', '2025-02-06 08:55:01'),
('d5c646e535b7c69ff585bcd3acf5b1f7c7b34f1c7a0f25bd007810a06bef8bc7bf8b7105628d2724', 1, 2, NULL, '[]', 0, '2019-02-05 20:33:06', '2019-02-05 20:33:06', '2039-02-01 03:33:06'),
('d6d3042262139fc31bea937ed93a96442b9f1feaa095bda53ca5a16bc3bccdeba6d75866dcb3e61f', 1, 2, NULL, '[]', 0, '2019-02-04 23:50:27', '2019-02-04 23:50:27', '2039-01-31 06:50:27'),
('d852556992a9a0b21f271f603a835dd9e7e581477f10f8d5882c5ced25fcff5106b9b05e70fe227e', 1, 2, NULL, '[]', 0, '2019-02-04 22:11:47', '2019-02-04 22:11:47', '2039-01-31 05:11:47'),
('d8bcf6815f63e8a7a1735daeac1f679637d088687fc4c2f5ef9c58cb2e3323bf97b489ca0667be38', 1, 2, NULL, '[]', 0, '2019-02-04 22:41:30', '2019-02-04 22:41:30', '2039-01-31 05:41:30'),
('d96372f449a1dafc8b19c62da42a1a884fd4a80ef7a762d9b5f301889f307f5cbe31e16ef7d312cc', 1, 2, NULL, '[]', 0, '2019-02-05 03:02:12', '2019-02-05 03:02:12', '2039-01-31 10:02:12'),
('d9d1c8a08c78df462ce5b963eaa97d01e6bd431d5b536f56c9771d1444e866e9d0871905297ab61d', 1, 2, NULL, '[]', 0, '2019-02-04 22:49:38', '2019-02-04 22:49:38', '2039-01-31 05:49:38'),
('daf5dbaab451e1296cf913a50344365bde0f0fcfe8a0af3ca1684e5b85f53ae9c18284607af1f148', 1, 2, NULL, '[]', 0, '2019-02-05 02:24:01', '2019-02-05 02:24:01', '2039-01-31 09:24:01'),
('dbabf8903adeaa2d6adb1627ad00b6e41010c929d5d2010825b61b701118090805d151f6086ad88e', 1, 2, NULL, '[]', 0, '2019-02-05 19:14:00', '2019-02-05 19:14:00', '2039-02-01 02:14:00'),
('ddab3365c5f46bf7ee3f77e21ef43a4ce674f50151fbcc570b89836e5953cb679cc1a83e931a07f3', 1, 2, NULL, '[]', 0, '2019-02-05 01:57:08', '2019-02-05 01:57:08', '2039-01-31 08:57:08'),
('df6e39c85958f1d20b51897df05536237e0ef47f2d05f4901fdd9d928ef63b47c680c95fce339bdb', 1, 2, NULL, '[]', 0, '2019-02-05 02:29:53', '2019-02-05 02:29:53', '2039-01-31 09:29:53'),
('e068c977695af1629d06d36df109cc2da4c7b3d65c05a11e5e681a3157f2e73260150db02e50cb25', 1, 2, NULL, '[]', 0, '2019-02-04 22:15:19', '2019-02-04 22:15:19', '2039-01-31 05:15:19'),
('e6f6195309e8e1d205eb9c406e569a47e3c7ef7830233d61d6538260e5ef9a1c98153c6c9227b73b', 1, 2, NULL, '[]', 0, '2019-02-04 22:55:57', '2019-02-04 22:55:57', '2039-01-31 05:55:57'),
('ec35463207a6696e18be1acf0abc060a2bbacac1e6f10745caf2a6be33ccf265be03f2fda3e2cbfd', 1, 2, NULL, '[]', 0, '2019-02-04 02:26:26', '2019-02-04 02:26:26', '2039-01-30 09:26:26'),
('ed67a67a821bc156b80086e5985eefb5712d0ff70d261a00c913a8dde12a37696b2593c003bdc53d', 1, 2, NULL, '[]', 0, '2019-02-05 02:29:37', '2019-02-05 02:29:37', '2039-01-31 09:29:37'),
('ed737b5806cd9275ced7238579a1de2a71d431d13b25699262f8c7612ca4513d8d891f44a4fcf724', 1, 2, NULL, '[]', 0, '2019-02-05 02:29:39', '2019-02-05 02:29:39', '2039-01-31 09:29:39'),
('f143fc3072f626996ff415738ccadca8b10e9c4547521a155bdbccd7c521fdc3ecd080bb2d079003', 1, 2, NULL, '[]', 0, '2019-02-04 23:27:05', '2019-02-04 23:27:05', '2039-01-31 06:27:04'),
('f2df72b6562bb621f4cb40be81713e24dc43e8e05a5e702dbe06f63d577b8c74b5b81c99d800fa3a', 1, 2, NULL, '[]', 0, '2019-02-06 01:55:47', '2019-02-06 01:55:47', '2037-02-06 08:55:47'),
('f5db6fbc3716b09bfe8bf02b0f743fc92af7790950a6f99f5ed1b5879549328a41579b03fa205a01', 1, 2, NULL, '[]', 0, '2019-02-04 22:52:58', '2019-02-04 22:52:58', '2039-01-31 05:52:57'),
('f76cc069cdf0e5b790b69aca48078134995a148fa4b8ea90841319e3560dc6a13b1e9c5e292e76af', 1, 2, NULL, '[]', 0, '2019-02-06 20:08:24', '2019-02-06 20:08:24', '2037-02-07 03:08:24'),
('f890866715f1a994a3cffdcd9a0892a1465f8b67d17ac77bad554deda79e4b337b8762186ba53a2f', 1, 2, NULL, '[]', 0, '2019-02-06 00:33:09', '2019-02-06 00:33:09', '2039-02-01 07:33:09'),
('f91511a8fe3e6ed70581edb95f504fba88bffc142c932644735843094ade05adee4e3262a252e3f7', 1, 2, NULL, '[]', 0, '2019-02-05 02:04:52', '2019-02-05 02:04:52', '2039-01-31 09:04:52'),
('f9a3b0b40b09675f56f7b21d10aa3994366c45f58fb979d92de0a60b3f9e2e1bb69c165d8ace1ed6', 1, 2, NULL, '[]', 0, '2019-02-04 22:12:08', '2019-02-04 22:12:08', '2039-01-31 05:12:08'),
('ff23ee1451adc8d7b438a6e036c733a402045280837a22a7936c9c022a432823a140f29e6f2cbced', 1, 2, NULL, '[]', 0, '2019-02-04 02:28:03', '2019-02-04 02:28:03', '2039-01-30 09:28:03');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'BMyeyGWu4DK6yD7IkFDCIpp0VIjPx7NpHC6YirYW', 'http://localhost', 1, 0, 0, '2019-02-04 01:33:01', '2019-02-04 01:33:01'),
(2, NULL, 'Laravel Password Grant Client', '4Nl8DahpbotBNYzLNrJsx6iM9SAXaZFU726sSHMr', 'http://localhost', 0, 1, 0, '2019-02-04 01:33:02', '2019-02-04 01:33:02');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-02-04 01:33:02', '2019-02-04 01:33:02');

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

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('021f6a1d372ed7d251cad93bb3bf004ad95ae26195cf3f52be818745abe88daf4c04e85319e4ef4f', 'daf5dbaab451e1296cf913a50344365bde0f0fcfe8a0af3ca1684e5b85f53ae9c18284607af1f148', 0, '2039-01-31 09:24:01'),
('02250f9b781fc951ed26d3162801c6c243f4fa54efc3d3b39ad693f5df798062689ce819e298de2b', '7e6c341e8f00be4a718b01764062015cdcda9b5b643ee76472256796e8c81e2de66ac4f4ab3b612d', 0, '2039-02-01 02:13:59'),
('0276eefa2375ae05935ecf4367f7a4fc9ac9cf94b0891693c0754a297db496b17c086c36dfaa4d91', 'f2df72b6562bb621f4cb40be81713e24dc43e8e05a5e702dbe06f63d577b8c74b5b81c99d800fa3a', 0, '2039-02-06 08:55:48'),
('029e345296b16ba22480f10a0139175086e66e3839de4aa320c0160f5a5da55a10a6064bbd6c9599', '919d41770fedc26a3ba7ce48582cf36df4adbb26dc6f13d64a0b192faffb3f7924e9917f00e7563d', 0, '2037-02-10 03:43:04'),
('0987c2bd1f775a93769a243c757d19665192396d9e763e69152f313b435063e77a6d8a0147417669', 'df6e39c85958f1d20b51897df05536237e0ef47f2d05f4901fdd9d928ef63b47c680c95fce339bdb', 0, '2039-01-31 09:29:53'),
('0bab287384bc7a3e27dc6f3cb0f4f4e41cb305cb40b70eeeeeb4b282525ca9d71f7224aaed8c5eb1', '789710d84120e4786508586903debba0aa1f495c8f709bbd9cd1c18fa833ebeb45554905f0bc7725', 0, '2020-02-06 08:13:42'),
('0c708336a73db54f39536bb304c4122f2ecdc1d5d8b065f8dbe5e621c8405686e327c1ea18e87c2d', '598b8c4ab0c7ee4683c255b0b3bc52b9bd3432846b880683e41b4ae6376da5d84a762c9a4c97069d', 0, '2039-01-31 09:31:29'),
('0d6ad01a515f73946f578d539428c33ac93a9c3322bff8dc3ad25f61579f286a15919f6d068b2065', 'aef8f514865dd5864119cc2a4cba8cd0e51b9b20c4c22c494ca8832a1b18510005602d0af97ce359', 0, '2037-02-07 03:06:48'),
('11c4afee37f75a6c66c0f106b500f487fa24d2584763f45a35868d142ef6ada9e10d7091d6d72453', 'f91511a8fe3e6ed70581edb95f504fba88bffc142c932644735843094ade05adee4e3262a252e3f7', 0, '2039-01-31 09:04:52'),
('11c62d0ec107b6130af79db5fae1696f18030fb285b41a2f77841e2f8c2274a1203384be1b1c1e91', 'c57e5457773935200a06a00ae055733f4393a5872858e869af8da982c5f3dbdbae2bfdef25a7d653', 0, '2039-01-31 05:57:19'),
('11d1248468dc7b2faadedb48b6f0a3850e89b54b4b2803ac7008d302869b518ea11a35964ec17749', 'e6f6195309e8e1d205eb9c406e569a47e3c7ef7830233d61d6538260e5ef9a1c98153c6c9227b73b', 0, '2039-01-31 05:55:57'),
('11f2898dec6068965dd47ea99e523941aad06d62ce62cd61f35b26d3adfbd3b139d2e145cc8dff7b', 'f9a3b0b40b09675f56f7b21d10aa3994366c45f58fb979d92de0a60b3f9e2e1bb69c165d8ace1ed6', 0, '2039-01-31 05:12:08'),
('1242fa3f5669d17eb247ba30e09cf1c1fcc3c6e08bdb5520e69781456c04907371f2f99f74445224', 'd53f92b285ee5ce5ca5d11ae401f2ad4c82d6abae9aa8d72a89f7769ae66bb74c0f541dadbc54c74', 0, '2039-02-06 08:55:01'),
('158a98f2d732ccbf39e3d0f915295d2ea699d2cab2a89bc5ef2e52e4763d6b51276e3f7bd43d39e4', '979db07dcc84b0d37936ba40721a73c832df5188d548bf67842a4d0e921d8918c42314ce2a4330c1', 0, '2039-02-01 02:20:18'),
('1d1e0a20f6448daa2f8660556a7e943395ee3129e1e37c8d03b485e91f2e9d5c3e54289e2a48a633', 'b852f81546229676edf53784ed6021ab116bc3013c4b3d366f1991c3c9a94829a90f095da2fb59bf', 0, '2039-01-31 06:33:03'),
('1d6caa706a6fc9b165b03225c23819807ce4887ff544aeb2aff14c67867f50c29ea3841d65d4583d', 'b113db00c9b5391948c74a169a981fee2d5b07423268fc63eca6fa58ad766e0b5f892fabe868e0e8', 0, '2039-01-31 05:57:52'),
('1ebbd2d61395b9d4ff6561ad8ecf5875f2403ae3ec66158407ecabaf79b6a1a2edb20d0c5b9d1c6e', '4a8d6ad02e070a0548e764e22548e5bd787e248a975d7226dfae618b69b56c845f3c9a3076afe70a', 0, '2039-01-31 10:00:16'),
('235ed1dfa5e0c75f5fa89c93f01cf7aac32e43f78c5b2b674b9703060e039aae1d306407c93bc87d', '0ba3c782fc6593a902ed3be467b9bf67c2b9b8cd24adaae4303a3980547139b96a5ee87c8bb6856b', 0, '2039-01-31 09:03:27'),
('24dc5fe1175afa1c45a77ada0c8f75be4cc5ce2b66eae02bcd9a5e8538dc276960cb627d99785b2b', 'bbd5ec32d975724c1889ea111a9743e586b784fa7ff454f8f3f7fb3015d7b2610ca31c6a39a67754', 0, '2039-02-06 08:55:23'),
('25b5a2287ebe7134942b433ac24dd1c77910b7523f783c206e1067785b5e7f6298e6893906da3637', '9f52ab6422663914716a3dc2ec573cab5a5b1b8600bec4c103dc4915c4f8c667876cd69ae19ae4d2', 0, '2039-01-31 05:45:06'),
('268d5dc0c759e10abeeb76e0e5a8a933621d79e078b0a4345d17e7749dc8665e37cbb49a7409d954', 'f5db6fbc3716b09bfe8bf02b0f743fc92af7790950a6f99f5ed1b5879549328a41579b03fa205a01', 0, '2039-01-31 05:52:58'),
('2d44299dba877771893795dee14c466eae55bf39c6496c6c24ab0623aa2651efaecb0fd8b3894fd0', '90ce07b225a02c8b6ce344b077e93a722721254d0335192ae62b728a31e6b01b2a8ccf6687c32cf8', 0, '2039-02-06 08:54:35'),
('2f3b89dfc80560fc60c701d268c2df778913260dc06c2f5730960a709989c2d9c56c18fa9dbef040', '6fe8b8754bdb3e80421d45c941791dda0f70ea8decc9806b94e60120319868f5218d77e83f7a1e0f', 0, '2039-01-31 09:29:35'),
('30973764feb8853203701f1c38f8109f24fae6d86cec93c1b0669b9c66523d61a0843cf9814a66f3', '97da57455e7129c8068f292419fdfb4c64ee27f5375476312e185265f9f8684a7a5e5df8e937ec2c', 0, '2039-01-30 09:28:14'),
('33055dbe60f2091fa8a0338b091c5fc71bdf7d7f78063da8c9c678a0da66f6a90e1702a990c36017', 'd8bcf6815f63e8a7a1735daeac1f679637d088687fc4c2f5ef9c58cb2e3323bf97b489ca0667be38', 0, '2039-01-31 05:41:30'),
('33db9e3ef45d4b2fecba92eaf1a5497d69de8b81f7acc626c4279eb8be411a24cacdb72e34f6b097', 'f143fc3072f626996ff415738ccadca8b10e9c4547521a155bdbccd7c521fdc3ecd080bb2d079003', 0, '2039-01-31 06:27:04'),
('3540844911a2d2f35210a254a879e7d86f3ff7a92e17bd42a8f0f23ae2ae0ca42aa3ed30ae9d5f4d', '9c35a229d55428e36ae2e914974675f437204154d59191c337297147268f68b9a736ea0389128712', 0, '2039-01-31 09:26:14'),
('3cedf71945c71c7638c3262e5911d6b3802faf7034aa0a30a7304127738267d1de61205872ebe907', '8f43043e7c71871695cf2831102b07dcb07dff4ba1269b9cb3e661241cd74ac9cfcf4455d48b0687', 0, '2039-01-31 05:57:25'),
('3d1f574c8883c22f005e7ff2fc5fa0b76fc300ca676451e54305911abec83d3b58ef43a18667cd24', '8328f48427ac3645387edfba0a9c747fcc7555b8fcc0a3601e5cd0c2617d599bf599e1da61ecdc4c', 0, '2039-01-31 08:59:02'),
('3e0a1d37bfdcaeb4cfc76ef901194b213fbb4d1acc31b73366a8ed13b3f9a2a43010c1fbb17cd24b', '855d8abb200a9664e546f6c3c8224b90106142dcd85f7f800cc2e858478c57b14d176ab09bf7eb97', 0, '2039-02-01 02:20:17'),
('445bbb273854891fa4cb541c6e8c9275c97b1ddf10de1b092bc17db8f7da5b206452ac0509a0a313', '6d3b95e003861b3abe989b45fd3ffea496e73ad31f32f2eef733384805e15d0e4b914eb88421b002', 0, '2039-01-31 07:39:22'),
('4830b5246991160acda7dc0a91fdaa1df4092f330e21f524b167f8e63529a7d3adc6d7e057cc672c', '3f0fa91ebcc8263aa5501e2f51a147993b7c2a0c3a4f45ff27137aef48186e9acd60bfdf521e3b2b', 0, '2037-02-11 01:52:14'),
('49dcc62ded411b99289bad8a854fc95096c7eedad775917190ef6a093576ca6c3eb8eda4267fffc5', '1bc193dc3fd1132f8188ac486d896c63c1517298fcefe4f6747d3d229fa1f7385e49845d4018f68d', 0, '2039-01-31 09:46:31'),
('4bec6cb13d03e1720b716c046eed75b5304de7555a65da5b1bffbe5ee17fb5a2748edd6f22d12793', '8ed9b343d2bf41521c217f75662d27b517959f1ccb64ed1badbad70f82fd9990d36e3e50a2aff65e', 0, '2039-01-31 06:28:36'),
('4cffd2acca4179fcd32e8603693fa3efcb24f993bbc88603db39686078a8211477211c211d191492', '7be073df2b992b32e35179bf4dd6344a13a7c75f02d3cdbc55f5409ea6a2297f4fcc3cc8d78b6744', 0, '2039-02-06 08:19:20'),
('5192b36d1234de6bd6a254b649c9fd260aaf89866130a3d24c8d8fba2d0cad7efbf6adcfe34a85aa', '80190991a152ab7b1e417c5fd3c2a2e62ced1fc452c9a60e9b30fe7a21698610883e1814761176f1', 0, '2037-02-07 09:32:50'),
('527ef8f49e678b9b33c43de1bb4bf0477b9ebc8f5ac7166ab99c53ac33b412d65bea000d69800cc1', '2864826e8ab0583e570a464f9405a0da2d75703ecd6866635784090959a8ebd2c5afa2702184468d', 0, '2039-01-31 06:27:03'),
('5611c044765bbd78b81ba2786a895d25de74627909131c9e7ef20452f1d30c5d74ebfa183d4b7c17', '051592e4150aaf8d1a40eaf360da85d3aff96421b1e350e990f1e28c4b46f75b27a7dffdcf8cb5d3', 0, '2039-02-06 08:19:17'),
('56e113f8e68b50f26b89e45039a59e7bcb398500634e24a8531a5575868ccbd4dc97a73dda037317', '20e3645000f07d5bb51431546ed820166242de586b18b76910fade5908cbcff4dc104623f3b4ab2b', 0, '2039-01-31 05:10:43'),
('58c97e6a5cbbad2650301ae0908d22b8e90708769f88e12a22f0b4bc0b35335010ba29eb49b917c2', '679d6162526cec12f40c5cf163b5c04f01d2f1fd14c000107ce9c1b023cd9f11dbe7e09e93863545', 0, '2039-01-31 06:34:22'),
('593dfefd9bd6652b7548876b4e209c35a24d8d064e39e35d826b6a3f3daa2a304265014c6e8b38d1', '3179bf93bf6bb3d09e83a081aac78efb642fe53fb7538a9e62615fa912acf3e2f612ca3cadc52b89', 0, '2039-02-06 08:54:38'),
('5b08a10e8199147e8cc5f542c3e137481f19dd607be2e1b5cf44a77b4f4dda17d35a02d613cdfa2b', '7e07ba1d58e55142852f765f770fec352a619ce81724d5d072cd939952a910093da4827cb3310556', 0, '2039-01-30 09:28:07'),
('5d7b805565b5765c2be3adc7d9ce014e78e588205ab7bc5577d104cb3d29bc64d034db25ae593e55', 'f76cc069cdf0e5b790b69aca48078134995a148fa4b8ea90841319e3560dc6a13b1e9c5e292e76af', 0, '2037-02-07 03:08:24'),
('656766463a048f60d2aa6b99191b9c56f4f0a305b8507cfba5a8ab419a3935e1f6c6fd9400cc451e', '2d3a169a27ed7d340e45ece879d2c3730585c0d0f70abc962602181bea0d4942943c37e7730c2e1d', 0, '2039-02-06 08:54:48'),
('6751f8088900c1681f816bbb16ec3a5c6fdc394bff547971d8e0142a41699a01823a14ba102ebb14', '3f23dea5d4ae895f3767dc47ffc6ca4aaaaee6774cd0d34cfab60f78e2122b074480bd097455359b', 0, '2039-01-31 09:01:39'),
('68021399901f5b6cc189d7d9119858ce2bebb138b0be46b933f1138184cad655486bf119702bb73f', '097af5d2138cdbd70787bbeb64a95c1847db45593e406a77ff494e559be3d90ecad142c51ced95ca', 0, '2039-01-31 05:15:32'),
('687d537bbfc5ffda4355c7f1905799d7ec305fc46160a4ccbc162e71c5bd7f6fc37ab435f43594b4', '599da9d4a80c74fb36964057ef51998efc50983f506f6be0794543cac3538226c44f330006040d57', 0, '2037-02-06 08:56:19'),
('6886e52ba7a7fa077a3c87d5d85c1572ebfcafafd9658a7a92ae738596965b82edc62279d2b1c456', '12c7f694128492f9e14a35fc5728170ebcca9c6f537c6010c58f9fcb89b1753b6aec86bb832b110e', 0, '2039-01-31 00:59:55'),
('69575cc8d97052c1e4c45e43ea842e8b91043f510055cf7b2c0e19a8c77a0c9e8b473d78596d5740', 'c065cb4777868ab5bb006607b6e688cca4d128ef3d27cb4064a23733fcb7eaa65a53b1a9da8ca509', 0, '2039-02-06 08:53:24'),
('6b4cff4ca10246dc2fe0edb650da5284f2c007a21dab4b1759c1486b8eb649a672d966ef9191a88c', '747ca6a8ad0f3a9e06248c5cbf510ecba3160747818ec6860f226aeaec44f7f2ac5810673565497c', 0, '2039-01-31 05:12:27'),
('6dfbb9660918070e03045b865ec2329879e0984a18191d253c612ecb0d364e4711c384491fc64327', '9284c219c9ffa767efcc0f5253e4363416750d6cef132a6a81c56dcbe2abc4f6ab84c41f0535c8d1', 0, '2039-01-31 06:28:33'),
('73e845b9f01d135e0a01b3f6d0c4ad563d32d437949514455fd01a63c97512fe22b1f942da3aaa62', '4002a4ee501248515c95be7fc8fba342af81f9538c577e5c641040c5779f1488335105ec5782080c', 0, '2039-01-31 09:04:37'),
('7480b448387dfa46cffca63d4d67df58c498a1e2b604ad2ea075a3726838f1b2efc53f01006c9f8f', '54cc1798dc7af37fcad72cb886680d4bb07ac119d1594c2482e05a68a010ffc0990a4927c9bb70a1', 0, '2039-02-01 05:46:01'),
('74b688b9dc9fdab76564f75a42eb1c932501b0bab960de33a7696957a39186bf9133d10baa82a482', '0727fc6169b3b9bfb7cec3782559b11c839ce9d2689f5748a9785c1548a591ff6b47b6ea19092310', 0, '2039-01-31 05:45:00'),
('78deef0008524d0ff2e06e8b365a44d7afcfa45ddbb597bccacd726f5dc6985e56ba2c8f38af1fda', '88ed74e3477ed058dc006caa77696ecbd37d765aa9652ae6c333f3197ca6642329fbb3328b80b2ed', 0, '2039-02-01 07:39:22'),
('78fd2c2860a8af69c2391044387dbc9b414e7515be85e7f210092d5a3f023c8f8b8acdac024f816e', '7c2d83e1ee7eb4df52e8f7ccbc228a8114570aef4ac24b57ebcd70cc3701ecb0746652686eb92b88', 0, '2037-02-11 01:52:11'),
('7c20b08df1fbee66a1532a6a6c534c71adacba994b3a779bbc2ebc312a98b00fd7f6e23c4a6c4f4e', '665aa249b62371aa449dd47ff25a04dd80e71ab89dc82e2514fff17b8d56d8f12f1ff2aa0ac13aeb', 0, '2039-01-31 05:15:46'),
('7f7642bb0f90bc2174564baf2a52f3c57a7aaed6256f6727918873f87e1d8798c059dfba14eee70c', '5bd1c891b757c6390fdc58b8409ecab324f04d1c6d1ebb315c74d1603507de1a3b994aac8d7c2d2e', 0, '2039-01-31 06:28:35'),
('8005167e2b5be77460b08913f7253b221095f6c66dcbb80578633f7e4d10c95185eb03b801b5da57', '1c80782584b313317f77827b940d03397f524a4d2c8318ad67c4b7ef55efa625dabdfbbfef8265b0', 0, '2039-01-31 09:31:30'),
('80b3592cd55230f8f1eabd6d1e01dd7117f733712154d05830e482203692d263135b28f9ced88d7b', '93814975e563e32c431701d60c568d9bde19dfbc4a0a48a8df2e9e3ef22c92c804dfe832187d30a7', 0, '2039-01-31 09:46:29'),
('8518a6ae905db3ffeeab825449f29077ddba5355b18437c5ceccf856065ae5f0e429e74956003903', '2d02df43ebfd93ab04fa07d09fbf772144994a56ee7bc9736983879ecc8546764a4516fc8a8fcad4', 0, '2039-01-30 09:20:54'),
('8727dba814a9ec3c17a40593a28e6ab281ecd7d1176b48e9baa09f8cc99d1c7e77def0d9154fec6d', 'a91795229ad7ef453830f7faa21c2c815ddf88a57e499f468c310a8f4e373be300b004301c2cbfd7', 0, '2039-01-31 05:52:16'),
('8744175ac88f3b0a7a07dfa14600e2095d40ffcd78fef507ed2fcaffe0b6868e3fdbe4f4d1ee75ec', '9f086bb3acbfe199e4a235d363ca6030d0b91ada77ee3d941b93c8b626372daf6675c89f1000d3eb', 0, '2039-01-31 05:42:10'),
('87ca9d3cafd01919b6851fb7442ad760dd72ea4a9bd09d08b79688036d92b361c8a022128da341b5', 'b25542139ee0c58fb70b98083a7caa76c8d877a37c77c6859ef91a73dcc8abfc61d766fe5a7d84db', 0, '2039-01-31 05:16:39'),
('8874f1204a45acefdce88a45793ddf0a294e56ac0d4a767e1faf3aa0613a6a7d063fbd8645788a80', '5ac8a535292c4b43d65ffef3812946eb6963ef26ac74d33aaeb49f2924a773226ae804e6c3ae7b43', 0, '2039-01-31 05:50:54'),
('888796bcbc9a85b77d4daaf8c815b32cf0702bd73a805a99fcc5f0aac4bec8f5030f7f5429dadf8d', '6dbdcbfa21e4a33a838857f8e0dc5ee9348a51b30dc00f2878ff66c424099761f3d479be9fc2a547', 0, '2037-02-07 03:08:24'),
('8c37a46d0c87ee5951ce182cce67689ef6d8a2c138c5946c0f8a9560a99bcacfa4a96591694eff2f', 'd5c646e535b7c69ff585bcd3acf5b1f7c7b34f1c7a0f25bd007810a06bef8bc7bf8b7105628d2724', 0, '2039-02-01 03:33:06'),
('8ccd48577bcfce2de879e0203757fcb23f5436ae008734f2c5cb4eba19311c3da5fc9a7eb160fc8c', 'ddab3365c5f46bf7ee3f77e21ef43a4ce674f50151fbcc570b89836e5953cb679cc1a83e931a07f3', 0, '2039-01-31 08:57:08'),
('8d6f25289103260b280591d476bcda8dcfb108b647454c993769ecf80e91aac092047d9d0e4514f0', '46fbbe33cbf14ceb8023e8b7f1239e87f74d87e255bf14f26da1d901f672f530239063a19e85db26', 0, '2039-01-31 06:28:37'),
('903dab524e91eb3e003e44d38ccecbf9c1db5c6f45164da1b7aa57004bef2b7a4d246e1a0dc273f9', 'ed67a67a821bc156b80086e5985eefb5712d0ff70d261a00c913a8dde12a37696b2593c003bdc53d', 0, '2039-01-31 09:29:37'),
('930f2b0fd93007c2f0d7ba8281da37a8f4e9a15324b5b360b4ae2a595cded5e7a1dcea3d8e495506', 'e068c977695af1629d06d36df109cc2da4c7b3d65c05a11e5e681a3157f2e73260150db02e50cb25', 0, '2039-01-31 05:15:19'),
('94f119ee93f16e3865908b22d6d1e3b434f0fa37ffff350015121d412854167b09048f2574bfeb91', 'c2b34b24c5aa04db1cfc65ab96a3a72ec6dc32551812e026d36cc095327f4ec1a04391b7ddbc14cb', 0, '2037-02-06 08:56:13'),
('95ae047f823f123f19b3d6e0aab269ed97f24837541592a9f318627f349f16042ad602c0b3dd42b8', '97f39de8829cebf1653388f2b77f1aa9939ca883932489bcb3d2370dbb448a473ab6fdba72af29d8', 0, '2039-01-31 05:47:49'),
('95c0f9998b67ee0927706ed1b61cb60c7134c608e1262b89a19e0e74cd8ca00a1ad83735402a4258', '39ffb0b8011129522e8ae1e10dd8c5870e3e45a3e911b9d279140729ec201ca4a208f7d7f4c0b6c9', 0, '2039-01-31 05:57:59'),
('9dc047e762d93c3efc297e733d7b22e978bafc156da50ec458da5154a3c41dbc9818245b6911d8d5', '77a0683232f313cc3cd45ecbbf0f1cfdb556f2b7c18d6756d9ef1aa17fb0fbd6807a49675b33043e', 0, '2039-02-06 08:55:35'),
('9e5ac7923edaf041d28952f667665954f0c296fcde9dae7dfae7423c08acba62ff686b487df13e83', 'a14ba5aa032215316538600c8ada53cd26f6796962c3572a9ce0402524f6591dc4d77b9bec05e125', 0, '2039-01-30 09:28:09'),
('a116510b7decebac2ca0fbfebe49b8b89047a6d7ea02916d8bcff19d2c409b3b43e9a1c314e669ac', 'c6c5805a7a9433c269a0d73af5b6b24edd0c6ae038fff970bc242561472f260a66f762f98476f384', 0, '2039-01-31 05:47:40'),
('a6da5a2604898c9c7c6da8e8e4f538f4ba02f5d56eba2b91806cd062669a5ff6e0ac4037a3aea914', '4f3387999afcfab82c52919864de6ea076beaa2195eccdcc098de53808e47226979da137d8223580', 0, '2037-02-06 09:00:13'),
('a82b73e82f2d3d5db898fec25f5ee087c84953ec156d06bae707ae4105c1b2d8ecf22ddbc4276a42', 'd852556992a9a0b21f271f603a835dd9e7e581477f10f8d5882c5ced25fcff5106b9b05e70fe227e', 0, '2039-01-31 05:11:47'),
('a9adea30612a431330c597d0801b5c0314496928ca923f3a830a2bc09ff2af50f0af1d0a2955b97e', '2135de241c7f115a85caa153f9aa0726c8fbac39fc4799032962281bc85d5a1b55084522d8b4f595', 0, '2039-01-31 05:41:33'),
('aa6f207dee9ad09324b93f7e0aef9c05cb129465da644463b5542e80f17d27a7dfb5e41ea391cea1', 'd9d1c8a08c78df462ce5b963eaa97d01e6bd431d5b536f56c9771d1444e866e9d0871905297ab61d', 0, '2039-01-31 05:49:38'),
('aca72000d39e02a427b374f09ec2b5657aed0ae42060c5c8d7405186ea69040f3de2abcc770e430d', 'd6d3042262139fc31bea937ed93a96442b9f1feaa095bda53ca5a16bc3bccdeba6d75866dcb3e61f', 0, '2039-01-31 06:50:27'),
('acd3cda1e20a33ef769a652246bab47d5500124c9ed20bedfe949dd6b553d04c1739d98e58b6901c', '40f5726e5a8512b61d1cd4574f30304d496cfd6e3c5749fcbadc695b83af5aa9db8d3a300a1b40c2', 0, '2039-01-31 05:49:21'),
('ad726ea46e0be27fe5fba583329a0a0303b9eab68fd3747b59ad3f64f460a9975361370542461c74', 'a2e9c4809eb2467975ccae8f8fa58cfa7dda3fdb9bf4b028bf2883d4b1d18309672e684b54abe8c7', 0, '2039-01-31 05:25:20'),
('ae320a8521d2c216db325cfec2d129470bef12e888b7034b95c47cad5ed9194b384166bdb07ba198', '43511226b47d81a0b19a9a537d221f34e13bb0bee63a36098f0b621a6c975923febdc7ab611ae7e5', 0, '2039-01-31 09:29:50'),
('b07e3af7dd56c093d4c27e78874f1304aab591e883078a6f9ff949cca0e5dcb3d5d8a18ec5bc618d', '2eef4e7cd64e3d765ffe57efdc3a11e9f8541d64af02c180242e61f85fd9e3caa8dcda20a7359320', 0, '2039-02-06 08:55:58'),
('b2176dc37cf2cc6342e7188772a6629663873dd49e98f052a50158734bb959f414a7e59b746b8198', '872c339718bbfd765973c6fc82d42c7654e46f8975071ef8d86234f9aa199809a24a4e920214f2d4', 0, '2039-01-31 09:23:48'),
('b44d810b7270766097f845da6477d7ecfed95a8daed715d2ae065ef5c4666668bc18251a1a132ef1', '8557745250daa4ba880e208552535a6a6f7bddbe086d6630a492cf83a3ec09c4495624ec2e9692ad', 0, '2039-02-01 03:33:07'),
('b70f845169251e48b38a68e4d13607b865c4b55fb802cf4dc8db3d3f01ea05efd73f1e232421ed23', '0514c7feadea4256c4e8061b27025f3c2fcbf76656c0c8b98d5507ff13a04d1fbdce134d0e6cf055', 0, '2039-01-31 09:09:09'),
('bc054cb63fbc4476946e825771b81b86ec3592c603bf69808f0628fa1b6f3aecd23c3aa26bcd2685', '599aa9722fbbc60d1ac8e501b39106d5d0b5d366156d513ba009ad6badee3b8a317de997ff6b4771', 0, '2039-01-31 05:49:52'),
('bc6feb45eead763f4977a707bca3c73b255ddce889cdedaa7c892cc1a7ef9a134b577effbf0b9570', 'ed737b5806cd9275ced7238579a1de2a71d431d13b25699262f8c7612ca4513d8d891f44a4fcf724', 0, '2039-01-31 09:29:39'),
('be9c8e3c26ca55c45ea09d5996e49de72520a01becb98bcab06dc1722e9b9be0f2e977d99d009f0f', 'dbabf8903adeaa2d6adb1627ad00b6e41010c929d5d2010825b61b701118090805d151f6086ad88e', 0, '2039-02-01 02:14:00'),
('c24a6e3f1937a71bf7f1bec6fd7e7afa441c3ed1e5aaea27f5b73b57e038c584db3a7f3835a76a96', '8805a9f30d09207b5130a1f21e9fa4c28beaaf93fffaecada6d6bbf11b6e41391d51871ac5c6e0f2', 0, '2039-01-30 09:14:24'),
('c3c6e392aafe336c1a7873ed6798320866a32c8f076cee598956517716dae96af148c1d4b78ca95c', 'c98af547799beb814594b9505f422036f0826e270deb0b49160128be0278cfc05c636020508111c2', 0, '2039-01-31 06:27:41'),
('c5b2c9dfe131b6f029c3706b948b9db72c7140766257ffd1f34dd2d4c12465592ae36279d0dfa20e', '6a0305a1a47e2612592dff8689c6a3346e187f4aa76d40b071dca6eaf0101f9838e773d4c0270a60', 0, '2039-02-06 08:54:17'),
('c81800a76e37908487d555d8398aa398d0732873847abc6cfe0d1f547e40745d8a4c3b33d0c571bc', '4195e8914af3f3fae7f443c4142f03d7f2b21afe5f307c7cf709e9776d86317af54a23b6de9d62d3', 0, '2039-01-31 08:13:33'),
('cd636aeb431325c0d424a4055a6fc0ab86f0c8c2d13ae3eb85829b3868d74b7ca7cc39286a2fd29e', '2fe56e959e1c85b6233c34fbb896bd911546dad76527c10fb41740bd7548f65a6d546924a2313234', 0, '2039-02-01 05:46:00'),
('cdb82a05c58aec5120226a34773e114e1ecce6f3f95aba1546600f3b8a7e70a126b3ea520b5a408c', '8f98d75e757974673b28810325ba8b077422ec4d4b134367d9f24489e7a530b5538e31febc0a3189', 0, '2039-02-01 07:51:34'),
('cf1e09aad011b4b546ffe6affe1241d0af281633320d74215c539696890d0ba129210cfd4a66686b', '2adff1e8eddbcaad854ba9ab469c97e9ed608d16473b4718562fc8de98d237d1af6813ba5704a3f6', 0, '2039-01-31 05:27:07'),
('cf8e2658902c71961e11adfc995719923ec2dec209978754a35735fe570adaa9546285066351abb8', 'f890866715f1a994a3cffdcd9a0892a1465f8b67d17ac77bad554deda79e4b337b8762186ba53a2f', 0, '2039-02-01 07:33:09'),
('d2e3284691a882a8fbca1d515ab8c45dc8eba946044e4f2f70bf91496e0966abf65d1324d5e384b9', '7d46ed0c3992bcd258dba19343feff90438dba65d3360d929148020dad1a48a38f6be2608f8d13f3', 0, '2039-01-31 05:12:49'),
('d375ac34f9198abb95b48fd3142c009593a5499b4ecf0376145695ff905c72737cf62bb2aef8eb3f', 'ec35463207a6696e18be1acf0abc060a2bbacac1e6f10745caf2a6be33ccf265be03f2fda3e2cbfd', 0, '2039-01-30 09:26:26'),
('d4547a27155b3e09750f2a900fd1c3e81acef3f5045af0393a4f46d1ed9761fc6e89230d77389ac8', 'b6244253d878a96ef438c4c277fc200e62a0aee48ef765f867f26a15fbfbfd19e73c3be0e2183752', 0, '2037-02-06 08:56:31'),
('d5dbe87ecfc5b06bd88138b547552c8c19c5de3d49697571fc249efda17e7e64056a4a3141171f19', 'c678e2f5fb2a74c319a615f33fa8f467141e74c01e1eceaba602b8743157a9b03f163ef760d7319c', 0, '2039-01-31 07:59:22'),
('d5fbb709c538441e3bb8fcffc6db50413bd9cfa674733dffcb6d9182739f190daf1119cfeabb3351', '1db21bf45b46b5ccb881a34b174800c5524cc71be978bd020c267f9987a549820bea48cd3c248389', 0, '2039-01-30 09:27:00'),
('dbed84742db225c651d528cb17d5ffedd7d1b7fc63f2348cf431c961b72cc5bbb06cf25dfab696d7', 'bf302d634af45c19c5db71e9573a92a8ef7a474f51bc52a214ee8ba090241a924fbeb6f0c0da63c5', 0, '2039-01-31 09:27:18'),
('dc958c57748f2f645fb2c6ebe0d84b97fbcd2a0dd2bc3e839e48a89fd0281ab01e46fbef6b973afb', '1166787350ed78151ea258ee1ab7cff2830181c2ccaa3ff54e58f37a4c01c0f1b972952f7d974a6c', 0, '2039-01-31 05:46:52'),
('e52f105f9b9024b5c215ac14f0c83b7d68a7a00bc6ac05bb4f142385641be8ad7e2d690a9d26af60', '83729978cbf29afd215dc6eed847fe35b992b231e8c429298f0b7ca984c6adf787990d91628026f0', 0, '2039-01-31 09:01:42'),
('e5f416b0c2b0f84ea66111c330644129970cdde753d275628691499f44d97c165af8b8b7543e2862', '479cc3e1ad2a531e91306b8bd3e36a80f888c8d1965ec793e14e714ef658d75136bfb1c132993283', 0, '2039-01-31 09:11:31'),
('e624f99c143d4dfc0eb622bce4df3123554a1479c384be30a65249a16735d2f7322cb90879cb86ec', '0bfc186c66b6dc4b699f545ebf76293c01a992932fa7344bb1886d840dc0e32b376e135d34866bbf', 0, '2039-01-31 08:13:34'),
('e8677b7fb7af5be3f0326bafa9b90671c45f56f5b150090add3d6a66a226e844fa423775e025ed98', '1867bd041f0591691e8f41db4c42ad60c23f669277825d56fbb94b58809095ba80c5d1f4b5420cd0', 0, '2039-01-31 09:27:21'),
('ec04b689c574e09223f1f6f73b84828983b1380aa2fd66bf4236727bb5b46643581873b8aab1c92e', '9afd8eacdd14c6d15604af1cf779536269af29e42991dd70ba65f810f4965cd646726c8f2ebe1a8f', 0, '2037-02-07 09:32:49'),
('ed1a514aa59e205f3ab6c93e74136645286a325462960da3c953069e7d75d4841d071ae3553e847d', 'ff23ee1451adc8d7b438a6e036c733a402045280837a22a7936c9c022a432823a140f29e6f2cbced', 0, '2039-01-30 09:28:03'),
('ed3e23d5d33a54570014ee3e750724b087c3c80d268b1cd8174bf9a198c23b5ad15863002ef6253d', 'b20ed773c1eb366c549bae26a425ba79455d9290c9136184b148ed9e22f6c7eed85191e25a32f313', 0, '2039-01-30 09:20:29'),
('f0774555893c58dee52ba0ddee8555bd7317fb0c3ee391adcb301909e120621300d271212fa9b1d8', '719722d980be2f15f93294d121ec91aec9f9e72518b20b339fcfe47f235803317f272ba4aabe7a67', 0, '2039-01-31 06:27:40'),
('f3dbe4ee53feef75dec1c9f05b0b48918219abb752ca1c85a0714aa23aafaae2ed14b5a84003abe1', '9d915a249218c0254a9f0c9a87d06a35457385196e45a53caaaf0ce55ad3a72de774296a2134d722', 0, '2039-02-06 08:55:13'),
('f56c989daa7e41b9232bd6de2e4e9f431cb3afc5e257fed2cce4a219a543780b99017367b443c6cb', 'd24746cd8aa72153c86fa1d7d913e3557643eca259668c2a6e222f345171bc58c25741177017fb1a', 0, '2037-02-10 03:43:03'),
('f603fd399d6d18d16141263c8e2e6edcd0b5f9af5500648444d96b3d302c79a09c601d5b2e0e6caf', '2e35ca31da7060be08b4009261fb87cbc2e67b25032b88157ec5ba8080617b424dde26d70c312076', 0, '2037-02-11 01:52:13'),
('f683bc5366ee94fb9d23c125a108491b4252e63a12927b06b62e3b001cbeb14938a6fb3be30f071d', 'd96372f449a1dafc8b19c62da42a1a884fd4a80ef7a762d9b5f301889f307f5cbe31e16ef7d312cc', 0, '2039-01-31 10:02:12');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-01-21 21:30:09', '2019-01-21 21:30:09'),
(2, 1, 'Welcome PIN', 'test pin', '<h1>Welcome PIN Cambodia</h1>', 'pages\\January2019\\41gNLhrDdDcVIkgioOJp.png', 'welcome-pin', 'pin cambodia', 'pin cambodia', 'INACTIVE', '2019-01-22 00:59:59', '2019-01-22 00:59:59');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-01-21 21:28:24', '2019-01-21 21:28:24'),
(2, 'browse_bread', NULL, '2019-01-21 21:28:24', '2019-01-21 21:28:24'),
(3, 'browse_database', NULL, '2019-01-21 21:28:24', '2019-01-21 21:28:24'),
(4, 'browse_media', NULL, '2019-01-21 21:28:24', '2019-01-21 21:28:24'),
(5, 'browse_compass', NULL, '2019-01-21 21:28:24', '2019-01-21 21:28:24'),
(6, 'browse_menus', 'menus', '2019-01-21 21:28:24', '2019-01-21 21:28:24'),
(7, 'read_menus', 'menus', '2019-01-21 21:28:24', '2019-01-21 21:28:24'),
(8, 'edit_menus', 'menus', '2019-01-21 21:28:25', '2019-01-21 21:28:25'),
(9, 'add_menus', 'menus', '2019-01-21 21:28:25', '2019-01-21 21:28:25'),
(10, 'delete_menus', 'menus', '2019-01-21 21:28:25', '2019-01-21 21:28:25'),
(11, 'browse_roles', 'roles', '2019-01-21 21:28:25', '2019-01-21 21:28:25'),
(12, 'read_roles', 'roles', '2019-01-21 21:28:25', '2019-01-21 21:28:25'),
(13, 'edit_roles', 'roles', '2019-01-21 21:28:25', '2019-01-21 21:28:25'),
(14, 'add_roles', 'roles', '2019-01-21 21:28:25', '2019-01-21 21:28:25'),
(15, 'delete_roles', 'roles', '2019-01-21 21:28:25', '2019-01-21 21:28:25'),
(16, 'browse_users', 'users', '2019-01-21 21:28:25', '2019-01-21 21:28:25'),
(17, 'read_users', 'users', '2019-01-21 21:28:25', '2019-01-21 21:28:25'),
(18, 'edit_users', 'users', '2019-01-21 21:28:25', '2019-01-21 21:28:25'),
(19, 'add_users', 'users', '2019-01-21 21:28:25', '2019-01-21 21:28:25'),
(20, 'delete_users', 'users', '2019-01-21 21:28:25', '2019-01-21 21:28:25'),
(21, 'browse_settings', 'settings', '2019-01-21 21:28:25', '2019-01-21 21:28:25'),
(22, 'read_settings', 'settings', '2019-01-21 21:28:25', '2019-01-21 21:28:25'),
(23, 'edit_settings', 'settings', '2019-01-21 21:28:25', '2019-01-21 21:28:25'),
(24, 'add_settings', 'settings', '2019-01-21 21:28:25', '2019-01-21 21:28:25'),
(25, 'delete_settings', 'settings', '2019-01-21 21:28:25', '2019-01-21 21:28:25'),
(26, 'browse_categories', 'categories', '2019-01-21 21:30:05', '2019-01-21 21:30:05'),
(27, 'read_categories', 'categories', '2019-01-21 21:30:05', '2019-01-21 21:30:05'),
(28, 'edit_categories', 'categories', '2019-01-21 21:30:05', '2019-01-21 21:30:05'),
(29, 'add_categories', 'categories', '2019-01-21 21:30:06', '2019-01-21 21:30:06'),
(30, 'delete_categories', 'categories', '2019-01-21 21:30:06', '2019-01-21 21:30:06'),
(31, 'browse_posts', 'posts', '2019-01-21 21:30:07', '2019-01-21 21:30:07'),
(32, 'read_posts', 'posts', '2019-01-21 21:30:08', '2019-01-21 21:30:08'),
(33, 'edit_posts', 'posts', '2019-01-21 21:30:08', '2019-01-21 21:30:08'),
(34, 'add_posts', 'posts', '2019-01-21 21:30:08', '2019-01-21 21:30:08'),
(35, 'delete_posts', 'posts', '2019-01-21 21:30:08', '2019-01-21 21:30:08'),
(36, 'browse_pages', 'pages', '2019-01-21 21:30:09', '2019-01-21 21:30:09'),
(37, 'read_pages', 'pages', '2019-01-21 21:30:09', '2019-01-21 21:30:09'),
(38, 'edit_pages', 'pages', '2019-01-21 21:30:09', '2019-01-21 21:30:09'),
(39, 'add_pages', 'pages', '2019-01-21 21:30:09', '2019-01-21 21:30:09'),
(40, 'delete_pages', 'pages', '2019-01-21 21:30:09', '2019-01-21 21:30:09'),
(41, 'browse_hooks', NULL, '2019-01-21 21:30:12', '2019-01-21 21:30:12'),
(42, 'browse_sensors', 'sensors', '2019-01-22 03:08:57', '2019-01-22 03:08:57'),
(43, 'read_sensors', 'sensors', '2019-01-22 03:08:57', '2019-01-22 03:08:57'),
(44, 'edit_sensors', 'sensors', '2019-01-22 03:08:57', '2019-01-22 03:08:57'),
(45, 'add_sensors', 'sensors', '2019-01-22 03:08:57', '2019-01-22 03:08:57'),
(46, 'delete_sensors', 'sensors', '2019-01-22 03:08:57', '2019-01-22 03:08:57'),
(82, 'browse_locations', 'locations', '2019-01-22 19:15:56', '2019-01-22 19:15:56'),
(83, 'read_locations', 'locations', '2019-01-22 19:15:56', '2019-01-22 19:15:56'),
(84, 'edit_locations', 'locations', '2019-01-22 19:15:56', '2019-01-22 19:15:56'),
(85, 'add_locations', 'locations', '2019-01-22 19:15:56', '2019-01-22 19:15:56'),
(86, 'delete_locations', 'locations', '2019-01-22 19:15:56', '2019-01-22 19:15:56'),
(87, 'browse_datapoints', 'datapoints', '2019-01-22 19:43:49', '2019-01-22 19:43:49'),
(88, 'read_datapoints', 'datapoints', '2019-01-22 19:43:49', '2019-01-22 19:43:49'),
(89, 'edit_datapoints', 'datapoints', '2019-01-22 19:43:49', '2019-01-22 19:43:49'),
(90, 'add_datapoints', 'datapoints', '2019-01-22 19:43:50', '2019-01-22 19:43:50'),
(91, 'delete_datapoints', 'datapoints', '2019-01-22 19:43:50', '2019-01-22 19:43:50'),
(92, 'browse_usertokens', 'usertokens', '2019-02-01 01:52:26', '2019-02-01 01:52:26'),
(93, 'read_usertokens', 'usertokens', '2019-02-01 01:52:26', '2019-02-01 01:52:26'),
(94, 'edit_usertokens', 'usertokens', '2019-02-01 01:52:26', '2019-02-01 01:52:26'),
(95, 'add_usertokens', 'usertokens', '2019-02-01 01:52:26', '2019-02-01 01:52:26'),
(96, 'delete_usertokens', 'usertokens', '2019-02-01 01:52:26', '2019-02-01 01:52:26'),
(97, 'browse_tests', 'tests', '2019-02-04 19:30:48', '2019-02-04 19:30:48'),
(98, 'read_tests', 'tests', '2019-02-04 19:30:48', '2019-02-04 19:30:48'),
(99, 'edit_tests', 'tests', '2019-02-04 19:30:48', '2019-02-04 19:30:48'),
(100, 'add_tests', 'tests', '2019-02-04 19:30:48', '2019-02-04 19:30:48'),
(101, 'delete_tests', 'tests', '2019-02-04 19:30:48', '2019-02-04 19:30:48');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(45, 3),
(46, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(87, 3),
(88, 1),
(89, 1),
(89, 2),
(90, 1),
(90, 2),
(91, 1),
(91, 2),
(91, 3),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-01-21 21:30:08', '2019-01-21 21:30:08'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-01-21 21:30:08', '2019-01-21 21:30:08'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-01-21 21:30:08', '2019-01-21 21:30:08'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-01-21 21:30:08', '2019-01-21 21:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-01-21 21:28:24', '2019-01-21 21:28:24'),
(2, 'user', 'Normal User', '2019-01-21 21:28:24', '2019-01-21 21:28:24'),
(3, 'test', 'test', '2019-02-10 18:50:34', '2019-02-10 18:50:34'),
(4, 'Test1', 'Test1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sensors`
--

CREATE TABLE `sensors` (
  `id` int(10) UNSIGNED NOT NULL,
  `external_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `sim_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firmware_version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hardware_version` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hardware_des` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_boot` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sensors`
--

INSERT INTO `sensors` (`id`, `external_id`, `type`, `parameters`, `created_at`, `updated_at`, `deleted_at`, `sim_card`, `firmware_version`, `hardware_version`, `hardware_des`, `last_boot`) VALUES
(1, 'Water-01010101', 'Water', NULL, '2019-01-22 03:10:21', '2019-02-25 01:34:39', NULL, '8985506081897925841', NULL, NULL, NULL, NULL),
(2, 'TEPv2.2-001', 'Water', NULL, NULL, '2019-02-25 00:59:22', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Air-2010', 'Air', NULL, NULL, '2019-02-25 00:59:31', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Ground-01', 'Ground water', 'test', NULL, '2019-02-25 00:59:48', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Ground-02', 'Ground water', 'tes', NULL, '2019-02-25 01:00:04', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'PIN API', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'PIN Cambodia', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\February2019\\eZYaVHujK4CkLsewnIkf.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'PIN Cambodia', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\February2019\\eJSwXAi3RyrSTGskRKZB.gif', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\February2019\\tnDe78Ev7DLVyIUBXn2N.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `api_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-01-21 21:30:09', '2019-01-21 21:30:09'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-01-21 21:30:09', '2019-01-21 21:30:09'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-01-21 21:30:09', '2019-01-21 21:30:09'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-01-21 21:30:09', '2019-01-21 21:30:09'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-01-21 21:30:09', '2019-01-21 21:30:09'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-01-21 21:30:09', '2019-01-21 21:30:09'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-01-21 21:30:09', '2019-01-21 21:30:09'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-01-21 21:30:09', '2019-01-21 21:30:09'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-01-21 21:30:10', '2019-01-21 21:30:10'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-01-21 21:30:10', '2019-01-21 21:30:10'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-01-21 21:30:10', '2019-01-21 21:30:10'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-01-21 21:30:10', '2019-01-21 21:30:10'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-01-21 21:30:10', '2019-01-21 21:30:10'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-01-21 21:30:10', '2019-01-21 21:30:10'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-01-21 21:30:10', '2019-01-21 21:30:10'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-01-21 21:30:10', '2019-01-21 21:30:10'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-01-21 21:30:10', '2019-01-21 21:30:10'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-01-21 21:30:10', '2019-01-21 21:30:10'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-01-21 21:30:10', '2019-01-21 21:30:10'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-01-21 21:30:10', '2019-01-21 21:30:10'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-01-21 21:30:10', '2019-01-21 21:30:10'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-01-21 21:30:10', '2019-01-21 21:30:10'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-01-21 21:30:11', '2019-01-21 21:30:11'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-01-21 21:30:11', '2019-01-21 21:30:11'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-01-21 21:30:11', '2019-01-21 21:30:11'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-01-21 21:30:11', '2019-01-21 21:30:11'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-01-21 21:30:11', '2019-01-21 21:30:11'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-01-21 21:30:11', '2019-01-21 21:30:11'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-01-21 21:30:11', '2019-01-21 21:30:11'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-01-21 21:30:11', '2019-01-21 21:30:11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\February2019\\sOm2he5uRFQKhmxqphkt.PNG', NULL, '$2y$10$Y7GG/NyMej4IBBWHkDFM.O/UUTSwkWdLSs7BpE9hTSvWdxzOYzBTm', 'M2CfUentjUWn6YVceFpSywUh9TnLDe5OdH6JP3hmeLlmaynyx4w9x6daCuvJ', '{\"locale\":\"en\"}', '2019-01-21 21:30:06', '2019-02-05 00:59:16', NULL),
(2, 2, 'sopheak', 'sopheak@admin.com', 'users/default.png', NULL, '$2y$10$7K8BvtQZR5Gu0k1HROKVD.pMVC9Wmb9.YnBpi1JhdRDpsZvu5pzz.', NULL, '{\"locale\":\"en\"}', '2019-02-05 00:53:50', '2019-02-11 01:21:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usertokens`
--

CREATE TABLE `usertokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `api_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `usertokens`
--

INSERT INTO `usertokens` (`id`, `user_id`, `api_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(37, 1, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjZkYmRjYmZhMjFlNGEzM2E4Mzg4NTdmOGUwZGM1ZWU5MzQ4YTUxYjMwZGMwMGYyODc4ZmY2NmM0MjQwOTk3NjFmM2Q0NzliZTlmYzJhNTQ3In0.eyJhdWQiOiIyIiwianRpIjoiNmRiZGNiZmEyMWU0YTMzYTgzODg1N2Y4ZTBkYzVlZTkzNDhhNTFiMzBkYzAwZjI4NzhmZjY2YzQyNDA5OTc2MWYzZDQ3OWJlOWZjMmE1NDciLCJpYXQiOjE1NDk1MDg5MDUsIm5iZiI6MTU0OTUwODkwNSwiZXhwIjoyMTE3NTg4OTA0LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.ENVYUdtImZP8G4QibyC2060j5g0-rawFCjMTV0DhSvgZ-pZj-anjS5cEGWMtNB0cxD8sh3Ro1QwisGVfkBh0Mb1m6jArTHp_yN-xbd3Gd0LYETHEwZVrnGGzs9FJ4F7BS8_MyZDX0qIUrz18eupaVT-0VCCRW26wNp1TW-9QpyaoBbQUqWIQUJL88e_yN4pp-eXLqPRzg1KZAPnlFpZrWIFBOOahT7eDJ3mcqBrXApPxIBNKRKHrg63NV0Kr86NcsFx1Cv9bJdNkvNTBcnlBUK21RF2MlCnkQKjv56b4DaFrVqUtHV6ngo8WtWHkE2kxNE2p0OSt1z_E0vZr2Hu_HHX_CJQA4dr8DUn57j3QkS2Oa4_QEmHaU_4ru9jNBaeQb2cKwF3cyLllei-48myxQzQy9CCp_dqx--SPDQ4pz4X-hfbAhj7_Lc3DQUnd_LEr8ta1vT67gE1YKLdFWZl_rE_ukrdAq-89qfo-P_YwoED-i3qfNWjhSOJx3g3w7n6C3Xc2tBRn42p_R0uIqJ8g4bMV1ffkRD2YWfENcrgMw54m8a6MQTLCvfekNgidYKn8NrCEUUxR59fCvzyEz5fOWhkw_G_Q-IzRYnMlMMGwTFa2Ik2t5uN8BX5mJicQpEH-20ht3rD2X-g1GBmLO1ZIk8XeSZv7sCR4eYI5DsX801s', '2019-02-06 20:08:25', '2019-02-06 20:08:25', NULL),
(40, 2, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjNmMGZhOTFlYmNjODI2M2FhNTUwMWUyZjUxYTE0Nzk5M2I3YzJhMGMzYTRmNDVmZjI3MTM3YWVmNDgxODZlOWFjZDYwYmZkZjUyMWUzYjJiIn0.eyJhdWQiOiIyIiwianRpIjoiM2YwZmE5MWViY2M4MjYzYWE1NTAxZTJmNTFhMTQ3OTkzYjdjMmEwYzNhNGY0NWZmMjcxMzdhZWY0ODE4NmU5YWNkNjBiZmRmNTIxZTNiMmIiLCJpYXQiOjE1NDk4NDk5MzQsIm5iZiI6MTU0OTg0OTkzNCwiZXhwIjoyMTE3OTI5OTM0LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.RRuiTF5SpDilyEJwAtu68IcMGnPwOjKGSfh2bTViG7-CV27SqKekHlY4xwA1KfkR8kmrZnlsO02Fw5xrwdQyssxe60ae4RWOGme3-aHK4WeuDpsDHdm91D24jOPprE3bYw9EliRMlrKtTvLGgcNXDTXcDyjo9dyTKxaIm3joOi478aCDMDs7Bhhb5NecEIxUeGXwJwEaljnJd1YvLCjmzc7VOkTYDKi5ZLtg5GaKP2jvHmQVgt1nr6Cy7tu_odkIlAi2e_nhz2NzD8MG0C4yIlxSMjHH7oBkGG7Y59yehuBSbi6jBkedqc31Rl-owPewpTWQ-q9D0jXb64D_Bx79UAPyvK_F2u6pJEj0fV1OZWMiKWPhlyJpfkWWfag6P0XPazj7MllVJ9RupJNJRP_7TqjdVdtCLQ7Nqha_A2WHd1LvD74IU4FE076W5BXsnWQK-hFRn6GafBJm7u5OylQbWXSyIbNFkR3NR8LHxmhA9wUXA2N8E2c2uH9JVAAFX_quPW3jiQY5VkK3Q1PGT5JwCQaKyXXBDVyYjAghw1hME0Vm2ewdORC7BXZFUN9JwuGrBSxI2eMKEEK7LUkk469JbPYCTAMOKaVTzMy-o9FYzIb5OyIhZVbmGtbRuxlDzS08pOeaenEm2xrNR8KvJeyqV5en6C8NYgM54ebr3A1CcBY', '2019-02-10 18:52:14', '2019-02-10 18:52:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `datapoints`
--
ALTER TABLE `datapoints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sensors`
--
ALTER TABLE `sensors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `usertokens`
--
ALTER TABLE `usertokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `datapoints`
--
ALTER TABLE `datapoints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sensors`
--
ALTER TABLE `sensors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usertokens`
--
ALTER TABLE `usertokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
