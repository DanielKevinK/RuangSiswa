-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2023 at 02:40 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ruangsiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE `chapter` (
  `ChapterID` int(11) NOT NULL,
  `CourseID` int(11) NOT NULL,
  `ChapterName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chapter`
--

INSERT INTO `chapter` (`ChapterID`, `CourseID`, `ChapterName`) VALUES
(1, 1, 'Bab 1: Matrix'),
(2, 2, 'Bab 1: Sifat Koligatif Larutan'),
(3, 3, 'Bab 1: Listrik Arus Searah'),
(4, 4, 'Bab 1: Pertumbuhan dan Perkembangan'),
(5, 5, 'Bab 1: RESPON INTERNASIONAL TERHADAP PROKLAMASI KEMERDEKAAN INDONESIA'),
(6, 6, 'Bab 1: Arsitektur Komputer'),
(7, 7, 'Bab 1: Making Suggestion'),
(8, 8, 'Bab 1: Hukum'),
(9, 9, 'Bab 1: Membuat Surat Lamaran Pekerjaan'),
(10, 10, 'Bab 1: Sepakbola');

-- --------------------------------------------------------

--
-- Table structure for table `chapterquiz`
--

CREATE TABLE `chapterquiz` (
  `QuizID` int(11) NOT NULL,
  `ChapterID` int(11) NOT NULL,
  `quizName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chapterquiz`
--

INSERT INTO `chapterquiz` (`QuizID`, `ChapterID`, `quizName`) VALUES
(1, 1, 'Quiz: Matrix'),
(2, 2, 'Quiz: Sifat Koligatif Larutan'),
(3, 3, 'Quiz: Listrik Arus Searah'),
(4, 4, 'Quiz: Pertumbuhan dan Perkembangan'),
(5, 5, 'Quiz: Respon Internasional Terhadap Proklamasi Kemerdekaan Indonesia'),
(6, 6, 'Quiz: Arsitektur Komputer'),
(7, 7, 'Quiz: Making Suggestion'),
(8, 8, 'Quiz: Hukum'),
(9, 9, 'Quiz: Membuat Surat Lamaran Pekerjaan'),
(10, 10, 'Quiz: Sepakbola');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CourseID` int(11) NOT NULL,
  `Class` int(11) NOT NULL CHECK (`Class` >= 10 and `Class` <= 12),
  `CourseName` varchar(100) NOT NULL,
  `imageName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseID`, `Class`, `CourseName`, `imageName`) VALUES
(1, 12, 'Matematika', 'cat-1.jpg'),
(2, 12, 'Kimia', 'cat-2.jpg'),
(3, 12, 'Fisika', 'cat-3.jpg'),
(4, 12, 'Biology', 'cat-4.jpg'),
(5, 12, 'Sejarah', 'cat-5.jpg'),
(6, 12, 'Informatika', 'cat-6.jpg'),
(7, 12, 'Bahasa Inggris', 'cat-7.jpg'),
(8, 12, 'PKN', 'cat-8.jpg'),
(9, 12, 'B.Indonesia', 'cat-9.jpg'),
(10, 12, 'Olahraga', 'cat-10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `UserID` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Role` varchar(10) NOT NULL,
  `ActivatedStatus` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`UserID`, `Username`, `Password`, `Role`, `ActivatedStatus`) VALUES
('06a2a87adb9df58eddbb41c45878209c', 'dianhyah', 'd10f5dae8ec2917fab5a7f52b2bb1ccb', 'Tutor', 1),
('180c21711356b3633724c2ab0e3f71db', 'hariradan', 'b0ec076f1ab01ac210699e3a72a103f5', 'Tutor', 1),
('1fc712d5eb1c62b99558cd1143d3a4c8', 'ekodonan', '6e8a4f3943c6caba374270bdd9b12525', 'Tutor', 1),
('22498818b6c310a371ec5651eb145858', 'gambitu', '2724d4b6a228f1a917b181d648ce4eb3', 'Tutor', 1),
('28e469deb97fef67c1b4f3f329768399', 'noviumah', 'e83fd2e05cf7850f10e182dca058a412', 'Tutor', 1),
('406757de9936cff70d5789558e61de86', 'budisgar', '2d5b9164120682eb248aa1853d02e3cc', 'Student', 1),
('4f7e4ab779cc17e8d7a775ad1ce2ad36', 'victorti', '16df2c6e28496bf2f545ae47cc1c49fe', 'Tutor', 1),
('69e42af290c08323a92e2bd29ef84c20', 'zahrauah', '16253d4aeb31a34e3e1f8094ded02226', 'Tutor', 1),
('6c441c920a8b0d56cd7dc8336db7b897', 'raditan', '45178472c3a9ecc5d974609e5776b924', 'Tutor', 1),
('6c9e4c44d5c95564ada6adadc1a41792', 'shakini', '3823f38cf6910d4af763ce2b0a8d03af', 'Student', 1),
('85f7dd756e5beff49e210430df392143', 'wartaah', 'ab5bf40137b01a9176c62aa041761c1f', 'Student', 1),
('921eabe428e234af1a193fdd5a5932c8', 'cahynto', '9a963bd2130e8777de14235fcb94275f', 'Student', 1),
('ad9d612de9e853e4989f9b946b389dd7', 'shaniarti', '0dfa0eb5404a74e44376f673e1cca66c', 'Student', 1),
('b633b263bb7ed9b3cab7144cddae8f0c', 'lulutwin', 'ecf2f3c3adf639610563ba6e2af8b626', 'Student', 1),
('c2a4dfd1020c517e2bd6b52493f13acc', 'elliah', 'b0fb30a8e8c0969479ed42664bdb0b67', 'Student', 1),
('c4ae4c4b729334c1de026d8ed1a030bd', 'idamaari', '96d932779af72d007daef338dec9d44c', 'Student', 1),
('cb4096c1569e633bad46052c7d5266a1', 'cayadigih', 'c525cceba75440c827bb2b5f455d89f7', 'Tutor', 1),
('cbd4c9ac09f0097213481403fafec278', 'gaduang', 'cd792b3aa94a92c6d6d780b4f4404bf1', 'Student', 1),
('dac92173ac0cf77ba37084b2d05d43a3', 'hanamuni', 'ab5bf40137b01a9176c62aa041761c1f', 'Student', 1),
('dbc350169e48a5919c9a35c549edf4ea', 'agneri', '9e28aa450f47b9d6de0e780adaa638b3', 'Tutor', 1);

-- --------------------------------------------------------

--
-- Table structure for table `paymenthistory`
--

CREATE TABLE `paymenthistory` (
  `StudentID` varchar(100) NOT NULL,
  `PaymentMethod` varchar(100) NOT NULL,
  `TransactionDate` date NOT NULL,
  `SubscriptionID` int(20) NOT NULL,
  `ExpiredDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paymenthistory`
--

INSERT INTO `paymenthistory` (`StudentID`, `PaymentMethod`, `TransactionDate`, `SubscriptionID`, `ExpiredDate`) VALUES
('921eabe428e234af1a193fdd5a5932c8', 'M-Banking', '2023-01-23', 1, '2023-01-24'),
('b633b263bb7ed9b3cab7144cddae8f0c', 'M-Banking', '2023-01-28', 2, '2023-01-31'),
('85f7dd756e5beff49e210430df392143', 'M-Banking', '2023-01-24', 3, '2023-01-29'),
('dac92173ac0cf77ba37084b2d05d43a3', 'M-Banking', '2023-01-21', 4, '2023-01-28'),
('c4ae4c4b729334c1de026d8ed1a030bd', 'M-Banking', '2023-01-19', 5, '2023-02-02'),
('406757de9936cff70d5789558e61de86', 'M-Banking', '2023-01-18', 6, '2023-02-08'),
('6c9e4c44d5c95564ada6adadc1a41792', 'M-Banking', '2023-01-10', 7, '2023-02-10'),
('c2a4dfd1020c517e2bd6b52493f13acc', 'M-Banking', '2023-01-15', 8, '2023-03-15'),
('cbd4c9ac09f0097213481403fafec278', 'M-Banking', '2023-01-12', 9, '2023-07-12'),
('ad9d612de9e853e4989f9b946b389dd7', 'M-Banking', '2023-01-01', 10, '2024-01-01');

-- --------------------------------------------------------

--
-- Table structure for table `ppt`
--

CREATE TABLE `ppt` (
  `pptID` int(11) NOT NULL,
  `ChapterID` int(11) NOT NULL,
  `sessionID` int(11) NOT NULL,
  `pptLink` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ppt`
--

INSERT INTO `ppt` (`pptID`, `ChapterID`, `sessionID`, `pptLink`) VALUES
(1, 1, 1, 'https://drive.google.com/file/d/1olqzW7wCD942g8Ro-dqRpSMF6h55Qf0t/preview'),
(1, 2, 1, 'https://drive.google.com/file/d/12a38yzQ16Uef492s4A42zIduVfqL0a0L/preview'),
(1, 3, 1, 'https://drive.google.com/file/d/18CkeMGr0kEKwW51Rovc2_8Z4kHCl1Prt/preview'),
(1, 4, 1, 'https://drive.google.com/file/d/1to9TjuW-noPDqSSbAjyr7SEAgEIYsAds/preview'),
(1, 5, 1, 'https://drive.google.com/file/d/1NjyrdCcCtz4ElwC40ODDLTChAisa_pfk/preview'),
(1, 6, 1, 'https://drive.google.com/file/d/1r2Ogp8j7L5pLqGqcBMU9NNy3n7RSHBqY/preview'),
(1, 7, 1, 'https://drive.google.com/file/d/1ACsnFua6JJpmRdAf0QROc-_a1Ij1lDqY/preview'),
(1, 8, 1, 'https://drive.google.com/file/d/1z1jSrhtc3_cqcEFcuk14ogTajh76hw5j/preview'),
(1, 9, 1, 'https://drive.google.com/file/d/1umwGR211BT4wUcYLXsM1hj_d30jW8_JE/preview'),
(1, 10, 1, 'https://drive.google.com/file/d/1KpCuxg3Kx3M-dXm4XQXLrxkKsTQlgggi/preview');

-- --------------------------------------------------------

--
-- Table structure for table `quizanswer`
--

CREATE TABLE `quizanswer` (
  `answerQuizID` int(11) NOT NULL,
  `quizID` int(11) NOT NULL,
  `quizQuestionID` int(11) NOT NULL,
  `AnswerQuiz` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizanswer`
--

INSERT INTO `quizanswer` (`answerQuizID`, `quizID`, `quizQuestionID`, `AnswerQuiz`) VALUES
(1, 1, 1, '1'),
(1, 1, 2, '1'),
(1, 1, 3, '1'),
(1, 1, 4, '1'),
(1, 1, 5, '8663'),
(1, 2, 1, 'Jenis zat pelaut'),
(1, 3, 1, '1 coulomb'),
(1, 3, 2, '4 coulomb'),
(1, 3, 3, '6 volt'),
(1, 3, 4, '100V'),
(1, 3, 5, '0,25A'),
(1, 4, 1, 'kecepatannya kontinu'),
(1, 4, 2, 'asam absitat'),
(1, 4, 3, 'etilen'),
(1, 4, 4, 'batang yang disebabkan oleh aktivitas kambium'),
(1, 4, 5, 'osmosis'),
(1, 5, 1, 'dengan adanya pengakuan kedaulatan maka Indonesia akan mendapatkan bantuan ekonomi dari Belanda'),
(1, 5, 2, 'de facto'),
(1, 5, 3, 'de facto'),
(1, 5, 4, 'negara – negara di dunia mengetahui bahwa bangsa Indonesia telah lepas dari\r\npenjajahan.'),
(1, 5, 5, 'tanpa adanya pengakuan dari negara lain, Upaya memproklamasikan kemerdekaan menjadi sia- sia.'),
(1, 6, 1, 'Software'),
(1, 6, 2, 'Mengolah data kuantitatif'),
(1, 6, 3, 'Operator'),
(1, 6, 4, 'Monitor'),
(1, 6, 5, 'Mouse'),
(1, 7, 1, 'are you'),
(1, 7, 2, 'Shall I'),
(1, 7, 3, 'Can I'),
(1, 7, 4, 'Can I'),
(1, 7, 5, 'Would you'),
(1, 8, 1, 'Aristoteles'),
(1, 8, 2, 'Indonesia menganut prinsip pembagian kekuasaan'),
(1, 8, 3, 'Kesadaran hukum'),
(1, 8, 4, 'Peraturan itu menguntungkan jabatan kita'),
(1, 8, 5, 'Menjadi sumber tertib hukum'),
(1, 9, 1, 'Berdasarkan iklan yang dimuat dalam harian umum Pikiran Rakyat tanggal 17 Agustus 2020 tentang adanya lowongan pekerjaan tenaga pemasaran.'),
(1, 9, 2, 'Daftar riwayat hidup (CV)'),
(1, 9, 3, 'Tempat dan tanggal surat'),
(1, 9, 4, 'Nama, tempat dan tanggal lahir, jabatan'),
(1, 9, 5, 'Atas sebelah kiri'),
(1, 10, 1, 'Lebih populer di dunia'),
(1, 10, 2, '105x68m (115x74yd) atau berukuran 7140 meter persegi'),
(1, 10, 3, 'Ujung sikut'),
(1, 10, 4, 'diameter 69–70 cm dengan berat 410–450 gr'),
(1, 10, 5, '2,44 Meter'),
(2, 1, 1, '2'),
(2, 1, 2, '2'),
(2, 1, 3, '2'),
(2, 1, 4, '2'),
(2, 1, 5, '8664'),
(2, 2, 1, 'Jumlah zat pelarut'),
(2, 3, 1, '5 coulomb'),
(2, 3, 2, '12 coulomb'),
(2, 3, 3, '9 volt'),
(2, 3, 4, '150V'),
(2, 3, 5, '0,5A'),
(2, 4, 1, 'terjadi secara terus menerus'),
(2, 4, 2, 'auksin'),
(2, 4, 3, 'asam absitat'),
(2, 4, 4, 'apikal tumbuhan'),
(2, 4, 5, 'difusi'),
(2, 5, 1, 'dengan adanya pengakuan kedaulatan maka secara otomatis bangsa Indonesia\r\ndapat menjalin kerjasama dengan bangsa lain'),
(2, 5, 2, 'de facto bersifat sementara'),
(2, 5, 3, 'de facto bersifat sementara'),
(2, 5, 4, 'menunjukkan kepada dunia bahwa Indonesia telah menjadi negara yang\r\nberdaulat. '),
(2, 5, 5, 'dengan adanya pengakuan kedaulatan negara lain, Indonesia dapat berkembang\r\nmenjadi negara yang maju.'),
(2, 6, 1, 'Hardware'),
(2, 6, 2, 'Mengolah input jadi output'),
(2, 6, 3, 'Spyware'),
(2, 6, 4, 'Keyboard'),
(2, 6, 5, 'Monitor'),
(2, 7, 1, 'how about'),
(2, 7, 2, 'Let’s’'),
(2, 7, 3, 'I’ll do'),
(2, 7, 4, 'Would you'),
(2, 7, 5, 'Why don’t you'),
(2, 8, 1, 'Van Aeldoorn'),
(2, 8, 2, 'Negara melindungi seluruh tumpah darah Indonesia'),
(2, 8, 3, 'Kekuasaan'),
(2, 8, 4, 'Peraturan itu dibuat oleh badan yang berwenang'),
(2, 8, 5, 'Mengendalikan kekuasaan penguasa agar tidak seweang-wenang'),
(2, 9, 1, 'Berikut ini saya lampirkan hal-hal sebagai berikut'),
(2, 9, 2, 'Fotokopi ijazah'),
(2, 9, 3, 'Salam pembuka'),
(2, 9, 4, 'Nama, tempat dan tanggal lahir, alamat, pendidikan'),
(2, 9, 5, 'Atas sebelah kanan'),
(2, 10, 1, 'Lebih popouler di Indonesia'),
(2, 10, 2, '106x68 m (115x74 yd) atau berukuran 8140 meter persegi'),
(2, 10, 3, 'Ujung kaki'),
(2, 10, 4, 'diameter 63–70 cm dengan berat 410–450 gr'),
(2, 10, 5, '2,55 Meter'),
(3, 1, 1, '3'),
(3, 1, 2, '3'),
(3, 1, 3, '3'),
(3, 1, 4, '3'),
(3, 1, 5, '8665'),
(3, 2, 1, 'Jumlah zat terlarut'),
(3, 3, 1, 'c 0.25 coulomb'),
(3, 3, 2, '60 coulomb'),
(3, 3, 3, '12 volt'),
(3, 3, 4, '250V'),
(3, 3, 5, '0,75A'),
(3, 4, 1, 'dapat balik ke kondisi semula'),
(3, 4, 2, 'sitokinin'),
(3, 4, 3, 'auksin'),
(3, 4, 4, 'ruas - ruas batang'),
(3, 4, 5, 'imbibisi'),
(3, 5, 1, 'pengakuan kedaulatan sangat penting untuk membentuk angkatan perang Indonesia'),
(3, 5, 2, 'de jure bersifat tetap'),
(3, 5, 3, 'de jure bersifat tetap'),
(3, 5, 4, 'mendapatkan pengakuan dari negara- negara di dunia sebagai negara yang\r\nmerdeka.'),
(3, 5, 5, 'kerjasama dengan negara lain dapat kita lakukan jika banyak negara-negara yang\r\nmengakui kedaulatan Indonesia.'),
(3, 6, 1, 'Brainware'),
(3, 6, 2, 'Mengolah data kualitatif'),
(3, 6, 3, 'Programmer'),
(3, 6, 4, 'Pentium core i7'),
(3, 6, 5, 'Speaker'),
(3, 7, 1, 'shall them'),
(3, 7, 2, 'Why don’t'),
(3, 7, 3, 'Would you'),
(3, 7, 4, 'I’ll do'),
(3, 7, 5, 'Can I'),
(3, 8, 1, 'S. M. Amir'),
(3, 8, 2, 'Negara Indonesia adalah negara kepulauan dengan semboyan Bhineka Tunggal Ika'),
(3, 8, 3, 'Pengetahuan hukum'),
(3, 8, 4, 'Peraturan itu untuk kesejahteraan kita sendiri'),
(3, 8, 5, 'Sebagai pedoman hidup benegara dan bermasyarakat'),
(3, 9, 1, 'Demikian surat permohonan saya ini saya buat dengan sebenarnya.'),
(3, 9, 2, 'Fotokopi KTP'),
(3, 9, 3, 'Nama jelas'),
(3, 9, 4, 'Nama, alamat, hobi, pendidikan'),
(3, 9, 5, 'Bawah sebelah kiri'),
(3, 10, 1, 'Lebih populer dikalangan masyarakat'),
(3, 10, 2, '107x68 m (115x74 yd) atau berukuran 9140 meter persegi'),
(3, 10, 3, 'Ujung bagian belakang kaki'),
(3, 10, 4, 'diameter 62–70 cm dengan berat 410–450 gr'),
(3, 10, 5, '3,44 Meter'),
(4, 1, 1, '4'),
(4, 1, 2, '4'),
(4, 1, 3, '4'),
(4, 1, 4, '4'),
(4, 1, 5, '8662'),
(4, 2, 1, 'Konsentrasi larutan'),
(4, 3, 1, '50 coulomb'),
(4, 3, 2, '120 coulomb'),
(4, 3, 3, '10,8 volt'),
(4, 3, 4, 'd  300V'),
(4, 3, 5, '1A'),
(4, 4, 1, 'tidak dapat balik ke kondisi semula'),
(4, 4, 2, 'etilen'),
(4, 4, 3, 'sitokinin'),
(4, 4, 4, 'ketiak daun'),
(4, 4, 5, 'eksositosis'),
(4, 5, 1, 'pengakuan kedaulatan diperlukan untuk menyelesaikan masalah Papua Barat'),
(4, 5, 2, 'de jure'),
(4, 5, 3, 'de jure'),
(4, 5, 4, 'negara didunia menghormati bangsa Indonesia sebagai negara yang baru\r\nmerdeka'),
(4, 5, 5, 'dengan adanya pengakuan kedaulatan dari negara lain, Indonesia dapat menunjukkan eksistensinya sebagai suatu bangsa.'),
(4, 6, 1, 'Mailware'),
(4, 6, 2, 'Mengatur software'),
(4, 6, 3, 'System analyst'),
(4, 6, 4, 'Flashdisk'),
(4, 6, 5, 'Printer'),
(4, 7, 1, 'would you like to'),
(4, 7, 2, 'Would you'),
(4, 7, 3, 'Should I'),
(4, 7, 4, 'Let’s'),
(4, 7, 5, 'I’ll do'),
(4, 8, 1, 'Wiryono Kusumo'),
(4, 8, 2, 'Lambang negara Indonesia adalah burung garuda'),
(4, 8, 3, 'Aparatur hukum'),
(4, 8, 4, 'Untuk menghindari sanksi yang berat'),
(4, 8, 5, 'Menjadmin kepastian hukum semua norma hukum baik tertulis atau tidak tertulis'),
(4, 9, 1, 'Dengan hormat,'),
(4, 9, 2, 'Fotokopi surat perjanjian'),
(4, 9, 3, 'Riwayat pribadi'),
(4, 9, 4, 'Nama, hobi, umur, pendidikan,'),
(4, 9, 5, 'Bawah sebelah kanan'),
(4, 10, 1, 'Lebih populer bagi orang dewasa'),
(4, 10, 2, '108x68 m (115x74 yd) atau berukuran 6140 meter persegi'),
(4, 10, 3, 'Kaki bagian dalam'),
(4, 10, 4, 'diameter 61–70 cm dengan berat 410–450 gr'),
(4, 10, 5, '4,55 Meter'),
(5, 1, 1, '5'),
(5, 1, 2, '5'),
(5, 1, 3, '5'),
(5, 1, 4, '5'),
(5, 1, 5, '8661'),
(5, 2, 1, 'Jenis zat terlarut'),
(5, 3, 1, '10 coulomb'),
(5, 3, 2, '240 coulomb'),
(5, 3, 3, '12,8 volt'),
(5, 3, 4, '400V'),
(5, 3, 5, '1,5A'),
(5, 4, 1, 'hanya terjadi pada organisme multiseluler'),
(5, 4, 2, 'giberelin'),
(5, 4, 3, 'giberelin'),
(5, 4, 4, 'perkecambahan'),
(5, 4, 5, 'endositosis'),
(5, 5, 1, 'sebagai upaya untuk menjadi negara yang dikenal di dunia'),
(5, 5, 2, 'de jure bersifat penuh'),
(5, 5, 3, 'de jure bersifat penuh'),
(5, 5, 4, 'negara-negara di dunia dapat menjalin kerja sama Indonesia sebagai negara\r\nmerdeka'),
(5, 5, 5, 'salah satu syarat Sebuah negara dapat diakui dunia internasional sebagai negara\r\nyang berdaulat atau merdeka harus mendapat pengakuan negara lain.'),
(5, 6, 1, 'Diskware'),
(5, 6, 2, 'Mengatur Hardware'),
(5, 6, 3, 'Hacker'),
(5, 6, 4, 'NVIDIA GeForce RTX 4090TI'),
(5, 6, 5, 'Keyboard'),
(5, 7, 1, 'would you'),
(5, 7, 2, 'Should'),
(5, 7, 3, 'I don’t'),
(5, 7, 4, 'Do'),
(5, 7, 5, 'Can’t you'),
(5, 8, 1, 'Prof. C. S. T. Kansil'),
(5, 8, 2, 'Negara Indonesia adalah negara hukum'),
(5, 8, 3, 'Hukum'),
(5, 8, 4, 'Mendapatkan penghargaan dari penegak hukum'),
(5, 8, 5, 'menjadi norma tertinggi'),
(5, 9, 1, 'Atas perhatian dan bantuan Bapak, saya mengucapkan terima kasih'),
(5, 9, 2, 'Pas foto terbaru ukuran 4×6 cm'),
(5, 9, 3, 'Isi surat'),
(5, 9, 4, 'Nama, riwayat hidup, alamat, pendidikan'),
(5, 9, 5, 'Di atas tanda tangan'),
(5, 10, 1, 'Lebih populer bagi setiap pencinta sepak bola'),
(5, 10, 2, '105x68 m (115x74 yd) atau berukuran 3140 meter persegi'),
(5, 10, 3, 'Telapak kaki'),
(5, 10, 4, 'diameter 68–70 cm dengan berat 410–450 gr'),
(5, 10, 5, '1,44 Meter'),
(6, 2, 2, 'Titik beku larutan menjadi lebih tinggi dibandingkan dengan titik beku pelarut'),
(7, 2, 2, 'Tekanan uap jenuh jadi lebih tinggi dibandingkan dengan tekanan uap jenuh pelarut'),
(8, 2, 2, 'Titik didih larutan menjadi lebih tinggi dibandingkan titik didih pelarut'),
(9, 2, 2, 'Tekanan osmosis larutan menjadi lebih rendah daripada tekanan osmosis pelarut'),
(10, 2, 2, 'Tekanan osmosis larutan menjadi lebih tinggi dibandingkan tekanan osmosis pelarut'),
(11, 2, 3, '63%'),
(12, 2, 3, '54%'),
(13, 2, 3, '64 %'),
(14, 2, 3, '62%'),
(15, 2, 3, '60%'),
(16, 2, 4, '0,3 molal'),
(17, 2, 4, '0,25 molal'),
(18, 2, 4, '0,4 molal'),
(19, 2, 4, '0,43 molal'),
(20, 2, 4, '0,5 molal'),
(21, 2, 5, '0,5 molal'),
(22, 2, 5, '0,4 molal'),
(23, 2, 5, '0,7 molal'),
(24, 2, 5, '0,6 molal'),
(25, 2, 5, '0,9 molal');

-- --------------------------------------------------------

--
-- Table structure for table `quizhighscore`
--

CREATE TABLE `quizhighscore` (
  `quizHighScoreID` int(11) NOT NULL,
  `QuizID` int(11) NOT NULL,
  `Score` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizhighscore`
--

INSERT INTO `quizhighscore` (`quizHighScoreID`, `QuizID`, `Score`, `Name`) VALUES
(1, 1, 53, 'Lauren'),
(1, 2, 88, 'Cindi'),
(1, 3, 84, 'Khalil'),
(1, 4, 59, 'Katiria'),
(1, 5, 77, 'Rolando'),
(1, 6, 95, 'Shaletta'),
(1, 7, 96, 'Sanela'),
(1, 8, 59, 'Me'),
(1, 9, 51, 'Shauntina'),
(1, 10, 51, 'Jessen'),
(2, 1, 58, 'Esperanza'),
(2, 2, 85, 'Jesi'),
(2, 3, 100, 'Melana'),
(2, 4, 90, 'Aiesha'),
(2, 5, 55, 'Conni'),
(2, 6, 81, 'Lesli'),
(2, 7, 63, 'Jamarr'),
(2, 8, 82, 'Abubakar'),
(2, 9, 65, 'Brycen'),
(2, 10, 54, 'Jeremaih'),
(3, 1, 73, 'Kevis'),
(3, 2, 70, 'Krisandra'),
(3, 3, 68, 'Ivan'),
(3, 4, 71, 'Elmore'),
(3, 5, 79, 'Jean'),
(3, 6, 90, 'Shenell'),
(3, 7, 70, 'Doniel'),
(3, 8, 96, 'Kimerly'),
(3, 9, 53, 'Tauna'),
(3, 10, 98, 'Chisholm'),
(4, 1, 65, 'Devan'),
(4, 2, 58, 'Abrahm'),
(4, 3, 98, 'Randolph'),
(4, 4, 73, 'Jordanne'),
(4, 5, 54, 'Daielle'),
(4, 6, 83, 'Venson'),
(4, 7, 94, 'Vahe'),
(4, 8, 82, 'Krysteen'),
(4, 9, 84, 'Syrena'),
(4, 10, 53, 'Acacia'),
(5, 1, 53, 'Treasa'),
(5, 2, 72, 'Ailene'),
(5, 3, 80, 'Evetta'),
(5, 4, 89, 'Rya'),
(5, 5, 50, 'Estefany'),
(5, 6, 80, 'Temika'),
(5, 7, 92, 'Merrissa'),
(5, 8, 59, 'Daphne'),
(5, 9, 76, 'Erice'),
(5, 10, 100, 'Ebone'),
(6, 1, 75, 'Joao'),
(6, 2, 57, 'Jabe'),
(6, 3, 65, 'Tylynn'),
(6, 4, 79, 'Corry'),
(6, 5, 87, 'Tyneesha'),
(6, 6, 68, 'Kea'),
(6, 7, 66, 'Leopoldo'),
(6, 8, 97, 'Emily'),
(6, 9, 59, 'Isreal'),
(6, 10, 81, 'Gunnar'),
(7, 1, 71, 'Gerilynn'),
(7, 2, 90, 'Giancarlo'),
(7, 3, 59, 'Mitchell'),
(7, 4, 66, 'Derrin'),
(7, 5, 96, 'Georgetta'),
(7, 6, 50, 'Jasin'),
(7, 7, 87, 'Ulices'),
(7, 8, 87, 'Tavio'),
(7, 9, 57, 'Jenilyn'),
(7, 10, 59, 'Charlese'),
(8, 1, 83, 'Cecilia'),
(8, 2, 90, 'Maura'),
(8, 3, 56, 'Damon'),
(8, 4, 61, 'Celena'),
(8, 5, 50, 'Nicloe'),
(8, 6, 96, 'Joletta'),
(8, 7, 66, 'Rodrique'),
(8, 8, 57, 'Gricelda'),
(8, 9, 100, 'Benjaman'),
(8, 10, 63, 'Long'),
(9, 1, 67, 'Samirah'),
(9, 2, 77, 'Panayiotis'),
(9, 3, 90, 'Gable'),
(9, 4, 78, 'Jantz'),
(9, 5, 52, 'Chenise'),
(9, 6, 71, 'Farid'),
(9, 7, 86, 'Kedar'),
(9, 8, 62, 'Shandel'),
(9, 9, 68, 'Kiirsten'),
(9, 10, 76, 'Shelton'),
(10, 1, 99, 'Apolonio'),
(10, 2, 90, 'Leisl'),
(10, 3, 74, 'Neiman'),
(10, 4, 74, 'Aleksandr'),
(10, 5, 50, 'Darryl'),
(10, 6, 85, 'Leala'),
(10, 7, 85, 'Krysteen'),
(10, 8, 69, 'Jazma'),
(10, 9, 85, 'Khalil'),
(10, 10, 98, 'Jabe'),
(14, 5, 20, 'Michael'),
(15, 5, 20, 'Michael'),
(16, 1, 0, 'Mike'),
(17, 2, 0, 'asdf'),
(18, 1, 100, 'Michael'),
(19, 1, 100, 'Michael'),
(20, 1, 100, 'Michael'),
(21, 1, 40, 'Michael'),
(22, 1, 40, 'Michael');

-- --------------------------------------------------------

--
-- Table structure for table `quizquestion`
--

CREATE TABLE `quizquestion` (
  `QuizQuestionID` int(11) NOT NULL,
  `QuizID` int(11) NOT NULL,
  `Question` mediumtext NOT NULL,
  `CorrectAnswer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizquestion`
--

INSERT INTO `quizquestion` (`QuizQuestionID`, `QuizID`, `Question`, `CorrectAnswer`) VALUES
(1, 1, '1 + 1 =', 2),
(1, 2, 'Sifat koligatif larutan adalah sifat yang bergantung pada …', 3),
(1, 3, 'Apabila suatu penghantar listrik mengalirkan arus 200 mA selama 5 sekon, muatan yang mengalir pada penghantar tersebut adalah…', 1),
(1, 4, 'Pertumbuhan dapat diartikan sebagai proses pertambahan biomassa yang sifatnya?', 4),
(1, 5, ' Sejak Indonesia memproklamasikan kemerdekaannya pada tanggal 17 Agustus\r\n1945, bangsa Indonesia berupaya menghimpun simpati negara-negara lain untuk\r\nmemberikan pengakuan terhadap kedaulatan Indonesia. Pengakuan kedaulatan dari negara-negara lain sangat diperlukan dan dianggap sangat penting bagi bangsa Indonesia karena ....\r\n', 3),
(1, 6, 'Sistem computer terdiri dari tiga unsur berikut kecuali…', 1),
(1, 7, 'Hey Siti, ____________________ go star gazing tonight', 1),
(1, 8, 'Hukum adalah keseluruhan peraturan yang tertulis maupun yang tidak tertulis yang mana mengatur mengenai tata tertib di dalam masyarakat dan pelanggarnya bisa dikenakan sanksi. Pendapat tersebut dikemukakan oleh ....', 3),
(1, 9, 'Isi surat lamaran pekerjaan yang merupakan bagian paragraf pembuka adalah…', 1),
(1, 10, 'Permainan sepak bola sudah dimainkan oleh 250 juta orang lebih dari 200 negara, yang membuat sepak bola menjadi...', 4),
(2, 1, '1 x 1 =', 1),
(2, 2, 'Salah satu efek yang diakibatkan oleh keberadaan zat terlarut dalam pelarut yaitu…', 3),
(2, 3, 'Jika arus 4 Ampere mengalir dalam kawat yang ujung-ujungnya berselisih potensial 12 volt, maka besar muatan tiap menit yang mengalir melalui kawat…', 1),
(2, 4, 'Hormon tumbuhan yang paling banyak ditemukan pada daun yang hampir gugur adalah ?', 4),
(2, 5, 'Untuk berdiri sebagai negara yg berdaulat, Indonesia membutuhkan pengakuan dari\r\nbangsa-bangsa lain secara hukum atau de jure. Pengakuan yang diberikan kepada\r\npihak yang diakui, hanya berdasarkan pada kenyataan saja bahwa pihak yang diakui\r\nitu telah ada adalah pengakuan…\r\n', 3),
(2, 6, 'Komputer digital digunakan untuk…', 1),
(2, 7, 'What shall we do today?____________________ we go to the library. ', 1),
(2, 8, 'Isi dari UUD NRI Tahun 1945 Pasal 1 ayat (3) adalah ....', 3),
(2, 9, 'Berikut ini yang bukan lampiran dalam surat lamaran pekerjaan adalah…', 1),
(2, 10, 'Ukuran luas lapangan sepak bola yang sering dipakai adalah..', 4),
(3, 1, '3 / 1 =', 3),
(3, 2, 'Fraksi mol larutan metanol CH3OH di dalam sebuah air yaitu 0,50. Maka konsentrasi metanol dalam larutan dinyatakan dalam persen berat metanol yaitu…', 3),
(3, 3, 'Tiga buah hambatan masing-masing 3 ohm dirangkai secara seri dan dihubungkan dengan sumber tegangan DC yang mengalirkan arus 1,2A. Jika hambatan dalam sumber tegangan besarnya 1ohm, besar tegangan jepit (GGL) adalah…', 1),
(3, 4, 'Hormon tumbuhan yang berperan dalam pematangan buah adalah ?', 4),
(3, 5, 'Pengakuan dalam bentuk yang tertinggi yang diberikan dengan perhitungan bahwa\r\nnegara atau pemerintah baru itu secara formal telah memenuhi persyaratan yang ditentukan hukum internasional untuk ikut serta secara efektif dalam masyarakat internasional adalah pengakuan…\r\n', 3),
(3, 6, 'Berikut merupakan contoh Brainware, kecuali…', 1),
(3, 7, '____________________ like a cup of coffee?', 1),
(3, 8, 'Kunci pokok keadilan bagi kehidupan bermasyarakat, berbangsa dan bernegara adalah ....', 3),
(3, 9, 'Berikut ini yang bukan unsur dalam surat lamaran pekerjaan adalah…', 1),
(3, 10, 'Teknik menggiring bola dapat dilakukan dengan menggunakan...', 4),
(4, 1, '8 / 2 =', 4),
(4, 2, 'Jika di dalam sebuah larutan yang telah dibuat dengan melarutkan sebanyak 4,5 gram glukosa (C6H12O6) dalam 100 gram air, maka kemolalan nya yaitu…', 2),
(4, 3, 'Sebuah resistor diberi beda potensial sebesar 50 volt dan arus yang mengalir pada resistor 120 mA. Supaya arus yang mengalir menjadi 0.6A. Beda potensial sumbernya adalah…', 1),
(4, 4, 'Pertumbuhan primer terjadi pada ?', 4),
(4, 5, 'Penyebaran berita proklamasi kemerdekaan Indonesia gencar dilakukan sesaat\r\nsetelah teks proklamasi kemerdekaan Indonesia pada tanggal 17 Agustus 1945 selesai dibacakan, hal ini sangat penting untuk dilakukan agar...\r\n', 3),
(4, 6, 'Berikut ini merupakan storage device adalah…', 1),
(4, 7, '____________________ the washing , if you like', 1),
(4, 8, 'Sebagai warga negara yang baik seharusnya sikap kita berusaha melaksanakan peraturan sebaik-baiknya karena ....', 3),
(4, 9, 'Berikut ini identitas pribadi yang dicantumkan dalam surat lamaran pekerjaan adalah…', 1),
(4, 10, 'Berapakah ukuran bola pada sepak bola...', 4),
(5, 1, '(1 + 2 + 3 + 4 + 5) * (1 x 2 x 3 x 4 x 5)-(5 - 4 - 3 - 2 - 1)/(5 / 4 / 3 / 2 / 1) * 9 =', 2),
(5, 2, 'jika sebuah larutan di dalamnya mengandung sebanyak 24 gram MgSO4 dilarutkan dalam 500 gram air.. Maka molalitasnya yaitu…(Mr MgSO4 = 120)', 5),
(5, 3, 'Sebuah resistor diberi beda potensial sebesar 50 bolt dan arus yang mengalir pada resistor 120 mA. Supaya arus yang mengalir menjadi 0.6A, beda potensial sumbernya adalah..', 1),
(5, 4, 'masuknya air ke dalam biji pada saat perkecambahan dipengaruhi oleh peristiwa ?', 4),
(5, 5, 'Memperoleh pengakuan negara merdeka oleh dunia internasional baik pengakuan\r\nsecara de facto dan pengakuan de jure menjadi hal yang paling utama. Indonesia\r\nmembutuhkan Pengakuan dari negara lain karena...\r\n', 3),
(5, 6, 'Hardware yang berfungsi sebagai alat penunjuk untuk mengatur posisi kursor di layar adalah…', 1),
(5, 7, '____________________ get you a drink?', 1),
(5, 8, 'Salah satu fungsi konstitusi sebagai hukum dasar suatu negara adalah ....', 3),
(5, 9, 'Penulisan tanggal surat terletak di…', 1),
(5, 10, 'Tinggi gawang dalam permainan sepak bola adalah...', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sesi`
--

CREATE TABLE `sesi` (
  `sessionID` int(11) NOT NULL,
  `ChapterID` int(11) NOT NULL,
  `sessionName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sesi`
--

INSERT INTO `sesi` (`sessionID`, `ChapterID`, `sessionName`) VALUES
(1, 1, 'Session 1'),
(1, 2, 'Session 1'),
(1, 3, 'Session 1'),
(1, 4, 'Session 1'),
(1, 5, 'Session 1'),
(1, 6, 'Session 1'),
(1, 7, 'Session 1'),
(1, 8, 'Session 1'),
(1, 9, 'Session 1'),
(1, 10, 'Session 1');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `StudentID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StudentID`, `Name`, `PhoneNumber`) VALUES
('406757de9936cff70d5789558e61de86', 'Budi Siregar', '6282106621260 '),
('6c9e4c44d5c95564ada6adadc1a41792', 'Shakila Mulyani', '6282102229466'),
('85f7dd756e5beff49e210430df392143', 'Warta Adriansyah', '6282197912912'),
('921eabe428e234af1a193fdd5a5932c8', 'Cahyo Hidayanto', '62821 0705 5957'),
('ad9d612de9e853e4989f9b946b389dd7', 'Shania Yuliarti', '6282118496624'),
('b633b263bb7ed9b3cab7144cddae8f0c', 'Lulut Wahyudin', '6282102648326'),
('c2a4dfd1020c517e2bd6b52493f13acc', 'Ellis Usamah', '6282103489665'),
('c4ae4c4b729334c1de026d8ed1a030bd', 'Ida Mayasari', '62 82108244077'),
('cbd4c9ac09f0097213481403fafec278', 'Gaduh Sihotang', '6282107894108'),
('dac92173ac0cf77ba37084b2d05d43a3', 'Hana Mulyani', '6282113451073');

-- --------------------------------------------------------

--
-- Table structure for table `subscriptiontype`
--

CREATE TABLE `subscriptiontype` (
  `SubscriptionID` int(20) NOT NULL,
  `SubscriptionName` varchar(100) NOT NULL,
  `Price` int(10) NOT NULL,
  `Duration` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriptiontype`
--

INSERT INTO `subscriptiontype` (`SubscriptionID`, `SubscriptionName`, `Price`, `Duration`) VALUES
(1, '1 day', 10000, 1),
(2, '3 day', 13000, 3),
(3, '5 day', 15000, 5),
(4, '1 Week', 17000, 7),
(5, '2 Week', 24000, 14),
(6, '3 Week', 31000, 21),
(7, '1 Month', 38000, 31),
(8, '3 Month', 65000, 93),
(9, '6 Month', 180000, 186),
(10, '1 Year', 365000, 365);

-- --------------------------------------------------------

--
-- Table structure for table `tutor`
--

CREATE TABLE `tutor` (
  `TutorID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `BirthDate` date NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tutor`
--

INSERT INTO `tutor` (`TutorID`, `Name`, `BirthDate`, `PhoneNumber`) VALUES
('06a2a87adb9df58eddbb41c45878209c', 'Dian Hariyah', '1973-12-31', '6282142146394'),
('180c21711356b3633724c2ab0e3f71db', 'Hari Ramadan', '1991-03-26', '6282161579299'),
('1fc712d5eb1c62b99558cd1143d3a4c8', 'Eko Dongoran', '1976-08-10', '6282179565517'),
('22498818b6c310a371ec5651eb145858', 'Gambira Pangestu', '1978-10-30', '6282103362686'),
('28e469deb97fef67c1b4f3f329768399', 'Novi Usamah', '1983-05-27', '6282329486552'),
('4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Victoria Sudiati', '1995-08-10', '6282186115684'),
('69e42af290c08323a92e2bd29ef84c20', 'Zahra Uyainah', '1985-10-23', '6282159637956'),
('6c441c920a8b0d56cd7dc8336db7b897', 'Radit Irawan', '1993-01-16', '6282103235756'),
('cb4096c1569e633bad46052c7d5266a1', 'Cayadi Saragih', '1995-03-11', '6282147716001'),
('dbc350169e48a5919c9a35c549edf4ea', 'Agnes Mayasari', '1991-09-11', '6282129567241');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `videoID` int(11) NOT NULL,
  `ChapterID` int(11) NOT NULL,
  `sessionID` int(11) NOT NULL,
  `videoLink` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`videoID`, `ChapterID`, `sessionID`, `videoLink`) VALUES
(1, 1, 1, 'https://www.youtube.com/embed/hlh60xenNHE'),
(1, 2, 1, 'https://www.youtube.com/embed/xonmCpalCXQ'),
(1, 3, 1, 'https://www.youtube.com/embed/KvpiLUz3iPc'),
(1, 4, 1, 'https://www.youtube.com/embed/F-VOURqRFgo'),
(1, 5, 1, 'https://www.youtube.com/embed/qQ500aEz0co'),
(1, 6, 1, 'https://www.youtube.com/embed/B5DCSfB7ZVU'),
(1, 7, 1, 'https://www.youtube.com/embed/-ctd9gBQDfs'),
(1, 8, 1, 'https://www.youtube.com/embed/hqykjJ6JWwI'),
(1, 9, 1, 'https://www.youtube.com/embed/rKCMCedNwlg'),
(1, 10, 1, 'https://www.youtube.com/embed/teDIKK555ng');

-- --------------------------------------------------------

--
-- Table structure for table `vipclass`
--

CREATE TABLE `vipclass` (
  `CourseID` int(11) NOT NULL,
  `TutorID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vipclass`
--

INSERT INTO `vipclass` (`CourseID`, `TutorID`) VALUES
(1, '06a2a87adb9df58eddbb41c45878209c'),
(2, '1fc712d5eb1c62b99558cd1143d3a4c8'),
(3, 'cb4096c1569e633bad46052c7d5266a1'),
(4, '28e469deb97fef67c1b4f3f329768399'),
(5, '180c21711356b3633724c2ab0e3f71db'),
(6, '22498818b6c310a371ec5651eb145858'),
(7, 'dbc350169e48a5919c9a35c549edf4ea'),
(8, '69e42af290c08323a92e2bd29ef84c20'),
(9, '6c441c920a8b0d56cd7dc8336db7b897'),
(10, '4f7e4ab779cc17e8d7a775ad1ce2ad36'),
(11, '06a2a87adb9df58eddbb41c45878209c'),
(12, '1fc712d5eb1c62b99558cd1143d3a4c8'),
(13, 'cb4096c1569e633bad46052c7d5266a1'),
(14, '28e469deb97fef67c1b4f3f329768399'),
(15, '180c21711356b3633724c2ab0e3f71db'),
(16, '22498818b6c310a371ec5651eb145858'),
(17, 'dbc350169e48a5919c9a35c549edf4ea'),
(18, '69e42af290c08323a92e2bd29ef84c20'),
(19, '6c441c920a8b0d56cd7dc8336db7b897'),
(20, '4f7e4ab779cc17e8d7a775ad1ce2ad36'),
(21, '06a2a87adb9df58eddbb41c45878209c'),
(22, '1fc712d5eb1c62b99558cd1143d3a4c8'),
(23, 'cb4096c1569e633bad46052c7d5266a1'),
(24, '28e469deb97fef67c1b4f3f329768399'),
(25, '180c21711356b3633724c2ab0e3f71db'),
(26, '22498818b6c310a371ec5651eb145858'),
(27, 'dbc350169e48a5919c9a35c549edf4ea'),
(28, '69e42af290c08323a92e2bd29ef84c20'),
(29, '6c441c920a8b0d56cd7dc8336db7b897'),
(30, '4f7e4ab779cc17e8d7a775ad1ce2ad36');

-- --------------------------------------------------------

--
-- Table structure for table `vipcourse`
--

CREATE TABLE `vipcourse` (
  `CourseID` int(11) NOT NULL,
  `CourseName` varchar(100) NOT NULL,
  `Grade` int(3) NOT NULL CHECK (`Grade` >= 10 and `Grade` <= 12)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vipcourse`
--

INSERT INTO `vipcourse` (`CourseID`, `CourseName`, `Grade`) VALUES
(1, 'Kimia', 10),
(2, 'Biologi', 10),
(3, 'Fisika', 10),
(4, 'Sejarah Indonesia', 10),
(5, 'Geografi', 10),
(6, 'Ekonomi', 10),
(7, 'Matematika', 10),
(8, 'Informatika', 10),
(9, 'Sejarah', 10),
(10, 'Antropologi', 10),
(11, 'Kimia', 11),
(12, 'Biologi', 11),
(13, 'Fisika', 11),
(14, 'Sejarah Indonesia', 11),
(15, 'Geografi', 11),
(16, 'Ekonomi', 11),
(17, 'Matematika', 11),
(18, 'Informatika', 11),
(19, 'Sejarah', 11),
(20, 'Antropologi', 11),
(21, 'Kimia', 12),
(22, 'Biologi', 12),
(23, 'Fisika', 12),
(24, 'Sejarah Indonesia', 12),
(25, 'Geografi', 12),
(26, 'Ekonomi', 12),
(27, 'Matematika', 12),
(28, 'Informatika', 12),
(29, 'Sejarah', 12),
(30, 'Antropologi', 12);

-- --------------------------------------------------------

--
-- Table structure for table `vipcoursesession`
--

CREATE TABLE `vipcoursesession` (
  `SessionID` int(11) NOT NULL,
  `CourseID` int(11) NOT NULL,
  `TutorID` varchar(100) NOT NULL,
  `SessionName` varchar(100) NOT NULL,
  `ZoomLink` varchar(100) NOT NULL,
  `SessionDate` date NOT NULL,
  `SessionTime` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vipcoursesession`
--

INSERT INTO `vipcoursesession` (`SessionID`, `CourseID`, `TutorID`, `SessionName`, `ZoomLink`, `SessionDate`, `SessionTime`) VALUES
(1, 1, '06a2a87adb9df58eddbb41c45878209c', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1467', '2023-01-27', '12:00:00'),
(1, 2, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1604', '2023-01-27', '12:00:00'),
(1, 3, 'cb4096c1569e633bad46052c7d5266a1', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1811', '2023-01-27', '10:00:00'),
(1, 4, '28e469deb97fef67c1b4f3f329768399', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1035', '2023-01-27', '14:00:00'),
(1, 5, '180c21711356b3633724c2ab0e3f71db', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1623', '2023-01-27', '14:30:00'),
(1, 6, '22498818b6c310a371ec5651eb145858', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1115', '2023-01-27', '10:00:00'),
(1, 7, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1290', '2023-01-27', '14:00:00'),
(1, 8, '69e42af290c08323a92e2bd29ef84c20', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1287', '2023-01-27', '16:00:00'),
(1, 9, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1359', '2023-01-27', '10:30:00'),
(1, 10, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1734', '2023-01-27', '12:00:00'),
(1, 11, '06a2a87adb9df58eddbb41c45878209c', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1616', '2023-01-27', '14:30:00'),
(1, 12, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1587', '2023-01-27', '10:00:00'),
(1, 13, 'cb4096c1569e633bad46052c7d5266a1', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1179', '2023-01-27', '17:00:00'),
(1, 14, '28e469deb97fef67c1b4f3f329768399', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1142', '2023-01-27', '14:30:00'),
(1, 15, '180c21711356b3633724c2ab0e3f71db', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1688', '2023-01-27', '12:00:00'),
(1, 16, '22498818b6c310a371ec5651eb145858', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1329', '2023-01-27', '14:00:00'),
(1, 17, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1437', '2023-01-27', '14:30:00'),
(1, 18, '69e42af290c08323a92e2bd29ef84c20', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1355', '2023-01-27', '10:00:00'),
(1, 19, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1450', '2023-01-27', '11:00:00'),
(1, 20, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1905', '2023-01-27', '16:00:00'),
(1, 21, '06a2a87adb9df58eddbb41c45878209c', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1270', '2023-01-27', '10:00:00'),
(1, 22, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1432', '2023-01-27', '10:00:00'),
(1, 23, 'cb4096c1569e633bad46052c7d5266a1', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1760', '2023-01-27', '12:00:00'),
(1, 24, '28e469deb97fef67c1b4f3f329768399', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1484', '2023-01-27', '12:00:00'),
(1, 25, '180c21711356b3633724c2ab0e3f71db', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1086', '2023-01-27', '15:00:00'),
(1, 26, '22498818b6c310a371ec5651eb145858', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1260', '2023-01-27', '15:30:00'),
(1, 27, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1713', '2023-01-27', '10:30:00'),
(1, 28, '69e42af290c08323a92e2bd29ef84c20', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1428', '2023-01-27', '10:30:00'),
(1, 29, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1271', '2023-01-27', '16:00:00'),
(1, 30, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 1', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1962', '2023-01-27', '10:00:00'),
(2, 1, '06a2a87adb9df58eddbb41c45878209c', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1500', '2023-02-02', '15:30:00'),
(2, 2, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1153', '2023-02-02', '15:00:00'),
(2, 3, 'cb4096c1569e633bad46052c7d5266a1', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1333', '2023-02-02', '15:00:00'),
(2, 4, '28e469deb97fef67c1b4f3f329768399', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1842', '2023-02-02', '10:30:00'),
(2, 5, '180c21711356b3633724c2ab0e3f71db', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1954', '2023-02-02', '15:30:00'),
(2, 6, '22498818b6c310a371ec5651eb145858', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1658', '2023-02-02', '14:30:00'),
(2, 7, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1636', '2023-02-02', '12:00:00'),
(2, 8, '69e42af290c08323a92e2bd29ef84c20', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1383', '2023-02-02', '10:00:00'),
(2, 9, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1537', '2023-02-02', '15:30:00'),
(2, 10, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1999', '2023-02-02', '10:00:00'),
(2, 11, '06a2a87adb9df58eddbb41c45878209c', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1451', '2023-02-02', '11:00:00'),
(2, 12, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1503', '2023-02-02', '15:30:00'),
(2, 13, 'cb4096c1569e633bad46052c7d5266a1', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1657', '2023-02-02', '10:30:00'),
(2, 14, '28e469deb97fef67c1b4f3f329768399', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1416', '2023-02-02', '15:30:00'),
(2, 15, '180c21711356b3633724c2ab0e3f71db', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1789', '2023-02-02', '12:00:00'),
(2, 16, '22498818b6c310a371ec5651eb145858', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1692', '2023-02-02', '17:00:00'),
(2, 17, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1949', '2023-02-02', '14:00:00'),
(2, 18, '69e42af290c08323a92e2bd29ef84c20', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1053', '2023-02-02', '11:00:00'),
(2, 19, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1466', '2023-02-02', '10:00:00'),
(2, 20, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1391', '2023-02-02', '17:00:00'),
(2, 21, '06a2a87adb9df58eddbb41c45878209c', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1668', '2023-02-02', '10:00:00'),
(2, 22, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1593', '2023-02-02', '11:00:00'),
(2, 23, 'cb4096c1569e633bad46052c7d5266a1', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1667', '2023-02-02', '14:00:00'),
(2, 24, '28e469deb97fef67c1b4f3f329768399', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1464', '2023-02-02', '17:00:00'),
(2, 25, '180c21711356b3633724c2ab0e3f71db', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1487', '2023-02-02', '11:00:00'),
(2, 26, '22498818b6c310a371ec5651eb145858', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1116', '2023-02-02', '15:00:00'),
(2, 27, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1578', '2023-02-02', '17:00:00'),
(2, 28, '69e42af290c08323a92e2bd29ef84c20', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1384', '2023-02-02', '10:00:00'),
(2, 29, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1361', '2023-02-02', '14:30:00'),
(2, 30, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 2', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1734', '2023-02-02', '15:30:00'),
(3, 1, '06a2a87adb9df58eddbb41c45878209c', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1724', '2023-02-07', '14:30:00'),
(3, 2, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1382', '2023-02-07', '15:00:00'),
(3, 3, 'cb4096c1569e633bad46052c7d5266a1', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1664', '2023-02-07', '10:00:00'),
(3, 4, '28e469deb97fef67c1b4f3f329768399', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1106', '2023-02-07', '17:00:00'),
(3, 5, '180c21711356b3633724c2ab0e3f71db', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1840', '2023-02-07', '14:00:00'),
(3, 6, '22498818b6c310a371ec5651eb145858', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1930', '2023-02-07', '15:30:00'),
(3, 7, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1767', '2023-02-07', '11:00:00'),
(3, 8, '69e42af290c08323a92e2bd29ef84c20', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1909', '2023-02-07', '11:00:00'),
(3, 9, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1483', '2023-02-07', '17:00:00'),
(3, 10, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1938', '2023-02-07', '17:00:00'),
(3, 11, '06a2a87adb9df58eddbb41c45878209c', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1249', '2023-02-07', '10:30:00'),
(3, 12, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1200', '2023-02-07', '17:00:00'),
(3, 13, 'cb4096c1569e633bad46052c7d5266a1', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1191', '2023-02-07', '17:00:00'),
(3, 14, '28e469deb97fef67c1b4f3f329768399', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1998', '2023-02-07', '12:00:00'),
(3, 15, '180c21711356b3633724c2ab0e3f71db', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1423', '2023-02-07', '11:00:00'),
(3, 16, '22498818b6c310a371ec5651eb145858', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1555', '2023-02-07', '11:00:00'),
(3, 17, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1195', '2023-02-07', '10:00:00'),
(3, 18, '69e42af290c08323a92e2bd29ef84c20', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1808', '2023-02-07', '15:00:00'),
(3, 19, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1659', '2023-02-07', '15:30:00'),
(3, 20, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1625', '2023-02-07', '15:00:00'),
(3, 21, '06a2a87adb9df58eddbb41c45878209c', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1985', '2023-02-07', '15:00:00'),
(3, 22, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1031', '2023-02-07', '11:00:00'),
(3, 23, 'cb4096c1569e633bad46052c7d5266a1', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1550', '2023-02-07', '11:00:00'),
(3, 24, '28e469deb97fef67c1b4f3f329768399', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1152', '2023-02-07', '14:30:00'),
(3, 25, '180c21711356b3633724c2ab0e3f71db', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1474', '2023-02-07', '16:00:00'),
(3, 26, '22498818b6c310a371ec5651eb145858', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1326', '2023-02-07', '10:30:00'),
(3, 27, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1007', '2023-02-07', '11:00:00'),
(3, 28, '69e42af290c08323a92e2bd29ef84c20', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1540', '2023-02-07', '11:00:00'),
(3, 29, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1022', '2023-02-07', '14:00:00'),
(3, 30, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 3', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1972', '2023-02-07', '15:30:00'),
(4, 1, '06a2a87adb9df58eddbb41c45878209c', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1358', '2023-02-07', '17:00:00'),
(4, 2, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1716', '2023-02-07', '12:00:00'),
(4, 3, 'cb4096c1569e633bad46052c7d5266a1', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1711', '2023-02-07', '12:00:00'),
(4, 4, '28e469deb97fef67c1b4f3f329768399', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1942', '2023-02-07', '10:30:00'),
(4, 5, '180c21711356b3633724c2ab0e3f71db', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1376', '2023-02-07', '14:00:00'),
(4, 6, '22498818b6c310a371ec5651eb145858', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1306', '2023-02-07', '16:00:00'),
(4, 7, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1574', '2023-02-07', '11:00:00'),
(4, 8, '69e42af290c08323a92e2bd29ef84c20', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1758', '2023-02-07', '14:30:00'),
(4, 9, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1041', '2023-02-07', '11:00:00'),
(4, 10, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1788', '2023-02-07', '10:30:00'),
(4, 11, '06a2a87adb9df58eddbb41c45878209c', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1556', '2023-02-07', '14:30:00'),
(4, 12, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1618', '2023-02-07', '17:00:00'),
(4, 13, 'cb4096c1569e633bad46052c7d5266a1', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1888', '2023-02-07', '11:00:00'),
(4, 14, '28e469deb97fef67c1b4f3f329768399', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1651', '2023-02-07', '15:00:00'),
(4, 15, '180c21711356b3633724c2ab0e3f71db', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1585', '2023-02-07', '15:00:00'),
(4, 16, '22498818b6c310a371ec5651eb145858', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1549', '2023-02-07', '15:30:00'),
(4, 17, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1416', '2023-02-07', '16:00:00'),
(4, 18, '69e42af290c08323a92e2bd29ef84c20', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1945', '2023-02-07', '15:00:00'),
(4, 19, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1439', '2023-02-07', '15:00:00'),
(4, 20, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1414', '2023-02-07', '16:00:00'),
(4, 21, '06a2a87adb9df58eddbb41c45878209c', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1480', '2023-02-07', '15:00:00'),
(4, 22, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1142', '2023-02-07', '15:00:00'),
(4, 23, 'cb4096c1569e633bad46052c7d5266a1', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1694', '2023-02-07', '10:30:00'),
(4, 24, '28e469deb97fef67c1b4f3f329768399', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1087', '2023-02-07', '10:30:00'),
(4, 25, '180c21711356b3633724c2ab0e3f71db', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1627', '2023-02-07', '11:00:00'),
(4, 26, '22498818b6c310a371ec5651eb145858', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1771', '2023-02-07', '12:00:00'),
(4, 27, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1200', '2023-02-07', '16:00:00'),
(4, 28, '69e42af290c08323a92e2bd29ef84c20', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1704', '2023-02-07', '12:00:00'),
(4, 29, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1112', '2023-02-07', '16:00:00'),
(4, 30, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 4', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1369', '2023-02-07', '16:00:00'),
(5, 1, '06a2a87adb9df58eddbb41c45878209c', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1464', '2023-02-12', '15:00:00'),
(5, 2, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1895', '2023-02-12', '17:00:00'),
(5, 3, 'cb4096c1569e633bad46052c7d5266a1', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1868', '2023-02-12', '10:00:00'),
(5, 4, '28e469deb97fef67c1b4f3f329768399', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1648', '2023-02-12', '15:30:00'),
(5, 5, '180c21711356b3633724c2ab0e3f71db', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1308', '2023-02-12', '12:00:00'),
(5, 6, '22498818b6c310a371ec5651eb145858', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1386', '2023-02-12', '10:00:00'),
(5, 7, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1052', '2023-02-12', '12:00:00'),
(5, 8, '69e42af290c08323a92e2bd29ef84c20', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1588', '2023-02-12', '12:00:00'),
(5, 9, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1350', '2023-02-12', '15:00:00'),
(5, 10, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1467', '2023-02-12', '16:00:00'),
(5, 11, '06a2a87adb9df58eddbb41c45878209c', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1303', '2023-02-12', '17:00:00'),
(5, 12, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1796', '2023-02-12', '10:30:00'),
(5, 13, 'cb4096c1569e633bad46052c7d5266a1', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1511', '2023-02-12', '14:00:00'),
(5, 14, '28e469deb97fef67c1b4f3f329768399', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1699', '2023-02-12', '12:00:00'),
(5, 15, '180c21711356b3633724c2ab0e3f71db', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1285', '2023-02-12', '15:00:00'),
(5, 16, '22498818b6c310a371ec5651eb145858', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1512', '2023-02-12', '12:00:00'),
(5, 17, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1105', '2023-02-12', '14:00:00'),
(5, 18, '69e42af290c08323a92e2bd29ef84c20', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1756', '2023-02-12', '10:00:00'),
(5, 19, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1024', '2023-02-12', '10:00:00'),
(5, 20, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1824', '2023-02-12', '15:30:00'),
(5, 21, '06a2a87adb9df58eddbb41c45878209c', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1627', '2023-02-12', '10:00:00'),
(5, 22, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1286', '2023-02-12', '15:00:00'),
(5, 23, 'cb4096c1569e633bad46052c7d5266a1', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1624', '2023-02-12', '11:00:00'),
(5, 24, '28e469deb97fef67c1b4f3f329768399', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1926', '2023-02-12', '10:30:00'),
(5, 25, '180c21711356b3633724c2ab0e3f71db', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1928', '2023-02-12', '14:30:00'),
(5, 26, '22498818b6c310a371ec5651eb145858', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1547', '2023-02-12', '12:00:00'),
(5, 27, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1439', '2023-02-12', '17:00:00'),
(5, 28, '69e42af290c08323a92e2bd29ef84c20', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1356', '2023-02-12', '11:00:00'),
(5, 29, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1696', '2023-02-12', '16:00:00'),
(5, 30, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 5', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1963', '2023-02-12', '15:00:00'),
(6, 1, '06a2a87adb9df58eddbb41c45878209c', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1145', '2023-02-17', '11:00:00'),
(6, 2, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1726', '2023-02-17', '16:00:00'),
(6, 3, 'cb4096c1569e633bad46052c7d5266a1', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1644', '2023-02-17', '16:00:00'),
(6, 4, '28e469deb97fef67c1b4f3f329768399', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1805', '2023-02-17', '14:00:00'),
(6, 5, '180c21711356b3633724c2ab0e3f71db', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1439', '2023-02-17', '15:30:00'),
(6, 6, '22498818b6c310a371ec5651eb145858', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1745', '2023-02-17', '12:00:00'),
(6, 7, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1150', '2023-02-17', '10:30:00'),
(6, 8, '69e42af290c08323a92e2bd29ef84c20', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1946', '2023-02-17', '15:00:00'),
(6, 9, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1836', '2023-02-17', '12:00:00'),
(6, 10, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1893', '2023-02-17', '17:00:00'),
(6, 11, '06a2a87adb9df58eddbb41c45878209c', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1008', '2023-02-17', '15:30:00'),
(6, 12, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1281', '2023-02-17', '17:00:00'),
(6, 13, 'cb4096c1569e633bad46052c7d5266a1', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1634', '2023-02-17', '15:00:00'),
(6, 14, '28e469deb97fef67c1b4f3f329768399', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1476', '2023-02-17', '16:00:00'),
(6, 15, '180c21711356b3633724c2ab0e3f71db', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1426', '2023-02-17', '17:00:00'),
(6, 16, '22498818b6c310a371ec5651eb145858', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1060', '2023-02-17', '11:00:00'),
(6, 17, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1282', '2023-02-17', '17:00:00'),
(6, 18, '69e42af290c08323a92e2bd29ef84c20', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1558', '2023-02-17', '12:00:00'),
(6, 19, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1510', '2023-02-17', '15:30:00'),
(6, 20, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1874', '2023-02-17', '15:30:00'),
(6, 21, '06a2a87adb9df58eddbb41c45878209c', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1099', '2023-02-17', '15:00:00'),
(6, 22, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1900', '2023-02-17', '15:30:00'),
(6, 23, 'cb4096c1569e633bad46052c7d5266a1', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1125', '2023-02-17', '14:30:00'),
(6, 24, '28e469deb97fef67c1b4f3f329768399', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1757', '2023-02-17', '10:30:00'),
(6, 25, '180c21711356b3633724c2ab0e3f71db', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1520', '2023-02-17', '10:00:00'),
(6, 26, '22498818b6c310a371ec5651eb145858', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1520', '2023-02-17', '10:00:00'),
(6, 27, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1760', '2023-02-17', '10:00:00'),
(6, 28, '69e42af290c08323a92e2bd29ef84c20', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1350', '2023-02-17', '15:00:00'),
(6, 29, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1041', '2023-02-17', '11:00:00'),
(6, 30, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 6', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1483', '2023-02-17', '16:00:00'),
(7, 1, '06a2a87adb9df58eddbb41c45878209c', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1827', '2023-02-22', '12:00:00'),
(7, 2, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1538', '2023-02-22', '12:00:00'),
(7, 3, 'cb4096c1569e633bad46052c7d5266a1', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1757', '2023-02-22', '15:00:00'),
(7, 4, '28e469deb97fef67c1b4f3f329768399', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1729', '2023-02-22', '10:30:00'),
(7, 5, '180c21711356b3633724c2ab0e3f71db', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1323', '2023-02-22', '14:00:00'),
(7, 6, '22498818b6c310a371ec5651eb145858', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1072', '2023-02-22', '15:30:00'),
(7, 7, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1724', '2023-02-22', '12:00:00'),
(7, 8, '69e42af290c08323a92e2bd29ef84c20', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1030', '2023-02-22', '14:00:00'),
(7, 9, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1020', '2023-02-22', '15:30:00'),
(7, 10, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1483', '2023-02-22', '17:00:00'),
(7, 11, '06a2a87adb9df58eddbb41c45878209c', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1609', '2023-02-22', '15:30:00'),
(7, 12, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1798', '2023-02-22', '14:30:00'),
(7, 13, 'cb4096c1569e633bad46052c7d5266a1', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1055', '2023-02-22', '15:00:00'),
(7, 14, '28e469deb97fef67c1b4f3f329768399', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1389', '2023-02-22', '15:00:00'),
(7, 15, '180c21711356b3633724c2ab0e3f71db', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1757', '2023-02-22', '16:00:00'),
(7, 16, '22498818b6c310a371ec5651eb145858', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1753', '2023-02-22', '17:00:00'),
(7, 17, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1734', '2023-02-22', '11:00:00'),
(7, 18, '69e42af290c08323a92e2bd29ef84c20', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1982', '2023-02-22', '14:00:00'),
(7, 19, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1649', '2023-02-22', '11:00:00'),
(7, 20, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1159', '2023-02-22', '15:00:00'),
(7, 21, '06a2a87adb9df58eddbb41c45878209c', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1625', '2023-02-22', '16:00:00'),
(7, 22, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1360', '2023-02-22', '16:00:00'),
(7, 23, 'cb4096c1569e633bad46052c7d5266a1', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1694', '2023-02-22', '14:00:00'),
(7, 24, '28e469deb97fef67c1b4f3f329768399', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1315', '2023-02-22', '10:30:00'),
(7, 25, '180c21711356b3633724c2ab0e3f71db', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1962', '2023-02-22', '15:00:00'),
(7, 26, '22498818b6c310a371ec5651eb145858', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1924', '2023-02-22', '10:30:00'),
(7, 27, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1324', '2023-02-22', '16:00:00'),
(7, 28, '69e42af290c08323a92e2bd29ef84c20', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1485', '2023-02-22', '10:00:00'),
(7, 29, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1129', '2023-02-22', '10:00:00'),
(7, 30, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 7', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1635', '2023-02-22', '12:00:00'),
(8, 1, '06a2a87adb9df58eddbb41c45878209c', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1491', '2023-02-27', '12:00:00'),
(8, 2, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1912', '2023-02-27', '14:30:00'),
(8, 3, 'cb4096c1569e633bad46052c7d5266a1', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1859', '2023-02-27', '16:00:00'),
(8, 4, '28e469deb97fef67c1b4f3f329768399', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1350', '2023-02-27', '10:30:00'),
(8, 5, '180c21711356b3633724c2ab0e3f71db', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1538', '2023-02-27', '16:00:00'),
(8, 6, '22498818b6c310a371ec5651eb145858', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1829', '2023-02-27', '10:30:00'),
(8, 7, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1430', '2023-02-27', '14:00:00'),
(8, 8, '69e42af290c08323a92e2bd29ef84c20', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1168', '2023-02-27', '10:00:00'),
(8, 9, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1021', '2023-02-27', '14:00:00'),
(8, 10, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1421', '2023-02-27', '16:00:00'),
(8, 11, '06a2a87adb9df58eddbb41c45878209c', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1702', '2023-02-27', '14:30:00'),
(8, 12, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1157', '2023-02-27', '14:30:00'),
(8, 13, 'cb4096c1569e633bad46052c7d5266a1', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1646', '2023-02-27', '17:00:00'),
(8, 14, '28e469deb97fef67c1b4f3f329768399', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1712', '2023-02-27', '11:00:00'),
(8, 15, '180c21711356b3633724c2ab0e3f71db', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1932', '2023-02-27', '15:00:00'),
(8, 16, '22498818b6c310a371ec5651eb145858', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1423', '2023-02-27', '14:30:00'),
(8, 17, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1701', '2023-02-27', '15:30:00'),
(8, 18, '69e42af290c08323a92e2bd29ef84c20', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1144', '2023-02-27', '12:00:00'),
(8, 19, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1313', '2023-02-27', '14:00:00'),
(8, 20, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1070', '2023-02-27', '10:00:00'),
(8, 21, '06a2a87adb9df58eddbb41c45878209c', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1924', '2023-02-27', '10:00:00'),
(8, 22, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1974', '2023-02-27', '10:00:00'),
(8, 23, 'cb4096c1569e633bad46052c7d5266a1', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1302', '2023-02-27', '17:00:00'),
(8, 24, '28e469deb97fef67c1b4f3f329768399', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1227', '2023-02-27', '14:00:00'),
(8, 25, '180c21711356b3633724c2ab0e3f71db', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1596', '2023-02-27', '10:00:00'),
(8, 26, '22498818b6c310a371ec5651eb145858', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1763', '2023-02-27', '17:00:00'),
(8, 27, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1108', '2023-02-27', '16:00:00'),
(8, 28, '69e42af290c08323a92e2bd29ef84c20', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1216', '2023-02-27', '14:00:00'),
(8, 29, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1565', '2023-02-27', '14:30:00'),
(8, 30, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 8', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1848', '2023-02-27', '16:00:00'),
(9, 1, '06a2a87adb9df58eddbb41c45878209c', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1942', '2023-03-02', '11:00:00'),
(9, 2, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1299', '2023-03-02', '16:00:00'),
(9, 3, 'cb4096c1569e633bad46052c7d5266a1', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1741', '2023-03-02', '10:00:00'),
(9, 4, '28e469deb97fef67c1b4f3f329768399', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1101', '2023-03-02', '14:00:00'),
(9, 5, '180c21711356b3633724c2ab0e3f71db', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1082', '2023-03-02', '17:00:00'),
(9, 6, '22498818b6c310a371ec5651eb145858', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1573', '2023-03-02', '16:00:00'),
(9, 7, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1191', '2023-03-02', '16:00:00'),
(9, 8, '69e42af290c08323a92e2bd29ef84c20', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1591', '2023-03-02', '10:30:00'),
(9, 9, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1199', '2023-03-02', '17:00:00'),
(9, 10, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1617', '2023-03-02', '10:30:00'),
(9, 11, '06a2a87adb9df58eddbb41c45878209c', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1485', '2023-03-02', '11:00:00'),
(9, 12, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1622', '2023-03-02', '15:00:00'),
(9, 13, 'cb4096c1569e633bad46052c7d5266a1', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1886', '2023-03-02', '15:00:00'),
(9, 14, '28e469deb97fef67c1b4f3f329768399', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1510', '2023-03-02', '10:30:00'),
(9, 15, '180c21711356b3633724c2ab0e3f71db', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1154', '2023-03-02', '14:30:00'),
(9, 16, '22498818b6c310a371ec5651eb145858', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1996', '2023-03-02', '14:30:00'),
(9, 17, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1671', '2023-03-02', '14:00:00'),
(9, 18, '69e42af290c08323a92e2bd29ef84c20', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1222', '2023-03-02', '14:00:00'),
(9, 19, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1022', '2023-03-02', '15:30:00'),
(9, 20, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1297', '2023-03-02', '16:00:00'),
(9, 21, '06a2a87adb9df58eddbb41c45878209c', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1972', '2023-03-02', '10:00:00'),
(9, 22, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1170', '2023-03-02', '10:30:00'),
(9, 23, 'cb4096c1569e633bad46052c7d5266a1', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1466', '2023-03-02', '12:00:00'),
(9, 24, '28e469deb97fef67c1b4f3f329768399', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1758', '2023-03-02', '10:00:00'),
(9, 25, '180c21711356b3633724c2ab0e3f71db', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1261', '2023-03-02', '16:00:00'),
(9, 26, '22498818b6c310a371ec5651eb145858', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1851', '2023-03-02', '10:30:00'),
(9, 27, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1887', '2023-03-02', '10:00:00'),
(9, 28, '69e42af290c08323a92e2bd29ef84c20', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1357', '2023-03-02', '14:00:00'),
(9, 29, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1932', '2023-03-02', '14:30:00'),
(9, 30, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 9', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1938', '2023-03-02', '11:00:00'),
(10, 1, '06a2a87adb9df58eddbb41c45878209c', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1436', '2023-03-07', '16:00:00'),
(10, 2, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1894', '2023-03-07', '11:00:00'),
(10, 3, 'cb4096c1569e633bad46052c7d5266a1', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1778', '2023-03-07', '14:30:00'),
(10, 4, '28e469deb97fef67c1b4f3f329768399', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1548', '2023-03-07', '10:00:00'),
(10, 5, '180c21711356b3633724c2ab0e3f71db', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1541', '2023-03-07', '14:30:00'),
(10, 6, '22498818b6c310a371ec5651eb145858', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1512', '2023-03-07', '16:00:00'),
(10, 7, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1337', '2023-03-07', '16:00:00'),
(10, 8, '69e42af290c08323a92e2bd29ef84c20', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1655', '2023-03-07', '15:00:00'),
(10, 9, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1484', '2023-03-07', '17:00:00'),
(10, 10, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1514', '2023-03-07', '10:00:00'),
(10, 11, '06a2a87adb9df58eddbb41c45878209c', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1343', '2023-03-07', '10:00:00'),
(10, 12, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1292', '2023-03-07', '17:00:00'),
(10, 13, 'cb4096c1569e633bad46052c7d5266a1', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1433', '2023-03-07', '11:00:00'),
(10, 14, '28e469deb97fef67c1b4f3f329768399', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1869', '2023-03-07', '10:00:00'),
(10, 15, '180c21711356b3633724c2ab0e3f71db', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1189', '2023-03-07', '12:00:00'),
(10, 16, '22498818b6c310a371ec5651eb145858', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1529', '2023-03-07', '16:00:00'),
(10, 17, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1263', '2023-03-07', '14:00:00'),
(10, 18, '69e42af290c08323a92e2bd29ef84c20', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1161', '2023-03-07', '14:30:00'),
(10, 19, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1018', '2023-03-07', '17:00:00'),
(10, 20, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1177', '2023-03-07', '17:00:00'),
(10, 21, '06a2a87adb9df58eddbb41c45878209c', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1181', '2023-03-07', '12:00:00'),
(10, 22, '1fc712d5eb1c62b99558cd1143d3a4c8', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1833', '2023-03-07', '11:00:00'),
(10, 23, 'cb4096c1569e633bad46052c7d5266a1', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1593', '2023-03-07', '17:00:00'),
(10, 24, '28e469deb97fef67c1b4f3f329768399', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1109', '2023-03-07', '15:30:00'),
(10, 25, '180c21711356b3633724c2ab0e3f71db', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1525', '2023-03-07', '11:00:00'),
(10, 26, '22498818b6c310a371ec5651eb145858', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1829', '2023-03-07', '15:00:00'),
(10, 27, 'dbc350169e48a5919c9a35c549edf4ea', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1850', '2023-03-07', '12:00:00'),
(10, 28, '69e42af290c08323a92e2bd29ef84c20', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1357', '2023-03-07', '14:00:00'),
(10, 29, '6c441c920a8b0d56cd7dc8336db7b897', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1855', '2023-03-07', '14:00:00'),
(10, 30, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Session 10', 'https://zoom.us/j/96264670199?pwd=a0RPMnU1QnhkZGJjSmloTVdLMUgr1142', '2023-03-07', '10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `vipsessionmaterials`
--

CREATE TABLE `vipsessionmaterials` (
  `SessionID` int(11) NOT NULL,
  `CourseID` int(11) NOT NULL,
  `TutorID` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vipsessionmaterials`
--

INSERT INTO `vipsessionmaterials` (`SessionID`, `CourseID`, `TutorID`, `Type`, `Title`, `Link`) VALUES
(1, 1, '06a2a87adb9df58eddbb41c45878209c', 'PPT', 'PPT 1', 'https://drive.google.com/file/d/1FQYXZC5JjdbhAZn414AaxoxZPf0wrbCk/preview'),
(1, 2, '1fc712d5eb1c62b99558cd1143d3a4c8', 'PPT', 'PPT 1', 'https://drive.google.com/file/d/1vIm3DvGLrq0qbY9-D_CS7odQly9_n6r0/preview'),
(1, 3, 'cb4096c1569e633bad46052c7d5266a1', 'PPT', 'PPT 1', 'https://drive.google.com/file/d/1_YploWN6mehtJM940edUBhaJiBOixFQg/preview'),
(1, 4, '28e469deb97fef67c1b4f3f329768399', 'PPT', 'PPT 1', 'https://drive.google.com/file/d/19ES9RccB0dIoAjEDno2Df1DziO9t1gde/preview'),
(1, 5, '180c21711356b3633724c2ab0e3f71db', 'PPT', 'PPT 1', 'https://drive.google.com/file/d/1va-eVKt-XUB7XsSU5qHWa8CKFlPSGoWc/preview'),
(1, 6, '22498818b6c310a371ec5651eb145858', 'Video', 'Video 1', 'https://www.youtube.com/embed/8WTdoLlyapU'),
(1, 7, 'dbc350169e48a5919c9a35c549edf4ea', 'Video', 'Video 1', 'https://www.youtube.com/embed/hfan75z15Bg'),
(1, 8, '69e42af290c08323a92e2bd29ef84c20', 'Video', 'Video 1', 'https://www.youtube.com/embed/zNzuGfXldU0'),
(1, 9, '6c441c920a8b0d56cd7dc8336db7b897', 'Video', 'Video 1', 'https://www.youtube.com/embed/dUt_7PWLMVo'),
(1, 10, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'Video', 'Video 1', 'https://www.youtube.com/embed/NCsSE7U5pIY');

-- --------------------------------------------------------

--
-- Table structure for table `vipstudentclass`
--

CREATE TABLE `vipstudentclass` (
  `CourseID` int(11) NOT NULL,
  `TutorID` varchar(100) NOT NULL,
  `StudentID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vipstudentclass`
--

INSERT INTO `vipstudentclass` (`CourseID`, `TutorID`, `StudentID`) VALUES
(1, '06a2a87adb9df58eddbb41c45878209c', '921eabe428e234af1a193fdd5a5932c8'),
(2, '1fc712d5eb1c62b99558cd1143d3a4c8', 'b633b263bb7ed9b3cab7144cddae8f0c'),
(3, 'cb4096c1569e633bad46052c7d5266a1', '85f7dd756e5beff49e210430df392143'),
(4, '28e469deb97fef67c1b4f3f329768399', 'dac92173ac0cf77ba37084b2d05d43a3'),
(5, '180c21711356b3633724c2ab0e3f71db', 'c4ae4c4b729334c1de026d8ed1a030bd'),
(6, '22498818b6c310a371ec5651eb145858', '406757de9936cff70d5789558e61de86'),
(7, 'dbc350169e48a5919c9a35c549edf4ea', '6c9e4c44d5c95564ada6adadc1a41792'),
(8, '69e42af290c08323a92e2bd29ef84c20', 'c2a4dfd1020c517e2bd6b52493f13acc'),
(9, '6c441c920a8b0d56cd7dc8336db7b897', 'cbd4c9ac09f0097213481403fafec278'),
(10, '4f7e4ab779cc17e8d7a775ad1ce2ad36', 'ad9d612de9e853e4989f9b946b389dd7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`ChapterID`),
  ADD KEY `CourseID` (`CourseID`);

--
-- Indexes for table `chapterquiz`
--
ALTER TABLE `chapterquiz`
  ADD PRIMARY KEY (`QuizID`),
  ADD KEY `ChapterID` (`ChapterID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `paymenthistory`
--
ALTER TABLE `paymenthistory`
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `SubscriptionID` (`SubscriptionID`);

--
-- Indexes for table `ppt`
--
ALTER TABLE `ppt`
  ADD PRIMARY KEY (`pptID`,`ChapterID`,`sessionID`),
  ADD KEY `sessionID` (`sessionID`),
  ADD KEY `ChapterID` (`ChapterID`);

--
-- Indexes for table `quizanswer`
--
ALTER TABLE `quizanswer`
  ADD PRIMARY KEY (`answerQuizID`,`quizID`,`quizQuestionID`),
  ADD KEY `quizID` (`quizID`),
  ADD KEY `quizQuestionID` (`quizQuestionID`);

--
-- Indexes for table `quizhighscore`
--
ALTER TABLE `quizhighscore`
  ADD PRIMARY KEY (`quizHighScoreID`,`QuizID`),
  ADD KEY `QuizID` (`QuizID`);

--
-- Indexes for table `quizquestion`
--
ALTER TABLE `quizquestion`
  ADD PRIMARY KEY (`QuizQuestionID`,`QuizID`),
  ADD KEY `QuizID` (`QuizID`);

--
-- Indexes for table `sesi`
--
ALTER TABLE `sesi`
  ADD PRIMARY KEY (`sessionID`,`ChapterID`),
  ADD KEY `ChapterID` (`ChapterID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `subscriptiontype`
--
ALTER TABLE `subscriptiontype`
  ADD PRIMARY KEY (`SubscriptionID`);

--
-- Indexes for table `tutor`
--
ALTER TABLE `tutor`
  ADD PRIMARY KEY (`TutorID`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`videoID`,`ChapterID`,`sessionID`),
  ADD KEY `sessionID` (`sessionID`),
  ADD KEY `ChapterID` (`ChapterID`);

--
-- Indexes for table `vipclass`
--
ALTER TABLE `vipclass`
  ADD PRIMARY KEY (`CourseID`,`TutorID`),
  ADD KEY `TutorID` (`TutorID`);

--
-- Indexes for table `vipcourse`
--
ALTER TABLE `vipcourse`
  ADD PRIMARY KEY (`CourseID`);

--
-- Indexes for table `vipcoursesession`
--
ALTER TABLE `vipcoursesession`
  ADD PRIMARY KEY (`SessionID`,`CourseID`,`TutorID`),
  ADD KEY `CourseID` (`CourseID`),
  ADD KEY `TutorID` (`TutorID`);

--
-- Indexes for table `vipsessionmaterials`
--
ALTER TABLE `vipsessionmaterials`
  ADD KEY `SessionID` (`SessionID`),
  ADD KEY `CourseID` (`CourseID`),
  ADD KEY `TutorID` (`TutorID`);

--
-- Indexes for table `vipstudentclass`
--
ALTER TABLE `vipstudentclass`
  ADD PRIMARY KEY (`CourseID`,`TutorID`,`StudentID`),
  ADD KEY `TutorID` (`TutorID`),
  ADD KEY `StudentID` (`StudentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `ChapterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `chapterquiz`
--
ALTER TABLE `chapterquiz`
  MODIFY `QuizID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `CourseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ppt`
--
ALTER TABLE `ppt`
  MODIFY `pptID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quizanswer`
--
ALTER TABLE `quizanswer`
  MODIFY `answerQuizID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `quizhighscore`
--
ALTER TABLE `quizhighscore`
  MODIFY `quizHighScoreID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `quizquestion`
--
ALTER TABLE `quizquestion`
  MODIFY `QuizQuestionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sesi`
--
ALTER TABLE `sesi`
  MODIFY `sessionID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscriptiontype`
--
ALTER TABLE `subscriptiontype`
  MODIFY `SubscriptionID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `videoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vipcourse`
--
ALTER TABLE `vipcourse`
  MODIFY `CourseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chapter`
--
ALTER TABLE `chapter`
  ADD CONSTRAINT `chapter_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `course` (`CourseID`);

--
-- Constraints for table `chapterquiz`
--
ALTER TABLE `chapterquiz`
  ADD CONSTRAINT `chapterquiz_ibfk_1` FOREIGN KEY (`ChapterID`) REFERENCES `chapter` (`ChapterID`);

--
-- Constraints for table `paymenthistory`
--
ALTER TABLE `paymenthistory`
  ADD CONSTRAINT `paymenthistory_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`),
  ADD CONSTRAINT `paymenthistory_ibfk_2` FOREIGN KEY (`SubscriptionID`) REFERENCES `subscriptiontype` (`SubscriptionID`);

--
-- Constraints for table `ppt`
--
ALTER TABLE `ppt`
  ADD CONSTRAINT `ppt_ibfk_1` FOREIGN KEY (`sessionID`) REFERENCES `sesi` (`sessionID`),
  ADD CONSTRAINT `ppt_ibfk_2` FOREIGN KEY (`ChapterID`) REFERENCES `chapter` (`ChapterID`);

--
-- Constraints for table `quizanswer`
--
ALTER TABLE `quizanswer`
  ADD CONSTRAINT `quizanswer_ibfk_1` FOREIGN KEY (`quizID`) REFERENCES `chapterquiz` (`QuizID`),
  ADD CONSTRAINT `quizanswer_ibfk_2` FOREIGN KEY (`quizQuestionID`) REFERENCES `quizquestion` (`QuizQuestionID`);

--
-- Constraints for table `quizhighscore`
--
ALTER TABLE `quizhighscore`
  ADD CONSTRAINT `quizhighscore_ibfk_1` FOREIGN KEY (`QuizID`) REFERENCES `chapterquiz` (`QuizID`);

--
-- Constraints for table `quizquestion`
--
ALTER TABLE `quizquestion`
  ADD CONSTRAINT `quizquestion_ibfk_1` FOREIGN KEY (`QuizID`) REFERENCES `chapterquiz` (`QuizID`);

--
-- Constraints for table `sesi`
--
ALTER TABLE `sesi`
  ADD CONSTRAINT `sesi_ibfk_1` FOREIGN KEY (`ChapterID`) REFERENCES `chapter` (`ChapterID`);

--
-- Constraints for table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`sessionID`) REFERENCES `sesi` (`sessionID`),
  ADD CONSTRAINT `video_ibfk_2` FOREIGN KEY (`ChapterID`) REFERENCES `chapter` (`ChapterID`);

--
-- Constraints for table `vipclass`
--
ALTER TABLE `vipclass`
  ADD CONSTRAINT `vipclass_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `vipcourse` (`CourseID`),
  ADD CONSTRAINT `vipclass_ibfk_2` FOREIGN KEY (`TutorID`) REFERENCES `tutor` (`TutorID`);

--
-- Constraints for table `vipcoursesession`
--
ALTER TABLE `vipcoursesession`
  ADD CONSTRAINT `vipcoursesession_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `vipcourse` (`CourseID`),
  ADD CONSTRAINT `vipcoursesession_ibfk_2` FOREIGN KEY (`TutorID`) REFERENCES `tutor` (`TutorID`);

--
-- Constraints for table `vipsessionmaterials`
--
ALTER TABLE `vipsessionmaterials`
  ADD CONSTRAINT `vipsessionmaterials_ibfk_1` FOREIGN KEY (`SessionID`) REFERENCES `vipcoursesession` (`SessionID`),
  ADD CONSTRAINT `vipsessionmaterials_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `vipcourse` (`CourseID`),
  ADD CONSTRAINT `vipsessionmaterials_ibfk_3` FOREIGN KEY (`TutorID`) REFERENCES `tutor` (`TutorID`);

--
-- Constraints for table `vipstudentclass`
--
ALTER TABLE `vipstudentclass`
  ADD CONSTRAINT `vipstudentclass_ibfk_1` FOREIGN KEY (`CourseID`) REFERENCES `vipcourse` (`CourseID`),
  ADD CONSTRAINT `vipstudentclass_ibfk_2` FOREIGN KEY (`TutorID`) REFERENCES `tutor` (`TutorID`),
  ADD CONSTRAINT `vipstudentclass_ibfk_3` FOREIGN KEY (`StudentID`) REFERENCES `student` (`StudentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
