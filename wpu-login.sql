-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Nov 2019 pada 09.39
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu-login`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(17, 'Winona', 'winona@gmail.com', 'default.jpg', '$2y$10$RHfLvn/mBkHeZ0ETkWGDYeDwsUmw4vJVXBjLqoMqhrcVDGNk6qAcG', 1, 1, 1569461826),
(18, 'Winona', 'naura@gmail.com', 'default.jpg', '$2y$10$5CNMv.c94tJNMOhdu5wKqugNlAw2uIsXS.F0KYpRsNZmtARY3Gjb6', 2, 1, 1575016399);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(7, 1, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(4, 'direktur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(8, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1),
(10, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(1, 'uchiyatulhidayah@gmail.com', '06a909fa48efdc0f496cc9d311a1e2aea0abb2fa5a63fe1f185e268db7712814', 1569286611),
(2, 'uchiyatulhidayah@gmail.com', '0d1a6ae411715a452e7cfe3993f1cdce0a70f025505c8635d2a461bfa1fe65ad', 1569286804),
(3, 'uchiyatulhidayah@gmail.com', '26303f57921799c3448150523d103661c91a5008d8e29716c33f99db681262be', 1569287276),
(4, 'uchiyatulhidayah@gmail.com', '14c80c096164718e92b246466305433a661d81e281caddb9dfd6f24f7466cee3', 1569287533),
(5, 'uchiyatulhidayah@gmail.com', '54e65ea8a5d46ebe381e0b1d6a9ddb245a13b5f7787396c63a95e91fd2f04748', 1569287665),
(6, 'uchiyatulhidayah@gmail.com', 'b2fa4629b759f4d691409eafe58cfbb003b5c737088024b31bb2d56099ae23db', 1569288223),
(7, 'uchiyatulhidayah@gmail.com', 'a250e3be3fface162d89db13b705472f568e456adae33d9d097179938610e310', 1569288258),
(8, 'uchiyatulhidayah@gmail.com', '2add44ac6837dfdbd60e67e29a16e90845b476f771a1baf1b40a93134b3826ba', 1569288342),
(9, 'uchiyatulhidayah@gmail.com', '75c8705ecf9adf901ac71a42b64ca796f172a3e71edb246860629414cd17d0d0', 1569290721),
(10, 'uchiyatulhidayah@gmail.com', '10a6256b65839b9df68e1f32eb0985b2e12b5d0c550f285f0840fa70144b3004', 1569290736),
(11, 'uchiyatulhidayah@gmail.com', '6c5e8d4d3a307a343aebfc634e518af9e1e6b0bfba9673da369c3742c9ddd816', 1569291769),
(12, 'uchiyatulhidayah@gmail.com', '8365beef3351f10153b6ac7f255eb9982e191392657a14569e6136c799acae06', 1569294128),
(13, 'uchiyatulhidayah@gmail.com', 'dc00e98cfab2dd7ce4ffea3199a1b0cc58c1ca1f5b19030fa84ab88246961e70', 1569294135),
(14, 'uchiyatulhidayah@gmail.com', '4b7917b0468175b8748b256e02d7d370593a175f86b42d6163aad0b5778b92fd', 1569461423),
(15, 'uchi12345@gmail.com', '7fecbb2a6015d2bdd1a603133bf6ad81bcfe5da469b5b0b5288eb65514c69a47', 1569461505),
(16, 'Uchi2147@gmail.com', 'b80a402290c52f7980da7f4946409139234e77c71f9bc0f0b49a838ed090d5f3', 1569461826),
(17, 'naura@gmail.com', 'S9TsC/HHljNwEPUGgSfIVdJESMDgb7wAxQVaDKAypp0=', 1575016399);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
