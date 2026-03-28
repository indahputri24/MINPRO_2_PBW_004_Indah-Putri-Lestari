-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 28, 2026 at 10:11 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `title`, `year`, `image`) VALUES
(1, 'Talkshow INSEVENT 2024', '2024', 'images/sertifikat1.png'),
(2, 'Webinar Public Speaking', '2024', 'images/sertifikat2.png'),
(3, 'Seminar Transformers 15', '2024', 'images/sertifikat4.png'),
(4, 'Peserta Study Club Desain UI/UX', '2024', 'images/sertifikat6.png'),
(5, 'Peserta Study Club Soft Skill', '2024', 'images/sertifikat8.png'),
(6, 'Anggota Konsumsi Kegiatan TAROT', '2024', 'images/sertifikat9.png'),
(7, 'Anggota Organisasi INFORSA Dept.ADWEL', '2025', 'images/sertifikat.png'),
(8, 'Peserta Knowledge Center Personal Branding', '2025', 'images/sertifikat5.png'),
(9, 'Peserta Knowledge Center Pelatihan Aplikasi Autopsy', '2025', 'images/sertifikat7.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id` int NOT NULL,
  `jenjang` varchar(100) DEFAULT NULL,
  `nama_sekolah` varchar(150) DEFAULT NULL,
  `tahun` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id`, `jenjang`, `nama_sekolah`, `tahun`, `icon`) VALUES
(1, 'S1 Sistem Informasi', 'Universitas Mulawarman', '2024 – Sekarang', 'bi-mortarboard-fill'),
(2, 'SMA Negeri 5 Samarinda', '', '2021 – 2024', 'bi-book-fill'),
(3, 'SMP Negeri 4 Samarinda', '', '2018 – 2021', 'bi-book-fill');

-- --------------------------------------------------------

--
-- Table structure for table `pengalaman`
--

CREATE TABLE `pengalaman` (
  `id` int NOT NULL,
  `kegiatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pengalaman`
--

INSERT INTO `pengalaman` (`id`, `kegiatan`) VALUES
(1, 'Anggota Organisasi INFORSA'),
(2, 'Peserta Talkshow INSEVENT 2024'),
(3, 'Peserta Webinar Public Speaking'),
(4, 'Anggota Study Club Desain UI/UX'),
(5, 'Peserta Pelatihan Aplikasi Autopsy');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nim` varchar(20) DEFAULT NULL,
  `deskripsi` text,
  `tujuan` text,
  `bio` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `nama`, `nim`, `deskripsi`, `tujuan`, `bio`) VALUES
(1, 'Indah Putri Lestari', '2409116004', 'Saya seorang mahasiswi S1 Sistem Informasi dI Universitas Mulawarman yang saat ini sedang menempuh semester 4. Saya memiliki minat di bidang teknologi dan bisnis serta senang mempelajari hal-hal baru yang dapat memberikan pengalaman dan wawasan yang lebih luas. Saya aktif mengikuti pelatihan, seminar, dan study club untuk meningkatkan kemampuan, serta mengembangkan pola pikir yang adaptif terhadap perkembangan teknologi.', 'Berkarier di bidang teknologi dan bisnis dengan berkontribusi pada solusi inovatif yang berdampak positif bagi organisasi dan masyarakat.', 'Mahasiswi Sistem Informasi Semester 4 yang aktif belajar dan mengembangkan diri');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int NOT NULL,
  `nama_skill` varchar(100) DEFAULT NULL,
  `persen` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `nama_skill`, `persen`) VALUES
(1, 'Analisis Sistem', 50),
(2, 'Problem Solving', 20),
(3, 'Communication Skills', 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengalaman`
--
ALTER TABLE `pengalaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengalaman`
--
ALTER TABLE `pengalaman`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
