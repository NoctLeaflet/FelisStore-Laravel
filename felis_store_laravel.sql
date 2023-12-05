-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jul 2023 pada 21.25
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `felis_store_laravel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnails` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `thumbnails`, `created_at`, `updated_at`) VALUES
(1, 'Figur', 'figur', 'file/category/YN9MPQ8wUYRgsF35TpeYKAWBvmImwuWF459KVzSe.jpg', '2023-06-24 14:31:20', '2023-06-24 14:31:20'),
(2, 'Pin', 'pin', 'file/category/ynV1foPltBuFyKkzixb9SJU8Jmpneih6bmqZaGZZ.jpg', '2023-06-24 14:31:31', '2023-06-24 14:41:46'),
(3, 'Acrylic', 'acrylic', 'file/category/9LLg7ovjWtfaisPtU0Pezreo4XY51QIyJAqTBWrK.jpg', '2023-06-24 14:31:48', '2023-06-24 14:31:48'),
(4, 'KeyChain', 'keychain', 'file/category/wOPUPhzJduiX3U3tipvSMxKXtHpJwKowtnpzu7jj.jpg', '2023-06-24 14:31:59', '2023-06-24 14:31:59');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_29_172217_create_permission_tables', 1),
(6, '2022_04_03_041706_create_categories_table', 1),
(7, '2022_04_03_041724_create_products_table', 1),
(8, '2022_04_03_042320_create_orders_table', 1),
(9, '2022_04_03_042729_create_order_details_table', 1),
(10, '2022_05_26_142213_create_order_tracks_table', 1),
(11, '2022_06_21_103219_create_carts_table', 1),
(12, '2022_06_24_164020_add_field_to_orders_table', 1),
(13, '2022_07_01_075234_add_field2_to_orderd_table', 1),
(14, '2022_07_02_001129_create_web_configs_table', 1),
(15, '2022_07_05_123819_create_shipping_addresses_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_pay` bigint(20) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 = Belum Bayar',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `paid_at` timestamp NULL DEFAULT NULL,
  `recipient_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `snap_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_detail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `courier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtotal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_cost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receipt_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_tracks`
--

CREATE TABLE `order_tracks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categories_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnails` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `categories_id`, `name`, `slug`, `thumbnails`, `price`, `weight`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'PVC Figure 1/7 Kiana Kaslana - Herrscher of Flamescion Ver', 'pvc-figure-17-kiana-kaslana---herrscher-of-flamescion-ver', 'file/product/thumbnails/sseOJ6PB8TSAo1ei3HuABB1E4XBQOmITkOLJI4dq.jpg', '3450000', '1000', '<span style=\"color: rgb(74, 78, 90); font-family: Hind, sans-serif;\">Material : PVC,ABS ; Size : 33cm</span>', '2023-06-24 14:33:51', '2023-06-24 14:33:51'),
(2, 1, 'PVC Figure 1/8 Theresa Apocalypse - Shallow Sunset Ver', 'pvc-figure-18-theresa-apocalypse---shallow-sunset-ver', 'file/product/thumbnails/qzVz6VkjHz8ru5OQixwu4aUzdLufKKRAbT81V2Yy.jpg', '2200000', '500', '<div>Specifications Complete Figure</div><div>Scale: 1/8</div><div>Size: Approx. H25cm</div><div>Material: PVC</div><div>[Set Contents]</div><div>-Houkai 3rd Theresa Apocalypse Sunset and Sand Bar Ver. 1/8 Complete Figure</div><div><br></div><div>Details Sculptor: Meow</div><div>Supervising Director: Seka</div><div>Painting: _Gallun</div>', '2023-06-24 14:35:31', '2023-06-24 14:35:31'),
(3, 2, 'Bronya Silver Wings Stigma Series Can Badge Set (5.8cm) - Honkai Impact 3rd', 'bronya-silver-wings-stigma-series-can-badge-set-58cm---honkai-impact-3rd', 'file/product/thumbnails/xzv20IKn3EinPmMAvkcT0YS0aUhFPjFzP47l30j4.jpg', '130000', '45', 'Original from china', '2023-06-24 14:36:38', '2023-07-06 18:17:46'),
(4, 3, 'Kiana Kaslana Valkyrie Mid-Autumn 2022 Acrylic Stand - Honkai Impact 3rd', 'kiana-kaslana-valkyrie-mid-autumn-2022-acrylic-stand---honkai-impact-3rd', 'file/product/thumbnails/6rA9R4vQE3nQZkApypi5V1WfrRriDmKrB4kqwWEU.jpg', '220000', '50', 'Original from japan', '2023-06-24 14:43:14', '2023-06-24 14:43:14'),
(5, 2, 'Herrscher of Human:EGO Stigma Series Badge Set - Honkai Impact 3rd', 'herrscher-of-humanego-stigma-series-badge-set---honkai-impact-3rd', 'file/product/thumbnails/GqJQxTVRspn6Wfnps8oNm7ol2aTOBFl2PpmwtltT.jpg', '130000', '45', 'Original from miHoYo China', '2023-07-06 17:41:04', '2023-07-06 18:17:57'),
(6, 2, 'Bronya Zaychik Ver. Can Badge (58mm) - Honkai Impact 3rd', 'bronya-zaychik-ver-can-badge-58mm---honkai-impact-3rd', 'file/product/thumbnails/1OFcKPD8jEYNLWjZjFFnFz0rZRN1zvncmlu8Ylt3.jpg', '70000', '15', 'Original from china', '2023-07-06 17:54:42', '2023-07-06 17:54:42'),
(7, 2, 'Kiana kaslana Ver. Can Badge (58mm) - Honkai Impact 3rd', 'kiana-kaslana-ver-can-badge-58mm---honkai-impact-3rd', 'file/product/thumbnails/4bJhkVofnVP4uUZ11CaRIHGyPfaMMuW3aiuwyRbq.jpg', '70000', '15', 'Original Form China', '2023-07-06 17:57:18', '2023-07-06 17:57:18'),
(8, 2, 'Griseo Chibi Can Badge (5,8cm) - Honkai Impact 3rd', 'griseo-chibi-can-badge-58cm---honkai-impact-3rd', 'file/product/thumbnails/cv1gUbcxh6U229J7VXZZ1tXltnIsfCWgOoGEiliH.jpg', '65000', '15', 'Original Form China', '2023-07-06 17:58:07', '2023-07-06 17:58:07'),
(9, 2, '[Set of 15] Flame Chasers Trading Can Badge - Honkai Impact 3rd', 'set-of-15-flame-chasers-trading-can-badge---honkai-impact-3rd', 'file/product/thumbnails/qGIdVeGcWtJyPkS5gfDKyfFg5TS635yx0Epn1jVk.jpg', '670000', '225', 'Original Form China', '2023-07-06 18:01:33', '2023-07-06 18:01:33'),
(10, 4, 'Bronya Zaychik Holy Night Symphonic Poem Chibi Acrylic Keychain Stand - Honkai Impact 3rd', 'bronya-zaychik-holy-night-symphonic-poem-chibi-acrylic-keychain-stand---honkai-impact-3rd', 'file/product/thumbnails/5e02T6NYm35CfYOhhWTMaryez3gyifdd0Atxq6Su.jpg', '120000', '15', 'Original', '2023-07-06 18:12:47', '2023-07-06 18:12:47'),
(11, 4, 'Theresa Apocalypse Holy Night Symphonic Poem Chibi Acrylic Keychain Stand - Honkai Impact 3rd      Rp. 1', 'theresa-apocalypse-holy-night-symphonic-poem-chibi-acrylic-keychain-stand---honkai-impact-3rd------rp-1', 'file/product/thumbnails/ouYWh5l0qR3QUE7x80AWXbne6i67NGlKPmKjJOvG.jpg', '120000', '15', 'Original', '2023-07-06 18:13:32', '2023-07-06 18:13:32'),
(12, 4, 'Kiana Kaslana Holy Night Symphonic Poem Chibi Acrylic Keychain Stand - Honkai Impact 3rd', 'kiana-kaslana-holy-night-symphonic-poem-chibi-acrylic-keychain-stand---honkai-impact-3rd', 'file/product/thumbnails/jwFF0HTHswPgFjsuHS5iFWcEza56VeAIzhvV4eGu.jpg', '120000', '15', 'Original', '2023-07-06 18:15:03', '2023-07-06 18:15:03'),
(13, 4, 'Raiden Mei Holy Night Symphonic Poem Chibi Acrylic Keychain Stand - Honkai Impact 3rd', 'raiden-mei-holy-night-symphonic-poem-chibi-acrylic-keychain-stand---honkai-impact-3rd', 'file/product/thumbnails/yHXqv0FUTPP2l4dH2Apyf6HlSMmUfetb2e6qRQ4h.jpg', '120000', '15', 'Original', '2023-07-06 18:15:51', '2023-07-06 18:15:51'),
(14, 3, 'Bronya Silver Wings Stigma Series Acrylic Stand (14cm) - Honkai Impact 3rd', 'bronya-silver-wings-stigma-series-acrylic-stand-14cm---honkai-impact-3rd', 'file/product/thumbnails/ih1tFG0p9gnyPb1FgSsbZOTWcNRv7ahhOVd1EW40.jpg', '220000', '50', 'Original', '2023-07-06 18:41:43', '2023-07-06 18:41:43'),
(15, 3, 'Mobius Flame-Chasers Series Acrylic Stand (16cm) - Honkai Impact 3rd', 'mobius-flame-chasers-series-acrylic-stand-16cm---honkai-impact-3rd', 'file/product/thumbnails/rRQ2s9Lu7notPRU45tYHD0RbcvkOFucIc8vpuhUG.jpg', '220000', '50', 'Bini gua nih', '2023-07-06 18:46:56', '2023-07-06 18:46:56'),
(16, 3, 'Vill-V Flame-Chasers Series Acrylic Stand (16cm) - Honkai Impact 3rd', 'vill-v-flame-chasers-series-acrylic-stand-16cm---honkai-impact-3rd', 'file/product/thumbnails/UTgAT61YVmVy28j6KKqY9lmAR9gYyI38BEi6x3Su.jpg', '220000', '50', 'Original From Japan', '2023-07-06 18:55:12', '2023-07-06 18:55:12'),
(17, 3, 'Eden Flame-Chasers Series Acrylic Stand (17cm) - Honkai Impact 3rd', 'eden-flame-chasers-series-acrylic-stand-17cm---honkai-impact-3rd', 'file/product/thumbnails/0dPo8Cz8Lk4HhBipytBSoW1LxemCyetZw3tB4N2L.jpg', '220000', '50', 'Original from japan', '2023-07-06 18:57:18', '2023-07-06 18:57:18'),
(18, 3, 'Griseo Flame-Chasers Series Acrylic Stand (16cm) - Honkai Impact 3rd', 'griseo-flame-chasers-series-acrylic-stand-16cm---honkai-impact-3rd', 'file/product/thumbnails/4gE6RNXboTInRSMOheLhD1tr8LkdSWfrzxK0hipU.jpg', '220000', '50', 'Original From China', '2023-07-06 19:00:10', '2023-07-06 19:00:10'),
(19, 3, 'Pardofelis Flame-Chasers Series Acrylic Stand (13cm) - Honkai Impact 3rd', 'pardofelis-flame-chasers-series-acrylic-stand-13cm---honkai-impact-3rd', 'file/product/thumbnails/1efLz2FgvntFsYjIbGlSNDgSlOM1ydDLF7HZCDUY.jpg', '220000', '50', 'Original From Japan', '2023-07-06 19:00:52', '2023-07-06 19:00:52'),
(20, 3, 'Aponia Flame-Chasers Series Acrylic Stand (17cm) - Honkai Impact 3rd', 'aponia-flame-chasers-series-acrylic-stand-17cm---honkai-impact-3rd', 'file/product/thumbnails/ICichubvxkqtTA4a4sAsb48vYDjV6STP5S95KJPi.jpg', '220000', '50', 'Original From Japan', '2023-07-06 19:01:39', '2023-07-06 19:01:39'),
(21, 3, 'Elysia Flame-Chasers Series Acrylic Stand (13cm) - Honkai Impact 3rd', 'elysia-flame-chasers-series-acrylic-stand-13cm---honkai-impact-3rd', 'file/product/thumbnails/n0LShpE4IvgvqXUeOaORzMPrJ2uN62dP5Q67yTVd.jpg', '220000', '50', 'Original From Japan', '2023-07-06 19:02:24', '2023-07-06 19:02:24'),
(22, 3, 'Herrscher of Human:EGO Stigma Series Acrylic Stand (14cm) - Honkai Impact 3rd', 'herrscher-of-humanego-stigma-series-acrylic-stand-14cm---honkai-impact-3rd', 'file/product/thumbnails/A359Kekygx5C4rFR7XJJ60cfqVRxmY8fk3IIJSdJ.jpg', '220000', '50', 'Original From Japan', '2023-07-06 19:03:12', '2023-07-06 19:03:12'),
(23, 3, 'Bronya Zaychik Valkyrie Mid-Autumn 2022 Acrylic Stand - Honkai Impact 3rd', 'bronya-zaychik-valkyrie-mid-autumn-2022-acrylic-stand---honkai-impact-3rd', 'file/product/thumbnails/DKp64n8Y8hWS4fu9kSusgu5barB99KYykrcmqW6y.jpg', '220000', '50', 'Original From China', '2023-07-06 19:03:55', '2023-07-06 19:03:55'),
(24, 3, 'Raiden Mei Valkyrie Mid-Autumn 2022 Acrylic Stand - Honkai Impact 3rd', 'raiden-mei-valkyrie-mid-autumn-2022-acrylic-stand---honkai-impact-3rd', 'file/product/thumbnails/ktWKXLuOf856GaTMI1zFqn6wKC5wrBABHjbTHpgF.jpg', '220000', '50', 'Original From Japan', '2023-07-06 19:05:05', '2023-07-06 19:05:05'),
(25, 1, 'PVC Figure 1/8 Raiden Mei - Herrscher of Thunder DX Ver', 'pvc-figure-18-raiden-mei---herrscher-of-thunder-dx-ver', 'file/product/thumbnails/TJqIqsd1AsD5O3z9GuV3cGymWdbFbAaN2aKuZ7Kl.jpg', '3950000', '1500', '<div>Specifications Complete Figure</div><div>Scale: 1/8</div><div>Size: Approx. H27cm</div><div>Material: PVC</div><div><br></div><div>Details</div><div>Sculptor: Seigi, R.C</div><div>Supervising Director: alive</div><div>Paintwork: 180m/h, Mizuoni</div>', '2023-07-06 19:07:04', '2023-07-06 19:07:04'),
(26, 1, 'PVC Figure 1/8 Yae Sakura - Chinese Dress Ver', 'pvc-figure-18-yae-sakura---chinese-dress-ver', 'file/product/thumbnails/B6vTMWMY3Eh0YLdwurJKBh5orTfMDNRHgrUt6USk.jpg', '2950000', '1500', '<div><font color=\"#4a4e5a\" face=\"Hind, sans-serif\">Specifications Complete Figure</font></div><div><font color=\"#4a4e5a\" face=\"Hind, sans-serif\">Scale: 1/8</font></div><div><font color=\"#4a4e5a\" face=\"Hind, sans-serif\">Size: Approx. H30cm</font></div><div><font color=\"#4a4e5a\" face=\"Hind, sans-serif\">Material: PVC, ABS</font></div><div><font color=\"#4a4e5a\" face=\"Hind, sans-serif\"><br></font></div><div><font color=\"#4a4e5a\" face=\"Hind, sans-serif\">[Set Contents]</font></div><div><font color=\"#4a4e5a\" face=\"Hind, sans-serif\">-Main figure</font></div><div><font color=\"#4a4e5a\" face=\"Hind, sans-serif\">-Optional background board x3 types</font></div>', '2023-07-06 19:09:48', '2023-07-06 19:09:48'),
(27, 1, 'PVC Figure 1/7 Theresa Apocalypse - Starlit Astrologos', 'pvc-figure-17-theresa-apocalypse---starlit-astrologos', 'file/product/thumbnails/KIDD7ovi1e3p0ZyGyJXTyuI4n1cdvuuGaHNUSBEX.jpg', '2750000', '1500', '<div>Specifications Pre-painted Complete Figure</div><div>Scale: 1/7</div><div>Size: Approx. H30cm (including base)</div><div>Material: PVC</div><div>Details Sculptor: Hobbymax</div><div>Cooperation: kiking, hiro</div>', '2023-07-06 19:10:44', '2023-07-06 19:10:44'),
(28, 1, 'PVC Figure 1/7 Elysia - Miss Pink Maid Ver. Honkai Impact 3rd', 'pvc-figure-17-elysia---miss-pink-maid-ver-honkai-impact-3rd', 'file/product/thumbnails/EOXP9WJom48uc7J8fNtKslbB8lU7I6SEiSkPWmmd.jpg', '2350000', '1500', '<div>size</div><div>H=245mm W=165mm</div>', '2023-07-06 19:11:50', '2023-07-06 19:11:50'),
(29, 1, 'PVC Figure 1/8 Fu Hua Azure Empyrea : Cerulean Court Ver. - Honkai Impact 3', 'pvc-figure-18-fu-hua-azure-empyrea--cerulean-court-ver---honkai-impact-3', 'file/product/thumbnails/mqObfxYqbfza7JdOHVOpy6VTuenNIVb1JASXPBiZ.jpg', '2780000', '1500', '<div>Specifications Scale: 1/8</div><div>Size: Approx. H24cm</div><div>Material: PVC</div>', '2023-07-06 19:12:54', '2023-07-06 19:12:54'),
(30, 1, 'PVC Figure 1/8 Kiana Kaslana - Herrscher of the Void Ver', 'pvc-figure-18-kiana-kaslana---herrscher-of-the-void-ver', 'file/product/thumbnails/Jafmk1IWIso2On1U481pt25kjXDqVBrN0pdTZp6k.jpg', '3950000', '1500', '<div>Specifications Pre-painted Complete Figure</div><div>Scale: 1/8</div><div>Size: Approx. H290mm (Including Weapon/ Base) / Approx. L390mm (Including Weapon)</div><div>Material: PVC, ABS</div><div><br></div><div>[Set Contents]</div><div>-Main figure</div><div>-Base</div><div>Details Sculptor: sai</div><div>Paintwork: Nanami Tetsumori</div>', '2023-07-06 19:14:20', '2023-07-06 19:14:20'),
(31, 1, 'PVC Figure 1/7 Himeko Murata - Vermillion Knight Ver', 'pvc-figure-17-himeko-murata---vermillion-knight-ver', 'file/product/thumbnails/NQ4AzyUuEiCfoSVdqyg3XToQStLb8TnccvTDiDej.jpg', '3750000', '1500', '<div>Specifications Complete Figure</div><div>Size: Approx. H28cm / Great Sword: Approx. L52cm</div><div>Scale: 1/7</div><div>Material: PVC &amp; ABS</div><div><br></div><div>[Set Contents]</div><div>-Main figure</div><div><br></div><div>Details Sculptor: FANTESINBORM, btxwb</div><div>Paint: Luu, 180m/h, _Gallun</div><div>Sculpture Corporation: nexus</div><div>Copyright miHoYo All Rignts Reserved</div>', '2023-07-06 19:15:38', '2023-07-06 19:15:38'),
(32, 1, 'PVC Figure 1/8 Kiana Kaslana - Herrscher of the Void Parasol Kaiserin Ver', 'pvc-figure-18-kiana-kaslana---herrscher-of-the-void-parasol-kaiserin-ver', 'file/product/thumbnails/xQJM0zKRt1GHntrqJ8rNTJl8OKx6mRFzYDEt6ZQM.jpg', '2500000', '1500', '<div>Specifications Scale: 1/8</div><div>Size: Approx. H24cm</div><div>Material: PVC</div><div><br></div><div>[Set Contents]</div><div>-Main figure</div>', '2023-07-06 19:16:56', '2023-07-06 19:16:56'),
(33, 1, 'PVC Figure 1/7 Yae Sakura - Dream Raiment Ver', 'pvc-figure-17-yae-sakura---dream-raiment-ver', 'file/product/thumbnails/hHTd3Jfw3a0lIUavxgwV14MvnMwSJCQMtoOBMvb2.jpg', '3100000', '1500', '<div>Specifications Pre-painted Complete Figure</div><div>Scale: 1/7</div><div>Size: Approx. H38cm, Approx. W30cm / Character: Approx. H28cm</div><div>Material: PVC &amp; ABS</div><div>Details Sculptor: Seka</div><div>Paintwork: TORAMI, 180m/h, Yamahai</div>', '2023-07-06 19:17:52', '2023-07-06 19:17:52'),
(34, 1, 'PVC Figure 1/7 Seele - Swaying Cats Tail', 'pvc-figure-17-seele---swaying-cats-tail', 'file/product/thumbnails/AXhHa9khqRhw2sAXjG58jcIQdhxwU84YKM7SP6ku.jpg', '2000000', '1500', '<div>Material:</div><div>PVC、ABS</div><div><br></div><div>size:</div><div>H=160mm (including base)</div>', '2023-07-06 19:18:49', '2023-07-06 19:18:49'),
(35, 1, 'Kiana Kaslana Hot Spring Holiday Trading Mini Figure (5,5cm) - Honkai Impact 3rd', 'kiana-kaslana-hot-spring-holiday-trading-mini-figure-55cm---honkai-impact-3rd', 'file/product/thumbnails/x5JhOS8AshgIemXNw6mlmA4plIBvwz0wizUnwfQy.jpg', '300000', '500', 'Original form mihoyo Chinna', '2023-07-06 19:20:27', '2023-07-06 19:20:27'),
(36, 1, 'Raiden Mei Hot Spring Holiday Trading Mini Figure (6,5cm) - Honkai Impact 3rd', 'raiden-mei-hot-spring-holiday-trading-mini-figure-65cm---honkai-impact-3rd', 'file/product/thumbnails/MqkjBr0QlwOG7UflMmRUq0JpfnnCDpVe6db94be0.jpg', '300000', '500', 'Original from miHoYo China', '2023-07-06 19:21:10', '2023-07-06 19:21:10'),
(37, 1, 'Bronya Zaychik Hot Spring Holiday Trading Mini Figure (7cm) - Honkai Impact 3rd', 'bronya-zaychik-hot-spring-holiday-trading-mini-figure-7cm---honkai-impact-3rd', 'file/product/thumbnails/zflVeaN3p4TNCJxkHVwhb5D4d652czoVjoDJ4Dg6.jpg', '300000', '500', 'Original from miHoYo China', '2023-07-06 19:21:47', '2023-07-06 19:21:47'),
(38, 1, 'Theresa Apocalypse Hot Spring Holiday Trading Mini Figure (7cm) - Honkai Impact 3rd', 'theresa-apocalypse-hot-spring-holiday-trading-mini-figure-7cm---honkai-impact-3rd', 'file/product/thumbnails/SrrbcfSkaoM9sON90Sfgguh5VEoyxQp4o2673KtI.jpg', '300000', '500', 'Original&nbsp;', '2023-07-06 19:22:19', '2023-07-06 19:22:19'),
(39, 1, 'Seele Vollerei Hot Spring Holiday Trading Mini Figure (7cm) - Honkai Impact 3rd', 'seele-vollerei-hot-spring-holiday-trading-mini-figure-7cm---honkai-impact-3rd', 'file/product/thumbnails/pD4abPlw7ZswOKPu3PMPkXiIlqaphfosjwnhKN6n.jpg', '310000', '500', 'Original from miHoYo China', '2023-07-06 19:22:58', '2023-07-06 19:22:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-06-24 14:26:46', '2023-06-24 14:26:46'),
(2, 'user', 'web', '2023-06-24 14:26:46', '2023-06-24 14:26:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `shipping_addresses`
--

CREATE TABLE `shipping_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shipping_addresses`
--

INSERT INTO `shipping_addresses` (`id`, `city_id`, `province_id`, `created_at`, `updated_at`) VALUES
(1, '398', '10', '2023-06-24 14:26:46', '2023-07-06 14:41:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$ioSwioxE7Ypl.ks2VbkR1evOULYm5mckqAqmy9/ShGm.ZnGIhPBQi', NULL, '2023-06-24 14:26:46', '2023-06-24 14:26:46'),
(2, 'Eden', 'eden123@gmail.com', NULL, '$2y$10$O4UY.4WYUuTKP4fMbTEWie8NfZK.8lTVqbYhklChyQ3EsClhN8AZC', NULL, '2023-06-24 15:02:54', '2023-06-24 15:02:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `web_configs`
--

CREATE TABLE `web_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `web_configs`
--

INSERT INTO `web_configs` (`id`, `name`, `label`, `value`, `type`, `created_at`, `updated_at`) VALUES
(1, 'app_name', 'Application Name', 'Felis Store', '0', '2023-06-24 14:26:46', '2023-07-06 14:39:04'),
(2, 'app_logo', 'Logo', 'config/web/FwxUrYZXG2Nvl6ZRvv5VJ49e73jQPBfpHmR5WuGc.png', '2', '2023-06-24 14:26:46', '2023-07-06 14:40:33');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `order_tracks`
--
ALTER TABLE `order_tracks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_tracks_order_id_foreign` (`order_id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_categories_id_foreign` (`categories_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `web_configs`
--
ALTER TABLE `web_configs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `web_configs_name_unique` (`name`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `order_tracks`
--
ALTER TABLE `order_tracks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `shipping_addresses`
--
ALTER TABLE `shipping_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `web_configs`
--
ALTER TABLE `web_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order_tracks`
--
ALTER TABLE `order_tracks`
  ADD CONSTRAINT `order_tracks_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
