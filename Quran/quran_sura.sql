-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 08, 2024 at 11:57 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ghiras`
--

-- --------------------------------------------------------

--
-- Table structure for table `quran_sura`
--

DROP TABLE IF EXISTS `quran_sura`;
CREATE TABLE IF NOT EXISTS `quran_sura` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `total_verses` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quran_sura`
--

INSERT INTO `quran_sura` (`id`, `name`, `type`, `total_verses`) VALUES
(1, 'الفاتحة', 'meccan', 7),
(2, 'البقرة', 'medinan', 286),
(3, 'آل عمران', 'medinan', 200),
(4, 'النساء', 'medinan', 176),
(5, 'المائدة', 'medinan', 120),
(6, 'الأنعام', 'meccan', 165),
(7, 'الأعراف', 'meccan', 206),
(8, 'الأنفال', 'medinan', 75),
(9, 'التوبة', 'medinan', 129),
(10, 'يونس', 'meccan', 109),
(11, 'هود', 'meccan', 123),
(12, 'يوسف', 'meccan', 111),
(13, 'الرعد', 'medinan', 43),
(14, 'ابراهيم', 'meccan', 52),
(15, 'الحجر', 'meccan', 99),
(16, 'النحل', 'meccan', 128),
(17, 'الإسراء', 'meccan', 111),
(18, 'الكهف', 'meccan', 110),
(19, 'مريم', 'meccan', 98),
(20, 'طه', 'meccan', 135),
(21, 'الأنبياء', 'meccan', 112),
(22, 'الحج', 'medinan', 78),
(23, 'المؤمنون', 'meccan', 118),
(24, 'النور', 'medinan', 64),
(25, 'الفرقان', 'meccan', 77),
(26, 'الشعراء', 'meccan', 227),
(27, 'النمل', 'meccan', 93),
(28, 'القصص', 'meccan', 88),
(29, 'العنكبوت', 'meccan', 69),
(30, 'الروم', 'meccan', 60),
(31, 'لقمان', 'meccan', 34),
(32, 'السجدة', 'meccan', 30),
(33, 'الأحزاب', 'medinan', 73),
(34, 'سبإ', 'meccan', 54),
(35, 'فاطر', 'meccan', 45),
(36, 'يس', 'meccan', 83),
(37, 'الصافات', 'meccan', 182),
(38, 'ص', 'meccan', 88),
(39, 'الزمر', 'meccan', 75),
(40, 'غافر', 'meccan', 85),
(41, 'فصلت', 'meccan', 54),
(42, 'الشورى', 'meccan', 53),
(43, 'الزخرف', 'meccan', 89),
(44, 'الدخان', 'meccan', 59),
(45, 'الجاثية', 'meccan', 37),
(46, 'الأحقاف', 'meccan', 35),
(47, 'محمد', 'medinan', 38),
(48, 'الفتح', 'medinan', 29),
(49, 'الحجرات', 'medinan', 18),
(50, 'ق', 'meccan', 45),
(51, 'الذاريات', 'meccan', 60),
(52, 'الطور', 'meccan', 49),
(53, 'النجم', 'meccan', 62),
(54, 'القمر', 'meccan', 55),
(55, 'الرحمن', 'medinan', 78),
(56, 'الواقعة', 'meccan', 96),
(57, 'الحديد', 'medinan', 29),
(58, 'المجادلة', 'medinan', 22),
(59, 'الحشر', 'medinan', 24),
(60, 'الممتحنة', 'medinan', 13),
(61, 'الصف', 'medinan', 14),
(62, 'الجمعة', 'medinan', 11),
(63, 'المنافقون', 'medinan', 11),
(64, 'التغابن', 'medinan', 18),
(65, 'الطلاق', 'medinan', 12),
(66, 'التحريم', 'medinan', 12),
(67, 'الملك', 'meccan', 30),
(68, 'القلم', 'meccan', 52),
(69, 'الحاقة', 'meccan', 52),
(70, 'المعارج', 'meccan', 44),
(71, 'نوح', 'meccan', 28),
(72, 'الجن', 'meccan', 28),
(73, 'المزمل', 'meccan', 20),
(74, 'المدثر', 'meccan', 56),
(75, 'القيامة', 'meccan', 40),
(76, 'الانسان', 'medinan', 31),
(77, 'المرسلات', 'meccan', 50),
(78, 'النبإ', 'meccan', 40),
(79, 'النازعات', 'meccan', 46),
(80, 'عبس', 'meccan', 42),
(81, 'التكوير', 'meccan', 29),
(82, 'الإنفطار', 'meccan', 19),
(83, 'المطففين', 'meccan', 36),
(84, 'الإنشقاق', 'meccan', 25),
(85, 'البروج', 'meccan', 22),
(86, 'الطارق', 'meccan', 17),
(87, 'الأعلى', 'meccan', 19),
(88, 'الغاشية', 'meccan', 26),
(89, 'الفجر', 'meccan', 30),
(90, 'البلد', 'meccan', 20),
(91, 'الشمس', 'meccan', 15),
(92, 'الليل', 'meccan', 21),
(93, 'الضحى', 'meccan', 11),
(94, 'الشرح', 'meccan', 8),
(95, 'التين', 'meccan', 8),
(96, 'العلق', 'meccan', 19),
(97, 'القدر', 'meccan', 5),
(98, 'البينة', 'medinan', 8),
(99, 'الزلزلة', 'medinan', 8),
(100, 'العاديات', 'meccan', 11),
(101, 'القارعة', 'meccan', 11),
(102, 'التكاثر', 'meccan', 8),
(103, 'العصر', 'meccan', 3),
(104, 'الهمزة', 'meccan', 9),
(105, 'الفيل', 'meccan', 5),
(106, 'قريش', 'meccan', 4),
(107, 'الماعون', 'meccan', 7),
(108, 'الكوثر', 'meccan', 3),
(109, 'الكافرون', 'meccan', 6),
(110, 'النصر', 'medinan', 3),
(111, 'المسد', 'meccan', 5),
(112, 'الإخلاص', 'meccan', 4),
(113, 'الفلق', 'meccan', 5),
(114, 'الناس', 'meccan', 6);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
