-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 07 Jun 2026 pada 05.58
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aksaragalang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `kd_kat` varchar(6) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `category_name` varchar(100) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `kd_kat`, `category_name`) VALUES
(11, 'K001', 'Handphone'),
(12, 'K002', 'Laptop'),
(13, 'K003', 'Televisi'),
(14, 'K004', 'Kulkas'),
(15, 'K005', 'Kamera');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `category_id` int DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(150) DEFAULT NULL,
  `stock` int DEFAULT '0',
  `min_stock` int DEFAULT '5',
  `price` int DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `product_code`, `product_name`, `stock`, `min_stock`, `price`, `gambar`, `created_at`, `updated_at`) VALUES
(10, 11, 'P001', 'Samsung', 250, 24, 500000, 'da328b5c29f07766e7ad30a942f3a8c3.jpg', '2026-05-23 06:26:53', NULL),
(11, 11, 'P002', 'Iphone', 80, 40, 700000, '79cdaa795986db3a195eac5d635e6efe.jpg', '2026-05-23 06:27:43', NULL),
(12, 11, 'P003', 'Xiaomi', 30, 25, 600000, 'dd80aac0e70c4450b132447a3237b5e8.jpg', '2026-05-23 06:28:29', NULL),
(13, 11, 'P004', 'Oppo', 70, 35, 400000, '2d357030e39558afd7897935774503cc.jpg', '2026-05-23 06:29:21', NULL),
(15, 12, 'P005', 'Asus Vivobook', 100, 50, 1000000, '6a0936dacc7069b5bcf34f8b2bc921b7.jpg', '2026-05-23 06:41:07', NULL),
(16, 12, 'P006', 'Apple Macbook', 240, 45, 2000000, '7ad601f019c88da5732b0ce4cefd0c1e.jpg', '2026-05-23 06:41:53', NULL),
(17, 12, 'P007', 'Lenovo', 80, 40, 1000000, '8ef97f232b7ee92704b30567cfc8c7f0.jpg', '2026-05-23 06:42:37', NULL),
(18, 12, 'P008', 'Acer Aspire', 70, 30, 900000, 'b73a5eea509c4b84ab4ad57d78331a12.jpg', '2026-05-23 06:43:27', NULL),
(19, 13, 'P009', 'LG', 23, 50, 1000000, 'a8da12f5331347c52971bb0eded6dc35.jpg', '2026-05-23 06:47:35', NULL),
(20, 13, 'P010', 'Sonny', 30, 50, 800000, 'c7866cb8d85f8e908d8dcddc9351b2c2.jpg', '2026-05-23 06:49:38', NULL),
(21, 13, 'P011', 'Sharp', 53, 50, 700000, '1b76bbafb958a4ac4e42fca2d960a5b9.jpg', '2026-05-23 06:50:16', NULL),
(22, 13, 'P012', 'Panasonic', 100, 50, 1000000, '20635b3a9dbed3a4917f9c24e880ae91.jpg', '2026-05-23 06:50:59', NULL),
(23, 14, 'P013', 'Electrolux', 100, 50, 900000, '651402510cdbd787e927fb19d6d98234.jpg', '2026-05-23 06:52:53', NULL),
(24, 14, 'P014', 'Polytron', 100, 40, 700000, 'cd70032d687831753c246bf3e8b40391.jpg', '2026-05-23 06:53:54', NULL),
(25, 14, 'P015', 'Aqua', 90, 50, 800000, '2bd03343689a1762ccd51911677ea1c1.jpg', '2026-05-23 06:54:39', NULL),
(26, 14, 'P016', 'Toshiba', 90, 40, 1000000, 'fa09d0d273be2444542f36d7f6742089.jpg', '2026-05-23 06:55:28', NULL),
(27, 15, 'P017', 'Canon', 60, 40, 900000, 'b4ba7008efdd10e214e6490bbcdb08ae.webp', '2026-05-23 06:57:34', NULL),
(28, 15, 'P018', 'Nikon', 70, 30, 7000000, '35b4ef8bfb23decbf10f882e2e7037e8.jpg', '2026-05-23 06:59:04', NULL),
(29, 15, 'P019', 'FujiFilm', 60, 30, 800000, '530686ce8145c6c28cd8599ed86cd966.jpg', '2026-05-23 06:59:50', NULL),
(30, 15, 'P020', 'Olympus', 80, 40, 600000, '24914cdca1c7b829da7b69e4f3cbe295.jpg', '2026-05-23 07:00:34', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_logs`
--

CREATE TABLE `stock_logs` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `change_type` enum('ADD','EDIT','REDUCE') DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `stock_before` int DEFAULT NULL,
  `stock_after` int DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `stock_logs`
--

INSERT INTO `stock_logs` (`id`, `product_id`, `change_type`, `qty`, `stock_before`, `stock_after`, `note`, `created_at`, `created_by`) VALUES
(1, 9, 'ADD', 10, 100, 110, '', '2026-05-17 13:14:44', 2),
(2, 5, 'REDUCE', 15, 100, 85, '', '2026-05-17 13:15:09', 2),
(3, 10, 'ADD', 200, 50, 250, '', '2026-05-23 13:54:27', 2),
(4, 16, 'ADD', 150, 90, 240, '', '2026-05-23 13:55:09', 2),
(5, 21, 'REDUCE', 37, 90, 53, '', '2026-05-23 13:56:06', 2),
(6, 27, 'REDUCE', 20, 80, 60, '', '2026-05-23 13:56:36', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','staff') DEFAULT 'staff',
  `is_active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `is_active`, `created_at`) VALUES
(2, 'Anggara', 'anggaragala@gmail.com', '$2y$10$Mp5Mt.aTx7zyIk9Q3xW54uZvnaNjH0jph.N4M2Bq0t2KksCvGAmC6', 'admin', 1, '2026-05-14 11:08:26');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kd_kat` (`kd_kat`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stock_logs`
--
ALTER TABLE `stock_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `stock_logs`
--
ALTER TABLE `stock_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
