-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jan 2020 pada 04.40
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `commisoft_modif`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_disciplines_log`
--

CREATE TABLE `tbl_disciplines_log` (
  `id_discipline_log` int(11) NOT NULL,
  `id_disciplines` int(11) NOT NULL,
  `id_projects` varchar(50) NOT NULL,
  `discipline_id` varchar(30) NOT NULL,
  `discipline_name` varchar(200) NOT NULL,
  `id_users` int(11) NOT NULL,
  `note` enum('add','update','delete','restore') NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_disciplines_log`
--
ALTER TABLE `tbl_disciplines_log`
  ADD PRIMARY KEY (`id_discipline_log`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_disciplines_log`
--
ALTER TABLE `tbl_disciplines_log`
  MODIFY `id_discipline_log` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
