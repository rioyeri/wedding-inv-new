-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2023 at 09:05 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wedding-inv-new`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `kode` varchar(10) DEFAULT NULL,
  `icon` varchar(199) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id`, `nama`, `kode`, `icon`) VALUES
(1, 'Bank Mandiri', 'mandiri', 'mandiri.png'),
(2, 'Bank BCA', 'bca', 'bca.png'),
(3, 'Bank BNI', 'bni', 'bni.png'),
(4, 'Bank BRI', 'bri', 'bri.jpg'),
(5, 'Bank Agroniaga', 'agroniaga', 'agroniaga.jpg'),
(6, 'Bank BPD Kaltim', 'kaltim', 'kaltim.png'),
(7, 'Bank Muamalat', 'muamalat', 'muamalat.jpeg'),
(8, 'Bank Mandiri Syariah', 'mandirisya', 'mandirisyariah.png');

-- --------------------------------------------------------

--
-- Table structure for table `boxicons`
--

CREATE TABLE `boxicons` (
  `id` int(11) NOT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `boxicons`
--

INSERT INTO `boxicons` (`id`, `icon`) VALUES
(1, 'bx bxl-whatsapp-square'),
(2, 'bx bxl-soundcloud'),
(3, 'bx bxl-snapchat'),
(4, 'bx bxl-telegram'),
(5, 'bx bxl-wordpress'),
(6, 'bx bxl-wikipedia'),
(7, 'bx bxl-dropbox'),
(8, 'bx bxl-blogger'),
(9, 'bx bxl-discord'),
(10, 'bx bxl-skype'),
(11, 'bx bxl-medium-square'),
(12, 'bx bxl-medium'),
(13, 'bx bxl-linkedin-square'),
(14, 'bx bxl-google-plus-circle'),
(15, 'bx bxl-google-plus'),
(16, 'bx bxl-facebook-square'),
(17, 'bx bxl-linkedin'),
(18, 'bx bxl-vimeo'),
(19, 'bx bxl-tumblr'),
(20, 'bx bxl-whatsapp'),
(21, 'bx bxl-youtube'),
(22, 'bx bxl-twitter'),
(23, 'bx bxl-instagram'),
(24, 'bx bxl-google'),
(25, 'bx bxl-facebook'),
(26, 'bx bxl-pinterest-alt'),
(27, 'bx bxl-facebook-circle'),
(28, 'bx bxl-instagram-alt'),
(29, 'bx bxl-apple'),
(30, 'bx bxl-microsoft'),
(31, 'bx bxl-windows'),
(32, 'bx bxl-messenger'),
(33, 'bx bxl-pinterest'),
(34, 'bx bxl-play-store'),
(35, 'bx bxs-movie-play'),
(36, 'bx bx-movie-play'),
(37, 'bx bxs-image-alt'),
(38, 'bx bxs-image'),
(39, 'bx bx-images'),
(40, 'bx bxs-map'),
(41, 'bx bx-map'),
(42, 'bx bx-book-open'),
(43, 'bx bx-link-alt');

-- --------------------------------------------------------

--
-- Table structure for table `complement`
--

CREATE TABLE `complement` (
  `id` int(11) NOT NULL,
  `invitation_id` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `song` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `song2` varchar(255) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complement`
--

INSERT INTO `complement` (`id`, `invitation_id`, `icon`, `song`, `banner`, `song2`, `creator`, `created_at`, `updated_at`) VALUES
(3, 'syifAlvin', 'icon.ico', 'one-piece_opening-1-we-are.mp3', 'DSC03232.jpg', NULL, 1, '2023-07-10 10:13:03', '2023-08-13 10:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `complement_specialname`
--

CREATE TABLE `complement_specialname` (
  `id` int(11) NOT NULL,
  `invitation_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `datakota`
--

CREATE TABLE `datakota` (
  `kota_id` int(11) NOT NULL,
  `kode_pusdatin_prov` int(11) NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `kode_pusdatin_kota` int(11) NOT NULL,
  `kab_kota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datakota`
--

INSERT INTO `datakota` (`kota_id`, `kode_pusdatin_prov`, `provinsi`, `kode_pusdatin_kota`, `kab_kota`) VALUES
(1, 11, 'ACEH', 7, 'KAB. ACEH BARAT'),
(2, 11, 'ACEH', 12, 'KAB. ACEH BARAT DAYA'),
(3, 11, 'ACEH', 8, 'KAB. ACEH BESAR'),
(4, 11, 'ACEH', 3, 'KAB. ACEH SELATAN'),
(5, 11, 'ACEH', 0, 'KAB. ACEH SINGKIL'),
(6, 11, 'ACEH', 14, 'KAB. ACEH TAMIANG'),
(7, 11, 'ACEH', 6, 'KAB. ACEH TENGAH'),
(8, 11, 'ACEH', 4, 'KAB. ACEH TENGGARA'),
(9, 11, 'ACEH', 5, 'KAB. ACEH TIMUR'),
(10, 11, 'ACEH', 11, 'KAB. ACEH UTARA'),
(11, 11, 'ACEH', 17, 'KAB. BENER MERIAH'),
(12, 11, 'ACEH', 10, 'KAB. BIREUEN'),
(13, 11, 'ACEH', 13, 'KAB. GAYO LUES'),
(14, 11, 'ACEH', 15, 'KAB. NAGAN RAYA'),
(15, 11, 'ACEH', 9, 'KAB. PIDIE'),
(16, 11, 'ACEH', 18, 'KAB. PIDIE JAYA'),
(17, 11, 'ACEH', 1, 'KAB. SIMEULUE'),
(18, 11, 'ACEH', 0, 'KAB.ACEH JAYA'),
(19, 11, 'ACEH', 71, 'KOTA BANDA ACEH'),
(20, 11, 'ACEH', 73, 'KOTA LANGSA'),
(21, 11, 'ACEH', 74, 'KOTA LHOKSUMAWE'),
(22, 11, 'ACEH', 72, 'KOTA SABANG'),
(23, 11, 'ACEH', 75, 'KOTA SUBULUSSALAM'),
(24, 51, 'BALI', 3, 'KAB. BADUNG'),
(25, 51, 'BALI', 6, 'KAB. BANGLI'),
(26, 51, 'BALI', 8, 'KAB. BULELENG'),
(27, 51, 'BALI', 4, 'KAB. GIANYAR'),
(28, 51, 'BALI', 1, 'KAB. JEMBRANA'),
(29, 51, 'BALI', 7, 'KAB. KARANG ASEM'),
(30, 51, 'BALI', 5, 'KAB. KLUNGKUNG'),
(31, 51, 'BALI', 2, 'KAB. TABANAN'),
(32, 51, 'BALI', 71, 'KOTA DENPASAR'),
(33, 19, 'BANGKA BELITUNG', 3, 'KAB. BANGKA BARAT'),
(34, 19, 'BANGKA BELITUNG', 5, 'KAB. BANGKA SELATAN'),
(35, 19, 'BANGKA BELITUNG', 4, 'KAB. BANGKA TENGAH'),
(36, 19, 'BANGKA BELITUNG', 1, 'KAB. BANGKAA'),
(37, 19, 'BANGKA BELITUNG', 2, 'KAB. BELITUNG'),
(38, 19, 'BANGKA BELITUNG', 6, 'KAB. BELITUNG TIMUR'),
(39, 19, 'BANGKA BELITUNG', 71, 'KOTA PANGKAL PINANG'),
(40, 36, 'BANTEN', 2, 'KAB. LEBAK'),
(41, 36, 'BANTEN', 1, 'KAB. PANDEGLANG'),
(42, 36, 'BANTEN', 4, 'KAB. SERANG'),
(43, 36, 'BANTEN', 3, 'KAB. TANGERANG'),
(44, 36, 'BANTEN', 72, 'KOTA CILEGON'),
(45, 36, 'BANTEN', 73, 'KOTA SERANG'),
(46, 36, 'BANTEN', 71, 'KOTA TANGERANG'),
(47, 36, 'BANTEN', 74, 'KOTA TANGERANG SELATAN'),
(48, 17, 'BENGKULU', 1, 'KAB. BENGKULU SELATAN'),
(49, 17, 'BENGKULU', 9, 'KAB. BENGKULU TENGAH'),
(50, 17, 'BENGKULU', 4, 'KAB. KAUR'),
(51, 17, 'BENGKULU', 8, 'KAB. KEPAHIANG'),
(52, 17, 'BENGKULU', 7, 'KAB. LEBONG'),
(53, 17, 'BENGKULU', 6, 'KAB. MUKO-MUKO'),
(54, 17, 'BENGKULU', 2, 'KAB. REJANG LEBONG'),
(55, 17, 'BENGKULU', 5, 'KAB. SELUMA'),
(56, 17, 'BENGKULU', 3, 'KAB.BENGKULU UTARA'),
(57, 17, 'BENGKULU', 71, 'KOTA BENGKULU'),
(58, 34, 'DI YOGYAKARTA', 2, 'KAB. BANTUL'),
(59, 34, 'DI YOGYAKARTA', 3, 'KAB. GUNUNG KIDUL'),
(60, 34, 'DI YOGYAKARTA', 1, 'KAB. KULON PROGO'),
(61, 34, 'DI YOGYAKARTA', 4, 'KAB. SLEMAN'),
(62, 34, 'DI YOGYAKARTA', 71, 'KOTA YOGYAKARTA'),
(63, 75, 'GORONTALO', 1, 'KAB. BOALEMO'),
(64, 75, 'GORONTALO', 4, 'KAB. BONE BOLANGO'),
(65, 75, 'GORONTALO', 2, 'KAB. GORONTALO'),
(66, 75, 'GORONTALO', 5, 'KAB. GORONTALO UTARA'),
(67, 75, 'GORONTALO', 3, 'KAB. POHUWATO'),
(68, 75, 'GORONTALO', 71, 'KOTA GORONTALO'),
(69, 31, 'JAKARTA', 1, 'KAB. KEPULAUAN SERIBU'),
(70, 31, 'JAKARTA', 74, 'KOTA JAKARTA BARAT'),
(71, 31, 'JAKARTA', 73, 'KOTA JAKARTA PUSAT'),
(72, 31, 'JAKARTA', 71, 'KOTA JAKARTA SELATAN'),
(73, 31, 'JAKARTA', 72, 'KOTA JAKARTA TIMUR'),
(74, 31, 'JAKARTA', 75, 'KOTA JAKARTA UTARA'),
(75, 15, 'JAMBI', 4, 'KAB. BATANG HARI'),
(76, 15, 'JAMBI', 9, 'KAB. BUNGO'),
(77, 15, 'JAMBI', 1, 'KAB. KERINCI'),
(78, 15, 'JAMBI', 2, 'KAB. MERANGIN'),
(79, 15, 'JAMBI', 5, 'KAB. MUARO JAMBI'),
(80, 15, 'JAMBI', 3, 'KAB. SAROLANGUN'),
(81, 15, 'JAMBI', 7, 'KAB. TANJUNG JABUNG BARAT'),
(82, 15, 'JAMBI', 6, 'KAB. TANJUNG JABUNG TIMUR'),
(83, 15, 'JAMBI', 8, 'KAB. TEBO'),
(84, 15, 'JAMBI', 0, 'KOTA JAMBI'),
(85, 15, 'JAMBI', 72, 'KOTA SUNGAI PENUH'),
(86, 32, 'JAWA BARAT', 4, 'KAB. BANDUNG'),
(87, 32, 'JAWA BARAT', 17, 'KAB. BANDUNG BARAT'),
(88, 32, 'JAWA BARAT', 16, 'KAB. BEKASI'),
(89, 32, 'JAWA BARAT', 1, 'KAB. BOGOR'),
(90, 32, 'JAWA BARAT', 7, 'KAB. CIAMIS'),
(91, 32, 'JAWA BARAT', 3, 'KAB. CIANJUR'),
(92, 32, 'JAWA BARAT', 9, 'KAB. CIREBON'),
(93, 32, 'JAWA BARAT', 5, 'KAB. GARUT'),
(94, 32, 'JAWA BARAT', 12, 'KAB. INDRAMAYU'),
(95, 32, 'JAWA BARAT', 15, 'KAB. KARAWANG'),
(96, 32, 'JAWA BARAT', 8, 'KAB. KUNINGAN'),
(97, 32, 'JAWA BARAT', 10, 'KAB. MAJALENGKA'),
(98, 32, 'JAWA BARAT', 14, 'KAB. PURWAKARTA'),
(99, 32, 'JAWA BARAT', 13, 'KAB. SUBANG'),
(100, 32, 'JAWA BARAT', 2, 'KAB. SUKABUMI'),
(101, 32, 'JAWA BARAT', 11, 'KAB. SUMEDANG'),
(102, 32, 'JAWA BARAT', 6, 'KAB. TASIKMALAYA'),
(103, 32, 'JAWA BARAT', 0, 'KAB.PANGANDARAN'),
(104, 32, 'JAWA BARAT', 73, 'KOTA BANDUNG'),
(105, 32, 'JAWA BARAT', 79, 'KOTA BANJAR'),
(106, 32, 'JAWA BARAT', 75, 'KOTA BEKASI'),
(107, 32, 'JAWA BARAT', 71, 'KOTA BOGOR'),
(108, 32, 'JAWA BARAT', 77, 'KOTA CIMAHI'),
(109, 32, 'JAWA BARAT', 74, 'KOTA CIREBON'),
(110, 32, 'JAWA BARAT', 76, 'KOTA DEPOK'),
(111, 32, 'JAWA BARAT', 72, 'KOTA SUKABUMI'),
(112, 32, 'JAWA BARAT', 78, 'KOTA TASIKMALAYA'),
(113, 33, 'JAWA TENGAH', 4, 'KAB. BANJARNEGARA'),
(114, 33, 'JAWA TENGAH', 2, 'KAB. BANYUMAS'),
(115, 33, 'JAWA TENGAH', 25, 'KAB. BATANG'),
(116, 33, 'JAWA TENGAH', 16, 'KAB. BLORA'),
(117, 33, 'JAWA TENGAH', 9, 'KAB. BOYOLALI'),
(118, 33, 'JAWA TENGAH', 29, 'KAB. BREBES'),
(119, 33, 'JAWA TENGAH', 1, 'KAB. CILACAP'),
(120, 33, 'JAWA TENGAH', 21, 'KAB. DEMAK'),
(121, 33, 'JAWA TENGAH', 15, 'KAB. GROBOGAN'),
(122, 33, 'JAWA TENGAH', 20, 'KAB. JEPARA'),
(123, 33, 'JAWA TENGAH', 13, 'KAB. KARANGANYAR'),
(124, 33, 'JAWA TENGAH', 5, 'KAB. KEBUMEN'),
(125, 33, 'JAWA TENGAH', 24, 'KAB. KENDAL'),
(126, 33, 'JAWA TENGAH', 10, 'KAB. KLATEN'),
(127, 33, 'JAWA TENGAH', 19, 'KAB. KUDUS'),
(128, 33, 'JAWA TENGAH', 8, 'KAB. MAGELANG'),
(129, 33, 'JAWA TENGAH', 18, 'KAB. PATI'),
(130, 33, 'JAWA TENGAH', 26, 'KAB. PEKALONGAN'),
(131, 33, 'JAWA TENGAH', 27, 'KAB. PEMALANG'),
(132, 33, 'JAWA TENGAH', 3, 'KAB. PURBALINGGA'),
(133, 33, 'JAWA TENGAH', 6, 'KAB. PURWOREJO'),
(134, 33, 'JAWA TENGAH', 17, 'KAB. REMBANG'),
(135, 33, 'JAWA TENGAH', 22, 'KAB. SEMARANG'),
(136, 33, 'JAWA TENGAH', 14, 'KAB. SRAGEN'),
(137, 33, 'JAWA TENGAH', 11, 'KAB. SUKOHARJO'),
(138, 33, 'JAWA TENGAH', 28, 'KAB. TEGAL'),
(139, 33, 'JAWA TENGAH', 23, 'KAB. TEMANGGUNG'),
(140, 33, 'JAWA TENGAH', 12, 'KAB. WONOGIRI'),
(141, 33, 'JAWA TENGAH', 7, 'KAB. WONOSOBO'),
(142, 33, 'JAWA TENGAH', 71, 'KOTA MAGELANG'),
(143, 33, 'JAWA TENGAH', 75, 'KOTA PEKALONGAN'),
(144, 33, 'JAWA TENGAH', 73, 'KOTA SALATIGA'),
(145, 33, 'JAWA TENGAH', 74, 'KOTA SEMARANG'),
(146, 33, 'JAWA TENGAH', 72, 'KOTA SURAKARTA'),
(147, 33, 'JAWA TENGAH', 76, 'KOTA TEGAL'),
(148, 35, 'JAWA TIMUR', 26, 'KAB. BANGKALAN'),
(149, 35, 'JAWA TIMUR', 5, 'KAB. BLITAR'),
(150, 35, 'JAWA TIMUR', 22, 'KAB. BOJONEGORO'),
(151, 35, 'JAWA TIMUR', 11, 'KAB. BONDOWOSO'),
(152, 35, 'JAWA TIMUR', 25, 'KAB. GRESIK'),
(153, 35, 'JAWA TIMUR', 9, 'KAB. JEMBER'),
(154, 35, 'JAWA TIMUR', 17, 'KAB. JOMBANG'),
(155, 35, 'JAWA TIMUR', 24, 'KAB. LAMONGAN'),
(156, 35, 'JAWA TIMUR', 8, 'KAB. LUMAJANG'),
(157, 35, 'JAWA TIMUR', 20, 'KAB. MAGETAN'),
(158, 35, 'JAWA TIMUR', 7, 'KAB. MALANG'),
(159, 35, 'JAWA TIMUR', 18, 'KAB. NGANJUK'),
(160, 35, 'JAWA TIMUR', 21, 'KAB. NGAWI'),
(161, 35, 'JAWA TIMUR', 0, 'KAB. PACITAN'),
(162, 35, 'JAWA TIMUR', 28, 'KAB. PAMEKASAN'),
(163, 35, 'JAWA TIMUR', 14, 'KAB. PASURUAN'),
(164, 35, 'JAWA TIMUR', 2, 'KAB. PONOROGO'),
(165, 35, 'JAWA TIMUR', 13, 'KAB. PROBOLINGGO'),
(166, 35, 'JAWA TIMUR', 27, 'KAB. SAMPANG'),
(167, 35, 'JAWA TIMUR', 15, 'KAB. SIDOARJO'),
(168, 35, 'JAWA TIMUR', 12, 'KAB. SITUBONDO'),
(169, 35, 'JAWA TIMUR', 29, 'KAB. SUMENEP'),
(170, 35, 'JAWA TIMUR', 3, 'KAB. TRENGGALEK'),
(171, 35, 'JAWA TIMUR', 23, 'KAB. TUBAN'),
(172, 35, 'JAWA TIMUR', 4, 'KAB. TULUNGAGUNG'),
(173, 35, 'JAWA TIMUR', 10, 'KAB.BANYUWANGI'),
(174, 35, 'JAWA TIMUR', 6, 'KAB.KEDIRI'),
(175, 35, 'JAWA TIMUR', 6, 'KAB.MADIUN'),
(176, 35, 'JAWA TIMUR', 16, 'KAB.MOJOKERTO'),
(177, 35, 'JAWA TIMUR', 79, 'KOTA BATU'),
(178, 35, 'JAWA TIMUR', 72, 'KOTA BLITAR'),
(179, 35, 'JAWA TIMUR', 71, 'KOTA KEDIRI'),
(180, 35, 'JAWA TIMUR', 77, 'KOTA MADIUN'),
(181, 35, 'JAWA TIMUR', 73, 'KOTA MALANG'),
(182, 35, 'JAWA TIMUR', 76, 'KOTA MOJOKERTO'),
(183, 35, 'JAWA TIMUR', 75, 'KOTA PASURUAN'),
(184, 35, 'JAWA TIMUR', 74, 'KOTA PROBOLINGGO'),
(185, 35, 'JAWA TIMUR', 78, 'KOTA SURABAYA'),
(186, 61, 'KALIMANTAN BARAT', 2, 'KAB. BENGKAYANG'),
(187, 61, 'KALIMANTAN BARAT', 8, 'KAB. KAPUAS HULU'),
(188, 61, 'KALIMANTAN BARAT', 11, 'KAB. KAYONG UTARA'),
(189, 61, 'KALIMANTAN BARAT', 6, 'KAB. KETAPANG'),
(190, 61, 'KALIMANTAN BARAT', 12, 'KAB. KUBU RAYA'),
(191, 61, 'KALIMANTAN BARAT', 3, 'KAB. LANDAK'),
(192, 61, 'KALIMANTAN BARAT', 10, 'KAB. MELAWI'),
(193, 61, 'KALIMANTAN BARAT', 4, 'KAB. MEMPAWAH'),
(194, 61, 'KALIMANTAN BARAT', 1, 'KAB. SAMBAS'),
(195, 61, 'KALIMANTAN BARAT', 5, 'KAB. SANGGAU'),
(196, 61, 'KALIMANTAN BARAT', 9, 'KAB. SEKADAU'),
(197, 61, 'KALIMANTAN BARAT', 7, 'KAB. SINTANG'),
(198, 61, 'KALIMANTAN BARAT', 71, 'KOTA PONTIANAK'),
(199, 61, 'KALIMANTAN BARAT', 72, 'KOTA SINGKAWANG'),
(200, 63, 'KALIMANTAN SELATAN', 11, 'KAB. BALANGAN'),
(201, 63, 'KALIMANTAN SELATAN', 3, 'KAB. BANJAR'),
(202, 63, 'KALIMANTAN SELATAN', 4, 'KAB. BARITO KUALA'),
(203, 63, 'KALIMANTAN SELATAN', 6, 'KAB. HULU SUNGAI SELATAN'),
(204, 63, 'KALIMANTAN SELATAN', 7, 'KAB. HULU SUNGAI TENGAH'),
(205, 63, 'KALIMANTAN SELATAN', 8, 'KAB. HULU SUNGAI UTARA'),
(206, 63, 'KALIMANTAN SELATAN', 2, 'KAB. KOTA BARU'),
(207, 63, 'KALIMANTAN SELATAN', 9, 'KAB. TABALONG'),
(208, 63, 'KALIMANTAN SELATAN', 10, 'KAB. TANAH BUMBU'),
(209, 63, 'KALIMANTAN SELATAN', 1, 'KAB. TANAH LAUT'),
(210, 63, 'KALIMANTAN SELATAN', 5, 'KAB. TAPIN'),
(211, 63, 'KALIMANTAN SELATAN', 72, 'KOTA BANJAR BARU'),
(212, 63, 'KALIMANTAN SELATAN', 71, 'KOTA BANJARMASIN'),
(213, 62, 'KALIMANTAN TENGAH', 4, 'KAB. BARITO SELATAN'),
(214, 62, 'KALIMANTAN TENGAH', 12, 'KAB. BARITO TIMUR'),
(215, 62, 'KALIMANTAN TENGAH', 5, 'KAB. BARITO UTARA'),
(216, 62, 'KALIMANTAN TENGAH', 11, 'KAB. GUNUNG MAS'),
(217, 62, 'KALIMANTAN TENGAH', 3, 'KAB. KAPUAS'),
(218, 62, 'KALIMANTAN TENGAH', 9, 'KAB. KATINGAN'),
(219, 62, 'KALIMANTAN TENGAH', 1, 'KAB. KOTAWARINGIN BARAT'),
(220, 62, 'KALIMANTAN TENGAH', 2, 'KAB. KOTAWARINGIN TIMUR'),
(221, 62, 'KALIMANTAN TENGAH', 7, 'KAB. LAMANDAU'),
(222, 62, 'KALIMANTAN TENGAH', 13, 'KAB. MURUNG RAYA'),
(223, 62, 'KALIMANTAN TENGAH', 10, 'KAB. PULANG PISAU'),
(224, 62, 'KALIMANTAN TENGAH', 8, 'KAB. SERUYAN'),
(225, 62, 'KALIMANTAN TENGAH', 6, 'KAB. SUKAMARA'),
(226, 62, 'KALIMANTAN TENGAH', 71, 'KOTA PALANGKA RAYA'),
(227, 64, 'KALIMANTAN TIMUR', 5, 'KAB. BERAU'),
(228, 64, 'KALIMANTAN TIMUR', 2, 'KAB. KUTAI BARAT'),
(229, 64, 'KALIMANTAN TIMUR', 3, 'KAB. KUTAI KARTANEGARA'),
(230, 64, 'KALIMANTAN TIMUR', 4, 'KAB. KUTAI TIMUR'),
(231, 64, 'KALIMANTAN TIMUR', 1, 'KAB. PASIR'),
(232, 64, 'KALIMANTAN TIMUR', 9, 'KAB. PENAJAM PASER UTARA'),
(233, 64, 'KALIMANTAN TIMUR', 0, 'KAB.MAHAKAM ULU'),
(234, 64, 'KALIMANTAN TIMUR', 71, 'KOTA BALIKPAPAN'),
(235, 64, 'KALIMANTAN TIMUR', 74, 'KOTA BONTANG'),
(236, 64, 'KALIMANTAN TIMUR', 72, 'KOTA SAMARINDA'),
(237, 92, 'KALIMANTAN UTARA', 7, 'KAB. BULUNGAN'),
(238, 92, 'KALIMANTAN UTARA', 6, 'KAB. MALINAU'),
(239, 92, 'KALIMANTAN UTARA', 8, 'KAB. NUNUKAN'),
(240, 92, 'KALIMANTAN UTARA', 10, 'KAB. TANA TIDUNG'),
(241, 92, 'KALIMANTAN UTARA', 73, 'KAB. TARAKAN'),
(242, 21, 'KEPULAUAN RIAU', 2, 'KAB. BINTAN'),
(243, 21, 'KEPULAUAN RIAU', 1, 'KAB. KARIMUN'),
(244, 21, 'KEPULAUAN RIAU', 5, 'KAB. KEP. ANAMBAS'),
(245, 21, 'KEPULAUAN RIAU', 4, 'KAB. LINGGA'),
(246, 21, 'KEPULAUAN RIAU', 3, 'KAB. NATUNA'),
(247, 21, 'KEPULAUAN RIAU', 71, 'KOTA BATAM'),
(248, 21, 'KEPULAUAN RIAU', 72, 'KOTA TANJUNG PINANG'),
(249, 18, 'LAMPUNG', 1, 'KAB. LAMPUNG BARAT'),
(250, 18, 'LAMPUNG', 3, 'KAB. LAMPUNG SELATAN'),
(251, 18, 'LAMPUNG', 5, 'KAB. LAMPUNG TENGAH'),
(252, 18, 'LAMPUNG', 4, 'KAB. LAMPUNG TIMUR'),
(253, 18, 'LAMPUNG', 6, 'KAB. LAMPUNG UTARA'),
(254, 18, 'LAMPUNG', 11, 'KAB. MESUJI'),
(255, 18, 'LAMPUNG', 9, 'KAB. PESAWARAN'),
(256, 18, 'LAMPUNG', 10, 'KAB. PRINGSEWU'),
(257, 18, 'LAMPUNG', 2, 'KAB. TANGGAMUS'),
(258, 18, 'LAMPUNG', 8, 'KAB. TULANG BAWANG'),
(259, 18, 'LAMPUNG', 12, 'KAB. TULANG BAWANG BARAT'),
(260, 18, 'LAMPUNG', 7, 'KAB. WAY KANAN'),
(261, 18, 'LAMPUNG', 0, 'KAB.PESISIR BARAT'),
(262, 18, 'LAMPUNG', 71, 'KOTA BANDAR LAMPUNG'),
(263, 18, 'LAMPUNG', 72, 'KOTA METRO'),
(264, 81, 'MALUKU', 4, 'KAB. BURU'),
(265, 81, 'MALUKU', 9, 'KAB. BURU SELATAN'),
(266, 81, 'MALUKU', 5, 'KAB. KEPULAUAN ARU'),
(267, 81, 'MALUKU', 8, 'KAB. MALUKU BARAT DAYA'),
(268, 81, 'MALUKU', 3, 'KAB. MALUKU TENGAH'),
(269, 81, 'MALUKU', 2, 'KAB. MALUKU TENGGARA'),
(270, 81, 'MALUKU', 1, 'KAB. MALUKU TENGGARA BARAT'),
(271, 81, 'MALUKU', 6, 'KAB. SERAM BAGIAN BARAT'),
(272, 81, 'MALUKU', 7, 'KAB. SERAM BAGIAN TIMUR'),
(273, 81, 'MALUKU', 71, 'KOTA AMBON'),
(274, 81, 'MALUKU', 72, 'KOTA TUAL'),
(275, 82, 'MALUKU UTARA', 1, 'KAB. HALMAHERA BARAT'),
(276, 82, 'MALUKU UTARA', 4, 'KAB. HALMAHERA SELATAN'),
(277, 82, 'MALUKU UTARA', 2, 'KAB. HALMAHERA TENGAH'),
(278, 82, 'MALUKU UTARA', 6, 'KAB. HALMAHERA TIMUR'),
(279, 82, 'MALUKU UTARA', 5, 'KAB. HALMAHERA UTARA'),
(280, 82, 'MALUKU UTARA', 3, 'KAB. KEPULAUAN SULA'),
(281, 82, 'MALUKU UTARA', 7, 'KAB. PULAU MOROTAI'),
(282, 82, 'MALUKU UTARA', 0, 'KAB.PULAU TALIABU'),
(283, 82, 'MALUKU UTARA', 71, 'KOTA TERNATE'),
(284, 82, 'MALUKU UTARA', 72, 'KOTA TIDORE KEPULAUAN'),
(285, 52, 'NUSA TENGGARA BARAT', 6, 'KAB. BIMA'),
(286, 52, 'NUSA TENGGARA BARAT', 5, 'KAB. DOMPU'),
(287, 52, 'NUSA TENGGARA BARAT', 1, 'KAB. LOMBOK BARAT'),
(288, 52, 'NUSA TENGGARA BARAT', 2, 'KAB. LOMBOK TENGAH'),
(289, 52, 'NUSA TENGGARA BARAT', 3, 'KAB. LOMBOK TIMUR'),
(290, 52, 'NUSA TENGGARA BARAT', 8, 'KAB. LOMBOK UTARA'),
(291, 52, 'NUSA TENGGARA BARAT', 4, 'KAB. SUMBAWA'),
(292, 52, 'NUSA TENGGARA BARAT', 7, 'KAB. SUMBAWA BARAT'),
(293, 52, 'NUSA TENGGARA BARAT', 72, 'KOTA BIMA'),
(294, 52, 'NUSA TENGGARA BARAT', 71, 'KOTA MATARAM'),
(295, 53, 'NUSA TENGGARA TIMUR', 7, 'KAB. ALOR'),
(296, 53, 'NUSA TENGGARA TIMUR', 6, 'KAB. BELU'),
(297, 53, 'NUSA TENGGARA TIMUR', 11, 'KAB. ENDE'),
(298, 53, 'NUSA TENGGARA TIMUR', 9, 'KAB. FLORES TIMUR'),
(299, 53, 'NUSA TENGGARA TIMUR', 3, 'KAB. KUPANG'),
(300, 53, 'NUSA TENGGARA TIMUR', 8, 'KAB. LEMBATA'),
(301, 53, 'NUSA TENGGARA TIMUR', 13, 'KAB. MANGGARAI'),
(302, 53, 'NUSA TENGGARA TIMUR', 15, 'KAB. MANGGARAI BARAT'),
(303, 53, 'NUSA TENGGARA TIMUR', 19, 'KAB. MANGGARAI TIMUR'),
(304, 53, 'NUSA TENGGARA TIMUR', 18, 'KAB. NAGEKEO'),
(305, 53, 'NUSA TENGGARA TIMUR', 12, 'KAB. NGADA'),
(306, 53, 'NUSA TENGGARA TIMUR', 14, 'KAB. ROTE NDAO'),
(307, 53, 'NUSA TENGGARA TIMUR', 20, 'KAB. SABU RAIJUA'),
(308, 53, 'NUSA TENGGARA TIMUR', 10, 'KAB. SIKKA'),
(309, 53, 'NUSA TENGGARA TIMUR', 1, 'KAB. SUMBA BARAT'),
(310, 53, 'NUSA TENGGARA TIMUR', 17, 'KAB. SUMBA BARAT DAYA'),
(311, 53, 'NUSA TENGGARA TIMUR', 16, 'KAB. SUMBA TENGAH'),
(312, 53, 'NUSA TENGGARA TIMUR', 2, 'KAB. SUMBA TIMUR'),
(313, 53, 'NUSA TENGGARA TIMUR', 4, 'KAB. TIMOR TENGAH SELATAN'),
(314, 53, 'NUSA TENGGARA TIMUR', 5, 'KAB. TIMOR TENGAH UTARA'),
(315, 53, 'NUSA TENGGARA TIMUR', 0, 'KAB.MALAKA'),
(316, 53, 'NUSA TENGGARA TIMUR', 71, 'KOTA KUPANG'),
(317, 94, 'PAPUA', 15, 'KAB. ASMAT'),
(318, 94, 'PAPUA', 9, 'KAB. BIAK NUMFOR'),
(319, 94, 'PAPUA', 13, 'KAB. BOVEN DIGOEL'),
(320, 94, 'PAPUA', 36, 'KAB. DEIYAI'),
(321, 94, 'PAPUA', 34, 'KAB. DOGIYAI'),
(322, 94, 'PAPUA', 35, 'KAB. INTAN JAYA'),
(323, 94, 'PAPUA', 3, 'KAB. JAYAPURA'),
(324, 94, 'PAPUA', 2, 'KAB. JAYAWIJAYA'),
(325, 94, 'PAPUA', 20, 'KAB. KEEROM'),
(326, 94, 'PAPUA', 30, 'KAB. LANIJAYA'),
(327, 94, 'PAPUA', 14, 'KAB. MAPPI'),
(328, 94, 'PAPUA', 28, 'KAB. MEMBERAMO RAYA'),
(329, 94, 'PAPUA', 31, 'KAB. MEMBRAMO TENGAH'),
(330, 94, 'PAPUA', 1, 'KAB. MERAUKE'),
(331, 94, 'PAPUA', 12, 'KAB. MIMIKA'),
(332, 94, 'PAPUA', 4, 'KAB. NABIRE'),
(333, 94, 'PAPUA', 29, 'KAB. NDUGA'),
(334, 94, 'PAPUA', 10, 'KAB. PANIAI'),
(335, 94, 'PAPUA', 17, 'KAB. PEGUNUNGAN BINTANG'),
(336, 94, 'PAPUA', 33, 'KAB. PUNCAK'),
(337, 94, 'PAPUA', 11, 'KAB. PUNCAK JAYA'),
(338, 94, 'PAPUA', 19, 'KAB. SARMI'),
(339, 94, 'PAPUA', 27, 'KAB. SUPIORI'),
(340, 94, 'PAPUA', 18, 'KAB. TOLIKARA'),
(341, 94, 'PAPUA', 26, 'KAB. WAROPEN'),
(342, 94, 'PAPUA', 16, 'KAB. YAHUKIMO'),
(343, 94, 'PAPUA', 32, 'KAB. YALIMO'),
(344, 94, 'PAPUA', 8, 'KAB. YAPEN'),
(345, 94, 'PAPUA', 71, 'KOTA JAYAPURA'),
(346, 91, 'PAPUA BARAT', 1, 'KAB. FAK-FAK'),
(347, 91, 'PAPUA BARAT', 2, 'KAB. KAIMANA'),
(348, 91, 'PAPUA BARAT', 5, 'KAB. MANOKWARI'),
(349, 91, 'PAPUA BARAT', 0, 'KAB. MANOKWARI SELATAN'),
(350, 91, 'PAPUA BARAT', 10, 'KAB. MAYBRAT'),
(351, 91, 'PAPUA BARAT', 0, 'KAB. PEGUNUNGAN ARFAK'),
(352, 91, 'PAPUA BARAT', 8, 'KAB. RAJA AMPAT'),
(353, 91, 'PAPUA BARAT', 7, 'KAB. SORONG'),
(354, 91, 'PAPUA BARAT', 6, 'KAB. SORONG SELATAN'),
(355, 91, 'PAPUA BARAT', 9, 'KAB. TAMBRAUW'),
(356, 91, 'PAPUA BARAT', 4, 'KAB. TELUK BINTUNI'),
(357, 91, 'PAPUA BARAT', 3, 'KAB. TELUK WONDAMA'),
(358, 91, 'PAPUA BARAT', 71, 'KOTA SORONG'),
(359, 14, 'RIAU', 8, 'KAB. BENGKALIS'),
(360, 14, 'RIAU', 3, 'KAB. INDRAGIRI HILIR'),
(361, 14, 'RIAU', 2, 'KAB. INDRAGIRI HULU'),
(362, 14, 'RIAU', 6, 'KAB. KAMPAR'),
(363, 14, 'RIAU', 10, 'KAB. KEPULAUAN MERANTI'),
(364, 14, 'RIAU', 1, 'KAB. KUANTAN SINGINGI'),
(365, 14, 'RIAU', 4, 'KAB. PELALAWAN'),
(366, 14, 'RIAU', 9, 'KAB. ROKAN HILIR'),
(367, 14, 'RIAU', 7, 'KAB. ROKAN HULU'),
(368, 14, 'RIAU', 5, 'KAB. SIAK'),
(369, 14, 'RIAU', 73, 'KOTA DUMAI'),
(370, 14, 'RIAU', 71, 'KOTA PEKAN BARU'),
(371, 76, 'SULAWESI BARAT', 1, 'KAB. MAJENE'),
(372, 76, 'SULAWESI BARAT', 3, 'KAB. MAMASA'),
(373, 76, 'SULAWESI BARAT', 4, 'KAB. MAMUJU'),
(374, 76, 'SULAWESI BARAT', 0, 'KAB. MAMUJU TENGAH'),
(375, 76, 'SULAWESI BARAT', 5, 'KAB. MAMUJU UTARA'),
(376, 76, 'SULAWESI BARAT', 2, 'KAB. POLEWALI MANDAR'),
(377, 73, 'SULAWESI SELATAN', 3, 'KAB. BANTAENG'),
(378, 73, 'SULAWESI SELATAN', 10, 'KAB. BARRU'),
(379, 73, 'SULAWESI SELATAN', 11, 'KAB. BONE'),
(380, 73, 'SULAWESI SELATAN', 2, 'KAB. BULUKUMBA'),
(381, 73, 'SULAWESI SELATAN', 16, 'KAB. ENREKANG'),
(382, 73, 'SULAWESI SELATAN', 6, 'KAB. GOWA'),
(383, 73, 'SULAWESI SELATAN', 4, 'KAB. JENEPONTO'),
(384, 73, 'SULAWESI SELATAN', 17, 'KAB. LUWU'),
(385, 73, 'SULAWESI SELATAN', 25, 'KAB. LUWU TIMUR'),
(386, 73, 'SULAWESI SELATAN', 22, 'KAB. LUWU UTARA'),
(387, 73, 'SULAWESI SELATAN', 8, 'KAB. MAROS'),
(388, 73, 'SULAWESI SELATAN', 9, 'KAB. PANGKAJENE KEPULAUAN'),
(389, 73, 'SULAWESI SELATAN', 15, 'KAB. PINRANG'),
(390, 73, 'SULAWESI SELATAN', 1, 'KAB. SELAYAR'),
(391, 73, 'SULAWESI SELATAN', 14, 'KAB. SIDENRENG RAPPANG'),
(392, 73, 'SULAWESI SELATAN', 7, 'KAB. SINJAI'),
(393, 73, 'SULAWESI SELATAN', 12, 'KAB. SOPPENG'),
(394, 73, 'SULAWESI SELATAN', 5, 'KAB. TAKALAR'),
(395, 73, 'SULAWESI SELATAN', 18, 'KAB. TANA TORAJA'),
(396, 73, 'SULAWESI SELATAN', 26, 'KAB. TORAJA UTARA'),
(397, 73, 'SULAWESI SELATAN', 13, 'KAB. WAJO'),
(398, 73, 'SULAWESI SELATAN', 71, 'KOTA MAKASSAR'),
(399, 73, 'SULAWESI SELATAN', 73, 'KOTA PALOPO'),
(400, 73, 'SULAWESI SELATAN', 72, 'KOTA PARE-PARE'),
(401, 73, 'SULAWESI SELATAN', 73, 'PALOPO'),
(402, 72, 'SULAWESI TENGAH', 2, 'KAB. BANGGAI'),
(403, 72, 'SULAWESI TENGAH', 1, 'KAB. BANGGAI KEPULAUAN'),
(404, 72, 'SULAWESI TENGAH', 0, 'KAB. BANGGAI LAUT'),
(405, 72, 'SULAWESI TENGAH', 7, 'KAB. BUOL'),
(406, 72, 'SULAWESI TENGAH', 5, 'KAB. DONGGALA'),
(407, 72, 'SULAWESI TENGAH', 3, 'KAB. MOROWALI'),
(408, 72, 'SULAWESI TENGAH', 0, 'KAB. MOROWALI UTARA'),
(409, 72, 'SULAWESI TENGAH', 8, 'KAB. PARIGI MOUTONG'),
(410, 72, 'SULAWESI TENGAH', 4, 'KAB. POSO'),
(411, 72, 'SULAWESI TENGAH', 10, 'KAB. SIGI'),
(412, 72, 'SULAWESI TENGAH', 9, 'KAB. TOJO UNA-UNA'),
(413, 72, 'SULAWESI TENGAH', 6, 'KAB. TOLI-TOLI'),
(414, 72, 'SULAWESI TENGAH', 71, 'KOTA PALU'),
(415, 74, 'SULAWESI TENGGARA', 6, 'KAB. BOMBANA'),
(416, 74, 'SULAWESI TENGGARA', 1, 'KAB. BUTON'),
(417, 74, 'SULAWESI TENGGARA', 0, 'KAB. BUTON SELATAN'),
(418, 74, 'SULAWESI TENGGARA', 0, 'KAB. BUTON TENGAH'),
(419, 74, 'SULAWESI TENGGARA', 9, 'KAB. BUTON UTARA'),
(420, 74, 'SULAWESI TENGGARA', 4, 'KAB. KOLAKA'),
(421, 74, 'SULAWESI TENGGARA', 0, 'KAB. KOLAKA TIMUR'),
(422, 74, 'SULAWESI TENGGARA', 8, 'KAB. KOLAKA UTARA'),
(423, 74, 'SULAWESI TENGGARA', 3, 'KAB. KONAWE'),
(424, 74, 'SULAWESI TENGGARA', 5, 'KAB. KONAWE SELATAN'),
(425, 74, 'SULAWESI TENGGARA', 10, 'KAB. KONAWE UTARA'),
(426, 74, 'SULAWESI TENGGARA', 2, 'KAB. MUNA'),
(427, 74, 'SULAWESI TENGGARA', 0, 'KAB. MUNA BARAT'),
(428, 74, 'SULAWESI TENGGARA', 7, 'KAB. WAKATOBI'),
(429, 74, 'SULAWESI TENGGARA', 0, 'KONAWE KEPULAUAN'),
(430, 74, 'SULAWESI TENGGARA', 72, 'KOTA BAU-BAU'),
(431, 74, 'SULAWESI TENGGARA', 71, 'KOTA KENDARI'),
(432, 71, 'SULAWESI UTARA', 1, 'KAB. BOLAANG MONGONDOW'),
(433, 71, 'SULAWESI UTARA', 10, 'KAB. BOLAANG MONGONDOW SELATAN'),
(434, 71, 'SULAWESI UTARA', 11, 'KAB. BOLAANG MONGONDOW TIMUR'),
(435, 71, 'SULAWESI UTARA', 7, 'KAB. BOLAANG MONGONDOW UTARA'),
(436, 71, 'SULAWESI UTARA', 3, 'KAB. KEPULAUAN SANGIHE'),
(437, 71, 'SULAWESI UTARA', 4, 'KAB. KEPULAUAN TALAUD'),
(438, 71, 'SULAWESI UTARA', 2, 'KAB. MINAHASA'),
(439, 71, 'SULAWESI UTARA', 5, 'KAB. MINAHASA SELATAN'),
(440, 71, 'SULAWESI UTARA', 9, 'KAB. MINAHASA TENGGARA'),
(441, 71, 'SULAWESI UTARA', 6, 'KAB. MINAHASA UTARA'),
(442, 71, 'SULAWESI UTARA', 8, 'KAB. SIAU TAGULANDANG BIARO'),
(443, 71, 'SULAWESI UTARA', 72, 'KOTA BITUNG'),
(444, 71, 'SULAWESI UTARA', 74, 'KOTA KOTAMOBAGU'),
(445, 71, 'SULAWESI UTARA', 71, 'KOTA MANADO'),
(446, 71, 'SULAWESI UTARA', 73, 'KOTA TOMOHON'),
(447, 13, 'SUMATERA BARAT', 7, 'KAB. AGAM'),
(448, 13, 'SUMATERA BARAT', 11, 'KAB. DHARMAS RAYA'),
(449, 13, 'SUMATERA BARAT', 1, 'KAB. KEPULAUAN MENTAWAI'),
(450, 13, 'SUMATERA BARAT', 8, 'KAB. LIMA PULUH KOTA'),
(451, 13, 'SUMATERA BARAT', 6, 'KAB. PADANG PARIAMAN'),
(452, 13, 'SUMATERA BARAT', 9, 'KAB. PASAMAN'),
(453, 13, 'SUMATERA BARAT', 12, 'KAB. PASAMAN BARAT'),
(454, 13, 'SUMATERA BARAT', 2, 'KAB. PESISIR SELATAN'),
(455, 13, 'SUMATERA BARAT', 4, 'KAB. SIJUNJUNG'),
(456, 13, 'SUMATERA BARAT', 3, 'KAB. SOLOK'),
(457, 13, 'SUMATERA BARAT', 10, 'KAB. SOLOK SELATAN'),
(458, 13, 'SUMATERA BARAT', 5, 'KAB. TANAH DATAR'),
(459, 13, 'SUMATERA BARAT', 75, 'KOTA BUKITTINGGI'),
(460, 13, 'SUMATERA BARAT', 71, 'KOTA PADANG'),
(461, 13, 'SUMATERA BARAT', 74, 'KOTA PADANG PANJANG'),
(462, 13, 'SUMATERA BARAT', 77, 'KOTA PARIAMAN'),
(463, 13, 'SUMATERA BARAT', 76, 'KOTA PAYAKUMBUH'),
(464, 13, 'SUMATERA BARAT', 73, 'KOTA SAWAH LUNTO'),
(465, 13, 'SUMATERA BARAT', 72, 'KOTA SOLOK'),
(466, 16, 'SUMATERA SELATAN', 7, 'KAB. BANYUASIN'),
(467, 16, 'SUMATERA SELATAN', 11, 'KAB. EMPAT LAWANG'),
(468, 16, 'SUMATERA SELATAN', 4, 'KAB. LAHAT'),
(469, 16, 'SUMATERA SELATAN', 3, 'KAB. MUARA ENIM'),
(470, 16, 'SUMATERA SELATAN', 6, 'KAB. MUSI BANYUASIN'),
(471, 16, 'SUMATERA SELATAN', 5, 'KAB. MUSI RAWAS'),
(472, 16, 'SUMATERA SELATAN', 10, 'KAB. OGAN ILIR'),
(473, 16, 'SUMATERA SELATAN', 2, 'KAB. OGAN KOMERING ILIR'),
(474, 16, 'SUMATERA SELATAN', 1, 'KAB. OGAN KOMERING ULU'),
(475, 16, 'SUMATERA SELATAN', 8, 'KAB. OGAN KOMERING ULU SELATAN'),
(476, 16, 'SUMATERA SELATAN', 9, 'KAB. OGAN KOMERING ULU TIMUR'),
(477, 16, 'SUMATERA SELATAN', 74, 'KOTA LUBUK LINGGAU'),
(478, 16, 'SUMATERA SELATAN', 73, 'KOTA PAGAR ALAM'),
(479, 16, 'SUMATERA SELATAN', 71, 'KOTA PALEMBANG'),
(480, 16, 'SUMATERA SELATAN', 72, 'KOTA PRABUMULIH'),
(481, 16, 'SUMATERA SELATAN', 0, 'MUSI RAWAS UTARA'),
(482, 16, 'SUMATERA SELATAN', 0, 'PENUKAL ABAB LEMATANG ILIR'),
(483, 12, 'SUMATERA UTARA', 8, 'KAB. ASAHAN'),
(484, 12, 'SUMATERA UTARA', 19, 'KAB. BATU BARA'),
(485, 12, 'SUMATERA UTARA', 10, 'KAB. DAIRI'),
(486, 12, 'SUMATERA UTARA', 12, 'KAB. DELI SERDANG'),
(487, 12, 'SUMATERA UTARA', 15, 'KAB. HUMBANG HASUNDUTAN'),
(488, 12, 'SUMATERA UTARA', 11, 'KAB. KARO'),
(489, 12, 'SUMATERA UTARA', 7, 'KAB. LABUHAN BATU'),
(490, 12, 'SUMATERA UTARA', 22, 'KAB. LABUHAN BATU SELATAN'),
(491, 12, 'SUMATERA UTARA', 23, 'KAB. LABUHAN BATU UTARA'),
(492, 12, 'SUMATERA UTARA', 13, 'KAB. LANGKAT'),
(493, 12, 'SUMATERA UTARA', 2, 'KAB. MANDAILING NATAL'),
(494, 12, 'SUMATERA UTARA', 1, 'KAB. NIAS'),
(495, 12, 'SUMATERA UTARA', 25, 'KAB. NIAS BARAT'),
(496, 12, 'SUMATERA UTARA', 14, 'KAB. NIAS SELATAN'),
(497, 12, 'SUMATERA UTARA', 24, 'KAB. NIAS UTARA'),
(498, 12, 'SUMATERA UTARA', 21, 'KAB. PADANG LAWAS'),
(499, 12, 'SUMATERA UTARA', 20, 'KAB. PADANG LAWAS UTARA'),
(500, 12, 'SUMATERA UTARA', 16, 'KAB. PAKPAK BHARAT'),
(501, 12, 'SUMATERA UTARA', 17, 'KAB. SAMOSIR'),
(502, 12, 'SUMATERA UTARA', 18, 'KAB. SERDANG BEDAGAI'),
(503, 12, 'SUMATERA UTARA', 9, 'KAB. SIMALUNGUN'),
(504, 12, 'SUMATERA UTARA', 3, 'KAB. TAPANULI SELATAN'),
(505, 12, 'SUMATERA UTARA', 4, 'KAB. TAPANULI TENGAH'),
(506, 12, 'SUMATERA UTARA', 5, 'KAB. TAPANULI UTARA'),
(507, 12, 'SUMATERA UTARA', 6, 'KAB. TOBA SAMOSIR'),
(508, 12, 'SUMATERA UTARA', 78, 'KOTA  GUNUNG SITOLI'),
(509, 12, 'SUMATERA UTARA', 77, 'KOTA  PADANG SIDEMPUAN'),
(510, 12, 'SUMATERA UTARA', 73, 'KOTA  PEMATANG SIANTAR'),
(511, 12, 'SUMATERA UTARA', 71, 'KOTA  SIBOLGA'),
(512, 12, 'SUMATERA UTARA', 72, 'KOTA  TANJUNG BALAI'),
(513, 12, 'SUMATERA UTARA', 76, 'KOTA BINJAI'),
(514, 12, 'SUMATERA UTARA', 75, 'KOTA MEDAN'),
(515, 12, 'SUMATERA UTARA', 74, 'KOTA TEBING TINGGI');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `invitation_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `invitation_id`, `title`, `description`, `creator`, `created_at`, `updated_at`) VALUES
(3, 'syifAlvin', 'Nikahan Syifa Apin', 'Kami Menyampaikan Kabar Bahagia Ini Dan Akan Lengkap Apabila Anda Berkenan Memberikan Doa Restu Kepada Kami Dalam Acara Pernikahan Kami Berikut Ini :', 49, '2023-07-10 09:56:55', '2023-08-12 16:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `event_detail`
--

CREATE TABLE `event_detail` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `event_name` varchar(255) DEFAULT NULL,
  `event_date` date DEFAULT NULL,
  `event_time_start` varchar(255) DEFAULT NULL,
  `event_time_end` varchar(255) DEFAULT NULL,
  `event_time_zone` varchar(255) DEFAULT NULL,
  `event_location` varchar(255) DEFAULT NULL,
  `event_location_address` varchar(255) DEFAULT NULL,
  `event_location_url` varchar(255) DEFAULT NULL,
  `event_streaming_channel` varchar(255) DEFAULT NULL,
  `event_streaming_link` varchar(255) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_detail`
--

INSERT INTO `event_detail` (`id`, `event_id`, `event_name`, `event_date`, `event_time_start`, `event_time_end`, `event_time_zone`, `event_location`, `event_location_address`, `event_location_url`, `event_streaming_channel`, `event_streaming_link`, `creator`, `created_at`, `updated_at`) VALUES
(14, 3, 'Akad Nikah', '2023-09-23', '08:00', '10:00', 'WIB', 'Kediaman Mempelai Wanita', 'Jl. Pangeran Senopati Masjid At-Taubah, Gg Alam Baru 6, No. 108, Karang Sari, Jatimulyo, Lampung Selatan', NULL, NULL, NULL, NULL, '2023-08-12 16:04:44', '2023-08-12 16:04:44'),
(15, 3, 'Resepsi', '2023-09-23', '11:00', '14:00', 'WIB', 'Kediaman Mempelai Wanita', 'Jl. Pangeran Senopati Masjid At-Taubah, Gg Alam Baru 6, No. 108, Karang Sari, Jatimulyo, Lampung Selatan', NULL, NULL, NULL, NULL, '2023-08-12 16:04:44', '2023-08-12 16:04:44');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `invitation_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `invitation_id`, `title`, `description`, `image`, `creator`, `created_at`, `updated_at`) VALUES
(11, 'syifAlvin', 'Prewed 1', NULL, 'DSC03162-2.jpg', 49, '2023-08-12 16:11:30', '2023-08-12 16:11:30'),
(12, 'syifAlvin', 'test', NULL, 'DSC03162-2.jpg', 49, '2023-08-12 16:12:14', '2023-08-12 16:12:14');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_tags`
--

CREATE TABLE `gallery_tags` (
  `id` int(11) NOT NULL,
  `tag_name` varchar(255) DEFAULT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `giftbox`
--

CREATE TABLE `giftbox` (
  `id` int(11) NOT NULL,
  `invitation_id` varchar(255) DEFAULT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hari`
--

CREATE TABLE `hari` (
  `id` int(11) NOT NULL,
  `day_name` varchar(255) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hari`
--

INSERT INTO `hari` (`id`, `day_name`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'Minggu', 1, NULL, NULL),
(2, 'Senin', 1, NULL, NULL),
(3, 'Selasa', 1, NULL, NULL),
(4, 'Rabu', 1, NULL, NULL),
(5, 'Kamis', 1, NULL, NULL),
(6, 'Juma\'t', 1, NULL, '2021-07-08 10:09:23'),
(7, 'Sabtu', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invitation`
--

CREATE TABLE `invitation` (
  `id` int(11) NOT NULL,
  `invitation_id` varchar(255) NOT NULL,
  `groom_name` varchar(255) NOT NULL,
  `groom_nickname` varchar(255) NOT NULL,
  `groom_father` varchar(255) DEFAULT NULL,
  `groom_mother` varchar(255) DEFAULT NULL,
  `groom_photo` varchar(255) DEFAULT NULL,
  `bride_name` varchar(255) NOT NULL,
  `bride_nickname` varchar(255) NOT NULL,
  `bride_father` varchar(255) DEFAULT NULL,
  `bride_mother` varchar(255) DEFAULT NULL,
  `bride_photo` varchar(255) DEFAULT NULL,
  `tagline` text DEFAULT NULL,
  `format` int(11) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invitation`
--

INSERT INTO `invitation` (`id`, `invitation_id`, `groom_name`, `groom_nickname`, `groom_father`, `groom_mother`, `groom_photo`, `bride_name`, `bride_nickname`, `bride_father`, `bride_mother`, `bride_photo`, `tagline`, `format`, `creator`, `created_at`, `updated_at`) VALUES
(4, 'syifAlvin', 'Alvin Khair', 'Apin', 'Indra Nura', 'Dina Lusia Syam', 'hit.jpg', 'Syifa Chusnul Khotimah', 'Syifa', 'Maarifudin MZ', 'Satiana', 'DSC03286.jpg', NULL, NULL, 49, '2023-07-10 09:47:55', '2023-08-12 15:52:17');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` bigint(20) NOT NULL,
  `sub_id` varchar(100) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `creator` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `sub_id`, `keterangan`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'IVCMU', 'Update Complement: syifAlvin', '1', '2023-08-13 10:33:36', '2023-08-13 10:33:36'),
(2, 'IVCMU', 'Update Complement: syifAlvin', '1', '2023-08-13 10:58:43', '2023-08-13 10:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `invitation_id` varchar(255) NOT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `sender_message` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `modul_id` varchar(100) NOT NULL,
  `modul_desc` varchar(100) NOT NULL,
  `modul_icon` varchar(100) DEFAULT NULL,
  `urutan` tinyint(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`modul_id`, `modul_desc`, `modul_icon`, `urutan`, `created_at`, `updated_at`) VALUES
('IV', 'Invitation Content', 'mdi mdi-table-of-contents', 1, '2022-08-01 04:23:00', '2022-08-01 04:23:00'),
('MD', 'Master Data', 'fa fa-database', 2, '2021-06-27 07:20:28', '2021-06-27 07:20:28'),
('MR', 'Menu & Mapping', 'mdi mdi-menu', 4, '2021-06-27 07:20:34', '2021-06-27 07:20:34'),
('US', 'Users', 'mdi mdi-teach', 3, '2021-06-27 07:20:36', '2021-06-27 07:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `modul_submapping`
--

CREATE TABLE `modul_submapping` (
  `id` varchar(100) NOT NULL,
  `submodul_id` varchar(100) DEFAULT NULL,
  `jenis_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul_submapping`
--

INSERT INTO `modul_submapping` (`id`, `submodul_id`, `jenis_id`) VALUES
('IVCMC', 'IVCM', 'Create'),
('IVCMD', 'IVCM', 'Delete'),
('IVCMU', 'IVCM', 'Update'),
('IVCMV', 'IVCM', 'View'),
('IVEVC', 'IVEV', 'Create'),
('IVEVD', 'IVEV', 'Delete'),
('IVEVU', 'IVEV', 'Update'),
('IVEVV', 'IVEV', 'View'),
('IVGBC', 'IVGB', 'Create'),
('IVGBD', 'IVGB', 'Delete'),
('IVGBU', 'IVGB', 'Update'),
('IVGBV', 'IVGB', 'View'),
('IVGLC', 'IVGL', 'Create'),
('IVGLD', 'IVGL', 'Delete'),
('IVGLU', 'IVGL', 'Update'),
('IVGLV', 'IVGL', 'View'),
('IVPRC', 'IVPR', 'Create'),
('IVPRD', 'IVPR', 'Delete'),
('IVPRU', 'IVPR', 'Update'),
('IVPRV', 'IVPR', 'View'),
('IVQTC', 'IVQT', 'Create'),
('IVQTD', 'IVQT', 'Delete'),
('IVQTU', 'IVQT', 'Update'),
('IVQTV', 'IVQT', 'View'),
('MDDYC', 'MDDY', 'Create'),
('MDDYD', 'MDDY', 'Delete'),
('MDDYU', 'MDDY', 'Update'),
('MDDYV', 'MDDY', 'View'),
('MDPRC', 'MDDY', 'Create'),
('MDPRD', 'MDDY', 'Delete'),
('MDPRU', 'MDDY', 'Update'),
('MDPRV', 'MDDY', 'View'),
('MDSMC', 'MDSM', 'Create'),
('MDSMD', 'MDSM', 'Delete'),
('MDSMU', 'MDSM', 'Update'),
('MDSMV', 'MDSM', 'View'),
('MRMME', 'MRMM', 'Edit'),
('MRMMV', 'MRMM', 'View'),
('USRME', 'USRM', 'Edit'),
('USRMV', 'USRM', 'View'),
('USROC', 'USRO', 'Create'),
('USROD', 'USRO', 'Delete'),
('USROU', 'USRO', 'Update'),
('USROV', 'USRO', 'View'),
('USUSC', 'USUS', 'Create'),
('USUSD', 'USUS', 'Delete'),
('USUSU', 'USUS', 'Update'),
('USUSV', 'USUS', 'View');

-- --------------------------------------------------------

--
-- Table structure for table `modul_submodul`
--

CREATE TABLE `modul_submodul` (
  `submodul_id` varchar(100) NOT NULL,
  `submodul_desc` varchar(100) NOT NULL,
  `modul_id` varchar(100) NOT NULL,
  `submodul_page` varchar(100) NOT NULL,
  `urutan` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul_submodul`
--

INSERT INTO `modul_submodul` (`submodul_id`, `submodul_desc`, `modul_id`, `submodul_page`, `urutan`) VALUES
('IVCM', 'Invitation Complement', 'IV', 'complement.index', 6),
('IVEV', 'Invitation Events', 'IV', 'event.index', 2),
('IVGB', 'Invitation Gift Box', 'IV', 'giftbox.index', 5),
('IVGL', 'Invitation Gallery', 'IV', 'gallery.index', 3),
('IVPR', 'Invitation Profile', 'IV', 'invitation.index', 1),
('IVQT', 'Invitation Quote', 'IV', 'quote.index', 4),
('MDDY', 'Hari', 'MD', 'days.index', 1),
('MDSM', 'Social Media', 'MD', 'sosmed.index', 2),
('MRMM', 'Menu Mapping', 'MR', 'getMapping', 1),
('USRM', 'User-Role Mapping', 'US', 'getRoleMapping', 3),
('USRO', 'Role', 'US', 'role.index', 2),
('USUS', 'Data User', 'US', 'user.index', 1);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `mid_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `first_name`, `mid_name`, `last_name`, `address`, `phone`, `email`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'Studio', '', 'Si Apin', 'Jl. Sadang Saip no.27, Kota Bandung', NULL, 'studiosiapin@gmail.com', 1, NULL, '2021-07-08 09:10:11');

-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

CREATE TABLE `quote` (
  `id` int(11) NOT NULL,
  `invitation_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` varchar(500) DEFAULT NULL,
  `bg_image` varchar(255) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quote`
--

INSERT INTO `quote` (`id`, `invitation_id`, `title`, `text`, `bg_image`, `creator`, `created_at`, `updated_at`) VALUES
(2, 'syifAlvin', 'Sebuah Quote', 'One Piece is Real!', 'IMG_2238.jpeg', 49, '2023-08-12 16:06:09', '2023-08-12 16:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role_name` varchar(100) NOT NULL,
  `company_id` int(11) NOT NULL,
  `creator` tinyint(3) UNSIGNED NOT NULL,
  `gaji_pokok` int(11) NOT NULL DEFAULT 0,
  `tunjangan_jabatan` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role_name`, `company_id`, `creator`, `gaji_pokok`, `tunjangan_jabatan`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', 1, 0, 0, 0, '2019-11-06 02:13:33', '2019-11-06 02:13:33'),
(39, 'Owner', 1, 1, 0, 0, '2021-06-26 19:19:48', '2021-06-26 19:19:48'),
(43, 'Admin', 1, 1, 0, 0, '2021-06-26 19:20:37', '2021-06-26 19:20:37'),
(47, 'Active User', 1, 1, 2300000, 3300000, '2021-06-26 19:21:01', '2021-06-26 19:21:01'),
(61, 'Nonactive User', 0, 1, 0, 0, '2021-06-26 19:21:34', '2021-06-26 19:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `sosmed`
--

CREATE TABLE `sosmed` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sosmed`
--

INSERT INTO `sosmed` (`id`, `name`, `icon`, `creator`, `created_at`, `updated_at`) VALUES
(1, 'facebook', 'bx bxl-facebook-square', 1, NULL, '2021-07-08 18:34:54'),
(2, 'youtube', 'bx bxl-youtube', 1, NULL, NULL),
(3, 'instagram', 'bx bxl-instagram', 1, NULL, NULL),
(4, 'radio', 'bx bx-radio', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(30) NOT NULL,
  `bck_pass` varchar(199) DEFAULT NULL,
  `password` varchar(199) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `login_status` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `ktp` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tmpt_lhr` varchar(100) DEFAULT NULL,
  `tgl_lhr` varchar(100) DEFAULT NULL,
  `foto_profil` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `bck_pass`, `password`, `last_login`, `login_status`, `name`, `address`, `phone`, `ktp`, `email`, `tmpt_lhr`, `tgl_lhr`, `foto_profil`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'studiosederhana', '$2y$10$/CCnUIj.CFrNr/i0ROqepO6I1/.NuWsrHWoozdCf.wZm1NCIk0WJq', '2015-09-07 00:00:00', 1, 'Superadmin', 'SUPERADMIN', 'SUPERADMIN', 'SA', 'superadmin@royalcontrolling.com', 'SUPERADMIN', '2020-01-02', 'ROYALSUPERADMIN.jpg', '2022-08-19 02:57:10', '2022-08-19 02:57:10'),
(41, 'rioyeri', '11223344', '$2y$10$txb/47TSywXTLTH.iaS4m.VFHsdjAZFJ.Wqb8eCUTdcFEjxwgeI4u', NULL, 1, 'Aditya Rio Fansdana', 'Perum. Tulungagung Permai blok G-3, Belakang RSUD DR. Iskak Tulungagung', '081221881737', '3504021810940001', 'rioyeri@gmail.com', 'Kab. Tulungagung', '1994-10-18', 'rioyeri.png', '2021-06-27 08:35:46', '2021-06-27 08:35:46'),
(49, 'alvinarthas', 'alvinarthas', '$2y$10$mhhb4K0yrt8InrhWJ0aGzO3i92bfadpgUUmw7wQkDrU63.7OGiAHy', NULL, NULL, 'alvinarthas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-11 03:31:04', '2023-07-11 03:31:04');

-- --------------------------------------------------------

--
-- Table structure for table `users_mapping`
--

CREATE TABLE `users_mapping` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `submapping_id` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_mapping`
--

INSERT INTO `users_mapping` (`id`, `user_id`, `submapping_id`, `created_at`, `updated_at`) VALUES
(1094, 49, 'USUSV', '2023-07-11 03:31:04', '2023-07-11 03:31:04'),
(1095, 49, 'USUSU', '2023-07-11 03:31:04', '2023-07-11 03:31:04'),
(1096, 49, 'IVCMC', '2023-07-11 03:34:00', '2023-07-11 03:34:00'),
(1097, 49, 'IVCMU', '2023-07-11 03:34:00', '2023-07-11 03:34:00'),
(1098, 49, 'IVCMV', '2023-07-11 03:34:00', '2023-07-11 03:34:00'),
(1099, 49, 'IVEVC', '2023-07-11 03:34:00', '2023-07-11 03:34:00'),
(1100, 49, 'IVEVU', '2023-07-11 03:34:00', '2023-07-11 03:34:00'),
(1101, 49, 'IVEVV', '2023-07-11 03:34:00', '2023-07-11 03:34:00'),
(1102, 49, 'IVGBC', '2023-07-11 03:34:00', '2023-07-11 03:34:00'),
(1103, 49, 'IVGBU', '2023-07-11 03:34:00', '2023-07-11 03:34:00'),
(1104, 49, 'IVGBV', '2023-07-11 03:34:00', '2023-07-11 03:34:00'),
(1105, 49, 'IVGLC', '2023-07-11 03:34:00', '2023-07-11 03:34:00'),
(1106, 49, 'IVGLU', '2023-07-11 03:34:00', '2023-07-11 03:34:00'),
(1107, 49, 'IVGLV', '2023-07-11 03:34:00', '2023-07-11 03:34:00'),
(1108, 49, 'IVPRC', '2023-07-11 03:34:00', '2023-07-11 03:34:00'),
(1109, 49, 'IVPRU', '2023-07-11 03:34:00', '2023-07-11 03:34:00'),
(1110, 49, 'IVPRV', '2023-07-11 03:34:00', '2023-07-11 03:34:00'),
(1111, 49, 'IVQTC', '2023-07-11 03:34:00', '2023-07-11 03:34:00'),
(1112, 49, 'IVQTU', '2023-07-11 03:34:00', '2023-07-11 03:34:00'),
(1113, 49, 'IVQTV', '2023-07-11 03:34:00', '2023-07-11 03:34:00');

-- --------------------------------------------------------

--
-- Table structure for table `users_role`
--

CREATE TABLE `users_role` (
  `id` bigint(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_role`
--

INSERT INTO `users_role` (`id`, `username`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 1, '2019-05-06 17:41:24', '2019-05-06 10:41:24'),
(28, 'rioyeri', 43, '2021-06-27 08:52:37', '2021-06-27 08:52:37'),
(32, 'alvinarthas', 47, '2023-07-11 03:32:53', '2023-07-11 03:32:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `boxicons`
--
ALTER TABLE `boxicons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complement`
--
ALTER TABLE `complement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complement_invitation_id` (`invitation_id`);

--
-- Indexes for table `complement_specialname`
--
ALTER TABLE `complement_specialname`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compspecial_invitationi_d` (`invitation_id`);

--
-- Indexes for table `datakota`
--
ALTER TABLE `datakota`
  ADD PRIMARY KEY (`kota_id`) USING BTREE;

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_detail`
--
ALTER TABLE `event_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_invitation_id` (`invitation_id`);

--
-- Indexes for table `gallery_tags`
--
ALTER TABLE `gallery_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giftbox`
--
ALTER TABLE `giftbox`
  ADD PRIMARY KEY (`id`),
  ADD KEY `giftbox_inv_id` (`invitation_id`);

--
-- Indexes for table `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invitation`
--
ALTER TABLE `invitation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inv_id` (`invitation_id`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invitation_messages` (`invitation_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`modul_id`) USING BTREE;

--
-- Indexes for table `modul_submapping`
--
ALTER TABLE `modul_submapping`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `fk_submodull` (`submodul_id`) USING BTREE;

--
-- Indexes for table `modul_submodul`
--
ALTER TABLE `modul_submodul`
  ADD PRIMARY KEY (`submodul_id`) USING BTREE,
  ADD KEY `fk_modul` (`modul_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invitation_id_quote` (`invitation_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sosmed`
--
ALTER TABLE `sosmed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- Indexes for table `users_mapping`
--
ALTER TABLE `users_mapping`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `fk_uzer` (`user_id`) USING BTREE,
  ADD KEY `fk_submapping` (`submapping_id`) USING BTREE;

--
-- Indexes for table `users_role`
--
ALTER TABLE `users_role`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `fk_username2` (`username`) USING BTREE,
  ADD KEY `fk_role` (`role_id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `boxicons`
--
ALTER TABLE `boxicons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `complement`
--
ALTER TABLE `complement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `complement_specialname`
--
ALTER TABLE `complement_specialname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datakota`
--
ALTER TABLE `datakota`
  MODIFY `kota_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=516;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `event_detail`
--
ALTER TABLE `event_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `gallery_tags`
--
ALTER TABLE `gallery_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giftbox`
--
ALTER TABLE `giftbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hari`
--
ALTER TABLE `hari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `invitation`
--
ALTER TABLE `invitation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quote`
--
ALTER TABLE `quote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `sosmed`
--
ALTER TABLE `sosmed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `users_mapping`
--
ALTER TABLE `users_mapping`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1114;

--
-- AUTO_INCREMENT for table `users_role`
--
ALTER TABLE `users_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complement`
--
ALTER TABLE `complement`
  ADD CONSTRAINT `complement_invitation_id` FOREIGN KEY (`invitation_id`) REFERENCES `invitation` (`invitation_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `complement_specialname`
--
ALTER TABLE `complement_specialname`
  ADD CONSTRAINT `compspecial_invitationi_d` FOREIGN KEY (`invitation_id`) REFERENCES `invitation` (`invitation_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `event_detail`
--
ALTER TABLE `event_detail`
  ADD CONSTRAINT `event_id` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_invitation_id` FOREIGN KEY (`invitation_id`) REFERENCES `invitation` (`invitation_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `giftbox`
--
ALTER TABLE `giftbox`
  ADD CONSTRAINT `giftbox_inv_id` FOREIGN KEY (`invitation_id`) REFERENCES `invitation` (`invitation_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `invitation_messages` FOREIGN KEY (`invitation_id`) REFERENCES `invitation` (`invitation_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `modul_submapping`
--
ALTER TABLE `modul_submapping`
  ADD CONSTRAINT `fk_submodull` FOREIGN KEY (`submodul_id`) REFERENCES `modul_submodul` (`submodul_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `modul_submodul`
--
ALTER TABLE `modul_submodul`
  ADD CONSTRAINT `fk_modul` FOREIGN KEY (`modul_id`) REFERENCES `modul` (`modul_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quote`
--
ALTER TABLE `quote`
  ADD CONSTRAINT `invitation_id_quote` FOREIGN KEY (`invitation_id`) REFERENCES `invitation` (`invitation_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_mapping`
--
ALTER TABLE `users_mapping`
  ADD CONSTRAINT `fk_submapping` FOREIGN KEY (`submapping_id`) REFERENCES `modul_submapping` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_uzer` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_role`
--
ALTER TABLE `users_role`
  ADD CONSTRAINT `fk_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_username2` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
