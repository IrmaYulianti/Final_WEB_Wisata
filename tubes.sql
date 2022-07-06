-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2022 at 02:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin123', 123);

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `id` int(11) NOT NULL,
  `nama_kecamatan` varchar(100) NOT NULL,
  `jumlah_penduduk` int(11) NOT NULL,
  `luas_wilayah` int(11) NOT NULL,
  `jumlah_desa` int(11) NOT NULL,
  `jumlah_kelurahaan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`id`, `nama_kecamatan`, `jumlah_penduduk`, `luas_wilayah`, `jumlah_desa`, `jumlah_kelurahaan`) VALUES
(1, 'Bontonompo', 45109, 30, 11, 3),
(2, 'Bajeng', 73866, 60, 10, 4),
(3, 'Tompobulu', 24311, 135, 6, 2),
(5, 'Tinggi Moncong', 23267, 142, 1, 6),
(6, ' Parangloe', 18939, 221, 5, 2),
(7, ' Sinjai Tengah', 27507, 12970, 10, 1),
(8, ' Sinjai timur', 30421, 7188, 12, 1),
(9, ' Sinjai utara', 43505, 2957, 0, 6),
(10, ' Tellu Limpoe', 31122, 14730, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id` int(11) NOT NULL,
  `nama_pengadu` varchar(100) NOT NULL,
  `kritik_saran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id`, `nama_pengadu`, `kritik_saran`) VALUES
(2, 'Hikma', 'sampah yang masih sangatlah banyak'),
(3, 'Ayu Andira', 'Aparat keamanan yang masih kurang adil'),
(4, 'Rahmat Ramadan', 'Bagus'),
(6, 'Nurhikma', 'Keren'),
(8, 'Nur awaliah', 'Kurangnya pemahaman pemerintah mengenai kebutuh dan pengembangan pendidikan di Sinjai'),
(10, 'Nue', 'Sebagian besar mahasiswa yang turun ke jalan (demo) tanpa tahu lebih banyak informasi mengenai hal y'),
(11, 'Nurhik', 'bagus');

-- --------------------------------------------------------

--
-- Table structure for table `wisata`
--

