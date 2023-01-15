-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 07:56 PM
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
(1, 2, 1, 'Jenis zat pelarut'),
(1, 2, 2, 'Titik beku larutan menjadi lebih tinggi dibandingkan dengan titik beku pelarut'),
(1, 2, 3, '63%'),
(1, 2, 4, '0,3 molal'),
(1, 2, 5, '0,5 molal'),
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
(1, 6, 1, 'a. Software'),
(1, 6, 2, 'a. Mengolah data kuantitatif'),
(1, 6, 3, 'a. Operator'),
(1, 6, 4, 'a. Monitor'),
(1, 6, 5, 'a. Mouse'),
(1, 7, 1, 'a. are you'),
(1, 7, 2, 'a. Shall I'),
(1, 7, 3, 'a. Can I'),
(1, 7, 4, 'a. Can I'),
(1, 7, 5, 'a. Would you'),
(1, 8, 1, 'a. Aristoteles'),
(1, 8, 2, 'a. Indonesia menganut prinsip pembagian kekuasaan'),
(1, 8, 3, 'a. Kesadaran hukum'),
(1, 8, 4, 'a. Peraturan itu menguntungkan jabatan kita'),
(1, 8, 5, 'a. Menjadi sumber tertib hukum'),
(1, 9, 1, 'a. Berdasarkan iklan yang dimuat dalam harian umum Pikiran Rakyat tanggal 17 Agustus 2020 tentang adanya lowongan pekerjaan tenaga pemasaran.'),
(1, 9, 2, 'a. Daftar riwayat hidup (CV)'),
(1, 9, 3, 'a. Tempat dan tanggal surat'),
(1, 9, 4, 'a. Nama, tempat dan tanggal lahir, jabatan'),
(1, 9, 5, 'a. Atas sebelah kiri'),
(1, 10, 1, 'a. Lebih populer di dunia'),
(1, 10, 2, 'a. 105x68m (115x74yd) atau berukuran 7140 meter persegi'),
(1, 10, 3, 'a. Ujung sikut'),
(1, 10, 4, 'a. diameter 69–70 cm dengan berat 410–450 gr'),
(1, 10, 5, 'a. 2,44 Meter'),
(2, 1, 1, '2'),
(2, 1, 2, '2'),
(2, 1, 3, '2'),
(2, 1, 4, '2'),
(2, 1, 5, '8664'),
(2, 2, 1, 'b. Jumlah zat pelarut'),
(2, 2, 2, 'b. Tekanan uap jenuh jadi lebih tinggi dibandingkan dengan tekanan uap jenuh pelarut'),
(2, 2, 3, 'b. 54%'),
(2, 2, 4, 'b. 0,25 molal'),
(2, 2, 5, 'b. 0,4 molal'),
(2, 3, 1, 'b. 5 coulomb'),
(2, 3, 2, 'b. 12 coulomb'),
(2, 3, 3, 'b. 9 volt'),
(2, 3, 4, 'b. 150V'),
(2, 3, 5, 'b. 0,5A'),
(2, 4, 1, 'b. terjadi secara terus menerus'),
(2, 4, 2, 'b. auksin'),
(2, 4, 3, 'b. asam absitat'),
(2, 4, 4, 'b. apikal tumbuhan'),
(2, 4, 5, 'b. difusi'),
(2, 5, 1, 'b. dengan adanya pengakuan kedaulatan maka secara otomatis bangsa Indonesia\r\ndapat menjalin kerjasama dengan bangsa lain'),
(2, 5, 2, 'de facto bersifat sementara'),
(2, 5, 3, 'de facto bersifat sementara'),
(2, 5, 4, 'b. menunjukkan kepada dunia bahwa Indonesia telah menjadi negara yang\r\nberdaulat. '),
(2, 5, 5, 'b. dengan adanya pengakuan kedaulatan negara lain, Indonesia dapat berkembang\r\nmenjadi negara yang maju.'),
(2, 6, 1, 'b. Hardware'),
(2, 6, 2, 'b. Mengolah input jadi output'),
(2, 6, 3, 'b. Spyware'),
(2, 6, 4, 'b. Keyboard'),
(2, 6, 5, 'b. Monitor'),
(2, 7, 1, 'b. how about'),
(2, 7, 2, 'b. Let’s’'),
(2, 7, 3, 'I’ll do'),
(2, 7, 4, 'b. Would you'),
(2, 7, 5, 'b. Why don’t you'),
(2, 8, 1, 'b. Van Aeldoorn'),
(2, 8, 2, 'b. Negara melindungi seluruh tumpah darah Indonesia'),
(2, 8, 3, 'b. Kekuasaan'),
(2, 8, 4, 'b. Peraturan itu dibuat oleh badan yang berwenang'),
(2, 8, 5, 'b. Mengendalikan kekuasaan penguasa agar tidak seweang-wenang'),
(2, 9, 1, 'b. Berikut ini saya lampirkan hal-hal sebagai berikut'),
(2, 9, 2, 'b. Fotokopi ijazah'),
(2, 9, 3, 'b. Salam pembuka'),
(2, 9, 4, 'b. Nama, tempat dan tanggal lahir, alamat, pendidikan'),
(2, 9, 5, 'b. Atas sebelah kanan'),
(2, 10, 1, 'b. Lebih popouler di Indonesia'),
(2, 10, 2, 'b. 106x68 m (115x74 yd) atau berukuran 8140 meter persegi'),
(2, 10, 3, 'b. Ujung kaki'),
(2, 10, 4, 'b. diameter 63–70 cm dengan berat 410–450 gr'),
(2, 10, 5, 'b. 2,55 Meter'),
(3, 1, 1, '3'),
(3, 1, 2, '3'),
(3, 1, 3, '3'),
(3, 1, 4, '3'),
(3, 1, 5, '8665'),
(3, 2, 1, 'c. Jumlah zat terlarut'),
(3, 2, 2, 'c. Titik didih larutan menjadi lebih tinggi dibandingkan titik didih pelarut'),
(3, 2, 3, 'c. 64 %'),
(3, 2, 4, 'c. 0,4 molal'),
(3, 2, 5, 'c. 0,7 molal'),
(3, 3, 1, 'c 0.25 coulomb'),
(3, 3, 2, 'c. 60 coulomb'),
(3, 3, 3, 'c. 12 volt'),
(3, 3, 4, 'c. 250V'),
(3, 3, 5, 'c. 0,75A'),
(3, 4, 1, 'c. dapat balik ke kondisi semula'),
(3, 4, 2, 'c. sitokinin'),
(3, 4, 3, 'c. auksin'),
(3, 4, 4, 'c. ruas - ruas batang'),
(3, 4, 5, 'c. imbibisi'),
(3, 5, 1, 'c. pengakuan kedaulatan sangat penting untuk membentuk angkatan perang Indonesia'),
(3, 5, 2, 'de jure bersifat tetap'),
(3, 5, 3, 'de jure bersifat tetap'),
(3, 5, 4, 'c. mendapatkan pengakuan dari negara- negara di dunia sebagai negara yang\r\nmerdeka.'),
(3, 5, 5, 'c. kerjasama dengan negara lain dapat kita lakukan jika banyak negara-negara yang\r\nmengakui kedaulatan Indonesia.'),
(3, 6, 1, 'c. Brainware'),
(3, 6, 2, 'c. Mengolah data kualitatif'),
(3, 6, 3, 'c. Programmer'),
(3, 6, 4, 'c. Pentium core i7'),
(3, 6, 5, 'c. Speaker'),
(3, 7, 1, 'c. shall them'),
(3, 7, 2, 'c. Why don’t'),
(3, 7, 3, 'c. Would you'),
(3, 7, 4, 'c. I’ll do'),
(3, 7, 5, 'c. Can I'),
(3, 8, 1, 'c. S. M. Amir'),
(3, 8, 2, 'c. Negara Indonesia adalah negara kepulauan dengan semboyan Bhineka Tunggal Ika'),
(3, 8, 3, 'c. Pengetahuan hukum'),
(3, 8, 4, 'c. Peraturan itu untuk kesejahteraan kita sendiri'),
(3, 8, 5, 'c. Sebagai pedoman hidup benegara dan bermasyarakat'),
(3, 9, 1, 'c. Demikian surat permohonan saya ini saya buat dengan sebenarnya.'),
(3, 9, 2, 'c. Fotokopi KTP'),
(3, 9, 3, 'c. Nama jelas'),
(3, 9, 4, 'c. Nama, alamat, hobi, pendidikan'),
(3, 9, 5, 'c. Bawah sebelah kiri'),
(3, 10, 1, 'c. Lebih populer dikalangan masyarakat'),
(3, 10, 2, 'c. 107x68 m (115x74 yd) atau berukuran 9140 meter persegi'),
(3, 10, 3, 'c. Ujung bagian belakang kaki'),
(3, 10, 4, 'c. diameter 62–70 cm dengan berat 410–450 gr'),
(3, 10, 5, 'c. 3,44 Meter'),
(4, 1, 1, '4'),
(4, 1, 2, '4'),
(4, 1, 3, '4'),
(4, 1, 4, '4'),
(4, 1, 5, '8662'),
(4, 2, 1, 'd. Konsentrasi larutan'),
(4, 2, 2, 'd. Tekanan osmosis larutan menjadi lebih rendah daripada tekanan osmosis pelarut'),
(4, 2, 3, 'd. 62%'),
(4, 2, 4, 'd. 0,43 molal'),
(4, 2, 5, 'd. 0,6 molal'),
(4, 3, 1, 'd. 50 coulomb'),
(4, 3, 2, 'd. 120 coulomb'),
(4, 3, 3, 'd. 10,8 volt'),
(4, 3, 4, 'd  300V'),
(4, 3, 5, 'd. 1A'),
(4, 4, 1, 'd. tidak dapat balik ke kondisi semula'),
(4, 4, 2, 'd. etilen'),
(4, 4, 3, 'd. sitokinin'),
(4, 4, 4, 'd. ketiak daun'),
(4, 4, 5, 'd. eksositosis'),
(4, 5, 1, 'd. pengakuan kedaulatan diperlukan untuk menyelesaikan masalah Papua Barat'),
(4, 5, 2, 'de jure'),
(4, 5, 3, 'de jure'),
(4, 5, 4, 'd. negara didunia menghormati bangsa Indonesia sebagai negara yang baru\r\nmerdeka'),
(4, 5, 5, 'd. dengan adanya pengakuan kedaulatan dari negara lain, Indonesia dapat menunjukkan eksistensinya sebagai suatu bangsa.'),
(4, 6, 1, 'd. Mailware'),
(4, 6, 2, 'd. Mengatur software'),
(4, 6, 3, 'd. System analyst'),
(4, 6, 4, 'd. Flashdisk'),
(4, 6, 5, 'd. Printer'),
(4, 7, 1, 'd. would you like to'),
(4, 7, 2, 'd. Would you'),
(4, 7, 3, 'd. Should I'),
(4, 7, 4, 'd. Let’s'),
(4, 7, 5, 'd. I’ll do'),
(4, 8, 1, 'd. Wiryono Kusumo'),
(4, 8, 2, 'd. Lambang negara Indonesia adalah burung garuda'),
(4, 8, 3, 'd. Aparatur hukum'),
(4, 8, 4, 'd. Untuk menghindari sanksi yang berat'),
(4, 8, 5, 'd. Menjadmin kepastian hukum semua norma hukum baik tertulis atau tidak tertulis'),
(4, 9, 1, 'd. Dengan hormat,'),
(4, 9, 2, 'd. Fotokopi surat perjanjian'),
(4, 9, 3, 'd. Riwayat pribadi'),
(4, 9, 4, 'd. Nama, hobi, umur, pendidikan,'),
(4, 9, 5, 'd. Bawah sebelah kanan'),
(4, 10, 1, 'd. Lebih populer bagi orang dewasa'),
(4, 10, 2, 'd. 108x68 m (115x74 yd) atau berukuran 6140 meter persegi'),
(4, 10, 3, 'd. Kaki bagian dalam'),
(4, 10, 4, 'd. diameter 61–70 cm dengan berat 410–450 gr'),
(4, 10, 5, 'd. 4,55 Meter'),
(5, 1, 1, '5'),
(5, 1, 2, '5'),
(5, 1, 3, '5'),
(5, 1, 4, '5'),
(5, 1, 5, '8661'),
(5, 2, 1, 'e. Jenis zat terlarut'),
(5, 2, 2, 'e. Tekanan osmosis larutan menjadi lebih tinggi dibandingkan tekanan osmosis pelarut'),
(5, 2, 3, 'e. 60%'),
(5, 2, 4, 'e. 0,5 molal'),
(5, 2, 5, 'e. 0,9 molal'),
(5, 3, 1, 'e. 10 coulomb'),
(5, 3, 2, 'e. 240 coulomb'),
(5, 3, 3, 'e. 12,8 volt'),
(5, 3, 4, 'e. 400V'),
(5, 3, 5, 'e. 1,5A'),
(5, 4, 1, 'e. hanya terjadi pada organisme multiseluler'),
(5, 4, 2, 'e. giberelin'),
(5, 4, 3, 'e. giberelin'),
(5, 4, 4, 'e. perkecambahan'),
(5, 4, 5, 'e. endositosis'),
(5, 5, 1, 'e. sebagai upaya untuk menjadi negara yang dikenal di dunia'),
(5, 5, 2, 'de jure bersifat penuh'),
(5, 5, 3, 'de jure bersifat penuh'),
(5, 5, 4, 'e. negara-negara di dunia dapat menjalin kerja sama Indonesia sebagai negara\r\nmerdeka'),
(5, 5, 5, 'e. salah satu syarat Sebuah negara dapat diakui dunia internasional sebagai negara\r\nyang berdaulat atau merdeka harus mendapat pengakuan negara lain.'),
(5, 6, 1, 'e. Diskware'),
(5, 6, 2, 'e. Mengatur Hardware'),
(5, 6, 3, 'e. Hacker'),
(5, 6, 4, 'e. NVIDIA GeForce RTX 4090TI'),
(5, 6, 5, 'e. Keyboard'),
(5, 7, 1, 'e. would you'),
(5, 7, 2, 'e. Should'),
(5, 7, 3, 'e. I don’t'),
(5, 7, 4, 'e. Do'),
(5, 7, 5, 'e. Can’t you'),
(5, 8, 1, 'e. Prof. C. S. T. Kansil'),
(5, 8, 2, 'e. Negara Indonesia adalah negara hukum'),
(5, 8, 3, 'e. Hukum'),
(5, 8, 4, 'e. Mendapatkan penghargaan dari penegak hukum'),
(5, 8, 5, 'e. menjadi norma tertinggi'),
(5, 9, 1, 'e. Atas perhatian dan bantuan Bapak, saya mengucapkan terima kasih'),
(5, 9, 2, 'e. Pas foto terbaru ukuran 4×6 cm'),
(5, 9, 3, 'e. Isi surat'),
(5, 9, 4, 'e. Nama, riwayat hidup, alamat, pendidikan'),
(5, 9, 5, 'e. Di atas tanda tangan'),
(5, 10, 1, 'e. Lebih populer bagi setiap pencinta sepak bola'),
(5, 10, 2, 'e. 105x68 m (115x74 yd) atau berukuran 3140 meter persegi'),
(5, 10, 3, 'e. Telapak kaki'),
(5, 10, 4, 'e. diameter 68–70 cm dengan berat 410–450 gr'),
(5, 10, 5, 'e. 1,44 Meter');

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
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`videoID`,`ChapterID`,`sessionID`),
  ADD KEY `sessionID` (`sessionID`),
  ADD KEY `ChapterID` (`ChapterID`);

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
  MODIFY `answerQuizID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `videoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
