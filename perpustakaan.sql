-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2026 at 09:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `author` varchar(150) DEFAULT NULL,
  `publisher` varchar(150) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('tersedia','pending','dipinjam') DEFAULT 'tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `publisher`, `pages`, `category_id`, `location`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Bahasa dan Sastra Indonesia SMA/MA Kelas XII Program IPA dan Ips', NULL, 'Bailmu', NULL, 6, 'Rak Kelas 12', '2026-02-18 04:10:56', '2026-03-01 01:58:31', 'pending'),
(2, 'Pendidikan Pancasila dan Kewarganearaan SMP/MTs Kelas VIII', 'Lili Nurlaili & Dewi Aniaty', 'Bailmu', NULL, 2, 'Rak Kelas 8', '2026-02-18 04:10:56', '2026-03-01 21:51:27', 'tersedia'),
(3, 'Pendidikan Pancasila dan Kewarganegaraan untuk SMP MTs Kelas IX', 'M. Taupan, dkk.', 'Yrama Widya', NULL, 3, 'Rak Kelas 9', '2026-02-18 04:10:56', '2026-03-01 21:51:40', 'pending'),
(4, 'Pembelajaran IPS Terpadu 2 untuk Kelas VIII SMP/MTs', 'Sandiman, Endang Mulyani, Dyah Respati Surya', 'Platinum', NULL, 2, 'Rak Kelas 8', '2026-02-18 04:10:56', '2026-02-28 03:18:03', 'tersedia'),
(5, 'Matematika SMA/MA Kelas XI', 'Sunardi, Slamet Waluyo, Sutrisna', 'Bailmu', NULL, 5, 'Rak Kelas 11', '2026-02-18 04:10:56', '2026-03-01 21:22:02', 'pending'),
(6, 'Matematika untuk SMP/MTs Kelas VIII', 'Suwah Sembiring, Cucun Cunayah, Ghany Akhmad', 'Yrama Widya', NULL, 2, 'Rak Kelas 8', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(7, 'English Alive 2 Senior High School Grade XI', 'Tri Indaryati', 'Yudhistira', NULL, 5, 'Rak Kelas 11', '2026-02-18 04:10:56', '2026-03-01 21:21:41', 'pending'),
(8, 'Effective English 3 for Grade IX of Secondary School', 'Soegeng HS', 'Global', NULL, 3, 'Rak Kelas 9', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(9, 'Ilmu Pengetahuan Sosial untuk SMP.MTs Kelas IX', 'Sanusi Faitah, Jono Trimanto, Juli Waskito, Mohammad Taukit Setyawan', NULL, NULL, 3, 'Rak Kelas 9', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(10, 'Seni Budaya Kelas X SMA/MA/SMK/MAK Semester 1', NULL, NULL, NULL, 4, 'Rak Kelas 10', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(11, 'Mengenal Peralatan di Laboratorium', 'Dewi Kurniawati', NULL, NULL, 18, 'Rak Buku Panduan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(12, 'Prakarya dan Kewirausahaan Kelas X SMA/MA/SMK/MAK Semester 1', NULL, NULL, NULL, 4, 'Rak Kelas 10', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(13, 'Pendalaman Buku Teks Ekonomi 3 SMP Kelas IX', 'Endang Mulyadi', 'Yudhistira', NULL, 3, 'Rak Kelas 9', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(14, 'Pendidikan Kewarganegaraan 1 Untuk Kelas VII SMP/MTs', 'Wahyu Nugroho', NULL, NULL, 1, 'Rak Kelas 7', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(15, 'Terobosan Baru...!!! Panduan Lengkap Praktikum Kimia SMA Kelas X, XI, dan XII', 'Eka Anastria Endah Susilowati, S.Si.', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(16, 'Cermin Remaja 2 : Hidup Dalam Anugerahnya Kelas 8 SMP', NULL, 'BPK', NULL, 2, 'Rak Kelas 8', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(17, 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Kimia 3', 'Tim Penulis Buku Olimpiade Kimia', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(18, 'Kimia Organik Langkah Sukses menuju Olimpiade Kimia', NULL, NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(19, 'Matematika Jilid 3 untuk SMA Kelas XII Program Ilmu Alam', 'Sartono Wirodikromo', NULL, NULL, 6, 'Rak Kelas 12', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(20, 'Perspektif Matematika 3 untuk Kelas XII SMA dan MA Program Ilmu Pengetahuan Alam', 'Rosihan Ari Y., Indriyastuti', 'Platinum', NULL, 6, 'Rak Kelas 12', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(21, 'Sejarah Pembelajaran Sejarah Interaktif 3 untuk Kelas XII SMA dan MA Program IPS', 'Herimanto', 'Platinum', NULL, 6, 'Rak Kelas 12', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(22, 'Pendidikan Pancasila dan Kewarganegaraan Kelas VII SMP/MTs', NULL, NULL, NULL, 1, 'Rak Kelas 7', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(23, 'Ilmu Pengetahuan Alam Buku Siswa untuk SMA Kelas X', NULL, NULL, NULL, 4, 'Rak Kelas 10', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(24, 'Panduan Praktikum Kimia SMA/MA Kelas X', 'A. Haris Watoni', 'Yrama Widya', NULL, 4, 'Rak Kelas 10', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(25, 'Mengkaji Ilmu Geografi 3 untuk Kelas XII SMA dan MA', 'Sugiyanto, Danang Endarto', 'Platinum', NULL, 6, 'Rak Kelas 12', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(26, 'Mengkaji Ilmu Geografi 2 untuk Kelas XI SMA dan MA', 'Sugiyanto, Danang Endarto', 'Platinum', NULL, 5, 'Rak Kelas 11', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(27, 'Membangun Wawasan Kewarganegaraan 2 untuk Kelas XI SMA dan MA', 'Bambang Tri Purwanto, Sunardi H.S.', 'Platinum', NULL, 5, 'Rak Kelas 11', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(28, 'Membangun Wawasan Kewarganegaraan 3 untuk Kelas XII SMA dan MA', 'Bambang Tri Purwanto, Sunardi H.S.', 'Platinum', NULL, 6, 'Rak Kelas 12', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(29, 'Ilmu Pengetahuan Alam untuk SMP/MTs. Kelas VII', 'Sunardi, Nunung Nurhayati, Budiman Anwar', 'Yrama Widya', NULL, 1, 'Rak Kelas 7', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(30, 'Ilmu Pengetahuan Alam 3 untuk Kelas IX SMP dan MTs', 'Daroji, Haryati', 'Global', NULL, 3, 'Rak Kelas 9', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(31, 'Bahasa Indonesia Kelas VII SMP/MTs', NULL, NULL, NULL, 1, 'Rak Kelas 7', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(32, 'IPA Terpadu 2B SMP Kelas VIII', 'V.K. Sally dkk.', 'Yudhistira', NULL, 2, 'Rak Kelas 8', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(33, 'Pendalaman Buku Teks Geografi 3 SMP Kelas IX', 'Fifin Septianawati', 'Yudhistira', NULL, 3, 'Rak Kelas 9', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(34, 'PR Sejarah Indonesia untuk SMA.MA.SMK.MAK Kelas XI Semester 1', 'Ringo Rahata, Melkisedek Bagas Fenetiruma, Muhamad Muchlis', 'Intan Pasiwara', NULL, 5, 'Rak Kelas 11', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(35, 'Senibudaya Kelas VIII SMP/MTs', NULL, NULL, NULL, 2, 'Rak Kelas 8', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(36, 'Bahasa Indonesia 0-323', NULL, NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(37, 'Cerdas Berbahasa Indonesia Jilid 1 untuk SMA/MA Kelas X', 'Engkos Kosasih', NULL, NULL, 4, 'Rak Kelas 10', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(38, 'Indonesian Delicacies', 'Yasa Boga', 'Gramedia Pustaka Utama', NULL, 12, 'Rak Kuliner', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(39, 'The Gift of Giving', 'Wayne Watts', NULL, NULL, 19, 'Rak Umum', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(40, 'Baa Baa Black Sheep', 'Rudyard Kipling', NULL, NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(41, 'Pelajaran Pertama Calon Ayah', 'Arswendo Atmowiloto', NULL, NULL, 19, 'Rak Umum', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(42, 'Pedang Roh', 'Andrew J. Shreeve', NULL, NULL, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(43, 'Panduan Praktis Rottweiler', 'Redaksi Trubus', NULL, NULL, 20, 'Rak Hobi', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(44, 'Pandangan Kristen Tentang Kematian', 'Gladys Hunt', NULL, NULL, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(45, 'Hidup Berkemenangan', 'Ronald Dunn', 'Penerbit Gandum Mas', NULL, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(46, 'Bangkitlah', 'Max Lucado', NULL, NULL, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(47, 'Apa yang Terjadi Setelah Kita Mati?', 'Martin D. Dainton', NULL, NULL, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(48, 'Treasure Island', 'Robert Louis Stevenson', 'Gramedia Pustaka Utama', NULL, 11, 'Rak English Classic', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(49, 'Sherlock Holmes Short Stories #2', 'Sir Arthur Conan Doyle', 'Gramedia Pustaka Utama', NULL, 11, 'Rak English Classic', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(50, 'Peter Pan', 'J.M. Barrie', 'Gramedia Pustaka Utama', NULL, 11, 'Rak English Classic', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(51, 'A Little Princess', 'Frances Hodgson Burnett', 'Gramedia Pustaka Utama', NULL, 11, 'Rak English Classic', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(52, 'Alice in Wonderland', 'Lewis Carroll', 'Baronet Books', NULL, 11, 'Rak English Classic', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(53, 'Les Miserables', 'Victor Hugo', NULL, NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(54, 'The Secret Garden', 'Frances Hodgson Burnett', 'HarperTrophy', NULL, 11, 'Rak English Classic', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(55, 'Catatan Harian Anne Frank', 'Anne Frank', 'Jalasutra', 502, 13, 'Rak Memoar', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(56, 'The Giver', 'Lois Lowry', NULL, NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(57, 'My First Britannica: The Earth and Earth Sciences 1', 'Sally Symes', NULL, NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(58, 'Ensiklopedia Sains', NULL, 'Bhuana Ilmu Populer', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(59, 'Spot 50 Rocks & Minerals', 'Richard Kelly', 'Miles Kelly', 56, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(60, 'Help! I\'m Trapped In My Gym Teacher\'s Body', NULL, NULL, NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(61, 'Mr Midnight #1: Madman\'s Mansion', 'James Lee', NULL, NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(62, 'Junie B. Jones is Captain Field Day', 'Barbara Park', NULL, NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(63, 'You\'re a Brave Man, Julius Zimmerman', NULL, NULL, NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(64, 'Spindles of The Dusty Range 1', 'Barry Chant', 'Tabor Publications', NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(65, 'The Mystery of Tally-Ho Cottage 12', 'Enid Blyton', 'Hodder', NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(66, 'Paddington Help Out', 'Michael Bond', NULL, NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(67, 'The Baby-Sitters Club | Snowbound', 'Ann M. Martin', NULL, NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(68, 'Komik Kitab Suci 4', NULL, 'Yayasan Ini', NULL, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(69, 'The Mystery of the Spiteful Letters', 'Enid Blyton', NULL, NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(70, 'The Classic Enid Blyton Collection: The Find-Outers - The Mystery of the Burnt Cottage', 'Enid Blyton', NULL, NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(71, 'Tip & Trik Jago Main Rubik', 'Wicaksono Adi', NULL, NULL, 20, 'Rak Hobi', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(72, 'Giants Around the Corner', 'Enid Blyton', NULL, NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(73, 'Sneezing Powder', 'Enid Blyton', NULL, NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(74, 'Lima Sekawan Rahasia di Pulau Kirrin 6', NULL, NULL, NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(75, 'The Walkaway Shoes', 'Enid Blyton', NULL, NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(76, 'Enid Blyton Collection: Holiday Adventures', 'Enid Blyton', NULL, NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(77, '3 Books in 1: The Famous Five Collection 1', 'Enid Blyton', 'Hodder', NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(78, '3 Books in 1: Malory Towers Collection 4', 'Enid Blyton', 'Hodder', NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(79, '3 Books in 1: The Secret Seven Collection 2', 'Enid Blyton', 'Hodder', NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(80, 'Enid Blyton Collection: Holiday Adventures Copy 1', 'Enid Blyton', NULL, NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(81, 'Enid Blyton Collection: Holiday Adventures Copy 2', 'Enid Blyton', NULL, NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(82, 'Enid Blyton Collection: Holiday Adventures Copy 3', 'Enid Blyton', NULL, NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(83, 'Enid Blyton Collection: Holiday Adventures Copy 4', 'Enid Blyton', NULL, NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(84, 'Enid Blyton Collection: Holiday Adventures Copy 5', 'Enid Blyton', NULL, NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(85, 'Enid Blyton Collection: Holiday Adventures Copy 6', 'Enid Blyton', NULL, NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(86, 'Enid Blyton Collection: Holiday Adventures Copy 7', 'Enid Blyton', NULL, NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(87, 'Enid Blyton Collection: Holiday Adventures Copy 8', 'Enid Blyton', NULL, NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(88, 'Enid Blyton Collection: Holiday Adventures Copy 9', 'Enid Blyton', NULL, NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(89, 'Enid Blyton Collection: Holiday Adventures Copy 10', 'Enid Blyton', NULL, NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(90, 'My First Britannica: Physical Sciences and Technology 2', 'Sally Symes', NULL, NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(91, 'My First Britannica: The Arts 3', 'Sally Symes', NULL, NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(92, 'My First Britannica: People in History 4', 'Sally Symes', NULL, NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(93, 'My First Britannica: Folklore and Religions 5', 'Sally Symes', NULL, NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(94, 'My First Britannica: Europe 6', 'Sally Symes', NULL, NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(95, 'My First Britannica: Asia, Australia, and New Zealand 7', 'Sally Symes', NULL, NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(96, 'My First Britannica: Africa 8', 'Sally Symes', NULL, NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(97, 'My First Britannica: The Americas 9', 'Sally Symes', NULL, NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(98, 'My First Britannica: Plants 10', 'Sally Symes', NULL, NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(99, 'My First Britannica: Birds, Insects, Reptiles, and Aquatic Life 11', 'Sally Symes', NULL, NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(100, 'My First Britannica: Mammals 12', 'Sally Symes', NULL, NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(101, 'My First Britannica: Reference Guide and Index 13', 'Sally Symes', NULL, NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(102, 'The New Junior World Encyclopedia 1', NULL, 'Bay Books', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(103, 'The New Junior World Encyclopedia 2', NULL, 'Bay Books', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(104, 'The New Junior World Encyclopedia 3', NULL, 'Bay Books', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(105, 'The New Junior World Encyclopedia 4', NULL, 'Bay Books', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(106, 'The New Junior World Encyclopedia 5', NULL, 'Bay Books', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(107, 'The New Junior World Encyclopedia 6', NULL, 'Bay Books', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(108, 'The New Junior World Encyclopedia 7', NULL, 'Bay Books', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(109, 'The New Junior World Encyclopedia 8', NULL, 'Bay Books', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(110, 'The New Junior World Encyclopedia 9', NULL, 'Bay Books', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(111, 'Pustaka Alam LIFE: Hutan', NULL, 'Tira Pustaka', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(112, 'Pustaka Alam LIFE: Bumi', NULL, 'Tira Pustaka', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(113, 'Pustaka Alam LIFE: Asia Tropik', NULL, 'Tira Pustaka', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(114, 'Pustaka Alam LIFE: Ekologi', NULL, 'Tira Pustaka', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(115, 'Pustaka Alam LIFE: Mamalia', NULL, 'Tira Pustaka', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(116, 'Pustaka Alam LIFE: Gunung', NULL, 'Tira Pustaka', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(117, 'Pustaka Alam LIFE: Burung', NULL, 'Tira Pustaka', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(118, 'Pustaka Alam LIFE: Kutub', NULL, 'Tira Pustaka', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(119, 'Pustaka Alam LIFE: Laut', NULL, 'Tira Pustaka', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(120, 'Pustaka Alam LIFE: Gurun', NULL, 'Tira Pustaka', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(121, 'Pustaka Alam LIFE: Tetumbuhan', NULL, 'Tira Pustaka', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(122, 'Pustaka Alam LIFE: Alam Semesta', NULL, 'Tira Pustaka', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(123, 'Life Processes 1: Adaptations', 'Steve Parker', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(124, 'Life Processes 2: Cells and Systems', 'Holly Wallace', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(125, 'Life Processes 3: Classification', 'Holly Wallace', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(126, 'Life Processes 4: Food Chains and Webs', 'Holly Wallace', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(127, 'Life Processes 5: Life Cycles', 'Holly Wallace', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(128, 'Life Processes 6: Survival and Change', 'Steve Parker', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(129, 'InfoSearch: Desert Food Chains 1', 'Richard & Louise Spilsbury', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(130, 'InfoSearch: Grassland Food Chains 2', 'Richard & Louise Spilsbury', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(131, 'InfoSearch: Mountain Food Chains 3', 'Richard & Louise Spilsbury', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(132, 'InfoSearch: Ocean Food Chains 4', 'Richard & Louise Spilsbury', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(133, 'InfoSearch: Rainforest Food Chains 5', 'Richard & Louise Spilsbury', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(134, 'InfoSearch: River Food Chains 6', 'Richard & Louise Spilsbury', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(135, 'InfoSearch: A Bright Idea 1', 'Tristan Boyer Binns', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(136, 'InfoSearch: Clean Planet 2', 'Tristan Boyer Binns', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(137, 'InfoSearch: Down the Drain 3', 'Anita Ganeri & Chris Oxlade', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(138, 'InfoSearch: Something Old, Something New 4', 'Anita Ganeri', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(139, 'InfoSearch: The Great Outdoors 5', 'Richard Spilsbury', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(140, 'InfoSearch: Animal Groups | Life in a Colony - Ants 1', 'Richard & Louise Spilsbury', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(141, 'InfoSearch: Animal Groups | Life in a Troop - Chimpanzees 2', 'Richard & Louise Spilsbury', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(142, 'InfoSearch: Animal Groups | Life in a Flock - Crows 3', 'Richard & Louise Spilsbury', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(143, 'InfoSearch: Animal Groups | Life in a Pride - Lions 4', 'Richard & Louise Spilsbury', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(144, 'InfoSearch: Animal Groups | Life in a Pod - Whales 5', 'Richard & Louise Spilsbury', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(145, 'InfoSearch: Animal Groups | Life in a Pack - Wolves 6', 'Richard & Louise Spilsbury', 'Heinemann', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(146, 'World Book: A Look At... Inventions and Discoveries', NULL, NULL, NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(147, 'World Book: A Look At... Wonders of the World Copy 1', NULL, NULL, NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(148, 'World Book: A Look At... Wonders of the World Copy 2', NULL, NULL, NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(149, 'Ensiklopedia Geografi Dengan Atlas Dunia Lengkap Edisi Revisi', NULL, 'Bhuana Ilmu Populer', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(150, 'Ensiklopedia Mini Alam Semesta: Sebuah Perjalanan Mengungkap Semesta Raya', NULL, 'Elex Media Komputindo', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(151, 'Ensiklopedia Teknologi Komputer', NULL, NULL, NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(152, 'Animal Disguises', NULL, 'Kingfisher', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(153, 'Dinosaur Park', NULL, 'National Geography', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(154, 'Why? United Kingdom', NULL, 'Elex Media Komputindo', NULL, 10, 'Rak Encyclopedia', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(155, 'Detik-Detik Ujian Nasional Bahasa Indonesia untuk SMP/MTs (17 Buku)', 'Uti Darmawati, Y. Budi Artati', 'PT Penerbit Intan Pariwara', NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(156, 'Detik-Detik UNBK Bahasa Inggris untuk SMA/MA (2 Buku)', 'Bachitar Bima M., Cicik Kurniawati, Susiningsih', 'Intan Pariwara', NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(157, 'Detik-Detik Ujian Nasional Bahasa Indonesia untuk SMA/MA (3 Buku)', 'Ika Setiyaningsih, Meita Sandra Santhi', 'PT Penerbit Intan Pariwara', NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(158, 'Detik-Detik Ujian Nasional Bahasa Inggris untuk SMP/MTs (16 Buku)', 'Prasetya Adhi Wardhana, Susiningsih', 'PT Penerbit Intan Pariwara', NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(159, 'Detik-Detik Ujian Nasional Ilmu Pengetahuan Alam untuk SMP/MTs (7 Buku)', 'Rumiyati, Risdiyani Chasanah, Pendra Heryanto', 'PT Penerbit Intan Pariwara', NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(160, 'Detik-Detik USBN Ekonomi SMA/MA (2 Buku)', 'Kartika Sari, Yunita Novasari', 'PT Penerbit Intan Pariwara', NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(161, 'Kunci Jawaban dan Pembahasan Detik UN SMP/MTs (2 Buku)', NULL, 'PT Penerbit Intan Pariwara', NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(162, 'Erlangga X-Press USBN 2018 SMP/MTs Ilmu Pengetahuan Sosial', 'Tim Progresif', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(163, 'Erlangga X-Press UN 2018 untuk SMA/MA Geografi Program IPS', 'Tim Progresif', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(164, 'Erlangga X-Press US SMP/MTs PPKn', 'Tim Progresif', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(165, 'Erlangga X-Press US SMA/MA Geografi Kelompok Peminatan', 'Tim Progresif', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(166, 'Erlangga X-Press US SMA/MA PPKn Kelompok Wajib', 'Tim Progresif', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(167, 'Erlangga X-Press US SMA/MA Bahasa Indonesia Kelompok Wajib', 'Tim Progresif', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(168, 'Erlangga X-Press US SMA/MA Sejarah Indonesia Kelompok Wajib', 'Tim Progresif', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(169, 'Erlangga X-Press US SMA/MA Ekonomi Kelompok Peminatan', 'Tim Progresif', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(170, 'Erlangga X-Press US SMA/MA Sosiologi Kelompok Peminatan', 'Tim Progresif', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(171, 'Erlangga X-Press US SMA/MA Fisika Kelompok Peminatan', 'Tim Progresif', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(172, 'Top No.1 Pendalaman Materi Kimia SMA Kelas X, XI, XII', NULL, NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(173, 'Buku Pintar Praktikum Kimia SMP/MTs Kelas 7, 8, 9', NULL, NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(174, 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Termodinamika', 'Tim Penulis Buku Olimpiade Fisika', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(175, 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Kimia 2', 'Tim Penulis Buku Olimpiade Kimia', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(176, 'Super Jenius Lulusan UN Bahasa Indonesia SMP/MTs', 'Tim Grasindo', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(177, 'Try Out UN Ujian Nasional SMP/MTs 2011', 'Guru Indonesia Cerdas', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(178, '9 In 1 Plus Top Peringkat Satu UN SMP/MTs 2015', 'Tim Tentor Nusantara', 'Asoka Aksara', NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(179, 'Detik-Detik Ujian Nasional Bahasa Indonesia untuk SMP/MTs', 'Uti Darmawati, Y. Budi Ariati', 'PT Penerbit Intan Pariwara', NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(180, 'Detik-Detik Ujian Nasional Matematika untuk SMP/MTs', 'Nnganingsih Suparno, Noviana Endah Santoso', 'PT Penerbit Intan Pariwara', NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(181, 'Erlangga X-Press US SMP/MTs Sejarah Indonesia', 'A. Indradi', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(182, 'Erlangga X-Press US SMP/MTs Bahasa Inggris', 'Nur Zaida', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(183, 'Erlangga X-Press US SMP/MTs IPS | Ilmu Pengetahuan Sosial', 'Tim Progresif', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(184, 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Mekanik dan Fluida 1', 'Tim Penulis Buku Olimpiade Fisika', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(185, 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Mekanik dan Fluida 2', 'Tim Penulis Buku Olimpiade Fisika', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(186, 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Suhu dan Termodinamika', 'Tim Penulis Buku Olimpiade Fisika', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(187, 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Ilmu Kimia Lanjutan', 'Tim Penulis Buku Olimpiade Kimia', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(188, 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Gelombang dan Optik', 'Tim Penulis Buku Olimpiade Fisika', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(189, 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Kimia 1', 'Tim Penulis Buku Olimpiade Kimia', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(190, 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Biologi', NULL, NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(191, 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Getaran dan Gelombang', 'Tim Penulis Buku Olimpiade Fisika', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(192, 'Bahan Ajar Persiapan Menuju Olimpiade Sains Nasional / Internasional SMA Listrik dan Magnet', 'Tim Penulis Buku Olimpiade Fisika', NULL, NULL, 7, 'Rak Pendidikan', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(193, 'Cara Memperdalam dan Memperkaya Kehidupan Doa Anda', 'O. Hallesby', NULL, NULL, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(194, '31 Hari Pujian | Menikmati Hadirat Allah dengan Cara Baru', 'Ruth Myers & Warren Myers', NULL, NULL, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(195, 'Segala Sesuatu Mungkin Melalui Doa', 'Charles L.', NULL, NULL, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(196, 'Yakin Di Dalam Kristus', 'Warren W. Wiersbe', NULL, NULL, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(197, 'Mengasuh Anak Mengasihi Tuhan', 'Susan S. Wiriadiata', NULL, NULL, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(198, 'Nama-Nama Pribadi Dalam Alkitab', 'Drs. I. I. de Heer, P.S. Naiposops', 'BPK-GM', NULL, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(199, 'Tafsir Roma Bagi Pekerja', 'Donny Adi Wiguna', NULL, NULL, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(200, 'Frodo & Harry', 'Baehr & Snyder', 'Crossway', NULL, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(201, 'Our Guilty Silence', 'John R.W. Stott', NULL, NULL, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(202, 'Treasure in Heaven', 'Buntai', NULL, NULL, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(203, 'Prayer', 'O. Hallesby', NULL, NULL, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(204, 'Temptations Men Face', 'Eisenman', 'IVP', NULL, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(205, 'Pop Goes The Gospel', 'John Blanchard', NULL, NULL, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(206, 'The End Of The World', 'Bruce Mile', NULL, NULL, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(207, 'George Mueller: He Dared to Trust God for the Needs of Countless Orphans', 'Faith Coxe Bailey', 'Moody Press', 159, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(208, 'D.L. Moody: The Greatest Evangelist of the Nineteenth Century', 'Faith Coxe Bailey', 'Moody Press', 160, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(209, 'Treasures Of The Snow', 'Patricia St. John', 'Moody Press', 232, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(210, 'Star of Light', 'Patricia St. John', 'Moody Press', 176, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(211, 'Little Pilgrim\'s Progress: From John Bunyan\'s Classic', 'Helen L. Taylor', 'Moody Press', 336, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(212, 'Christian with Courage', 'Ruth Johnson Jay', 'Accelerated Christian Education', 146, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(213, 'Silas Marner', 'George Eliot', 'Accelerated Christian Education', 262, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(214, 'God\'s Tribesman', 'Marti Hefley & James C. Hefley', 'Accelerated Christian Education', 144, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(215, 'Alexi\'s Secret Mission', 'Anita Deyneka', 'Accelerated Christian Education', 126, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(216, 'The Little Green Frogs', 'Beth Coombe Harris', 'Accelerated Christian Education', 125, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(217, 'Summer Fun With Ace and Christi', 'Grace Whitehart', 'Accelerated Christian Education', 151, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(218, 'Twice Fred', 'Patricia St. John', 'Accelerated Christian Education', 256, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(219, 'Christians Courageous (7 Buku)', 'Anne E. Schraff', 'Accelerated Christian Education', 70, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(220, 'Children\'s Missionary Library (2 Buku)', 'Vernon Howard & Alice Bostrom', 'Accelerated Christian Education', 172, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(221, 'North to Amaroqvik', 'Cheryl M. Ufkin', 'Accelerated Christian Education', 90, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(222, 'In His Steps', 'Charles Monroe Sheldon', 'Accelerated Christian Education', 253, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(223, 'Ann of Ava', 'Ethel Daniels Hubbard', 'Accelerated Christian Education', 185, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(224, 'When Science Fails', 'John Hudson Tiner', 'Accelerated Christian Education', 136, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(225, 'The Hiding Place: The Triumphant True Story of Corrie Ten Boom', 'Corrie Ten Boom, John Sherrill, Elizabeth Sherrill', 'Bantam Books', 242, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(226, 'Through Gates of Splendor', 'Elisabeth Elliot', 'Tyndale Momentum', 274, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(227, 'God\'s Adventurer: A Story of Daring, Danger and Dependence on God', 'Phyllis Thompson', 'Harold Shaw Publications', 112, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(228, 'George Mueller: A Biography', 'Faith Coxe Bailey', 'Moody Press', 159, 9, 'Rak Rohani', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(229, 'Walt Disney', 'Wang I E', NULL, NULL, 8, 'Rak Biografi', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(230, 'Johann Sebastian Bach', 'Lin Jui Hwa', NULL, NULL, 8, 'Rak Biografi', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(231, 'Wolfgang Amadeus Mozart', 'Ciang Su Ci', NULL, NULL, 8, 'Rak Biografi', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(232, 'Johann Sebastian Bach (Biography)', 'Lin Jui Hwa', NULL, NULL, 8, 'Rak Biografi', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(233, 'Napoleon Bonaparte', 'Lai Ie Seng', NULL, NULL, 8, 'Rak Biografi', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(234, 'Marie Curie', 'Wan Ie So', NULL, NULL, 8, 'Rak Biografi', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(235, 'Florence Nightingale', 'Sie Swe Cen', NULL, NULL, 8, 'Rak Biografi', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(236, 'Louis Pasteur', 'Animik Wori I', NULL, NULL, 8, 'Rak Biografi', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(237, 'William Shakespeare: Sastrawan Ternama', 'Jony Wong Susanto', 'Elex Media Komputindo', 116, 8, 'Rak Biografi', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(238, 'Thomas Alfa Edison', 'Lie Ching Ie', NULL, NULL, 8, 'Rak Biografi', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(239, 'The Autobiography of Nelson Mandela: Long Walk to Freedom', NULL, 'Back Bay Books', NULL, 8, 'Rak Biografi', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(240, 'Jejak Yang Melampaui Zaman', 'Hatta', 'KPG', NULL, 8, 'Rak Biografi', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(241, 'Australia Travel Story Sydney Blue Mountain', 'Maria Fransisa Merinda', 'Elex Media Komputindo', NULL, 8, 'Rak Biografi', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(242, 'The Swiss Family Robinson', 'Johann David Wyss', 'Sterling Publications', 345, 11, 'Rak English Classic', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(243, 'The Rime of the Ancient Mariner', 'Samuel Taylor Coleridge', 'Dover Publications', 77, 11, 'Rak English Classic', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(244, 'The Lost Princess of Oz', NULL, NULL, NULL, 21, 'Rak Fiction', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(245, 'How to Fight a Dragon\'s Fury', 'Cressida Cowell', NULL, 499, 16, 'Rak Fantasy', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(246, 'The Magical Worlds of Narnia', 'David Colbert', 'Gramedia Pustaka Utama', NULL, 16, 'Rak Fantasy', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(247, 'Billionaire Boy', 'David Walliams', NULL, NULL, 21, 'Rak Fiction', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(248, 'The Last of the Mohicans', 'Fenimore Cooper', NULL, NULL, 11, 'Rak English Classic', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(249, 'Serdadu Kumbang', 'Rain Chudori', NULL, NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(250, 'Perfect Princess', 'Meg Cabot', 'Gramedia Pustaka Utama', NULL, 17, 'Rak Novel', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(251, 'The Nightmare Room: Liar Liar', 'R. L. Stine', 'Gramedia Pustaka Utama', NULL, 22, 'Rak Horror', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(252, 'Fusion Fire', 'Kathy Tyers', NULL, NULL, 23, 'Rak Science Fiction', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(253, 'Danzig Passage', 'Theonene', NULL, NULL, 21, 'Rak Fiction', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(254, 'Junie B. Jones Is (Almost) a Flower Girl', 'Barbara Park', NULL, NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(255, 'Paddington Helps Out', 'Michael Bond', NULL, NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(256, 'The Baby-Sitters Club: Snowbound', 'Ann M. Martin', NULL, NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-28 03:35:44', 'pending'),
(257, 'The Mystery of Tally-Ho Cottage', 'Enid Blyton', 'Hodder', NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-03-01 21:07:04', 'pending'),
(258, 'The Mystery of the Burnt Cottage', 'Enid Blyton', NULL, NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(259, 'Lima Sekawan: Rahasia di Pulau Kirrin', 'Enid Blyton', NULL, NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-03-01 21:11:42', 'tersedia'),
(260, 'The Baby-Sitters Club: Good-Bye Stacey, Good-Bye', 'Ann M. Martin', NULL, NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(261, 'Baby-Sitters Little Sister: Karen\'s Easter Parade', 'Ann M. Martin', NULL, NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(262, 'Baby-Sitters Little Sister: Karen\'s Witch', 'Ann M. Martin', NULL, NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(263, 'Tobias Beraksi Kembali', 'Animorphs', 'Gramedia Pustaka Utama', NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(264, 'Anggota Baru Animorphs', 'Animorphs', 'Gramedia Pustaka Utama', NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(265, 'Spindles and The Orphan', 'Barry Chant', 'Tabor Publications', NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(266, 'Spindles and The Crocodile', 'Barry Chant', 'Tabor Publications', NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(267, 'Spindles and The Wombat', 'Barry Chant', 'Tabor Publications', NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(268, 'Spindles and The Eagles', 'Barry Chant', 'Tabor Publications', NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia'),
(269, 'Spindles and The Children', 'Barry Chant', 'Tabor Publications', NULL, 15, 'Rak Children', '2026-02-18 04:10:56', '2026-02-18 04:10:56', 'tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_books`
--

CREATE TABLE `borrow_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `status` enum('pending','approved','rejected','returned') DEFAULT 'pending',
  `verified_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrow_books`
--

INSERT INTO `borrow_books` (`id`, `user_id`, `book_id`, `borrow_date`, `return_date`, `status`, `verified_by`, `created_at`, `updated_at`) VALUES
(1, 284, 1, '2026-02-28', '2026-03-01', 'returned', 519, '2026-02-28 02:06:41', '2026-02-28 03:38:20'),
(2, 284, 2, '2026-02-28', '2026-03-03', 'returned', 519, '2026-02-28 03:08:16', '2026-02-28 03:40:26'),
(3, 284, 4, '2026-02-28', '2026-03-14', 'rejected', 519, '2026-02-28 03:08:24', '2026-02-28 03:18:03'),
(4, 284, 256, '2026-02-28', '2026-03-01', 'pending', NULL, '2026-02-28 03:35:44', '2026-02-28 03:35:44'),
(5, 284, 1, '2026-03-01', '2026-03-02', 'pending', NULL, '2026-03-01 01:58:31', '2026-03-01 01:58:31'),
(6, 284, 257, '2026-03-02', '2026-03-03', 'pending', NULL, '2026-03-01 21:07:04', '2026-03-01 21:07:04'),
(7, 284, 3, '2026-03-02', '2026-03-03', 'rejected', 519, '2026-03-01 21:07:22', '2026-03-01 21:51:15'),
(8, 284, 259, '2026-03-02', '2026-03-03', 'returned', 519, '2026-03-01 21:10:52', '2026-03-01 21:11:42'),
(9, 284, 7, '2026-03-02', '2026-03-03', 'pending', NULL, '2026-03-01 21:21:41', '2026-03-01 21:21:41'),
(10, 284, 5, '2026-03-02', '2026-03-03', 'pending', NULL, '2026-03-01 21:22:02', '2026-03-01 21:22:02'),
(11, 284, 2, '2026-03-02', '2026-03-03', 'rejected', 519, '2026-03-01 21:51:01', '2026-03-01 21:51:27'),
(12, 284, 3, '2026-03-02', '2026-03-03', 'pending', NULL, '2026-03-01 21:51:40', '2026-03-01 21:51:40');

-- --------------------------------------------------------

--
-- Table structure for table `borrow_tools`
--

CREATE TABLE `borrow_tools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `tool_id` bigint(20) UNSIGNED NOT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date DEFAULT NULL,
  `status` enum('pending','approved','rejected','returned') DEFAULT 'pending',
  `verified_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrow_tools`
--

INSERT INTO `borrow_tools` (`id`, `user_id`, `tool_id`, `borrow_date`, `return_date`, `status`, `verified_by`, `created_at`, `updated_at`) VALUES
(1, 284, 1, '2026-02-28', '2026-03-01', 'rejected', 519, '2026-02-28 04:14:05', '2026-02-28 04:49:05'),
(2, 284, 2, '2026-02-28', '2026-03-01', 'returned', 519, '2026-02-28 04:48:46', '2026-03-01 21:52:04'),
(3, 284, 4, '2026-02-28', '2026-03-01', 'returned', 519, '2026-02-28 04:48:50', '2026-02-28 04:49:09'),
(4, 284, 4, '2026-02-28', '2026-03-01', 'returned', 519, '2026-02-28 04:49:38', '2026-03-01 21:53:02');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Kelas 7'),
(2, 'Kelas 8'),
(3, 'Kelas 9'),
(4, 'Kelas 10'),
(5, 'Kelas 11'),
(6, 'Kelas 12'),
(7, 'Pendidikan'),
(8, 'Biografi'),
(9, 'Rohani'),
(10, 'Encyclopedia'),
(11, 'English Classic'),
(12, 'Kuliner'),
(13, 'Memoar'),
(14, 'Music'),
(15, 'Children'),
(16, 'Fantasy'),
(17, 'Novel'),
(18, 'Buku Panduan'),
(19, 'Umum'),
(20, 'Hobi'),
(21, 'Fiction'),
(22, 'Horror'),
(23, 'Science Fiction'),
(24, 'Proyektor');

-- --------------------------------------------------------

--
-- Table structure for table `consumables`
--

CREATE TABLE `consumables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `stock` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consumables`
--

INSERT INTO `consumables` (`id`, `name`, `stock`) VALUES
(1, 'Spidol', 10),
(2, 'Kertas HVS', 20),
(3, 'Bolpoin', 24);

-- --------------------------------------------------------

--
-- Table structure for table `consumable_requests`
--

CREATE TABLE `consumable_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `consumable_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `verified_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consumable_requests`
--

INSERT INTO `consumable_requests` (`id`, `user_id`, `consumable_id`, `quantity`, `status`, `verified_by`, `created_at`, `updated_at`) VALUES
(1, 284, 1, 2, 'approved', 519, '2026-03-01 20:32:03', '2026-03-01 20:32:31'),
(2, 284, 2, 9, 'approved', 519, '2026-03-01 20:32:55', '2026-03-01 20:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `consumable_usages`
--

CREATE TABLE `consumable_usages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `consumable_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `digital_books`
--

CREATE TABLE `digital_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `author` varchar(150) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` text DEFAULT NULL,
  `file_path` varchar(255) NOT NULL,
  `file_type` enum('pdf','html') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '0001_01_01_000002_create_jobs_table', 1),
(3, '2026_02_16_080220_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `message`, `is_read`, `created_at`) VALUES
(1, 346, 'Permintaan peminjaman buku baru', 0, '2026-02-28 09:06:42'),
(2, 517, 'Permintaan peminjaman buku baru', 0, '2026-02-28 09:06:42'),
(3, 518, 'Permintaan peminjaman buku baru', 0, '2026-02-28 09:06:42'),
(4, 519, 'Permintaan peminjaman buku baru', 0, '2026-02-28 09:06:42'),
(5, 520, 'Permintaan peminjaman buku baru', 0, '2026-02-28 09:06:42'),
(6, 521, 'Permintaan peminjaman buku baru', 0, '2026-02-28 09:06:42'),
(7, 522, 'Permintaan peminjaman buku baru', 0, '2026-02-28 09:06:42'),
(8, 346, 'Permintaan peminjaman buku baru', 0, '2026-02-28 10:08:16'),
(9, 517, 'Permintaan peminjaman buku baru', 0, '2026-02-28 10:08:16'),
(10, 518, 'Permintaan peminjaman buku baru', 0, '2026-02-28 10:08:16'),
(11, 519, 'Permintaan peminjaman buku baru', 0, '2026-02-28 10:08:16'),
(12, 520, 'Permintaan peminjaman buku baru', 0, '2026-02-28 10:08:16'),
(13, 521, 'Permintaan peminjaman buku baru', 0, '2026-02-28 10:08:16'),
(14, 522, 'Permintaan peminjaman buku baru', 0, '2026-02-28 10:08:16'),
(15, 346, 'Permintaan peminjaman buku baru', 0, '2026-02-28 10:08:24'),
(16, 517, 'Permintaan peminjaman buku baru', 0, '2026-02-28 10:08:24'),
(17, 518, 'Permintaan peminjaman buku baru', 0, '2026-02-28 10:08:24'),
(18, 519, 'Permintaan peminjaman buku baru', 0, '2026-02-28 10:08:24'),
(19, 520, 'Permintaan peminjaman buku baru', 0, '2026-02-28 10:08:24'),
(20, 521, 'Permintaan peminjaman buku baru', 0, '2026-02-28 10:08:24'),
(21, 522, 'Permintaan peminjaman buku baru', 0, '2026-02-28 10:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 519, 'mobile', '2bd9f1e260ba1736ba2d3a12d9ee9b947d4c9284c8300290499090400958a11c', '[\"*\"]', '2026-02-17 00:24:55', NULL, '2026-02-17 00:21:45', '2026-02-17 00:24:55'),
(2, 'App\\Models\\User', 519, 'mobile', 'b1abed389b3bddae5556de1e6164c501045d51346ddea0224563f3664e062d2f', '[\"*\"]', NULL, NULL, '2026-02-17 00:22:13', '2026-02-17 00:22:13'),
(3, 'App\\Models\\User', 519, 'mobile', '1a705f7dd28b67007f4894f96bdb37f725d2df3e40ea847ea7bd421ed8065546', '[\"*\"]', NULL, NULL, '2026-02-17 00:22:19', '2026-02-17 00:22:19'),
(4, 'App\\Models\\User', 519, 'mobile', '159efdff87100fce0104c1cdfe9a62a8a6fc880e2ba5879ca6f6f953064ef2f1', '[\"*\"]', NULL, NULL, '2026-02-19 01:34:00', '2026-02-19 01:34:00'),
(5, 'App\\Models\\User', 519, 'mobile', 'a8297b1d7b97d3a2244039693bba16bc260a25194240aa3894d22599180c75e6', '[\"*\"]', '2026-02-19 01:42:29', NULL, '2026-02-19 01:42:07', '2026-02-19 01:42:29'),
(6, 'App\\Models\\User', 519, 'mobile', '23f05d82d70e2839c383c4356d06ea71f4197cd038248f2e8d7aaebc1c7c90de', '[\"*\"]', NULL, NULL, '2026-02-19 01:47:09', '2026-02-19 01:47:09'),
(7, 'App\\Models\\User', 519, 'mobile', '83d645ed80936a16fa16cce36ba9afc82d17cbda7b0e478c8d22f2076ecf9b2c', '[\"*\"]', '2026-02-19 02:44:20', NULL, '2026-02-19 02:44:02', '2026-02-19 02:44:20'),
(8, 'App\\Models\\User', 521, 'mobile', 'b7c68d4639eb680a2fbb377fea6a62520204ea37f6beec3404677e7492959674', '[\"*\"]', '2026-02-19 04:37:09', NULL, '2026-02-19 02:44:26', '2026-02-19 04:37:09'),
(9, 'App\\Models\\User', 346, 'mobile', 'dd2740f07828212c745f164780159a537e2c40a0e1396b5c3bc8347d14dcee18', '[\"*\"]', '2026-02-19 04:43:19', NULL, '2026-02-19 04:43:08', '2026-02-19 04:43:19'),
(10, 'App\\Models\\User', 517, 'mobile', 'a96a6526d0e61cff2def48fd2a27cee2d829b27461bc6d7da3383441bf342f6b', '[\"*\"]', '2026-02-19 04:44:05', NULL, '2026-02-19 04:44:04', '2026-02-19 04:44:05'),
(11, 'App\\Models\\User', 519, 'mobile', 'c4911eeff3c24b63398b58d734ad45f8973da94a64366063469a7a9d1821416d', '[\"*\"]', '2026-02-19 07:43:09', NULL, '2026-02-19 04:44:17', '2026-02-19 07:43:09'),
(12, 'App\\Models\\User', 519, 'mobile', 'b6ff5144dd53f111463b0af31ec18a2614eb651f2232c774b22cce8167158e0c', '[\"*\"]', '2026-02-19 07:25:59', NULL, '2026-02-19 07:25:53', '2026-02-19 07:25:59'),
(13, 'App\\Models\\User', 519, 'mobile', 'eec5d803a31eef57cb6a31cb353b80d93256c6f86b47673cf56c59dd0d2bf953', '[\"*\"]', '2026-02-19 07:56:10', NULL, '2026-02-19 07:51:41', '2026-02-19 07:56:10'),
(14, 'App\\Models\\User', 522, 'mobile', '70cbdad357977429a2a0f669d94b3813a44525dc199e3d64c726f2d2f8d6ff8e', '[\"*\"]', '2026-02-19 07:56:26', NULL, '2026-02-19 07:56:26', '2026-02-19 07:56:26'),
(15, 'App\\Models\\User', 519, 'mobile', 'f634dd2d5419a6aec41411f62b957881bea165991a6fa5889a6a1e1356f36bce', '[\"*\"]', '2026-02-21 22:53:54', NULL, '2026-02-21 22:53:29', '2026-02-21 22:53:54'),
(16, 'App\\Models\\User', 519, 'mobile', 'f04d8473884499b97ee1a3272b68cf93abf68ff635e16e3d8689e75960d997c9', '[\"*\"]', NULL, NULL, '2026-02-22 02:36:12', '2026-02-22 02:36:12'),
(17, 'App\\Models\\User', 461, 'mobile', '9450c3bc77f8640c89a7c8a019991107cdbaa8b915661a89ef7ab64b92619740', '[\"*\"]', '2026-02-22 02:40:25', NULL, '2026-02-22 02:40:06', '2026-02-22 02:40:25'),
(18, 'App\\Models\\User', 284, 'mobile', '46d866bfb1aff807788d0127b9ca62b3b27ce3517a8413131a57f1aeea6a2e28', '[\"*\"]', '2026-02-22 02:43:29', NULL, '2026-02-22 02:43:22', '2026-02-22 02:43:29'),
(19, 'App\\Models\\User', 519, 'mobile', '93d99dd8d07c1326947c260d019aaa5d825fa7f6d80d23f202cbf1e054f2906c', '[\"*\"]', NULL, NULL, '2026-02-22 02:47:08', '2026-02-22 02:47:08'),
(20, 'App\\Models\\User', 519, 'mobile', 'ecfe91f1627a1b0ed7a8c8a437d0bcd758fef23e2ac5994a6df3118117e98d10', '[\"*\"]', NULL, NULL, '2026-02-22 03:02:58', '2026-02-22 03:02:58'),
(21, 'App\\Models\\User', 519, 'mobile', '688d72d85321234d97a0e144fcf33e28596ba906549fa66e1ff7710475e7492e', '[\"*\"]', NULL, NULL, '2026-02-22 03:12:30', '2026-02-22 03:12:30'),
(22, 'App\\Models\\User', 519, 'mobile', '63bbf17cd628aead305851b7f0961ceea5d4a2afce71b60000691e3082a47218', '[\"*\"]', NULL, NULL, '2026-02-22 03:16:09', '2026-02-22 03:16:09'),
(23, 'App\\Models\\User', 519, 'mobile', 'df5206247875ce999aa6946115bd036ab73df8b87e348486a29bf6b4f7639d3a', '[\"*\"]', '2026-02-22 03:35:55', NULL, '2026-02-22 03:32:04', '2026-02-22 03:35:55'),
(24, 'App\\Models\\User', 519, 'mobile', 'e20db16904e788226aae0f422a63bbde99368c8c827089aa02fbf0ce0d696770', '[\"*\"]', '2026-02-22 03:49:09', NULL, '2026-02-22 03:43:33', '2026-02-22 03:49:09'),
(25, 'App\\Models\\User', 519, 'mobile', '3e32b183d06a373ad033c4743786a8407441ec1b6f387168cefb085e56bd85e2', '[\"*\"]', '2026-02-22 03:52:30', NULL, '2026-02-22 03:52:26', '2026-02-22 03:52:30'),
(26, 'App\\Models\\User', 519, 'mobile', '18bcb72a92ddf1db28c007301a292695949677b11c40c309374ec3aa9ef24a2e', '[\"*\"]', '2026-02-22 04:24:24', NULL, '2026-02-22 03:54:50', '2026-02-22 04:24:24'),
(27, 'App\\Models\\User', 461, 'mobile', 'df1ee5ae0f560b98e10072d0b8f728897a6a402d79c255e873bfd987c00e049a', '[\"*\"]', NULL, NULL, '2026-02-22 04:21:46', '2026-02-22 04:21:46'),
(28, 'App\\Models\\User', 519, 'mobile', 'ba1ca551a557c1f3ba782159d6ad96b0081a6440cda793a0c9840c9f35628920', '[\"*\"]', '2026-02-22 21:21:27', NULL, '2026-02-22 21:08:38', '2026-02-22 21:21:27'),
(29, 'App\\Models\\User', 461, 'mobile', 'cb0078d59c3d84575cf4af207bc4b345680fb67968995e891b263c1e62d94b32', '[\"*\"]', '2026-02-22 21:24:29', NULL, '2026-02-22 21:22:27', '2026-02-22 21:24:29'),
(30, 'App\\Models\\User', 461, 'mobile', '9aaa1f6954aa4255a012b07d360e2528fee4f82e5518662bd7350653683f583a', '[\"*\"]', '2026-02-22 21:45:11', NULL, '2026-02-22 21:28:18', '2026-02-22 21:45:11'),
(31, 'App\\Models\\User', 461, 'mobile', 'a8b6e58b76d3e8ffb41479d8bbb07df428d6d34d23c441dede622ecc460d8d77', '[\"*\"]', '2026-02-22 21:54:31', NULL, '2026-02-22 21:54:26', '2026-02-22 21:54:31'),
(32, 'App\\Models\\User', 461, 'mobile', '44a49826f9cf73ffadd1193cbc2874914ebfbba6e777e13931fc3fa4b8ee85ee', '[\"*\"]', '2026-02-22 22:10:37', NULL, '2026-02-22 21:54:53', '2026-02-22 22:10:37'),
(33, 'App\\Models\\User', 284, 'mobile', 'eb66a3e26e8c73e388f0b04ede648494609884c6fa1555444fa5f5aab14c7a2c', '[\"*\"]', '2026-02-22 22:12:16', NULL, '2026-02-22 22:11:47', '2026-02-22 22:12:16'),
(34, 'App\\Models\\User', 461, 'mobile', '787aecbf3434b0edbad7a572d6de1264bb0e676ba6958df70c86f361eeac9e81', '[\"*\"]', '2026-02-23 01:13:17', NULL, '2026-02-23 01:08:16', '2026-02-23 01:13:17'),
(35, 'App\\Models\\User', 461, 'mobile', 'fae6ef263bb19fa178db8cae67003e39dc85a1d4b9ca936e7bf65df72ee176c3', '[\"*\"]', '2026-02-23 01:16:49', NULL, '2026-02-23 01:13:43', '2026-02-23 01:16:49'),
(36, 'App\\Models\\User', 461, 'mobile', 'aec1dca70e8bb30ba0ac33839796dee787e2cafd42e01fe02a7691820a06b662', '[\"*\"]', '2026-02-23 01:20:42', NULL, '2026-02-23 01:20:26', '2026-02-23 01:20:42'),
(37, 'App\\Models\\User', 284, 'mobile', 'f91ef81cd1951e927419eba45feced8fd367bbda26a4c2deab799aa57a91d706', '[\"*\"]', '2026-02-23 01:22:41', NULL, '2026-02-23 01:21:15', '2026-02-23 01:22:41'),
(38, 'App\\Models\\User', 284, 'mobile', 'ca225d3dcc1db830b0ee910539dc60e90286c2f24134eae369f9bc7c3fdb6052', '[\"*\"]', '2026-02-23 01:36:26', NULL, '2026-02-23 01:23:05', '2026-02-23 01:36:26'),
(39, 'App\\Models\\User', 284, 'mobile', 'e7f6b362233298c8278e16e22007e877eba8197cd74e9166af486c6e70c0a01a', '[\"*\"]', '2026-02-23 01:38:13', NULL, '2026-02-23 01:37:28', '2026-02-23 01:38:13'),
(40, 'App\\Models\\User', 284, 'mobile', '5f58f1d416cafc8025002b75f0650634c287106ae5a468021b30c22f76b52028', '[\"*\"]', '2026-02-25 22:29:23', NULL, '2026-02-25 20:57:49', '2026-02-25 22:29:23'),
(41, 'App\\Models\\User', 519, 'mobile', 'cae91afe929b6af6ff688bd580e127813b3f906ffdddfee648a1d3fad0342a75', '[\"*\"]', NULL, NULL, '2026-02-25 22:04:39', '2026-02-25 22:04:39'),
(42, 'App\\Models\\User', 519, 'mobile', '134cdc8cf2850a1dfb4649ebb0cb46583d89e3d06112a7a6fe939e0c9942bb04', '[\"*\"]', '2026-02-25 22:15:14', NULL, '2026-02-25 22:04:40', '2026-02-25 22:15:14'),
(43, 'App\\Models\\User', 284, 'mobile', 'a07eb6fb39d51da10cd57b402711df3e8cf75d2a382f331bb2bd4583cfef5353', '[\"*\"]', '2026-02-28 01:57:47', NULL, '2026-02-28 01:38:43', '2026-02-28 01:57:47'),
(44, 'App\\Models\\User', 284, 'mobile', '075f1ac72206215bf2b2914ee9ef52954054912715182bbc47a730b6d6932b27', '[\"*\"]', '2026-02-28 03:26:37', NULL, '2026-02-28 01:58:58', '2026-02-28 03:26:37'),
(45, 'App\\Models\\User', 519, 'mobile', 'a647749a604ca93891d4dd9801f7a1e764c945200a093f8388be7e0ed2f5b6f9', '[\"*\"]', '2026-02-28 04:49:43', NULL, '2026-02-28 02:07:22', '2026-02-28 04:49:43'),
(46, 'App\\Models\\User', 284, 'mobile', '032d8ffbda69eb6cbe8c1775f0a151e87ef888c4c4f0bddc0c73dbced34d5112', '[\"*\"]', '2026-02-28 04:49:51', NULL, '2026-02-28 03:26:57', '2026-02-28 04:49:51'),
(47, 'App\\Models\\User', 519, 'mobile', 'b4536ae6611f3a4f6198f8753f396f41395b7a653536dfb5b643a0da794a2268', '[\"*\"]', '2026-03-01 01:39:51', NULL, '2026-03-01 01:25:16', '2026-03-01 01:39:51'),
(48, 'App\\Models\\User', 519, 'mobile', '1aa48192040d3e51d98cee02ef8f3a8974b6795a6fea4802f5022fe090b217fb', '[\"*\"]', '2026-03-01 02:28:42', NULL, '2026-03-01 01:25:35', '2026-03-01 02:28:42'),
(49, 'App\\Models\\User', 284, 'mobile', '0d42f764317c1160c91a417be6c31228c893fd7523344b4bad7a4a026b8a0316', '[\"*\"]', '2026-03-01 01:57:07', NULL, '2026-03-01 01:27:17', '2026-03-01 01:57:07'),
(50, 'App\\Models\\User', 284, 'mobile', '075dca691af5b33c87ba891545e740e7483b188465a9c704bbc5bcea0b323d0d', '[\"*\"]', '2026-03-01 01:58:52', NULL, '2026-03-01 01:57:31', '2026-03-01 01:58:52'),
(51, 'App\\Models\\User', 519, 'mobile', 'ab66a2b7203d34e59c51eda45e95efa91263c3c7a19950130ed4a856390ca100', '[\"*\"]', '2026-03-01 01:58:36', NULL, '2026-03-01 01:57:43', '2026-03-01 01:58:36'),
(52, 'App\\Models\\User', 284, 'mobile', '29ab3670714f6e9d735bfe1e90a73f552b7fb11c7672875b295bc4f02fde15ac', '[\"*\"]', '2026-03-01 02:29:21', NULL, '2026-03-01 02:16:05', '2026-03-01 02:29:21'),
(53, 'App\\Models\\User', 519, 'mobile', 'cd48ba5f58f040c6aad0b339311560855c397423b770ff2468f99de1c59fdc9c', '[\"*\"]', '2026-03-01 03:36:51', NULL, '2026-03-01 03:36:50', '2026-03-01 03:36:51'),
(54, 'App\\Models\\User', 284, 'mobile', '7eeb55a24f1b87d57820d83ab8e87b0883c76b222ef9a42ac9d06453a3bba533', '[\"*\"]', '2026-03-01 04:31:57', NULL, '2026-03-01 03:37:16', '2026-03-01 04:31:57'),
(55, 'App\\Models\\User', 519, 'mobile', '02da3eaf061e4b38ed9f3dfd8073ee4f35da19463d87d9544c08b417694ba402', '[\"*\"]', '2026-03-01 04:32:48', NULL, '2026-03-01 04:32:40', '2026-03-01 04:32:48'),
(56, 'App\\Models\\User', 284, 'mobile', '1dc711e8b3611947a783786fbc1cf8e560d9796240ac9b1d5f04d85f72d5cbc9', '[\"*\"]', '2026-03-05 20:42:57', NULL, '2026-03-01 04:33:03', '2026-03-05 20:42:57'),
(57, 'App\\Models\\User', 519, 'mobile', '84bd33ec9b78a19ca0ac790bf29fa5b3b9f7903de2874132167f2c7dedb94866', '[\"*\"]', '2026-03-01 20:14:41', NULL, '2026-03-01 20:14:39', '2026-03-01 20:14:41'),
(58, 'App\\Models\\User', 519, 'mobile', '97c4c6c28c475f28e5899fb7e6aada8309a1b4ef9021ab8d2f57c9e030cc5bf0', '[\"*\"]', '2026-03-01 21:53:10', NULL, '2026-03-01 20:14:40', '2026-03-01 21:53:10'),
(59, 'App\\Models\\User', 519, 'mobile', '62067a9be938d5164d3ec042c68f897f78beffaa8d1d58a9885a3a019b6fd13d', '[\"*\"]', '2026-03-05 20:37:35', NULL, '2026-03-05 20:37:33', '2026-03-05 20:37:35'),
(60, 'App\\Models\\User', 519, 'mobile', '0addb21200b2c8300fac502b315489ca360bccdccfec0f1f7e9b13bbd616d104', '[\"*\"]', '2026-03-05 20:37:37', NULL, '2026-03-05 20:37:34', '2026-03-05 20:37:37'),
(61, 'App\\Models\\User', 284, 'mobile', 'a8f883d489093fa34b2cae2e57a2ad29d3aa7440045787f38472ae8b85b4c752', '[\"*\"]', '2026-03-05 23:00:29', NULL, '2026-03-05 21:51:06', '2026-03-05 23:00:29'),
(62, 'App\\Models\\User', 519, 'mobile', 'dfb49fb795352bebb8859a09dd0e14b9537939c13dfaf120ccfc3ea11351b19e', '[\"*\"]', '2026-03-05 23:31:35', NULL, '2026-03-05 22:41:12', '2026-03-05 23:31:35'),
(63, 'App\\Models\\User', 519, 'mobile', '35dbd911a522676ba5965f4633e23173430e9710d21c8d7e5733fcdf2cc5081f', '[\"*\"]', '2026-03-05 23:23:43', NULL, '2026-03-05 23:00:41', '2026-03-05 23:23:43'),
(64, 'App\\Models\\User', 284, 'mobile', '6b49f565d839d97b9a86bf7d74e95aa9b134f1f5a3f58ca2004b1ccd49b00fb7', '[\"*\"]', '2026-03-05 23:24:43', NULL, '2026-03-05 23:24:43', '2026-03-05 23:24:43'),
(65, 'App\\Models\\User', 519, 'mobile', '4d10a3e679da104b6dd7c1364dc3c5377512c41a1f5288a80751439bf9fa9816', '[\"*\"]', '2026-03-05 23:33:13', NULL, '2026-03-05 23:32:59', '2026-03-05 23:33:13'),
(66, 'App\\Models\\User', 284, 'mobile', 'fe7008ddfbb5037d8c9f98673a4e779d791c40cc6ffe911c3500a139ccf9b23d', '[\"*\"]', '2026-03-05 23:34:24', NULL, '2026-03-05 23:33:23', '2026-03-05 23:34:24'),
(67, 'App\\Models\\User', 519, 'mobile', '4a5e4ff98791dd0f6f742246c29ced6d89ce6cf3e20914c59bcb0ba1ac28b1f1', '[\"*\"]', '2026-03-08 02:02:50', NULL, '2026-03-08 01:40:16', '2026-03-08 02:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'guru'),
(3, 'murid');

-- --------------------------------------------------------

--
-- Table structure for table `tools`
--

CREATE TABLE `tools` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('tersedia','pending','dipinjam') NOT NULL DEFAULT 'tersedia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tools`
--

INSERT INTO `tools` (`id`, `name`, `category_id`, `location`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Proyektor LG', 24, 'Perpustakaan', '2026-02-19 14:12:13', '2026-02-28 04:49:05', 'tersedia'),
(2, 'Proyektor Samsung', 24, 'Ruang Guru', '2026-02-19 14:12:13', '2026-03-05 22:46:31', 'tersedia'),
(4, 'Proyektor Xiaomi', 24, 'Ruang Administrasi', '2026-02-19 07:29:59', '2026-03-01 21:53:02', 'tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `role_id`, `password`, `created_at`) VALUES
(283, 'nitamargaretha', 2, '$2y$12$kGSHQwmj1fCr2a1RdQLdXeKYaGIUP.wcw57aJ73ZXobH4w8mMLGeK', '2026-01-29 10:58:46'),
(284, 'dinasuciati', 2, '$2y$12$yQK17bFNGAgV/YhyMNp8ZOSVeOHDx3MfqtarTTN9LJyVBd9OTPkMu', '2026-01-29 10:58:46'),
(285, 'dinikrahayu', 2, '$2y$12$OO8PShlhs/BhF5N9.KVjX./GbqfgnPwrsiU9llUE1xGcVH8F5Be0.', '2026-01-29 10:58:46'),
(286, 'dwiistianalukito', 2, '$2y$12$k4sn5joLhM1uBPuXsZN1N.sqXiNbQx2Kk5PbKEZondZTk9w6kaCTu', '2026-01-29 10:58:46'),
(287, 'agustinawidjajani', 2, '$2y$12$YIyGR1vNDEpo7aXPrYBjw.QceWjpGBAYCSbrxCk0z3eTazTk4yNLO', '2026-01-29 10:58:46'),
(288, 'ruthlinawati', 2, '$2y$12$5kLCA2GR/fJ./jP7pKw4BOK2N.xq/O9cc2FuhtFhax2yP1QJOLcna', '2026-01-29 10:58:46'),
(289, 'yuniastuti', 2, '$2y$12$godTAX6piuZgaszl2FhpXejOIWsSttqSvlCjCPtPgCQdoi7Y7nVDW', '2026-01-29 10:58:46'),
(290, 'albertusanggariyadi', 2, '$2y$12$u9YZsqcUrB07/6jSYAhLaukjwq86umRrN4D6JFyoz0pzIYW.6Jhni', '2026-01-29 10:58:46'),
(291, 'effiewahono', 2, '$2y$12$gsyCdNx9xoYK0MTW83lwsOWCCnxWqxCMs9iFzZWzm5aAUSw7A3SMO', '2026-01-29 10:58:46'),
(292, 'dhitaaprilia', 2, '$2y$12$8AmVC7UDrreYeDrfkrSdZ..VtvFmuCa5oUKXIEB8oZkVzrAJqDVXi', '2026-01-29 10:58:46'),
(293, 'nikenpratiwi', 2, '$2y$12$yhZclg2aObb4AmEvoEY4qObk6tJq8Esz4YBlS6iT9FRQqmOlOa.uq', '2026-01-29 10:58:46'),
(294, 'nataliusroyandreas', 2, '$2y$12$ADyb6Nes80IZ8v8WpAPopuqkj8Z1MI3IVvx1NdgJ0xahQXeYBjVpe', '2026-01-29 10:58:46'),
(295, 'stephaniemarcellina', 2, '$2y$12$pSqTSIBYVKwOqjf2LlJ42ecmkPlJOIfqv1jP9G1RG3XII04Eg3MH6', '2026-01-29 10:58:46'),
(296, 'renyratnapratiwi', 2, '$2y$12$4XOG5FMBwmtbLwXpkXbsWeXpZWlnrU30uI6yIjGjwl1UmpyM1yMa2', '2026-01-29 10:58:46'),
(297, 'cheziaeufresiaisworo', 2, '$2y$12$0yl8hswdpu/nos3j3ay8d.oRQLC4t0kBPAA08xQlSIfg7QXBJ5HiS', '2026-01-29 10:58:46'),
(298, 'ellenselvianikijuluw', 2, '$2y$12$C5cJ6bw4S9O5nlOg7Q.HTOBbQFTivJm.GOHRbTfR2O8jJOz06g6tm', '2026-01-29 10:58:46'),
(299, 'levitasetyabudi', 2, '$2y$12$cRmwtP/C2UEY6CQLBe7mSO3GnKehCeq1wQklqauVk7DxsqHukAZRa', '2026-01-29 10:58:46'),
(300, 'mariasekarsatiti', 2, '$2y$12$GZTi/jTT76bZg82Zoi6kW.5//uZyG0Tz/eOYESuwDfTQsePwjDdP.', '2026-01-29 10:58:46'),
(301, 'fingkiwidyataintanmasfau', 2, '$2y$12$pzdgMZALZvBZsDGOKczAPOZF7y220lZ2mCpbXvJ/WtnQLI76wdM4m', '2026-01-29 10:58:46'),
(302, 'arumgalihrahayu', 2, '$2y$12$Dfxg.XjrMFM8fCb0SEzHje83NVADk6dx/95bpu.3NcLihxo162gLG', '2026-01-29 10:58:46'),
(303, 'morinamasdaminarnapitupulu', 2, '$2y$12$9xaEosoNmkzmwWbeni4qkutjfV9nPJgfT2WcehcBADZ8RhnZnkhvy', '2026-01-29 10:58:46'),
(304, 'anastasianurulanggriani', 2, '$2y$12$Hn6WPwuPJvafl/CluIsH8OvwV0hXzP/he3yrgnWXcIX.nOs.IgFqi', '2026-01-29 10:58:46'),
(305, 'marianasripurwanti', 2, '$2y$12$m/lYyS9ggOZ1jeJd7XAAyuTNLCvSa5LcIjr44rhyw8RU4NHJz0kN.', '2026-01-29 10:58:46'),
(306, 'selvinalum', 2, '$2y$12$iGCwdXfb5z2dsYK.5Kxrn.pmhnkuwyr9cy6T2XwxydoktgK3Xshea', '2026-01-29 10:58:46'),
(307, 'mesachpahalasuwondo', 2, '$2y$12$4Na5Fy8WGgj.0zqj5mhvdODtgx5rrVsjr6XRmKM/JDgM7wT3LxjD.', '2026-01-29 10:58:46'),
(308, 'yasonhendro', 2, '$2y$12$qWyTF5VJp2SU60/aUa0MnOgp4QHXclir9edgCqDlRU6eu/oyG4kre', '2026-01-29 10:58:46'),
(309, 'emmanuelkurniawan', 2, '$2y$12$nBJI.Cb22zUeOeGiCZ/Wt.vsckJ2xevlPEG37GN6fRMi9toV.tPAq', '2026-01-29 10:58:46'),
(310, 'onisuryaman', 2, '$2y$12$DPdTWaXgoYTJiXBhkY6QQeV8i61fm12onFF4qy1cj4MwHeTRoS9pK', '2026-01-29 10:58:46'),
(311, 'abigailmariasuryanto', 2, '$2y$12$OrZXPFSMuNTMw6dZUWipFuuhAHrpd7cTkTAOmf8ogsSQk8VrBJjie', '2026-01-29 10:58:46'),
(312, 'egardanurian', 2, '$2y$12$vNGfJrjkOYQTxEH.jNPkQu.MmEe7riref5aPvmvOSCHApCrJPjMGm', '2026-01-29 10:58:46'),
(313, 'karolusammaone', 2, '$2y$12$HuF4U5ZAitIuRPNPF7giCeCZPv0uvK77OY6K1LWm.tGwDeC8s4PtC', '2026-01-29 10:58:46'),
(314, 'fallarytanaya', 2, '$2y$12$tsS9E.qgVwKwlMzQ8IY/F.yHX5U43yaRWwJsTab1e9NlI4vyf4DUi', '2026-01-29 10:58:46'),
(315, 'yonathanedward', 2, '$2y$12$G3nvopMj./uF2Ni2ZlR1X.Z3555fXtvsh3Dcr7Ji6w1EaPIy56pMe', '2026-01-29 10:58:46'),
(316, 'marcelloalexiusdominikus', 2, '$2y$12$Y0DetEHCv5BSS8yfrqn3QuUoVCxSxevt9Cz81gZWioz1gW6HEtLoa', '2026-01-29 10:58:46'),
(317, 'merrychristianty', 2, '$2y$12$eSOEF2Q08fycNGnuqqDlVurC9cmBUb57OjVAQ24eUwo90e0j8wJy2', '2026-01-29 10:58:46'),
(318, 'felicia', 2, '$2y$12$CMV.JMLyzZiNG0ss2KH.vextdTM8.PVThEKXr8GWU235GKam0L.f2', '2026-01-29 10:58:46'),
(346, 'admin', 1, '$2y$12$YIyGR1vNDEpo7aXPrYBjw.QceWjpGBAYCSbrxCk0z3eTazTk4yNLO', '2026-01-29 17:13:46'),
(366, 'Sheena Winona So', 3, '$2y$12$KP51kraOq67UrfG2Qyb.me4scdGm/nItdcJQ4fHgKm9MmoFL64Xh.', '2026-02-16 09:25:36'),
(367, 'Gracelyn Felicia Setiadi', 3, '$2y$12$qCYJZqX/M6/Ak/kJ6LYdIuaBi8.lgOUKsxDBhsxU7jxrw5TERux3m', '2026-02-16 09:25:36'),
(368, 'Benjamin Godfrey Susanto', 3, '$2y$12$UL8i0qRfvWQdA0eKAfL2zO0EPIhj4fs1o/iQR17GupVDKwOtYtUki', '2026-02-16 09:25:36'),
(369, 'Fiona May Emily Ong', 3, '$2y$12$EW3h1kFvdfkybEAEkSIYfuohkxXmnHFD5P.Fzc9AiV7Mnswcz88yG', '2026-02-16 09:25:36'),
(370, 'Cadence Amadea Filbert', 3, '$2y$12$BxrLngwrLWa.WUDmbFiUee1o9V3tIMenLMQBK/2wjzt.oOOHZEySS', '2026-02-16 09:25:36'),
(371, 'Marvello Nicholaus Sambodo', 3, '$2y$12$iUqaeTqP5DZcyNULDxZluuj//loawe7bMTuKXg5oO.UMrDHjEcimi', '2026-02-16 09:25:36'),
(372, 'Jennifer Holly Ferriana', 3, '$2y$12$7E4NMQkBtydEBaTKlQ90cOaz5W58t9DApj3pTdHyZ2DFR3WNiekoC', '2026-02-16 09:25:36'),
(373, 'Kiyomi Eiko Hartawan', 3, '$2y$12$Wz4hOZ/LhRMNLHcA/fgmq.AsYoccFUqjEKlO3d18ow7sBole5EsBq', '2026-02-16 09:25:36'),
(374, 'Elang Abercio Reynard', 3, '$2y$12$qOJNOqAvvMyWKMD6ym2zCe3C6yghsPNaMPKPwjB1otm1GUn7rdVq2', '2026-02-16 09:25:36'),
(375, 'Madeline Joanne Hartono', 3, '$2y$12$w/fI4Ya1xWF3TNDdpaGt/eOCZab5fWBIAnoJvTGTozkHMWaI7i77W', '2026-02-16 09:25:36'),
(376, 'Adriella Cicilia Gunawan', 3, '$2y$12$LU/Yuuw19A7o0XUZ81wfo.p3I2ar2WQFcfFH/5ZyYF.iDdwLaIa1i', '2026-02-16 09:25:36'),
(377, 'Aubrey Tumonggi', 3, '$2y$12$Y2GPo.PBRUR1w1HSoLtnzuATuMHYT3qJ9t5VHJ7rwTibwwijEeMfW', '2026-02-16 09:25:36'),
(378, 'Jazz Amulean Purba', 3, '$2y$12$svuYci9hfY/18iqSEWHw4eSLIq4cabkZoQgQIt/AkHeuXSX9UlPty', '2026-02-16 09:25:36'),
(379, 'Chloe Ariella Wijaya', 3, '$2y$12$Pd2JY5bha8uS0N2nvn604uxgSLNRYetVQ3U6onbG/rQfDRzhroyVy', '2026-02-16 09:25:36'),
(380, 'Darren Kenzo Marvelius', 3, '$2y$12$5GYNGV1cJSak41FC9v4eT.DgoDXowOoliElXYeWBqavmSz8t4Ac1C', '2026-02-16 09:25:36'),
(381, 'Jevan Aldrich Bong', 3, '$2y$12$fC4lXoXSLVQpcm.7UpTuXuFmJWy4WuD9ymCVz1E6aD9WkbqjoD5.K', '2026-02-16 09:25:36'),
(382, 'Nathanael Clayton Ardian', 3, '$2y$12$leCOarfoWgcsDVHThX.vKukY8bMTA5OccbyPdzb0dGGE/yX3ufsla', '2026-02-16 09:25:36'),
(383, 'Loisa Auristella Embun Sianturi', 3, '$2y$12$KmSVOv5MYlFeTQ.6.Lc7OuId1OOyD3RmezEo/VSnVpFFq65bSWS1q', '2026-02-16 09:25:36'),
(384, 'Tiffany Charane Lukman', 3, '$2y$12$oOEgPprpvFNIV8kBh.64jexmDuPOcWTnSkuOrs1XZTUCiTFh8qg4O', '2026-02-16 09:25:36'),
(385, 'Caesar Ben Noah Sinaga', 3, '$2y$12$FopHbPzTw81LIwH8qv/Os.TQ0u0HTnYnZRjtPAmFEq6ZFmJ1WebUm', '2026-02-16 09:25:36'),
(386, 'Marie Claire Jansen', 3, '$2y$12$C5UjoDlKKraFNVWfR4iJN.9WD8UN0ANTFbaUzwDz2ZRl9FQ4DRhxG', '2026-02-16 09:25:36'),
(387, 'Arjuna Bintang Manggala', 3, '$2y$12$sUHrp8KI4gscZRzKj3FCye.aaxmgIN9IpiJTKFA.BnbzMyms6i3mK', '2026-02-16 09:25:36'),
(388, 'Aleya Vallery Christian', 3, '$2y$12$EJWBIxeh4Wueli51xJ0B8.4mre7.9sUNMKxyCfLnnGBCZK0uQ2xF6', '2026-02-16 09:25:36'),
(389, 'Elora Graby Saragih', 3, '$2y$12$/e8.GB4C6JOZTej1e8wYFuUCT.PAjz78NCRQ5p5n2Zh2x2F3O1b0C', '2026-02-16 09:25:36'),
(390, 'Keenan Algreen Supomo', 3, '$2y$12$5tnq4bYIN779oNSUetyLRO.k.IbiacZEaSfO1H26Be5qvgTyt.Vtm', '2026-02-16 09:25:36'),
(391, 'Naodi Tristian Kadaryono', 3, '$2y$12$iSVDm5jocgH/t126GfsDpeGWsYXM0YkTF841bxwr2gIXzR4sARQGC', '2026-02-16 09:25:36'),
(392, 'Giselle Carlotta Hertanto', 3, '$2y$12$thBD8DfbRQbMXzGU3w2b0eCt1MYM.yHMwvQ1T.t58RQlEkiNqTMsO', '2026-02-16 09:25:36'),
(393, 'Joshua Keitaro Harnanto', 3, '$2y$12$h9Oa7fNLzb5HT9SGTKo6hOTnbsZRaR.vkyb5M3pod4/ZZ22Ms3H/.', '2026-02-16 09:25:36'),
(394, 'Methodius Tyaga Radhika', 3, '$2y$12$2qMAeD2sqCsTY0yRYoQzRuJ2B4uFkC771GEMq/mK5JoxxD.XeujjW', '2026-02-16 09:25:36'),
(395, 'Clarissa Joanita Fredella', 3, '$2y$12$.YvQDqM9jmDzUkY3D81Pu.VmLAxdtwttFVrnvxu1bt913C6xjT3n.', '2026-02-16 09:25:36'),
(396, 'Anna Bjanka Pouwel', 3, '$2y$12$/4f3lZLhpx/0o3aZICBbTO87S/OiG1ST.DwRjlBDQcW2A8Rs34F/K', '2026-02-16 09:25:36'),
(397, 'Devid Jeremiah Aiwoy', 3, '$2y$12$VHuXZ.nmCaO4NA24SXaC4utLKa4LMQUhkmRR5p53n.KRo1lyPddvO', '2026-02-16 09:25:36'),
(398, 'Kathleen Achiera Wowor', 3, '$2y$12$BGEj0dMeke5ef1sNrJf9WenykRWhxYVbumaX7RAolShAxd991VP2K', '2026-02-16 09:25:36'),
(399, 'Fayola Sari Ro Belvania Sinaga', 3, '$2y$12$RO28hOP2WmerWSbKZNI//ONRIgIbNFPWFnHOk3RbEaDfJqSiSpZn2', '2026-02-16 09:25:36'),
(400, 'Arabelle Emuna Kosasih', 3, '$2y$12$KyJf87y2Eujx.ReTU14tIeK/hFyzrB68/XzKlFePhVHtnRRDshNLi', '2026-02-16 09:25:36'),
(401, 'Meliana Sukendro', 3, '$2y$12$nqoAXo9TXzv2nf6skO3heun.hSwawUlH3cLgQgoEWIypz8ti8j5Eu', '2026-02-16 09:25:36'),
(402, 'Dave Ferdinand Setiadi', 3, '$2y$12$lbeueeZpE2ZQcyUe3HkQve/AILINt066QufHUuHEG/HRKJiDr7Fte', '2026-02-16 09:25:36'),
(403, 'Sofia Betheanne', 3, '$2y$12$q4tHDij1TWjF/0Bxj9P62OxsAMH8Y90Ss1UTeGK97DV64yPqvLAZO', '2026-02-16 09:25:36'),
(404, 'Zoelle Ilona Gideon', 3, '$2y$12$VbX1ffvnPHa.ovZn2bqi5.m0OAZ9OjjLUnVLb0oildIOpdPQSCxhe', '2026-02-16 09:25:36'),
(405, 'Laurensius Gavriel Osaze', 3, '$2y$12$MvJu/w45CsbZiisRPN5CbO6Q8vV9S3DsoEckTO2OXiSPc/BkUeBwK', '2026-02-16 09:25:36'),
(406, 'James Saga Hidayat', 3, '$2y$12$pZG3UFAlPqRd9/yKxTWa7uBle051az5BhpRvIR7rwCxvFBXiAzD0.', '2026-02-16 09:25:36'),
(407, 'Oliver Matthew Antonio Alim', 3, '$2y$12$hFL1USwbwrGvQn21j3d8YuVEiidvKvggeKV3ruIL9uFWdxCI.x/ia', '2026-02-16 09:25:36'),
(408, 'Melvin Sebastian Antonio Alim', 3, '$2y$12$Fi42gEU523Y.hmdaINcavekZgoyk2d5YKHPGya2Xof3Bm.8vV5jJG', '2026-02-16 09:25:36'),
(409, 'Michael Felizio Antonio Alim', 3, '$2y$12$dkYAy3GM8J8ArNDNzaSt2Of.O4MxoBh/aWFN96WlhOUU5EZltCfBO', '2026-02-16 09:25:36'),
(410, 'Keira Aimee Kristanto', 3, '$2y$12$Tl4lc8cubwUqGHw96WL2XOBOwKjjX2RjKbuD2mOzNGoVlEAxokWBW', '2026-02-16 09:25:36'),
(411, 'Zoe Kay Zebadiah Capah', 3, '$2y$12$mWCHtqcp9iWiWf9GVM4V5.HqeqmJU4j0/R1SzoxvAAw8Qyjp.oPM6', '2026-02-16 09:25:36'),
(412, 'Matthew Jonathan Hartono', 3, '$2y$12$pGo1.kUplgVDhf3JGfPR5eWBMYIOttOSqgXORZMdGjKHkpObuulve', '2026-02-16 09:25:36'),
(413, 'Franda Adeline Mikhely', 3, '$2y$12$NWcE96XA3dgxW.Jn1irhUuX56OKiwzP5YzrExeCnDrerSBtIlZ2Ca', '2026-02-16 09:25:36'),
(414, 'Bima Aji Kalimaya', 3, '$2y$12$u.OSnq/pPhSh2sETllN4a.Lj/N4X34V0xSqg0cemk7w7QFY/qcplO', '2026-02-16 09:25:36'),
(415, 'Chantal Abrielle Filbert', 3, '$2y$12$pjfKXJwpqCKySVB0wjfOze/czOAJQQhQIUp2gguMKPtpJridjDvU.', '2026-02-16 09:25:36'),
(416, 'Adriella Marion Joanne Isabel', 3, '$2y$12$gBkwNYRSQ2RkRgaeGb9GmeVjz2ntniIYe.Dl80cfRNMaFEE5dGl9a', '2026-02-16 09:25:36'),
(417, 'RafaeL Zein Suwandi', 3, '$2y$12$dgaPXUBMVwP0AxHengTP8OpFK4mBMcd2rHtpjnOhek6SCSp7SoLHC', '2026-02-16 09:25:36'),
(418, 'Scarlet Ivanka Rose', 3, '$2y$12$uv04nM9Obzpvh7wrg/4uXesJ2YU4o.UY2HSSnllnjoJKRMw.PwjjG', '2026-02-16 09:25:36'),
(419, 'Jennifer Christina Susanto', 3, '$2y$12$8GVkAkIEqcozo2xYzV8pF.xENQNfr2J.q8ZAkD8cNx5N4QWLSHxDW', '2026-02-16 09:25:36'),
(420, 'Elliot Roland King', 3, '$2y$12$YUEAIMTnHLWjgf9dhens3.EjWM7HVQ7/bkJMRvOfXyhDctCH6.2Me', '2026-02-16 09:25:36'),
(421, 'Ilona Clairine Nataniella', 3, '$2y$12$1NyOm02WAx772IrHhTjfM.hgWS1n8UNunUzh3GFCAKW7M/VMyZmhG', '2026-02-16 09:25:36'),
(422, 'Gabriella Jolyn Santosa', 3, '$2y$12$FkfghMHw0w4Gij4xzp0B4.NH.28EQt8lJOejErpL0pqoTWmH6EwV6', '2026-02-16 09:25:36'),
(423, 'Dominic Melvinson Wijaya', 3, '$2y$12$w/G9bafL.qlQxwGhhpfEa.HulZXB8HsgCDqfkcHel2Jo.loghUG7m', '2026-02-16 09:25:36'),
(424, 'Miquel Garcia Defano', 3, '$2y$12$LYd5uP3h6eSaqm0nLSHRuuQclvtelXEcG5vdZf4Heb.Q8JYT2i6mC', '2026-02-16 09:25:36'),
(425, 'Theressa Feodora Agatha', 3, '$2y$12$NSuaAPvyPBNOS21NVqJzp.LXig4nin97qm/cZU.ThF1/wk1uItenq', '2026-02-16 09:25:36'),
(426, 'Sharon Gisella Jill Christ', 3, '$2y$12$WekgXno2qz23W0uxT3.zRutDzbvLZvcSimSJZHAoL0GCoS/w0TYPS', '2026-02-16 09:25:36'),
(427, 'Jonathan Ben Ami', 3, '$2y$12$jzkaMUiXYEW7aiiO0ajVROxYPXNVXBgtPs2OXjtqSLqKcmXLogEC2', '2026-02-16 09:25:36'),
(428, 'Daniel Christopher Hartawan', 3, '$2y$12$ZkMmka8spN9DtukrMn6yhu9yShHXw9mLKPO8Xi2iRwRAguEffq9uW', '2026-02-16 09:25:36'),
(429, 'Alvarel Rayyanda Shigit', 3, '$2y$12$8p.eukfnEZznsDyFzg8vyOeNgTQCXQNRaWBKGzuoXOWv46yb4uS3m', '2026-02-16 09:25:36'),
(430, 'Afnan Nabil Firdaus Justyardi', 3, '$2y$12$HV.l.PDhcdKNghUv72g2lOypF.t1o9KNvFpK4YyvbLA1XV27WlvMW', '2026-02-16 09:25:36'),
(431, 'Axell Bradley Handoyo', 3, '$2y$12$Pnj5Q4CP4a2Pu53KG/Njl.zUtDmxBUjqnHEJir0mvCjBAurfR8cFe', '2026-02-16 09:25:36'),
(432, 'Axton Pramudya Yulian', 3, '$2y$12$ITUhsbvaxpTSNHPMyHNHQuN/4Smdu3kKcS2eCQlrdaZsGZEVbNs.G', '2026-02-16 09:25:36'),
(433, 'Joan Michah Sahir', 3, '$2y$12$oFvy6IOFc.Mbnniz2K7UPuqRg4e8lVNBciHMUV.1QfYHtz8H9OEoe', '2026-02-16 09:25:36'),
(434, 'Joshua Alvaro Rahadian', 3, '$2y$12$leEZh1A5Zw1voTrJixEd/.VXj5EHGpMn1LGdywKnsgZ73Jtbuut8m', '2026-02-16 09:25:36'),
(435, 'Jovelin Gracia Filadelfia', 3, '$2y$12$4iA.vmeiD3KUNf2hvJiOheoIExtvpkQc.t2TirXG3waV2EopIFTTq', '2026-02-16 09:25:36'),
(436, 'Lincoln Amadeus Thejo', 3, '$2y$12$eS.YklLMGaEQzJxTkEl5meCtaLZru5xPzK2mmzVk1yp7xYTsbxWE6', '2026-02-16 09:25:36'),
(437, 'Marcello Nathanael Sambodo', 3, '$2y$12$Rw21JbXQpf5MBEiYVIYbkuSZmUhaFYHCqL1Wp.EiyT4ZHIyQ9UtXu', '2026-02-16 09:25:36'),
(438, 'Noella Melody Karunia', 3, '$2y$12$EmF.FVHepKua7TzGE18DYOAbCDnZwgUDTWSVl4xq7No4Xowy7fHGe', '2026-02-16 09:25:36'),
(439, 'Joaquine Kezia Harnanto', 3, '$2y$12$gebc6UN/cty4/PNTlgJRrO1yTVHwhDZMbDZ7MQZ74z/jEDSV9QVgO', '2026-02-16 09:25:36'),
(440, 'Argya Raphael A Bima', 3, '$2y$12$nW73oZ2zxAJJaQXMNQjdfOYR2N9M3ow.XxhcYfdvR8xusrSUdcfaO', '2026-02-16 09:25:36'),
(441, 'Samantha Adeline Susanto', 3, '$2y$12$ERrLBDHKKkuh60q4JmFkVOE2goH67lx9qteED21oWvfE7lPKbtjN2', '2026-02-16 09:25:36'),
(442, 'Jonathan Wisely Santoso', 3, '$2y$12$NHH8mKfF0E4VJQ0esZaPhOqnHVieKEN37RKWqDgZLyXINLUexhIim', '2026-02-16 09:25:36'),
(443, 'Jesslyn Annabel Christian', 3, '$2y$12$A9Z89qizhfN06HJGM4cdHubZMnkCEJuH.JQCoT.m/WU0nwXXSBkq.', '2026-02-16 09:25:36'),
(444, 'Deagabriella Ivana Aiwoy', 3, '$2y$12$83wg5QqxF1VrdMMchP15delB0aY2Nibg/M3IVu5HnuLAtypcZjKku', '2026-02-16 09:25:36'),
(445, 'Chaireen Emanuelasinta Anfiyanto Bogar', 3, '$2y$12$26cfVJEqAoZezzBOEH6rMeP5gk/H8vufo.uecdiStlmGK2ql/O5kO', '2026-02-16 09:25:36'),
(446, 'Michella Chelsea Antonia Alim', 3, '$2y$12$w6vdO3ypvKQ.mnG1mKBZqur0GXa4ccRBaqHDAUEfEstyYw8300IC.', '2026-02-16 09:25:36'),
(447, 'Eadric Jehoshua Harleyson', 3, '$2y$12$qHYtku7z3XsdV25hh63UxOwUWn4tOMsB3gdianO07IW8gmgDKsN9a', '2026-02-16 09:25:36'),
(448, 'Anindya Kinanthi Putri Cahya', 3, '$2y$12$pauA75EzJwRPKayfKQDvJuZnZYkwUWvhoeYiMbmz0JEi7SGi/c/hy', '2026-02-16 09:25:36'),
(449, 'Eileen Carolina Rosalie', 3, '$2y$12$zrOE2cnnOl0LR/5Bmx502eBXxWsc2c7edIo8QM5yisKlH9qcaJq/a', '2026-02-16 09:25:36'),
(450, 'Eowyn Alessandra Elisheva Jason', 3, '$2y$12$t2O2HDmsiLevrgm87Km9r.QHmjrII0uz0eVJgQ/RBP0kIasCe967i', '2026-02-16 09:25:36'),
(451, 'Gregorius Jason Santosa', 3, '$2y$12$9o5grjHMIIsLSBsPMpqAtuweZXb7S91vGldf7mZNpI4bknQiuySUO', '2026-02-16 09:25:36'),
(452, 'Janetta Danica Oetomo', 3, '$2y$12$vTAwALwsnGfHqb1DrsUHzutfx73Jhi/UVHlMDaP8awpBXLfL7.d.e', '2026-02-16 09:25:36'),
(453, 'Jordan Aldrizio Hermawan', 3, '$2y$12$J9do2M3acyScnS/K4mn6bOtzKkMWcDVh13T4qakEBf9sKR8PiS07.', '2026-02-16 09:25:36'),
(454, 'Matthew Jeremy Christophe Liong', 3, '$2y$12$xbOL0dAmrDpLKHfHXjHR2eDpeR5axHc4EQWSGcN6N9mrQAeso9TCK', '2026-02-16 09:25:36'),
(455, 'Mossel Viviene Bong', 3, '$2y$12$y1VsWOvBjab6dfjxD9NV7e8/sWKMNcDqMywTgKiQ/3NfDih3rqfn.', '2026-02-16 09:25:36'),
(456, 'Naomi Tristabelle Kadaryono', 3, '$2y$12$xKBlLZ6VelN3r9kjyEW0/uC6RpRlYeOjfFY0dT.S3CGlCworiVIpi', '2026-02-16 09:25:36'),
(457, 'Giovanna Adelle Atmadja', 3, '$2y$12$woxrQnVxo25O3MOz2.CdI.lwRoT5J1xfREml/tg76TRtcYxLLtz6K', '2026-02-16 09:25:36'),
(458, 'Deminitus Junior Aiwoy', 3, '$2y$12$lPRSIdnTO080grLACiWKPO7wZqGhHiwLLOTm8ofp.eWyBBDnM.PtO', '2026-02-16 09:25:36'),
(459, 'Arcilla Beatrice Gunawan', 3, '$2y$12$Jp5uFeVPS4CiX4wdZKeEG.aIOWDwcy7lQRv5B1awixG35WrJn3WAe', '2026-02-16 09:25:36'),
(460, 'Bryan Okfiano', 3, '$2y$12$ov3GOSHppWKmNTh8F9meRuea29ATsskw782KbKRQ9cxJS4uS4bJfa', '2026-02-16 09:25:36'),
(461, 'Sarah Allison', 3, '$2y$12$Bv/r9L4aajV5IuOWsAsvxuH1gbiQLSYPxqGNlMPMJWdu9zTVTD.n2', '2026-02-16 09:25:36'),
(462, 'Davian Nathanael Kurniawan', 3, '$2y$12$V3yk/11favL4mRDLzeIQR.kfR0CQCGdmbXCJZJTjChbuLo5a8Og5u', '2026-02-16 09:25:36'),
(463, 'Muhammad Aqil Al Rais Sukardi', 3, '$2y$12$A1qYb94DUz.UHa3skNA7retJxOGHmiTO3X5G87E77SsgRf.ftc4W6', '2026-02-16 09:25:36'),
(464, 'Collias Jeshua Wijaya', 3, '$2y$12$bfcLH4yPJytOWBYw0LM17OfUnc7l58nWu6lPpnRs0EYdu70.aMmQ6', '2026-02-16 09:25:36'),
(465, 'Franda Rapha Mikayla', 3, '$2y$12$kpaZIrw62Nefe3RuFCUkMOYv0WLMGZUYPijUuPebsjLvaLVGcDOB.', '2026-02-16 09:25:36'),
(466, 'Nathania Paramita', 3, '$2y$12$hjhzIqCySOT0uZAl0xikD.xXvUAHHLd.3dVr3EhadeuXDqFAcAeBa', '2026-02-16 09:25:36'),
(467, 'Danielle Victory Aditya', 3, '$2y$12$heWEpz1vOCyXjpy4iafpseai.7fzq6w0n0FwBZ9BznrYBYc7lqBPG', '2026-02-16 09:25:36'),
(468, 'Elextra Jayne Zea Suwondo', 3, '$2y$12$u8Xs3Q334sGpuqBf43aAEuZNi2SnPmsCVwRDHrBh7uYkgzG7OZ.MK', '2026-02-16 09:25:36'),
(469, 'Annabelle Lovelia Kosasih', 3, '$2y$12$pQ0/pGCa1YAWVrZxScLD1eaM9D3yO0bcBkbMSkBmDnEgNOPw7Fv6W', '2026-02-16 09:25:36'),
(470, 'Luzern Matthew Thejo', 3, '$2y$12$CZ4sl1sPdUS6trpPr0.xwuB33JZ8KPiYl.MTxyHvTynajvDqdmKKC', '2026-02-16 09:25:36'),
(471, 'William Wilson Widjaja', 3, '$2y$12$ppJFCGcmtcu2ZLkDzRdGpe6sTRLDzJx87uJV8ZWUvkWgQz7P0V4b2', '2026-02-16 09:25:36'),
(472, 'Adriell Gilbert Juan Mason', 3, '$2y$12$KdPOTvspo0tmVAu.JRoUu.6/zZJm/hbPrZeTW7e9BD.4/a8VadjE6', '2026-02-16 09:25:36'),
(473, 'Samuel Kaelo Wowor', 3, '$2y$12$VCOiPkFGNpc5noIX.IY6pOeERJMFmuZYfgc1T944tZScwb8ULSLYG', '2026-02-16 09:25:36'),
(474, 'Raphael Timothy Saputro', 3, '$2y$12$Lj/8BO4SjTFZB7r7OM2MluYj6bp4tL8LWqNUk50aU/sRYG0ZZ00zq', '2026-02-16 09:25:36'),
(475, 'Jaden Xavier Edmund Chandra', 3, '$2y$12$MRNereKeyBi3PTTCf8p3b.d.SKZVTAfSsMHgT4hmp5fn62JkfhFca', '2026-02-16 09:25:36'),
(476, 'Jason Bennedict Irwanto', 3, '$2y$12$QXA.ABXRRLjNtZqd7zrZt.hiA4gI5oW8OPFY4sa3f0K/Fw0p2I1nq', '2026-02-16 09:25:36'),
(477, 'Ynez Elizabeth Gideon', 3, '$2y$12$/k4LFEfA.9Ed00R/I8gM/eBF58ELnnmeHUmJtVwjXUh07PvDD1Yoe', '2026-02-16 09:25:36'),
(478, 'David Ben Zion', 3, '$2y$12$TurDhwavJnLhcx86pqNh2uytTkcLBucw3DK3geHS6UTThuKbnPAHC', '2026-02-16 09:25:36'),
(479, 'Joseph Jonathan Ecclesia Ong', 3, '$2y$12$cIpQgRDHv/6FYDwQSv2zlOikLn/W74qkHRO520RJqIeEkj4j.rf5i', '2026-02-16 09:25:36'),
(480, 'Darrel Luke', 3, '$2y$12$0A.Q8VEHv.sYz8aTNs5vN.GkJNfeimBX0EjdOWsWKUFJU9aNCHtiS', '2026-02-16 09:25:36'),
(481, 'Cameron Stefano Gallardo', 3, '$2y$12$GBtbRpm/wchfKlF/xfF.AOmdoyA1bS1UuTE3TBsP5bX84y44tGV..', '2026-02-16 09:25:36'),
(482, 'Michael Lionel Aquino Motombri', 3, '$2y$12$5QjrpNoFPXAY6BO6mxKn9ugPqiR7z1FHS8yqLANPgXMYIXBFTLPWG', '2026-02-16 09:25:36'),
(483, 'Jezriel Adler Dave Suwondo', 3, '$2y$12$bQ9JePz33P0nLw63XnO05.jk50k.symEWdsjj5VFzQXa5TV8ZF0Ey', '2026-02-16 09:25:36'),
(484, 'Joice Gracia Yunike', 3, '$2y$12$Vsfrph/G29MkWHms9RZPUOQOxY41ekh6hRibITI7uWRS8VPcferWO', '2026-02-16 09:25:36'),
(485, 'Ignacio Benavides', 3, '$2y$12$ApaGlIP4euqSTFn.cO9n6.g/SSFm.uSUxVyfiN1yz3WXkIuUtOmPW', '2026-02-16 09:25:36'),
(486, 'Aiko Nara Dwiputri Hermawan', 3, '$2y$12$JjFLtFiOrSDectLzdbyxqOJeAxixEp3yi/g240x7r0pPEPCSCAwve', '2026-02-16 09:25:36'),
(487, 'Devin Brian Yuichi', 3, '$2y$12$IeubQyIQwSV5y7SmHYXrNObglGmFnIy2DaCHSr.fwgsSlqIImiZzC', '2026-02-16 09:25:36'),
(488, 'Mikhael Guardian Epafroditus', 3, '$2y$12$JZ/hFIge0j25ALj.GxLQ3eLOEjjqcqiJokhPuFlaTew3Eqtb6.TDm', '2026-02-16 09:25:36'),
(489, 'Kallia Early Suwandi', 3, '$2y$12$azRigpMV.9TxLwrx8NKS2udD6ZjjSeiNQyTpWuDKaNQeSAYBlL6oO', '2026-02-16 09:25:36'),
(490, 'Theodora Justine', 3, '$2y$12$9nC1xfgU7YYhIVES2eLQ9useTjEL1JwV/qHk9aT6QIzMbZRTN.UyW', '2026-02-16 09:25:36'),
(491, 'Josse William Kurniawan', 3, '$2y$12$2PU.fZDKbH2o1wledWs3t.rvGN9hBJ2pzGXHb2ecs3F8kN1CMTITO', '2026-02-16 09:25:36'),
(492, 'Giselle Victoria Johan', 3, '$2y$12$N5P7igiNXdWQLq8ORYriGukx8mzugZofI83FU8AXQZFMjm2TE6AE2', '2026-02-16 09:25:36'),
(493, 'Michael Adriel Kopli', 3, '$2y$12$WFRp98eGUrQJq7zx9Lne3ue.CseSTS2YPWA0ac6/UFyQY66EaSzVq', '2026-02-16 09:25:36'),
(494, 'Cuin yow Heriyanto', 3, '$2y$12$nranl/tQQ9aiuHsYxudDRuw7gAalqBa/4OUc6/5f9Zcxp1hDNTzue', '2026-02-16 09:25:36'),
(495, 'Evan Alexander Irwanto', 3, '$2y$12$xDHBsQvtz5J0KW8bMEvcA.9Fh.V8QODSwUF2c6qo2Y3Mq5BAOlaAa', '2026-02-16 09:25:36'),
(496, 'Yosua Maggie Gabriel', 3, '$2y$12$Penelew8rvwu.LQnTImf1OLuk1Js7nPmeBEqq2stVQxc24BO.eJAO', '2026-02-16 09:25:36'),
(497, 'Effle Evengelos Hartono', 3, '$2y$12$7mujtUaUjEHzdXqLVKJKhOIA0XqKFyGdoTMMXKmICeH0F96dyh1Nq', '2026-02-16 09:25:36'),
(498, 'Elnino Christian', 3, '$2y$12$A280RBaUm8zycqMbXU6TB.sk1AdU.i8XGOgrDqCtrDor65qQzDDnm', '2026-02-16 09:25:36'),
(499, 'Gabriel Anugerah Triadmaja', 3, '$2y$12$C4Qk8y6.kO85PRNnfmOavuYXkwP2QpDVTavjBCzXDzyKr8L6OSfpe', '2026-02-16 09:25:36'),
(500, 'Komang Kezia Sashi Kirana', 3, '$2y$12$TiSvKFAdKckAzzSQ8zjpN.WMVfR/7WoxZfPr303ugzsAGbr/24GoS', '2026-02-16 09:25:36'),
(501, 'Valezka Abbygale Divanie Suwondo', 3, '$2y$12$6Wddp9Hmlah37VvFsqWPF.RVr7uNP3i/dcBTlFbtQ7IpdriiE.6S6', '2026-02-16 09:25:36'),
(502, 'Kennice Pandorra Santoso', 3, '$2y$12$1.NVTD.GOfEUABC6dGR0ZOudM57z/Ihi6PrT20ITJ9eV7A8tvpkBe', '2026-02-16 09:25:36'),
(503, 'Keiko Cayla Putri Hermawan', 3, '$2y$12$jD65CjgSR0LMrEibtXOinuBggwtWoWz2oPVZP5yPRAAfvNaLxzWIG', '2026-02-16 09:25:36'),
(504, 'Stephanie Angie Luxza Pradana', 3, '$2y$12$6b56pnH.OTj6mLtmPFP38OBgVg/eKUUfQtS53B6ZrFpfz.hCKisvq', '2026-02-16 09:25:36'),
(505, 'Albertus Bryan Harjanto', 3, '$2y$12$D3IH2BIIjMPQ36LSnN1DVOee2Id0b65ewDNtZRu3p0gY2.pKT8uea', '2026-02-16 09:25:36'),
(506, 'Jaskha Octan Leander', 3, '$2y$12$OhPOZg88rE1aFLMdO0sVmO4FjOBnJWV./2GeQPnQU2nBRzs0fRfeS', '2026-02-16 09:25:36'),
(507, 'Flavia Domitilla Chloe Malchidielska', 3, '$2y$12$yiuImo/lGUKdP8lnaOXRc.pZZlEgXPax7X8bUaHGrX3MswOfyYOn.', '2026-02-16 09:25:36'),
(508, 'Giacinta Mariscotti Chleo Malchidielski', 3, '$2y$12$K2DUsA7Es3ogwGrcKYzDJOMY56w6dzPJnKTCAgZGqCZ/MjKbiC6qS', '2026-02-16 09:25:36'),
(509, 'Claudia Veronica ', 3, '$2y$12$lHp1bm9.vz5x3PHEAomdCeDHeq4zO1lQ28pLERbBnzHtcxP1XmEQK', '2026-02-16 09:25:36'),
(510, 'Jesse Darell Lee Wijaya', 3, '$2y$12$FMwvc9nm2JmRxBQc4x/XZ.pdx20EKv/75Zj1qb/mupYWtLZc7O.j6', '2026-02-16 09:25:36'),
(511, 'Jocelyn Kezia Setyawan ', 3, '$2y$12$L.Dmcr/0ON2S/DEbD5L4/.m6NIocMntEgwfAaWK5j28YffTD3/qJy', '2026-02-16 09:25:36'),
(512, 'Jose Emannuell Setiawan Suryajaya', 3, '$2y$12$/ls9E3WKvX34VAymte8pe.36FX89ZjmteuxZKzHzPiFF.Iup6E.vG', '2026-02-16 09:25:36'),
(513, 'Violet Imanuella Tiffany', 3, '$2y$12$kW/11gLQ8N7H.ldFtzUd2OOeSwU8qvKNA.vXs44UDzaeNg2Y.4Oqe', '2026-02-16 09:25:36'),
(514, 'Yesya Maggie Valencia', 3, '$2y$12$/YY500.tM4nY5eCHzYBKfe1iYZHa43wge3uy2iQ13kmXg3zA1QGZi', '2026-02-16 09:25:36'),
(515, 'Mark Fievel Sinarto', 3, '$2y$12$lTHqdyrpdCn3l0BGfPvweeFUYQJfVCwWQlpbUzVJoAYlqIjYenv0G', '2026-02-16 09:25:36'),
(516, 'Regina Abigail Priyanto', 3, '$2y$12$/H0nUKdcUlSkS.Rv4I.bFOAMpLlKLkWrZ7NAaIz8D1afxdf8FnvAe', '2026-02-16 09:25:36'),
(517, 'admin2', 1, '$2y$12$kGSHQwmj1fCr2a1RdQLdXeKYaGIUP.wcw57aJ73ZXobH4w8mMLGeK', '2026-01-31 10:03:21'),
(518, 'admin3', 1, '$2y$12$u9YZsqcUrB07/6jSYAhLaukjwq86umRrN4D6JFyoz0pzIYW.6Jhni', '2026-01-31 10:03:21'),
(519, 'adminPerpus1', 1, '$2y$12$VBjpotWjiVbthl8FEExiv.CnP66yYgCItrCOLxvOTQ6hTZ4X9MNii', '2026-02-17 07:18:29'),
(520, 'adminPerpus2', 1, '$2y$12$VBjpotWjiVbthl8FEExiv.CnP66yYgCItrCOLxvOTQ6hTZ4X9MNii', '2026-02-17 07:18:29'),
(521, 'adminPerpus3', 1, '$2y$12$VBjpotWjiVbthl8FEExiv.CnP66yYgCItrCOLxvOTQ6hTZ4X9MNii', '2026-02-17 07:18:29'),
(522, 'dagiel', 1, '$2y$12$KfMyqvUvzRSnlRd4accZfurD6fihBv0fg4iVpYBVcomC3cgJXiVM6', '2026-02-19 14:55:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `borrow_books`
--
ALTER TABLE `borrow_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `verified_by` (`verified_by`);

--
-- Indexes for table `borrow_tools`
--
ALTER TABLE `borrow_tools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `tool_id` (`tool_id`),
  ADD KEY `verified_by` (`verified_by`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consumables`
--
ALTER TABLE `consumables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consumable_requests`
--
ALTER TABLE `consumable_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `consumable_id` (`consumable_id`),
  ADD KEY `verified_by` (`verified_by`);

--
-- Indexes for table `consumable_usages`
--
ALTER TABLE `consumable_usages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `consumable_id` (`consumable_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `digital_books`
--
ALTER TABLE `digital_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `borrow_books`
--
ALTER TABLE `borrow_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `borrow_tools`
--
ALTER TABLE `borrow_tools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `consumables`
--
ALTER TABLE `consumables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `consumable_requests`
--
ALTER TABLE `consumable_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `consumable_usages`
--
ALTER TABLE `consumable_usages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `digital_books`
--
ALTER TABLE `digital_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tools`
--
ALTER TABLE `tools`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=523;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `borrow_books`
--
ALTER TABLE `borrow_books`
  ADD CONSTRAINT `borrow_books_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `borrow_books_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `borrow_books_ibfk_3` FOREIGN KEY (`verified_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `borrow_tools`
--
ALTER TABLE `borrow_tools`
  ADD CONSTRAINT `borrow_tools_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `borrow_tools_ibfk_2` FOREIGN KEY (`tool_id`) REFERENCES `tools` (`id`),
  ADD CONSTRAINT `borrow_tools_ibfk_3` FOREIGN KEY (`verified_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `consumable_requests`
--
ALTER TABLE `consumable_requests`
  ADD CONSTRAINT `consumable_requests_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `consumable_requests_ibfk_2` FOREIGN KEY (`consumable_id`) REFERENCES `consumables` (`id`),
  ADD CONSTRAINT `consumable_requests_ibfk_3` FOREIGN KEY (`verified_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `consumable_usages`
--
ALTER TABLE `consumable_usages`
  ADD CONSTRAINT `consumable_usages_ibfk_1` FOREIGN KEY (`consumable_id`) REFERENCES `consumables` (`id`),
  ADD CONSTRAINT `consumable_usages_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `digital_books`
--
ALTER TABLE `digital_books`
  ADD CONSTRAINT `digital_books_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tools`
--
ALTER TABLE `tools`
  ADD CONSTRAINT `tools_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
