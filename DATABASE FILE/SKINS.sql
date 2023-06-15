-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2023 pada 14.06
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skins`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `attributes`
--

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `active`) VALUES
(6, 'Size', 1),
(7, 'Skin Type', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `attribute_value`
--

CREATE TABLE `attribute_value` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `attribute_parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `attribute_value`
--

INSERT INTO `attribute_value` (`id`, `value`, `attribute_parent_id`) VALUES
(37, '50ml', 6),
(38, '100ml', 6),
(39, '150ml', 6),
(40, 'Kulit Kering', 7),
(41, 'Kulit Sensitive', 7),
(42, 'Kulit Normal', 7),
(43, 'Kulit Berminyak', 7),
(44, '50gr', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `brands`
--

INSERT INTO `brands` (`id`, `name`, `active`) VALUES
(22, 'SKINTIFIC', 1),
(23, 'Cosrx', 1),
(24, 'Somethinc', 1),
(25, 'Beauty of Joseon', 1),
(26, 'Cetaphil', 1),
(27, 'Anua', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `active`) VALUES
(15, 'Sun Screen', 1),
(16, 'Facial Wash', 1),
(17, 'Toner', 1),
(18, 'Essence', 1),
(19, 'Moisturizer', 1),
(20, 'Serum', 1),
(21, 'Lotion', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `groups`
--

INSERT INTO `groups` (`id`, `group_name`, `permission`) VALUES
(1, 'Administrator', 'a:36:{i:0;s:10:\"createUser\";i:1;s:10:\"updateUser\";i:2;s:8:\"viewUser\";i:3;s:10:\"deleteUser\";i:4;s:11:\"createGroup\";i:5;s:11:\"updateGroup\";i:6;s:9:\"viewGroup\";i:7;s:11:\"deleteGroup\";i:8;s:11:\"createBrand\";i:9;s:11:\"updateBrand\";i:10;s:9:\"viewBrand\";i:11;s:11:\"deleteBrand\";i:12;s:14:\"createCategory\";i:13;s:14:\"updateCategory\";i:14;s:12:\"viewCategory\";i:15;s:14:\"deleteCategory\";i:16;s:11:\"createStore\";i:17;s:11:\"updateStore\";i:18;s:9:\"viewStore\";i:19;s:11:\"deleteStore\";i:20;s:15:\"createAttribute\";i:21;s:15:\"updateAttribute\";i:22;s:13:\"viewAttribute\";i:23;s:15:\"deleteAttribute\";i:24;s:13:\"createProduct\";i:25;s:13:\"updateProduct\";i:26;s:11:\"viewProduct\";i:27;s:13:\"deleteProduct\";i:28;s:11:\"createOrder\";i:29;s:11:\"updateOrder\";i:30;s:9:\"viewOrder\";i:31;s:11:\"deleteOrder\";i:32;s:11:\"viewReports\";i:33;s:13:\"updateCompany\";i:34;s:11:\"viewProfile\";i:35;s:13:\"updateSetting\";}'),
(5, 'Testing', 'a:24:{i:0;s:10:\"updateUser\";i:1;s:8:\"viewUser\";i:2;s:11:\"createGroup\";i:3;s:11:\"updateGroup\";i:4;s:9:\"viewGroup\";i:5;s:11:\"createBrand\";i:6;s:11:\"updateBrand\";i:7;s:9:\"viewBrand\";i:8;s:14:\"createCategory\";i:9;s:14:\"updateCategory\";i:10;s:12:\"viewCategory\";i:11;s:11:\"createStore\";i:12;s:11:\"updateStore\";i:13;s:9:\"viewStore\";i:14;s:15:\"createAttribute\";i:15;s:15:\"updateAttribute\";i:16;s:13:\"viewAttribute\";i:17;s:13:\"createProduct\";i:18;s:13:\"updateProduct\";i:19;s:11:\"viewProduct\";i:20;s:11:\"createOrder\";i:21;s:11:\"updateOrder\";i:22;s:9:\"viewOrder\";i:23;s:13:\"updateCompany\";}'),
(6, 'Employee', 'a:10:{i:0;s:8:\"viewUser\";i:1;s:11:\"createBrand\";i:2;s:11:\"updateBrand\";i:3;s:9:\"viewBrand\";i:4;s:13:\"createProduct\";i:5;s:13:\"updateProduct\";i:6;s:11:\"viewProduct\";i:7;s:11:\"createOrder\";i:8;s:11:\"updateOrder\";i:9;s:9:\"viewOrder\";}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `bill_no` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `date_time` varchar(255) NOT NULL,
  `gross_amount` varchar(255) NOT NULL,
  `service_charge_rate` varchar(255) NOT NULL,
  `service_charge` varchar(255) NOT NULL,
  `vat_charge_rate` varchar(255) NOT NULL,
  `vat_charge` varchar(255) NOT NULL,
  `net_amount` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `bill_no`, `customer_name`, `customer_address`, `customer_phone`, `date_time`, `gross_amount`, `service_charge_rate`, `service_charge`, `vat_charge_rate`, `vat_charge`, `net_amount`, `discount`, `paid_status`, `user_id`) VALUES
(11, 'BILPR-2A99', 'kei', '', '', '1686273159', '503.80', '13', '65.49', '10', '50.38', '619.67', '', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `qty` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `attribute_value_id` text DEFAULT NULL,
  `brand_id` text NOT NULL,
  `category_id` text NOT NULL,
  `store_id` int(11) NOT NULL,
  `availability` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `price`, `qty`, `image`, `description`, `attribute_value_id`, `brand_id`, `category_id`, `store_id`, `availability`) VALUES
(18, 'Cosrx | Low pH Good Morning Gel Cleanser 50ml', '', '52.000', '15', 'assets/images/product_image/648216b761488.jpg', '<p>\r\n\r\n</p><p><strong>COSRX Low pH Good Morning</strong>&nbsp;<strong>Cleanser</strong>&nbsp;adalah produk asal Korea Selatan yang menggunakan <strong>bahan-bahan alami.</strong></p><p>Pembersih wajah dengan formula lembut yang bagus digunakan pada pagi hari. Mampu <strong>membersihkan kulit sensitif</strong>&nbsp;sekalipun dengan lembut berkat kandungannya yang memiliki kadar acid yang mirip dengan kadar pH kulit. Gel cleanser ini mampu <strong>menenangkan, mengeksfoliasi, melembapkan sekaligus membersihkan kulit wajah</strong>. Pembersih wajah ini juga mampu <strong>mengangkat sel-sel kulit mati dan minyak berlebih</strong>&nbsp;yang muncul selama tidur sehingga wajah menjadi bersih dan segar.</p>\r\n\r\n<br><p></p>', '[\"28\"]', '[\"23\"]', '[\"16\"]', 5, 1),
(19, 'SKINTIFIC | 5X Ceramide Serum Sunscreen', '', '128.800', '12', 'assets/images/product_image/6482166a7b6f1.png', '<p>\r\n\r\n</p><p>KINTIFIC 5X Ceramide Serum Sunscreen</p><p>Sunscreen dengan kandungan utama 5X Ceramide yang dapat memperbaiki dan mengembalikan skin barrier.</p><p>&nbsp;</p><p>Highlights :</p><p>Dilengkapi UV Filter jenis terbaru yang telah dipatenkan oleh BASF Germany (Tinosorb S/M) yang dapat melindungi kulit dari sinar UVA &amp; UVB serta Blue Light, dengan SPF 50+ PA++++ tanpa mengiritasi kulit. Memiliki tekstur ringan yang menyerap dengan cepat, tidak berminyak &amp; memberikan hasil akhir yang melembabkan. Tambahan kandungan Hyaluronic Acid yang dapat mengembalikan dan mengunci kelembaban pada kulit .</p><p>&nbsp;</p><p>How to use : </p><p>Ambil produk secukupnya dan oleskan secara merata pada seluruh wajah. Gunakan pada pagi hari sebagai tahap akhir penggunaan skincare. Dapat digunakan kembali setiap 3-4 jam.</p>\r\n\r\n<br><p></p>', '[\"37\",\"40\"]', '[\"22\"]', '[\"15\"]', 5, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `stores`
--

INSERT INTO `stores` (`id`, `name`, `active`) VALUES
(5, 'Dynamix', 1),
(6, 'Taser', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `firstname`, `lastname`, `phone`, `gender`) VALUES
(1, 'admin', '$2y$10$7rLSvRVyTQORapkDOqmkhetjF6H9lJHngr4hJMSM2lHObJbW5EQh6', 'admin@gmail.com', 'Liam', 'Moore', '7777777777', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_group`
--

CREATE TABLE `user_group` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user_group`
--

INSERT INTO `user_group` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(7, 6, 4),
(8, 7, 4),
(9, 8, 4),
(10, 9, 5),
(11, 10, 5),
(12, 11, 5);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `attribute_value`
--
ALTER TABLE `attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `attribute_value`
--
ALTER TABLE `attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
