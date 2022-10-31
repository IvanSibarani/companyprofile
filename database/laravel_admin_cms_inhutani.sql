-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 30 Okt 2022 pada 11.04
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_admin_cms_inhutani`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_list`
--

CREATE TABLE `menu_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `menu_list`
--

INSERT INTO `menu_list` (`id`, `menu_name`, `created_at`, `updated_at`) VALUES
(1, 'Halaman Utama', '2022-10-30 10:01:05', '2022-10-30 10:01:05'),
(2, 'Tentang Kami', '2022-10-30 10:01:05', '2022-10-30 10:01:05'),
(3, 'Areal Kerja', '2022-10-30 10:01:05', '2022-10-30 10:01:05'),
(4, 'Kegiatan Usaha', '2022-10-30 10:01:05', '2022-10-30 10:01:05'),
(5, 'Mitra Kerjasama', '2022-10-30 10:01:05', '2022-10-30 10:01:05'),
(6, 'Galeri', '2022-10-30 10:01:05', '2022-10-30 10:01:05');

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
(2, '2022_10_30_082512_buat__tabel__widget__list', 1),
(3, '2022_10_30_082757_buat__tabel__menu__list', 1),
(4, '2022_10_30_082859_buat__tabel__widget__menu', 1);

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `widget_list`
--

CREATE TABLE `widget_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `widget_field` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `widget_list`
--

INSERT INTO `widget_list` (`id`, `widget_name`, `widget_field`, `created_at`, `updated_at`) VALUES
(1, 'Carousel & Label', '[{\"img_url\":null,\"label\":null}]', '2022-10-30 10:01:05', '2022-10-30 10:01:05'),
(2, 'Section I', '[{\"title\":null,\"description\":null,\"card_list\":{\"icons\":null,\"title\":null,\"description\":null}}]', '2022-10-30 10:01:05', '2022-10-30 10:01:05'),
(3, 'Section II', '[{\"title\":null,\"description\":null,\"card_list\":{\"title\":null,\"description\":null}}]', '2022-10-30 10:01:05', '2022-10-30 10:01:05'),
(4, 'Section III', '[{\"title\":null,\"description\":null}]', '2022-10-30 10:01:05', '2022-10-30 10:01:05'),
(5, 'Section IV', '[{\"title\":null,\"imageList\":{\"img_url\":null},\"description\":null}]', '2022-10-30 10:01:05', '2022-10-30 10:01:05'),
(6, 'Headline Tag', '[{\"title\":null}]', '2022-10-30 10:01:05', '2022-10-30 10:01:05'),
(7, 'Paragraph', '[{\"description\":null}]', '2022-10-30 10:01:05', '2022-10-30 10:01:05'),
(8, 'Card', '[{\"img_url\":null,\"title\":null,\"description\":null}]', '2022-10-30 10:01:05', '2022-10-30 10:01:05'),
(9, 'Title List', '[{\"title\":null}]', '2022-10-30 10:01:05', '2022-10-30 10:01:05'),
(10, 'Image List', '[{\"img_url\":null}]', '2022-10-30 10:01:05', '2022-10-30 10:01:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `widget_menu`
--

CREATE TABLE `widget_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_menu` bigint(20) UNSIGNED NOT NULL,
  `id_widget` bigint(20) UNSIGNED NOT NULL,
  `widget_field` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `widget_menu`
--

INSERT INTO `widget_menu` (`id`, `id_menu`, `id_widget`, `widget_field`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '[{\"img_url\":\"http:\\/\\/localhost\\/newcpivan\\/public\\/bin\\/img\\/INHUTANI\\/kantor1.jpeg\",\"label\":\"PT. INHUTANI IV\"},{\"img_url\":\"http:\\/\\/localhost\\/newcpivan\\/public\\/bin\\/img\\/INHUTANI\\/pinus1.jpg\",\"label\":\"PT. INHUTANI IV\"},{\"img_url\":\"http:\\/\\/localhost\\/newcpivan\\/public\\/bin\\/img\\/INHUTANI\\/KUU1.jpg\",\"label\":\"PT. INHUTANI IV\"}]', '2022-10-30 10:01:05', '2022-10-30 10:01:05'),
(2, 1, 2, '[{\"title\":\"Our Featured Courses\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt eius magni provident, doloribus omnis minus temporibus perferendis nesciunt quam repellendus nulla nemo ipsum odit corrupti consequuntur possimus, vero mollitia velit ad consectetur. Alias, laborum excepturi nihil autem nemo numquam, ipsa architecto non, magni consequuntur quam.\",\"card_list\":[{\"icons\":\"fa fa-trophy\",\"title\":\"Web Development\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt eius magni provident\"},{\"icons\":\"fa fa-trophy\",\"title\":\"UI Design\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt eius magni provident\"},{\"icons\":\"fa fa-trophy\",\"title\":\"Interaction\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt eius magni provident\"},{\"icons\":\"fa fa-trophy\",\"title\":\"User Experience\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt eius magni provident\"}]}]', '2022-10-30 10:01:05', '2022-10-30 10:01:05'),
(3, 1, 3, '[{\"title\":\"Courses We Offer\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores quae porro consequatur aliquam, incidunt eius magni provident, doloribus omnis minus temporibus perferendis nesciunt quam repellendus nulla nemo ipsum odit corrupti consequuntur possimus, vero mollitia velit ad consectetur. Alias, laborum excepturi nihil autem nemo numquam, ipsa architecto non, magni consequuntur quam.\",\"card_list\":[{\"title\":\"Heading Course\",\"description\":\"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vest sit amet, consec ibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta.\"},{\"title\":\"Heading Course\",\"description\":\"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vest sit amet, consec ibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta.\"},{\"title\":\"Heading Course\",\"description\":\"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Praesent vest sit amet, consec ibulum molestie lacus. Aenean nonummy hendrerit mauris. Phasellus porta.\"}]}]', '2022-10-30 10:01:05', '2022-10-30 10:01:05');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `menu_list`
--
ALTER TABLE `menu_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `widget_list`
--
ALTER TABLE `widget_list`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `widget_menu`
--
ALTER TABLE `widget_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `widget_menu_id_menu_foreign` (`id_menu`),
  ADD KEY `widget_menu_id_widget_foreign` (`id_widget`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `menu_list`
--
ALTER TABLE `menu_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `widget_list`
--
ALTER TABLE `widget_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `widget_menu`
--
ALTER TABLE `widget_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `widget_menu`
--
ALTER TABLE `widget_menu`
  ADD CONSTRAINT `widget_menu_id_menu_foreign` FOREIGN KEY (`id_menu`) REFERENCES `menu_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `widget_menu_id_widget_foreign` FOREIGN KEY (`id_widget`) REFERENCES `widget_list` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
