-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.3 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for coffeshop
CREATE DATABASE IF NOT EXISTS `coffeshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `coffeshop`;

-- Dumping structure for table coffeshop.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffeshop.admin: ~2 rows (approximately)
INSERT INTO `admin` (`id`, `name`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
	(1, 'Linoooo', 'kasir1@gmail.com', 'Kasir', '$2y$12$5d9wD4iBlH235YEId5Jxy.FkQzkUd/SSEYoSaiNPJ1xB52XEvEaNy', NULL, NULL),
	(2, 'Linoooo', 'Admin11@gmail.com', 'Admin', '$2y$12$oNXnXrVS65rsGCGBU6JC8eURFICQAu7FMXLOJODNZpUcxOJNW4OXC', NULL, NULL);

-- Dumping structure for table coffeshop.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffeshop.cache: ~0 rows (approximately)

-- Dumping structure for table coffeshop.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffeshop.cache_locks: ~0 rows (approximately)

-- Dumping structure for table coffeshop.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_meja` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffeshop.customers: ~0 rows (approximately)

-- Dumping structure for table coffeshop.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffeshop.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table coffeshop.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffeshop.jobs: ~0 rows (approximately)

-- Dumping structure for table coffeshop.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffeshop.job_batches: ~0 rows (approximately)

-- Dumping structure for table coffeshop.kasirs
CREATE TABLE IF NOT EXISTS `kasirs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kasirs_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffeshop.kasirs: ~0 rows (approximately)

-- Dumping structure for table coffeshop.meja
CREATE TABLE IF NOT EXISTS `meja` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `no_meja` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qr_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('terbuka','terkunci') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'terbuka',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `meja_no_meja_unique` (`no_meja`),
  UNIQUE KEY `meja_qr_uuid_unique` (`qr_uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffeshop.meja: ~8 rows (approximately)
INSERT INTO `meja` (`id`, `no_meja`, `qr_uuid`, `status`, `created_at`, `updated_at`) VALUES
	(1, '1', '1324b10d-1cdf-4f60-bc88-4fd33d6d451d', 'terbuka', '2026-05-31 21:46:54', '2026-05-31 21:46:54'),
	(2, '2', '663638ce-a9f3-4bfd-8ca1-ea9895f6aba0', 'terbuka', '2026-05-31 22:18:17', '2026-05-31 22:18:17'),
	(3, '3', 'e162312a-dd82-4758-96f1-4f28ea71f72a', 'terbuka', '2026-05-31 22:18:25', '2026-05-31 22:18:25'),
	(4, '4', '5ec5463f-c65c-402c-920f-8f41b8cca1be', 'terbuka', '2026-05-31 22:18:33', '2026-05-31 22:18:33'),
	(5, '5', 'c6d2bd4f-6175-4b15-b37b-f3fc02dd27ba', 'terbuka', '2026-05-31 22:18:39', '2026-05-31 22:18:39'),
	(6, '6', '83fabeb2-ee4e-4773-8683-468d3f26bb2c', 'terbuka', '2026-05-31 22:18:44', '2026-05-31 22:18:44'),
	(7, '7', 'a25c81d8-4e74-4075-b378-eb9b026fa879', 'terbuka', '2026-05-31 22:18:50', '2026-05-31 22:18:50'),
	(8, '8', 'ab3697d6-d384-42fa-b95f-0e1c8ce744eb', 'terbuka', '2026-05-31 22:18:56', '2026-05-31 22:18:56'),
	(9, '9', '52886ddc-2c4a-43f3-8a29-2b95f2936cc8', 'terbuka', '2026-05-31 22:19:04', '2026-05-31 22:19:04'),
	(10, '10', '5d377069-0cef-41f6-b666-8b34b707abf8', 'terbuka', '2026-05-31 22:19:08', '2026-05-31 22:19:08');

-- Dumping structure for table coffeshop.meja_sessions
CREATE TABLE IF NOT EXISTS `meja_sessions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meja_id` bigint unsigned NOT NULL,
  `session_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','finished','cancelled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `started_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ended_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `meja_sessions_session_uuid_unique` (`session_uuid`),
  KEY `meja_sessions_meja_id_status_index` (`meja_id`,`status`),
  CONSTRAINT `meja_sessions_meja_id_foreign` FOREIGN KEY (`meja_id`) REFERENCES `meja` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffeshop.meja_sessions: ~0 rows (approximately)