CREATE TABLE `wisata` (
  `id` int(11) NOT NULL,
  `foto_wisata` varchar(100) NOT NULL,
  `foto2_wisata` varchar(100) NOT NULL,
  `nama_wisata` varchar(100) NOT NULL,
  `lokasi_wisata` varchar(100) NOT NULL,
  `deskripsi_wisata` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wisata`
--

INSERT INTO `wisata` (`id`, `foto_wisata`, `foto2_wisata`, `nama_wisata`, `lokasi_wisata`, `deskripsi_wisata`) VALUES
(1, 'holyland2.webp', 'holyland.png', 'Holyland Malino', 'Malino', 'Taman wisata Holyland malino merupakan sebuah taman yang berdiri di lahan seluas 45 hektar dan memiliki konsep seperti replica Holy land di Israel dengan gaya  yang menyerupai klasik eropa.\r\n\r\nDi taman ini kita bisa melihat replica bangunan yang sudah lama sekitar pada awal abad masehi, bangunan-bangunan di taman ini sangat mirip dengan replica Holyland di Israel'),
(2, 'takapala1.jpg', 'takapala2.jpg', 'Takapala', 'Bontolureng', 'Air Terjun Takapala merupakan objek wisata alam berupa air terjun yang terletak di Kabupaten Gowa, Sulawesi Selatan. Tinggi Air Terjun Takapala mencapai 109 meter dengan debit air yang sangat besar terlebih lagi di kala musim hujan datang. Curahan air dengan volume besar tersebut, secara alami membentuk sebuah kolam yang dapat digunakan pengunjung untuk berenang dan bermain air. Namun pengunjung harus tetap waspada akan tekanan air dari dasar kolam yang cukup kuat.'),
(3, 'wiskeb1.jpg', 'wiskeb2.jpg', 'Wisata Kebun', 'Bontomanai', 'Wisata Kebun Gowa merupakan sebuah taman hiburan dengan konsep perkebunan. Lokasinya berada di Sulawesi Selatan, tepatnya di Bontomarannu, Kabupaten Gowa. Taman ini menghadirkan beragam fasilitas hiburan yang dikelilingi suasana kebun buah'),
(4, 'parangloe1.jpg', 'parangloe2.webp', 'Air Terjun Parangloe', 'Parangloe', 'Air Terjun Parangloe merupakan air terjun terindah yang ada di Kabupaten Gowa, Sulawesi Selatan. Keadaannya yang berundak-undak dan diantara deretan batu yang tertata dengan rapih. Air Terjun parangloe sering juga disebut Air Terjun Bertingkat atau Air Terjun Bersusun, karena karakteristik air terjunnya yang bertingkat dan bersusun.'),
(5, 'dewisri1.jpg', 'dewisri2.png', 'Permandian Dewi Sri', 'Bontoramba', 'Dewi Sri Waterpark Gowa merupakan satu-satunya kolam renang indoor yang berada di kabupaten Gowa, Sulawesi Selatan. wisata ini anda dapat berenang tanpa harus merasakan panas teriknya matahari. Hal ini dikarenakan, tema yang diusung tempat wisata ini adalah indoor. Waterpark ini memiliki kolam renang yang luas dan memanjang serta terdapat atap diatasnya. Dengan demikian, kenyamanan pengunjung saat berwisata disini semakin terjaga karena suasananya yang teduh'),
(6, 'theriver1.jpg', 'theriver2.webp', 'The River', 'Malino', 'The River Malino adalah sebuah taman rekreasi yang baru di daearah Malino yang didalamnya terdapat berbagai macam Spot Foto. The River juga sangat cocok untuk dijadikan tempat rekreasi bersama keluarga. dengan lokasi yang sejuk, tempat ini sangat cocok untuk bermain dan bercanda tawa bersama keluarga tercinta. disamping itu tempat ini dikelilingi oleh pemandangan yang indah dan dapat menyegarkan pikiran anda.'),
(7, 'permata1.jpg', 'permata2.webp', 'Permata Indah Resort', 'Bontoparang', 'Permata Indah Resort yang merupakan sebuah tempat wisata dengan fasilitas akomodasi bertarif relatif terjangkau. Penginapan ini bisa Anda jadikan sebagai tempat inap ketika ingin mengeksplorasi Dam Bili-Bili.'),
(8, 'ballalompoa1.jpg', 'ballalompoa2.jpg', 'Balla Lompoa', 'Sungguminasa', 'Balla lompoa dibangun tahun 1936 setelah diangkatnya Raja Gowa ke-XXXV I Mangimangi Daeng Matutu, Karaeng Bontonompo yang bergelar Sultan Muhammad Tahir Muhibuddin. Balla Lompoa adalah kediaman raja sekaligus sebagai pusat pemerintahan Kerajaan Gowa. Pembangunan istana dan pusat kegiatan pemerintahan dilakukan sebagai penolakan terhadap salah satu ayat Perjanjian Bungaya yang menyatakan bahwa gerbang-gerbang dan tembok pertahanan raja Gowa harus dimusnahkan dan raja Gowa tidak boleh lagi mendirikan bangunan tanpa izin kompeni. Raja Gowa tidak boleh mendirikan perkampungan, rumah dan sebagainya sampai jauhnya satu hari perjalanan dari pinggir laut, juga dilarang mendirikan benteng-benteng atau kubu-kubu pertahanan. Yang dipertahankan oleh Belanda hanya Benteng Ujung Pandang yang kemudian berganti nama menjadi Fort Rotterdam.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kabupaten`
--
ALTER TABLE `kabupaten`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wisata`
--
ALTER TABLE `wisata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
