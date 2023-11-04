-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Nov 2023 pada 17.23
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api-wikrama`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `file`, `created_at`) VALUES
(1, 'User-Friendly Behaviour For Business mind people', 'Lorem ipsum dolor sit amet consecte adipiscing elit sed do eiusincidunt.', 'http://127.0.0.1:9000/assets/layanan.png', '2023-10-31 15:06:42'),
(2, 'React Native', 'jadi ini adalah deskripsi untuk tabel ini yaa ini cuma ngasal, jangan di masukan ke hati. Masukin ke database aja', 'http://127.0.0.1:9000/assets/portfolio.jpg', '2023-11-03 08:04:13'),
(3, 'Vue JS Mantap', 'jadi ini adalah deskripsi untuk tabel ini yaa ini cuma ngasal, jangan di masukan ke hati. Masukin ke database aja', 'http://127.0.0.1:9000/assets/portfolio.jpg', '2023-11-03 08:04:13'),
(4, 'Laravel Mantap', 'jadi ini adalah deskripsi untuk tabel ini yaa ini cuma ngasal, jangan di masukan ke hati. Masukin ke database aja', 'http://127.0.0.1:9000/assets/portfolio.jpg', '2023-11-03 08:04:13'),
(5, 'Javascript Lover', 'jadi ini adalah deskripsi untuk tabel ini yaa ini cuma ngasal, jangan di masukan ke hati. Masukin ke database aja', 'http://127.0.0.1:9000/assets/portfolio.jpg', '2023-11-03 08:04:13'),
(6, 'PHP Lover', 'http://127.0.0.1:9000/assets/portfolio.jpg', 'http://127.0.0.1:9000/assets/portfolio.jpg', '2023-11-03 08:04:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Web'),
(2, 'Desain'),
(3, 'Mobile');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `message`, `created_at`) VALUES
(1, 'zae', 'zae@gmail.com', '08393838', 'hallo', '2023-10-31 09:50:58'),
(2, 'Irsyad', 'cad@gmail.com', '081286', 'mantap broo, message bisa', '2023-11-02 07:22:22'),
(4, 'Arvi', 'vi@gmail.com', '0897', 'Mantap men', '2023-11-02 07:28:30'),
(5, 'Dims', 'dims@gmail.com', '874732432', 'mantap bro', '2023-11-04 08:11:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `homes`
--

CREATE TABLE `homes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `homes`
--

INSERT INTO `homes` (`id`, `title`, `description`, `file`) VALUES
(1, 'Experts are here solve your business problem.', 'You’ll be much better than with most other themes options are done right from making super.', 'http://127.0.0.1:9000/assets/home.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `name`, `category_id`, `file`) VALUES
(1, 'User-Friendly Behaviour For', 'Radthika', 1, 'http://127.0.0.1:9000/assets/portfolio.jpg'),
(2, 'How To Use React Native', 'Rey', 3, 'http://127.0.0.1:9000/assets/portfolio.jpg'),
(3, 'Landing Page Figma User\r\n', 'Rvi', 2, 'http://127.0.0.1:9000/assets/portfolio.jpg'),
(4, 'Using Javascript in 2023 - Still Worth?', 'Sads', 1, 'http://127.0.0.1:9000/assets/portfolio.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `file`) VALUES
(1, 'User-Friendly Behaviour For Business mind people', 'User-Friendly Behaviour For Business mind people', 'http://127.0.0.1:9000/assets/layanan.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `homes`
--
ALTER TABLE `homes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `homes`
--
ALTER TABLE `homes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `portfolios_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