INSERT INTO `meja_sessions` (`id`, `meja_id`, `session_uuid`, `customer_name`, `status`, `started_at`, `ended_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 'a2990bdc-0b7b-4112-9e17-21f139466da1', 'Tamu Meja 1', 'active', '2026-05-31 21:49:36', NULL, '2026-05-31 21:49:36', '2026-05-31 21:49:36');

-- Dumping structure for table coffeshop.menus
CREATE TABLE IF NOT EXISTS `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` enum('Makanan','Minuman','Snack') COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffeshop.menus: ~25 rows (approximately)
INSERT INTO `menus` (`id`, `name`, `category`, `price`, `image`, `created_at`, `updated_at`) VALUES
	(2, 'Nasi Goreng Special', 'Makanan', 25000, 'Image/Nasi-goreng.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(3, 'Nasi Goreng Daging Rusa', 'Makanan', 32000, 'Image/Nasi Goreng Daging Rusa.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(4, 'Mie Ayam Jamur', 'Makanan', 20000, 'Image/mie-ayam-jamur.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(5, 'Ayam Geprek', 'Makanan', 28000, 'Image/Ayam-geprek.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(6, 'Sate Ayam', 'Makanan', 22000, 'Image/sate-ayam.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(7, 'Bakso Urat', 'Makanan', 18000, 'Image/Bakso-urat.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(8, 'Rendang Daging', 'Makanan', 35000, 'Image/rendang-daging.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(9, 'Gado-Gado', 'Makanan', 15000, 'Image/Gado-gado.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(10, 'Soto Ayam', 'Makanan', 20000, 'Image/soto-ayam.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(11, 'Nasi Padang', 'Makanan', 30000, 'Image/Nasi-padang.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(12, 'Ayam Bakar', 'Makanan', 25000, 'Image/Ayam-bakar.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(13, 'Es Teh Manis', 'Minuman', 8000, 'Image/Es-Teh-Manis.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(14, 'Cappuccino', 'Minuman', 18000, 'Image/Cappucino.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(15, 'Jus Jambu', 'Minuman', 15000, 'Image/Jus-jambu.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(16, 'Es Jeruk', 'Minuman', 12000, 'Image/Jus-jeruk.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(17, 'Kopi Hitam', 'Minuman', 10000, 'Image/Kopi-hitam.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(18, 'Milkshake Coklat', 'Minuman', 20000, 'Image/Milkshake-coklat.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(19, 'Teh Tarik', 'Minuman', 14000, 'Image/Teh-tarik.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(20, 'Smoothie Buah', 'Minuman', 18000, 'Image/Smoothie-buah.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(21, 'Air Mineral', 'Minuman', 5000, 'Image/Air-mineral.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(22, 'Es Kelapa Muda', 'Minuman', 16000, 'Image/Es-kelapa-muda.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(23, 'Milo Susu Dingin', 'Minuman', 15000, 'Image/Milo-susu-dingin.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(24, 'Ice Land', 'Minuman', 17000, 'Image/iceland.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(25, 'Kentang Goreng', 'Snack', 15000, 'Image/Kentang-Goreng.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04'),
	(26, 'Tela Tela', 'Snack', 12000, 'Image/Tela-ela.jpg', '2026-05-31 21:55:04', '2026-05-31 21:55:04');

-- Dumping structure for table coffeshop.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffeshop.migrations: ~21 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2026_04_29_145934_add_role_to_users_table', 1),
	(5, '2026_05_05_154603_create_menus_table', 1),
	(6, '2026_05_05_154750_create_orders_table', 1),
	(7, '2026_05_06_160942_recreate_order_items_table', 1),
	(8, '2026_05_08_120000_create_customers_table', 1),
	(9, '2026_05_13_025337_create_meja_table', 1),
	(10, '2026_05_13_025822_update_orders_table_add_meja_id', 1),
	(11, '2026_05_13_032627_create_meja_sessions_table', 1),
	(12, '2026_05_13_032926_update_meja_add_uuid', 1),
	(13, '2026_05_13_041731_modify_qr_uuid_nullable_on_meja_table', 1),
	(14, '2026_05_15_000000_create_admin_table', 1),
	(15, '2026_05_27_150109_add_role_to_admins_table', 1),
	(16, '2026_05_28_000000_create_reviews_table', 1),
	(17, '2026_05_28_101334_create_kasirs_table', 1),
	(18, '2026_05_30_052208_make_table_number_nullable_in_orders_table', 1),
	(19, '2026_05_30_052258_add_payment_field_to_orders_table', 1),
	(20, '2026_06_01_041019_add_image_to_menus_table', 2),
	(21, '2026_06_01_000000_add_snack_to_menus_category_enum', 3);

-- Dumping structure for table coffeshop.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` int NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` enum('pending','confirmed','completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cash_received` decimal(12,2) DEFAULT NULL,
  `change_amount` decimal(12,2) DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meja_id` bigint unsigned DEFAULT NULL,
  `session_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_meja_id_foreign` (`meja_id`),
  CONSTRAINT `orders_meja_id_foreign` FOREIGN KEY (`meja_id`) REFERENCES `meja` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffeshop.orders: ~5 rows (approximately)
INSERT INTO `orders` (`id`, `customer_name`, `table_number`, `total`, `note`, `status`, `payment_method`, `cash_received`, `change_amount`, `paid_at`, `created_at`, `updated_at`, `meja_id`, `session_uuid`) VALUES
	(1, 'aku', NULL, 19800, NULL, 'completed', 'cash', 20000.00, 200.00, '2026-05-31 22:02:07', '2026-05-31 22:01:56', '2026-05-31 22:02:07', NULL, NULL),
	(2, 'aku', '1', 27500, NULL, 'completed', 'cash', 30000.00, 2500.00, '2026-05-31 22:02:39', '2026-05-31 22:02:31', '2026-05-31 22:02:39', NULL, NULL),
	(3, 'Tamu Meja 1', '1', 115000, 'Yg enak ya!', 'completed', NULL, NULL, NULL, NULL, '2026-05-31 22:03:22', '2026-05-31 22:04:25', NULL, NULL),
	(5, 'Tamu Meja 1', '1', 25000, NULL, 'completed', NULL, NULL, NULL, NULL, '2026-05-31 22:11:11', '2026-05-31 22:11:53', NULL, NULL),
	(6, 'Tamu Meja 1', '1', 276000, 'asdasd', 'completed', NULL, NULL, NULL, NULL, '2026-05-31 22:21:17', '2026-05-31 22:21:47', NULL, NULL);

-- Dumping structure for table coffeshop.order_items
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `menu_id` bigint unsigned NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  KEY `order_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `order_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffeshop.order_items: ~9 rows (approximately)
INSERT INTO `order_items` (`id`, `order_id`, `menu_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
	(1, 1, 7, 1, 18000, '2026-05-31 22:01:56', '2026-05-31 22:01:56'),
	(2, 2, 12, 1, 25000, '2026-05-31 22:02:31', '2026-05-31 22:02:31'),
	(3, 3, 2, 3, 25000, '2026-05-31 22:03:22', '2026-05-31 22:03:22'),
	(4, 3, 13, 2, 8000, '2026-05-31 22:03:22', '2026-05-31 22:03:22'),
	(5, 3, 26, 2, 12000, '2026-05-31 22:03:22', '2026-05-31 22:03:22'),
	(7, 5, 2, 1, 25000, '2026-05-31 22:11:11', '2026-05-31 22:11:11'),
	(8, 6, 3, 6, 32000, '2026-05-31 22:21:17', '2026-05-31 22:21:17'),
	(9, 6, 14, 4, 18000, '2026-05-31 22:21:17', '2026-05-31 22:21:17'),
	(10, 6, 26, 1, 12000, '2026-05-31 22:21:17', '2026-05-31 22:21:17');

-- Dumping structure for table coffeshop.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffeshop.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table coffeshop.reviews
CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` tinyint unsigned NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reviews_order_id_unique` (`order_id`),
  CONSTRAINT `reviews_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffeshop.reviews: ~2 rows (approximately)
INSERT INTO `reviews` (`id`, `order_id`, `customer_name`, `rating`, `comment`, `created_at`, `updated_at`) VALUES
	(1, 3, 'Tamu Meja 1', 4, 'enak la', '2026-05-31 22:09:16', '2026-05-31 22:09:16'),
	(2, 5, 'Tamu Meja 1', 5, 'vsdggds', '2026-05-31 22:12:50', '2026-05-31 22:12:50');

-- Dumping structure for table coffeshop.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffeshop.sessions: ~1 rows (approximately)
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('w1y885tmLkMZBh99HhvofuNJ9dfijflWTLxa70pa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/148.0.0.0 Safari/537.36', 'YToxMTp7czo2OiJfdG9rZW4iO3M6NDA6Im5JczUwRUgyU2duOVVuNlk1YUlkWGZFN1FaeTVYSUQxMFNRMTNuMnciO3M6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6OToiX3ByZXZpb3VzIjthOjI6e3M6MzoidXJsIjtzOjM2OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbG9naW4ta2FyeWF3YW4iO3M6NToicm91dGUiO3M6MTQ6ImxvZ2luLmthcnlhd2FuIjt9czo3OiJtZWphX2lkIjtpOjE7czo3OiJub19tZWphIjtzOjE6IjEiO3M6MTM6ImN1c3RvbWVyX25hbWUiO3M6MTE6IlRhbXUgTWVqYSAxIjtzOjEyOiJzZXNzaW9uX3V1aWQiO3M6MzY6ImEyOTkwYmRjLTBiN2ItNDExMi05ZTE3LTIxZjEzOTQ2NmRhMSI7czoxMzoibGFzdF9vcmRlcl9pZCI7aTo2O3M6ODoia2FzaXJfaWQiO2k6MTtzOjQ6InJvbGUiO3M6NToia2FzaXIiO3M6NDoibmFtZSI7czo3OiJMaW5vb29vIjt9', 1780292208);

-- Dumping structure for table coffeshop.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','customer') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table coffeshop.users: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
