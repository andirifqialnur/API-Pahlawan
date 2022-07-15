-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2022 at 07:41 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api_pahlawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_pahlawan`
--

CREATE TABLE `data_pahlawan` (
  `id_pahlawan` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `daerah_lahir` varchar(255) NOT NULL,
  `tahun_lahir` int(11) NOT NULL,
  `daerah_wafat` varchar(255) NOT NULL,
  `tahun_wafat` int(11) NOT NULL,
  `tahun_penetapan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_pahlawan`
--

INSERT INTO `data_pahlawan` (`id_pahlawan`, `nama`, `daerah_lahir`, `tahun_lahir`, `daerah_wafat`, `tahun_wafat`, `tahun_penetapan`) VALUES
(1, 'Abdul Halim', 'Sumatera Barat', 1911, 'Jakarta', 1988, 2008),
(2, 'Abdul Halim Majalengka', 'Jawa Barat', 1887, 'Jawa Barat', 1962, 2008),
(3, 'Abdul Haris Nasution', 'Sumatera Utara', 1918, 'Jakarta', 2000, 2002),
(4, 'Abdul Kadir', 'Kalimantan Barat', 1771, 'Kalimantan Barat', 1875, 1999),
(5, 'Abdul Kahar Mudzakkir', 'Yogyakarta', 1907, 'Yogyakarta', 1973, 2019),
(6, 'Abdul Malik Karim Amrullah', 'Sumatera Barat', 1908, 'Jakarta', 1981, 2011),
(7, 'Abdul Muis', 'Sumatera Barat', 1883, 'Jawa Barat', 1959, 1959),
(8, 'Abdul Rahman Saleh', 'Jakarta', 1909, 'Yogyakarta', 1947, 1974),
(9, 'Abdul Wahab Hasbullah', 'Jawa Timur', 1888, 'Jawa Timur', 1971, 2014),
(10, 'Andi Abdullah Bau Massepe', 'Sulawesi Selatan', 1918, 'Sulawesi Selatan', 1947, 2005),
(11, 'Abdurrahman Baswedan', 'Jawa Timur', 1908, 'Jakarta', 1986, 2018),
(12, 'Achmad Subarjo', 'Jawa Barat', 1896, 'Jakarta', 1978, 2009),
(13, 'Adam Malik', 'Sumatera Utara', 1917, 'Jawa Barat', 1984, 1998),
(14, 'Adnan Kapau Gani', 'Sumatera Barat', 1905, 'Sumatera Selatan', 1968, 2007),
(15, 'Nyi Ageng Serang', 'Jawa Tengah', 1752, 'Yogyakarta', 1828, 1974),
(16, 'Agus Salim', 'Sumatera Barat', 1884, 'Jakarta', 1954, 1961),
(17, 'Agustinus Adisucipto', 'Jawa Tengah', 1916, 'Yogyakarta', 1947, 1974),
(18, 'Ahmad Dahlan', 'Yogyakarta', 1868, 'Yogyakarta', 1934, 1961),
(19, 'Ahmad Rifai', 'Jawa Tengah', 1786, 'Sulawesi Utara', 1870, 2004),
(20, 'Ahmad Yani', 'Jawa Tengah', 1922, 'Jakarta', 1965, 1965),
(21, 'Alexander Andries Maramis', 'Sulawesi Utara', 1897, 'Jakarta', 1977, 2019),
(22, 'Alimin', 'Jawa Tengah', 1889, 'Jakarta', 1964, 1964),
(23, 'Amir Hamzah', 'Sumatera Utara', 1911, 'Sumatera Utara', 1946, 1975),
(24, 'Andi Depu', 'Sulawesi Barat', 1907, 'Sulawesi Selatan', 1985, 2018),
(25, 'Antasari', 'Kalimantan Selatan', 1809, 'Kalimantan Tengah', 1862, 1968),
(26, 'Arie Frederik Lasut', 'Sumatera Utara', 1918, 'Yogyakarta', 1949, 1969),
(27, 'Asad Syamsul Arifin', 'Arab Saudi', 1897, 'Jawa Timur', 1990, 2016),
(28, 'Bagindo Azizchan', 'Sumatera Barat', 1910, 'Sumatera Barat', 1947, 2005),
(29, 'Basuki Rahmat', 'Jawa Timur', 1921, 'Jakarta', 1969, 1969),
(30, 'Bernard Wilhelm Lapian', 'Sulawesi Utara', 1892, 'Jakarta', 1977, 2015),
(31, 'Teungku Chik di Tiro', 'Aceh', 1836, 'Aceh', 1891, 1973),
(32, 'Cilik Riwut', 'Kalimantan Tengah', 1918, 'Kalimantan Selatan', 1987, 1998),
(33, 'Cipto Mangunkusumo', 'Jawa Tengah', 1886, 'Jakarta', 1943, 1964),
(34, 'Cokroaminoto', 'Jawa Timur', 1883, 'Yogyakarta', 1934, 1961),
(35, 'Ernest Douwes Dekker', 'Jawa Timur', 1879, 'Jawa Barat', 1950, 1961),
(36, 'Depati Amir', 'Bangka Belitung', 1805, 'NTT', 1869, 2018),
(37, 'Dewi Sartika', 'Jawa Barat', 1884, 'Jawa Barat', 1947, 1966),
(38, 'Cut Nyak Dhien', 'Aceh', 1850, 'Jawa Barat', 1908, 1964),
(39, 'Diponegoro', 'Yogyakarta', 1785, 'Sulawesi Selatan', 1855, 1973),
(40, 'Donald Izacus Panjaitan', 'Sumatera Utara', 1925, 'Jakarta', 1965, 1965),
(41, 'Eddy Martadinata', 'Jawa Barat', 1921, 'Jawa Barat', 1966, 1966),
(42, 'Fakhruddin', 'Yogyakarta', 1890, 'Yogyakarta', 1929, 1964),
(43, 'Fatmawati', 'Bengkulu', 1923, 'Malaysia', 1980, 2000),
(44, 'Ferdinand Lumbantobing', 'Sumatera Utara', 1899, 'Jakarta', 1962, 1962),
(45, 'Frans Kaisiepo', 'Papua', 1921, 'Papua', 1979, 1993),
(46, 'Gatot Mangkupraja', 'Jawa Barat', 1896, 'Jawa Barat', 1968, 2004),
(47, 'Gatot Subroto', 'Jawa Tengah', 1907, 'Jakarta', 1962, 1962),
(48, 'Halim Perdanakusuma', 'Jawa Timur', 1922, 'Malaysia', 1947, 1975),
(49, 'Hamengkubuwono I', 'Jawa Tengah', 1717, 'Yogyakarta', 1792, 2006),
(50, 'Hamengkubuwono IX', 'Yogyakarta', 1912, 'Amerika Serikat', 1988, 1990),
(51, 'Harun Bin Said', 'Jawa Timur', 1947, 'Singapura', 1968, 1968),
(52, 'Hasan Basri', 'Kalimantan Selatan', 1923, 'Jakarta', 1984, 2001),
(53, 'Hasanuddin', 'Sulawesi Selatan', 1631, 'Sulawesi Selatan', 1670, 1973),
(54, 'Hasyim Asyari', 'Jawa Timur', 1875, 'Jawa Timur', 1947, 1964),
(55, 'Hazairin', 'Sumatera Barat', 1906, 'Jakarta', 1975, 1999),
(56, 'Herman Johannes', 'NTT', 1912, 'Yogyakarta', 1992, 2009),
(57, 'Himayatuddin Muhammad Saidi', 'Sulawesi Tenggara', 1700, 'Sulawesi Tenggara', 1776, 2019),
(58, 'Ida Anak Agung Gde Agung', 'Bali', 1921, 'Bali', 1999, 2007),
(59, 'Idham Chalid', 'Kalimantan Selatan', 1921, 'Jakarta', 2010, 2011),
(60, 'Ilyas Yakoub', 'Sumatera Barat', 1903, 'Sumatera Barat', 1958, 1999),
(61, 'Tuanku Imam Bonjol', 'Sumatera Barat', 1772, 'Sulawesi Utara', 1864, 1973),
(62, 'Radin Inten II', 'Lampung', 1834, 'Lampung', 1856, 1986),
(63, 'Iskandar Muda', 'Aceh', 1593, 'Aceh', 1636, 1993),
(64, 'Ismail Marzuki', 'Jakarta', 1914, 'Jakarta', 1958, 2004),
(65, 'Iswahyudi', 'Jawa Timur', 1918, 'Malaysia', 1947, 1975),
(66, 'Iwa Kusumasumantri', 'Jawa Barat', 1899, 'Jakarta', 1971, 2002),
(67, 'Izaak Huru Doko', 'NTT', 1913, 'NTT', 1985, 2006),
(68, 'Jamin Ginting', 'Sumatera Utara', 1921, 'Kanada', 1974, 2014),
(69, 'Janatin', 'Jawa Tengah', 1943, 'Singapura', 1968, 1968),
(70, 'Jatikusumo', 'Jawa Tengah', 1917, 'Jakarta', 1992, 2002),
(71, 'Andi Jemma', 'Sulawesi Selatan', 1935, 'Sulawesi Selatan', 1965, 2002),
(72, 'Johannes Abraham Dimara', 'Papua', 1916, 'Jakarta', 2000, 2010),
(73, 'Johannes Leimena', 'Maluku', 1905, 'Jakarta', 1977, 2010),
(74, 'Juanda Kartawijaya', 'Jawa Barat', 1911, 'Jakarta', 1963, 1963),
(75, 'Karel Satsuit Tubun', 'Maluku', 1928, 'Jakarta', 1965, 1965),
(76, 'Kartini', 'Jawa Tengah', 1879, 'Jawa Tengah', 1904, 1964),
(77, 'Ignatius Joseph Kasimo', 'Yogyakarta', 1900, 'Jakarta', 1986, 2011),
(78, 'Kasman Singodimedjo', 'Jawa Tengah', 1904, 'Jakarta', 1982, 2018),
(79, 'Katamso Darmokusumo', 'Jawa Tengah', 1923, 'Yogyakarta', 1965, 1965),
(80, 'I Gusti Ketut Jelantik', 'Bali', 1800, 'Bali', 1849, 1993),
(81, 'I Gusti Ketut Puja', 'Bali', 1904, 'Jakarta', 1957, 2011),
(82, 'Ki Bagus Hadikusumo', 'Yogyakarta', 1890, 'Jakarta', 1954, 2015),
(83, 'Ki Hajar Dewantara', 'Yogyakarta', 1889, 'Yogyakarta', 1959, 1959),
(84, 'Ki Sarmidi Mangunsarkoro', 'Jawa Tengah', 1904, 'Jakarta', 1957, 2011),
(85, 'Kiras Bangun', 'Sumatera Utara', 1852, 'Sumatera Utara', 1942, 2005),
(86, 'Kusumah Atmaja', 'Jawa Barat', 1898, 'Jakarta', 1952, 1965),
(87, 'La Maddukelleng', 'Sulawesi Selatan', 1700, 'Sulawesi Selatan', 1765, 1998),
(88, 'Lafran Pane', 'Sumatera Utara', 1922, 'Yogyakarta', 1991, 2017),
(89, 'Lambertus Nicodemus Palar', 'Sulawesi Utara', 1900, 'Jakarta', 1981, 2013),
(90, 'John Lie', 'Sulawesi Utara', 1911, 'Jakarta', 1988, 2009),
(91, 'Mahmud Badaruddin II', 'Sumatera Selatan', 1767, 'Maluku Utara', 1852, 1984),
(92, 'Sultan Mahmud Riayat Syah', 'Kepulauan Riau', 1760, 'Kepulauan Riau', 1812, 2017),
(93, 'Malahayati', 'Aceh', 1550, 'Aceh', 1604, 2017),
(94, 'Mangkunegara I', 'Jawa Tengah', 1725, 'Jawa Tengah', 1795, 1988),
(95, 'Andi Mappanyukki', 'Sulawesi Selatan', 1885, 'Sulawesi Selatan', 1967, 2004),
(96, 'Maria Walanda Maramis', 'Sulawesi Utara', 1872, 'Sulawesi Utara', 1924, 1969),
(97, 'Martha Christina Tiahahu', 'Maluku', 1800, 'Maluku', 1818, 1969),
(98, 'Marthen Indey', 'Papua', 1912, 'Papua', 1986, 1993),
(99, 'Mas Isman', 'Jawa Timur', 1924, 'Jawa Timur', 1982, 2015),
(100, 'Mas Mansur', 'Jawa Timur', 1896, 'Jawa Timur', 1946, 1964),
(101, 'Masykur', 'Jawa Timur', 1904, 'Jawa Timur', 1994, 2019),
(102, 'Mas Tirtodarmo Haryono', 'Jawa Timur', 1924, 'Jakarta', 1965, 1965),
(103, 'Maskun Sumadireja', 'Jawa Barat', 1907, 'Jakarta', 1986, 2004),
(104, 'Cut Nyak Meutia', 'Aceh', 1870, 'Aceh', 1910, 1964),
(105, 'Mohammad Hatta', 'Sumatera Barat', 1902, 'Jakarta', 1980, 2012),
(106, 'Mohammad Husni Thamrin', 'Jakarta', 1894, 'Jakarta', 1941, 1960),
(107, 'Mohammad Natsir', 'Sumatera Barat', 1908, 'Jakarta', 1993, 2008),
(108, 'Teuku Muhammad Hasan', 'Aceh', 1906, 'Jakarta', 1997, 2006),
(109, 'Muhammad Mangundiprojo', 'Jawa Tengah', 1905, 'Lampung', 1988, 2014),
(110, 'Muhammad Yamin', 'Sumatera Barat', 1903, 'Jakarta', 1962, 1973),
(111, 'Mohammad Yasin', 'Sulawesi Tenggara', 1920, 'Jakarta', 2012, 2015),
(112, 'Muhammad Zainuddin Abdul Madjid', 'NTB', 1898, 'NTB', 1997, 2017),
(113, 'Mustopo', 'Jawa Timur', 1913, 'Jawa Barat', 1986, 2007),
(114, 'Muwardi', 'Jawa Tengah', 1907, 'Jawa Tengah', 1948, 1964),
(115, 'Nani Wartabone', 'Gorontalo', 1907, 'Gorontalo', 1986, 2003),
(116, 'I Gusti Ngurah Made Agung', 'Bali', 1876, 'Bali', 1906, 2015),
(117, 'I Gusti Ngurah Rai', 'Bali', 1917, 'Bali', 1946, 1975),
(118, 'Nuku Muhammad Amiruddin', 'Maluku Utara', 1738, 'Maluku Utara', 1805, 1995),
(119, 'Noer Alie', 'Jawa Barat', 1914, 'Jawa Barat', 1992, 2006),
(120, 'Teuku Nyak Arif', 'Aceh', 1899, 'Aceh', 1946, 1974),
(121, 'Opu Daeng Risaju', 'Sulawesi Selatan', 1880, 'Sulawesi Selatan', 1964, 2006),
(122, 'Oto Iskandar di Nata', 'Jawa Barat', 1897, 'Banten', 1945, 1973),
(123, 'Pajonga Daeng Ngalie', 'Sulawesi Selatan', 1901, 'Sulawesi Selatan', 1958, 2006),
(124, 'Pakubuwono VI', 'Jawa Tengah', 1807, 'Maluku', 1849, 1964),
(125, 'Pakubuwono X', 'Jawa Tengah', 1866, 'Jawa Tengah', 1939, 2011),
(126, 'Pangeran Muhammad Noor', 'Kalimantan Selatan', 1901, 'Jakarta', 1979, 2018),
(127, 'Pattimura', 'Maluku', 1783, 'Maluku', 1817, 1973),
(128, 'Pierre Tendean', 'Jakarta', 1939, 'Jakarta', 1965, 1965),
(129, 'Pong Tiku', 'Sulawesi Selatan', 1846, 'Sulawesi Selatan', 1907, 2002),
(130, 'Raja Ali Haji', 'Malaysia', 1809, 'Kepulauan Riau', 1808, 2004),
(131, 'Raja Haji Fisabilillah', 'Riau', 1727, 'Malaysia', 1784, 1997),
(132, 'Rajiman Wediodiningrat', 'Yogyakarta', 1879, 'Jawa Timur', 1952, 2013),
(133, 'Ranggong Daeng Romo', 'Sulawesi Selatan', 1915, 'Sulawesi Selatan', 1947, 2001),
(134, 'Rasuna Said', 'Sumatera Barat', 1910, 'Jakarta', 1965, 1974),
(135, 'Robert Wolter Monginsidi', 'Sulawesi Utara', 1925, 'Sulawesi Selatan', 1949, 1973),
(136, 'Ruhana Kuddus', 'Sumatera Barat', 1884, 'Jakarta', 1972, 2019),
(137, 'Saharjo', 'Jawa Tengah', 1909, 'Jakarta', 1963, 1963),
(138, 'Sam Ratulangi', 'Sulawesi Utara', 1890, 'Jakarta', 1949, 1961),
(139, 'Samanhudi', 'Jawa Tengah', 1878, 'Jawa Tengah', 1956, 1961),
(140, 'Sarjito', 'Jawa Timur', 1889, 'Yogyakarta', 1970, 2019),
(141, 'Silas Papare', 'Papua', 1918, 'Papua', 1978, 1993),
(142, 'Sisingamangaraja XII', 'Sumatera Utara', 1849, 'Sumatera Utara', 1907, 1961),
(143, 'Siswondo Parman', 'Jawa Tengah', 1918, 'Jakarta', 1965, 1965),
(144, 'Siti Hartinah', 'Jawa Tengah', 1923, 'Jakarta', 1996, 1996),
(145, 'Siti Walidah', 'Yogyakarta', 1872, 'Yogyakarta', 1946, 1971),
(146, 'Slamet Riyadi', 'Jawa Tengah', 1927, 'Maluku', 1950, 2007),
(147, 'Sudirman', 'Jawa Tengah', 1916, 'Jawa Tengah', 1950, 1964),
(148, 'Albertus Sugiyapranata', 'Jawa Tengah', 1896, 'Belanda', 1963, 1963),
(149, 'Sugiyono Mangunwiyoto', 'Yogyakarta', 1926, 'Yogyakarta', 1965, 1965),
(150, 'Suharso', 'Jawa Tengah', 1912, 'Jawa Tengah', 1971, 1973),
(151, 'Sukarjo Wiryopranoto', 'Jawa Tengah', 1903, 'Amerika Serikat', 1962, 1962),
(152, 'Sukarni', 'Jawa Timur', 1916, 'Jakarta', 1971, 2014),
(153, 'Sukarno', 'Jawa Timur', 1901, 'Jakarta', 1970, 2012),
(154, 'Sultan Agung', 'Yogyakarta', 1591, 'Yogyakarta', 1645, 1975),
(155, 'Andi Sultan Daeng Radja', 'Sulawesi Selatan', 1894, 'Sulawesi Selatan', 1963, 2006),
(156, 'Supeno', 'Jawa Tengah', 1916, 'Jawa Timur', 1949, 1970),
(157, 'Supomo', 'Jawa Tengah', 1903, 'Jakarta', 1958, 1965),
(158, 'Suprapto', 'Jawa Tengah', 1920, 'Jakarta', 1965, 1965),
(159, 'Supriyadi', 'Jawa Timur', 1925, '', 1945, 1975),
(160, 'Suroso', 'Jawa Timur', 1893, 'Jakarta', 1981, 1986),
(161, 'Suryo', 'Jawa Timur', 1896, 'Jawa Timur', 1948, 1964),
(162, 'Suryopranoto', 'Yogyakarta', 1871, 'Jawa Barat', 1959, 1959),
(163, 'Sutan Syahrir', 'Sumatera Barat', 1909, 'Swiss', 1966, 1966),
(164, 'Soetomo', 'Jawa Timur', 1888, 'Jawa Timur', 1938, 1961),
(165, 'Sutomo', 'Jawa Timur', 1920, 'Arab Saudi', 1981, 2008),
(166, 'Sutoyo Siswomiharjo', 'Jawa Tengah', 1922, 'Jakarta', 1965, 1965),
(167, 'Syafruddin Prawiranegara', 'Banten', 1911, 'Jakarta', 1989, 2011),
(168, 'Syamun', 'Banten', 1894, 'Banten', 1949, 2018),
(169, 'Syarif Kasim II', 'Riau', 1893, 'Riau', 1968, 1998),
(170, 'Tahi Bonar Simatupang', 'Sumatera Utara', 1920, 'Jakarta', 1990, 2013),
(171, 'Tuanku Tambusai', 'Riau', 1784, 'Malaysia', 1882, 1995),
(172, 'Tan Malaka', 'Sumatera Barat', 1884, 'Jawa Timur', 1949, 1963),
(173, 'Thaha Syaifuddin', 'Jambi', 1816, 'Jambi', 1904, 1977),
(174, 'Tirtayasa', 'Banten', 1631, 'Jakarta', 1683, 1970),
(175, 'Tirto Adhi Suryo', 'Jawa Tengah', 1880, 'Jakarta', 1918, 2006),
(176, 'Teuku Umar', 'Aceh', 1854, 'Aceh', 1899, 1973),
(177, 'Untung Surapati', 'Bali', 1660, 'Jawa Timur', 1706, 1975),
(178, 'Urip Sumoharjo', 'Jawa Tengah', 1893, 'Yogyakarta', 1948, 1964),
(179, 'Wage Rudolf Supratman', 'Jawa Tengah', 1903, 'Jawa Timur', 1938, 1971),
(180, 'Wahid Hasyim', 'Jawa Timur', 1914, 'Jawa Barat', 1953, 1964),
(181, 'Wahidin Sudirohusodo', 'Yogyakarta', 1852, 'Yogyakarta', 1917, 1973),
(182, 'Wilhelmus Zakaria Johannes', 'NTT', 1895, 'Belanda', 1952, 1968),
(183, 'Yos Sudarso', 'Jawa Tengah', 1925, 'Laut Arafuru', 1962, 1973),
(184, 'Yusuf Tajul Khalwati', 'Sulawesi Selatan', 1626, 'Afrika Selatan', 1699, 1995),
(185, 'Zainal Mustafa', 'Jawa Barat', 1907, 'Jakarta', 1944, 1972),
(186, 'Zainul Arifin', 'Sumatera Utara', 1909, 'Jakarta', 1963, 1963);

-- --------------------------------------------------------

--
-- Table structure for table `response`
--

CREATE TABLE `response` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `response`
--

INSERT INTO `response` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Andi Rifqial Nur', 'andirifqialnur276@gmail.com', 'hy guysssss', 'nasld a,nd alxnau hjsn,axasxasxaasd'),
(2, 'Andi Rifqial Nur', 'andirifqialnur276@gmail.com', 'hy guysssss', 'asdaxasxaxz'),
(3, 'Andi Rifqial Nur', 'andirifqialnur276@gmail.com', 'hy guysssss', 'asdaxasxaxz'),
(4, 'Andi Rifqial Nur', 'andirifqialnur276@gmail.com', 'hy guysssss', 'asdaxasxaxz'),
(5, 'Wood', 'wd@gmail.com', 'subjectku', 'Sudah cukup bagus tapi masih banyak yang perlu di kembangkan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `key_token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `key_token`) VALUES
(1, 'Andi Rifqial Nur', 'J E L L I C E', 'andirifqialnur276@gmail.com', '12345678', ''),
(2, 'law', 'arana', 'aa@gmail.com', '123', ''),
(3, 'aranaaaa', 'ice', 'asdasd@gmail.com', '123', ''),
(4, 'asas', 'qqee', 'qwqwqsd@gmail.com', '123', ''),
(5, 'asas', 'qqee', 'qwqwqsd@gmail.com', '123', ''),
(6, 'asas', 'qqee', 'qwqwqsd@gmail.com', '123', ''),
(7, 'asas', 'qqee', 'qwqwqsd@gmail.com', '123', ''),
(8, 'asas', 'qqee', 'qwqwqsd@gmail.com', '123', ''),
(9, 'fere', 'rere', 'q@gmail.com', '123', ''),
(10, 'fere', 'rere', 'q@gmail.com', '123', ''),
(11, 'fere', 'rere', 'q@gmail.com', '123', ''),
(12, 'fere', 'rere', 'q@gmail.com', '123', ''),
(13, 'fere', 'rere', 'q@gmail.com', '123', ''),
(14, 'asdasdd', 'adsaasd', 'asad@gmail.com', '123', ''),
(15, 'asdasdd', 'adsaasd', 'asad@gmail.com', '123', ''),
(16, 'ace', 'ace', 'ace@gmail.com', '202cb962ac59075b964b07152d234b70', ''),
(17, 'malefic', 'malefic', 'mal@gmail.com', '202cb962ac59075b964b07152d234b70', ''),
(18, 'qwerty', 'qwerty', 'qwerty@gmail.com', '202cb962ac59075b964b07152d234b70', 'fba75a0168e783dee789b8ae166907d3'),
(19, 'Wood', 'wd', 'wd@wd.com', '202cb962ac59075b964b07152d234b70', 'b90419f18a747e7f5760c7e34044afe3'),
(20, 'ICIZY', 'I C E', 'xice@gmail.com', '202cb962ac59075b964b07152d234b70', '0ba00cac3cca545fb73efa2fd21876b7'),
(21, 'asas', 'as', 'as@gmail.com', '202cb962ac59075b964b07152d234b70', 'a68bf12157644a508eaffc4bb56af431'),
(22, 'cloud', 'cloud', 'cl@gmail.com', '202cb962ac59075b964b07152d234b70', '6098376b8ecd040c64d4132662b10b08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `response`
--
ALTER TABLE `response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `response`
--
ALTER TABLE `response`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
