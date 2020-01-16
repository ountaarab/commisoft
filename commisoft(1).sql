-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2020 at 04:23 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `commisoft`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_csv`
--

CREATE TABLE `tbl_csv` (
  `csv_id` int(11) NOT NULL,
  `csv_code` tinyint(1) NOT NULL,
  `csv_file` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_csv`
--

INSERT INTO `tbl_csv` (`csv_id`, `csv_code`, `csv_file`) VALUES
(1, 1, 'project.csv'),
(2, 1, 'project.csv'),
(3, 1, 'project.csv'),
(4, 1, 'project.csv'),
(5, 1, 'project.csv'),
(6, 1, 'project.csv'),
(7, 1, 'project.csv'),
(8, 2, 'system.csv'),
(9, 8, 'itemno.csv'),
(10, 8, 'itemno.csv'),
(11, 8, 'itemno.csv'),
(12, 6, 'form.csv'),
(13, 6, 'form.csv'),
(14, 6, 'form.csv'),
(15, 8, 'itemno.csv'),
(48, 6, 'itemtype.csv'),
(47, 4, 'discipline.csv'),
(46, 4, 'discipline.csv'),
(45, 3, 'subsystem.csv'),
(44, 2, 'system.csv'),
(43, 1, 'project.csv'),
(42, 3, 'subsystem.csv'),
(41, 2, 'system.csv'),
(40, 3, 'subsystem.csv'),
(39, 2, 'system.csv'),
(38, 3, 'subsystem.csv'),
(37, 2, 'system.csv'),
(36, 1, 'project.csv'),
(61, 2, 'system.csv'),
(32, 0, 'system.csv'),
(33, 2, 'system.csv'),
(34, 2, 'system.csv'),
(35, 1, 'project.csv'),
(49, 6, 'itemtype.csv'),
(50, 6, 'itemtype.csv'),
(51, 6, 'itemtype.csv'),
(52, 1, 'project.csv'),
(53, 2, 'system.csv'),
(54, 2, 'system.csv'),
(55, 2, 'system.csv'),
(56, 2, 'system.csv'),
(57, 2, 'system.csv'),
(58, 2, 'system.csv'),
(59, 2, 'system.csv'),
(60, 2, 'system.csv'),
(62, 2, 'system.csv'),
(63, 2, 'system.csv'),
(64, 2, 'system.csv'),
(65, 2, 'system.csv'),
(66, 2, 'system.csv'),
(67, 2, 'system.csv'),
(68, 2, 'system.csv'),
(69, 2, 'system.csv'),
(70, 2, 'system.csv'),
(71, 2, 'system.csv'),
(72, 2, 'system.csv'),
(73, 2, 'system.csv'),
(74, 2, 'system.csv'),
(75, 2, 'system.csv'),
(76, 2, 'system.csv'),
(77, 2, 'system.csv'),
(78, 2, 'system.csv'),
(79, 2, 'system.csv'),
(80, 2, 'system.csv'),
(81, 2, 'system.csv'),
(82, 3, 'subsystem.csv'),
(83, 8, 'item.csv'),
(84, 8, 'item.csv'),
(85, 8, 'item.csv'),
(86, 8, 'item.csv'),
(87, 8, 'item.csv'),
(88, 8, 'item.csv'),
(89, 8, 'item.csv'),
(90, 8, 'item.csv'),
(91, 8, 'item.csv'),
(92, 8, 'item.csv'),
(93, 8, 'item.csv'),
(94, 8, 'item.csv'),
(95, 8, 'item.csv'),
(96, 8, 'item.csv'),
(97, 8, 'item.csv'),
(98, 8, 'item.csv'),
(99, 8, 'item.csv'),
(100, 8, 'item.csv'),
(101, 8, 'item.csv');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_disciplines`
--

CREATE TABLE `tbl_disciplines` (
  `id` int(11) NOT NULL,
  `discipline_id` varchar(30) NOT NULL,
  `discipline_name` varchar(200) NOT NULL,
  `discipline_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_disciplines`
--

INSERT INTO `tbl_disciplines` (`id`, `discipline_id`, `discipline_name`, `discipline_status`) VALUES
(1, 'MEC', 'MECHANICAL', 0),
(2, 'INST', 'INSTRUMENT', 0),
(3, 'ELE', 'ELECTRIC', 0),
(4, 'PIP', 'PIPING', 0),
(5, 'CIV', 'CIVIL', 0),
(6, 'STR', 'STRUCTURE', 0),
(7, 'TEL', 'TELCOMS', 0),
(8, 'SAF', 'SAFETY', 0),
(10, 'dsd', 'dsd', 0),
(11, 'dsd', 'sds', 0),
(12, 'ds', 'ds', 0),
(13, '2', 'fsfsf sfsf', 0),
(14, '33', '33', 1),
(15, '44', '44', 1),
(16, '2', 'CIVIL', 0),
(17, 'hg', 'jhjg', 0),
(18, 'gfgfgf', 'hghghg', 0),
(19, '1', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_disciplines_log`
--

CREATE TABLE `tbl_disciplines_log` (
  `id` int(11) NOT NULL,
  `id_discipline` int(11) NOT NULL,
  `discipline_id` varchar(30) NOT NULL,
  `discipline_name` varchar(200) NOT NULL,
  `id_users` int(11) NOT NULL,
  `note` enum('add','update','delete','restore') NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_disciplines_log`
--

INSERT INTO `tbl_disciplines_log` (`id`, `id_discipline`, `discipline_id`, `discipline_name`, `id_users`, `note`, `datetime`) VALUES
(1, 12, 'ds', 'ds', 12, 'add', '2019-12-28 08:30:33'),
(2, 13, '2', 'fsfsf sfsf', 12, 'add', '2019-12-28 08:47:06'),
(3, 14, '33', '33', 12, 'add', '2019-12-28 09:29:34'),
(4, 15, '44', '44', 12, 'add', '2019-12-28 09:29:39'),
(5, 15, '44', '44', 12, 'delete', '2019-12-28 09:30:07'),
(6, 14, '33', '33', 12, 'delete', '2019-12-28 09:30:07'),
(7, 13, '2', 'fsfsf sfsf', 12, 'update', '2019-12-28 12:07:53'),
(8, 16, '2', 'CIVIL', 12, 'add', '2019-12-28 13:48:37'),
(9, 17, 'hg', 'jhjg', 12, 'add', '2020-01-06 08:52:19'),
(10, 18, 'gfgfgf', 'hghghg', 12, 'add', '2020-01-06 09:26:43'),
(11, 19, '1', '1', 12, 'add', '2020-01-06 16:26:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` tinyint(1) NOT NULL,
  `file_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_type`) VALUES
(1, 'Import Project'),
(2, 'Import System'),
(3, 'Import Sub System'),
(4, 'Import Discipline'),
(5, 'Import Location'),
(6, 'Import Item Type'),
(7, 'Import Form No'),
(8, 'Import Item No');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_forms`
--

CREATE TABLE `tbl_forms` (
  `form_no` int(11) NOT NULL,
  `form_item_no` int(11) NOT NULL,
  `form_tmp_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_forms`
--

INSERT INTO `tbl_forms` (`form_no`, `form_item_no`, `form_tmp_no`) VALUES
(1, 1, 19),
(2, 1, 33),
(3, 3, 16),
(4, 4, 4),
(5, 4, 12),
(6, 6, 4),
(7, 6, 13),
(17, 13, 19),
(11, 10, 4),
(10, 8, 6),
(13, 11, 5),
(14, 11, 15),
(15, 9, 11),
(16, 9, 14),
(18, 13, 33),
(19, 14, 20),
(20, 17, 28),
(21, 17, 42),
(22, 18, 24),
(84, 23, 38),
(24, 19, 29),
(25, 19, 43),
(26, 20, 25),
(27, 20, 39),
(28, 23, 22),
(29, 23, 36),
(30, 24, 23),
(31, 24, 37),
(32, 25, 26),
(33, 25, 40),
(34, 26, 18),
(35, 26, 32),
(36, 14, 34),
(89, 73, 79),
(38, 31, 30),
(39, 12, 4),
(40, 12, 13),
(41, 36, 1),
(42, 37, 4),
(43, 37, 13),
(44, 31, 44),
(45, 31, 45),
(46, 31, 46),
(47, 15, 65),
(48, 16, 67),
(49, 22, 66),
(50, 27, 64),
(51, 27, 73),
(52, 2, 68),
(53, 2, 77),
(54, 5, 71),
(55, 7, 70),
(59, 28, 72),
(60, 39, 52),
(61, 43, 47),
(62, 41, 48),
(63, 40, 47),
(64, 42, 47),
(65, 45, 49),
(66, 47, 47),
(67, 46, 51),
(68, 48, 50),
(69, 49, 50),
(70, 53, 50),
(71, 54, 48),
(72, 55, 52),
(73, 56, 47),
(74, 57, 54),
(75, 58, 51),
(76, 34, 78),
(77, 34, 80),
(78, 38, 78),
(79, 0, 0),
(80, 59, 16),
(81, 61, 10),
(88, 73, 44),
(83, 0, 0),
(85, 73, 46),
(86, 0, 44),
(87, 73, 45),
(90, 75, 3),
(91, 73, 78),
(92, 73, 74),
(93, 9, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_form_progress`
--

CREATE TABLE `tbl_form_progress` (
  `pro_id` bigint(20) NOT NULL,
  `pro_index_id` int(11) NOT NULL,
  `pro_form_no` int(11) NOT NULL,
  `pro_progress` int(11) NOT NULL DEFAULT '0',
  `pro_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_form_progress`
--

INSERT INTO `tbl_form_progress` (`pro_id`, `pro_index_id`, `pro_form_no`, `pro_progress`, `pro_date`) VALUES
(1842, 31, 36, 100, '2018-02-09'),
(2285, 92, 93, 100, '2018-02-22'),
(2282, 83, 93, 100, '2018-02-22'),
(1542, 1, 19, 100, '2018-02-23'),
(1543, 1, 36, 100, '2018-02-22'),
(1544, 2, 19, 100, '2018-03-13'),
(1545, 2, 36, 100, '2018-02-23'),
(1546, 3, 19, 100, '2018-02-22'),
(1547, 3, 36, 100, '2018-02-22'),
(1548, 4, 19, 100, '2018-03-01'),
(1549, 4, 36, 100, '2018-03-01'),
(1550, 5, 19, 100, '2018-03-01'),
(1551, 5, 36, 100, '2018-03-01'),
(1552, 6, 19, 100, '2018-03-01'),
(1553, 6, 36, 100, '2018-03-01'),
(1554, 7, 19, 100, '2018-02-22'),
(1555, 7, 36, 100, '2018-02-22'),
(1560, 10, 19, 100, '2018-03-01'),
(1561, 10, 36, 100, '2018-03-01'),
(1562, 11, 19, 100, '2018-03-01'),
(1563, 11, 36, 100, '2018-03-01'),
(1564, 12, 19, 100, '2018-03-01'),
(1565, 12, 36, 100, '2018-03-01'),
(1566, 13, 19, 100, '2018-03-01'),
(1567, 13, 36, 100, '2018-03-01'),
(1568, 14, 19, 100, '2018-03-01'),
(1569, 14, 36, 100, '2018-03-01'),
(1570, 15, 19, 100, '2018-03-01'),
(1571, 15, 36, 100, '2018-03-01'),
(1572, 16, 19, 100, '2018-03-01'),
(1573, 16, 36, 100, '2018-03-01'),
(1574, 17, 19, 100, '2018-03-01'),
(1575, 17, 36, 100, '2018-03-01'),
(1576, 18, 19, 100, '2018-03-01'),
(1577, 18, 36, 100, '2018-03-01'),
(1844, 19, 53, 100, '2018-02-22'),
(1843, 19, 52, 100, '2018-02-22'),
(1846, 20, 53, 100, '2018-02-22'),
(1845, 20, 52, 100, '2018-02-22'),
(1582, 21, 19, 100, '2018-03-01'),
(1583, 21, 36, 100, '2018-03-01'),
(1836, 22, 36, 100, '2018-02-22'),
(1835, 22, 19, 100, '2018-02-22'),
(1848, 23, 53, 100, '2018-02-23'),
(1847, 23, 52, 100, '2018-02-23'),
(1850, 24, 53, 100, '2018-02-22'),
(1849, 24, 52, 100, '2018-02-22'),
(1590, 25, 19, 100, '2018-02-22'),
(1591, 25, 36, 100, '2018-02-22'),
(1839, 26, 19, 100, '2018-02-09'),
(1852, 27, 53, 100, '2018-02-23'),
(1851, 27, 52, 100, '2018-02-23'),
(1854, 28, 53, 100, '2018-02-23'),
(1853, 28, 52, 100, '2018-02-23'),
(1598, 29, 19, 100, '2018-02-09'),
(1599, 29, 36, 100, '2018-02-09'),
(1856, 30, 53, 100, '2018-02-23'),
(1855, 30, 52, 100, '2018-02-22'),
(1840, 26, 36, 100, '2018-02-09'),
(1841, 31, 19, 100, '2018-02-09'),
(1858, 32, 53, 100, '2018-02-22'),
(1857, 32, 52, 100, '2018-02-22'),
(1606, 33, 19, 100, '2018-02-09'),
(1607, 33, 36, 100, '2018-02-09'),
(1860, 34, 53, 100, '2018-02-15'),
(1859, 34, 52, 100, '2018-02-22'),
(1610, 35, 19, 100, '2018-02-22'),
(1611, 35, 36, 100, '2018-02-22'),
(1862, 36, 53, 100, '2018-02-22'),
(1861, 36, 52, 100, '2018-02-22'),
(1614, 37, 19, 100, '2018-02-09'),
(1615, 37, 36, 100, '2018-02-09'),
(1864, 38, 53, 100, '2018-02-23'),
(1863, 38, 52, 100, '2018-02-23'),
(1618, 39, 19, 100, '2018-02-09'),
(1619, 39, 36, 100, '2018-02-09'),
(1866, 40, 53, 100, '2018-02-23'),
(1865, 40, 52, 100, '2018-02-23'),
(1622, 41, 19, 100, '2018-02-09'),
(1623, 41, 36, 100, '2018-02-09'),
(1624, 42, 19, 100, '2018-02-22'),
(1625, 42, 36, 100, '2018-02-09'),
(1868, 43, 53, 100, '2018-02-23'),
(1867, 43, 52, 100, '2018-02-23'),
(1628, 44, 19, 100, '2018-02-09'),
(1629, 44, 36, 100, '2018-02-09'),
(1870, 45, 53, 100, '2018-02-23'),
(1869, 45, 52, 100, '2018-02-23'),
(1872, 46, 53, 100, '2018-02-23'),
(1871, 46, 52, 100, '2018-02-23'),
(1634, 47, 19, 100, '2018-02-09'),
(1635, 47, 36, 100, '2018-02-09'),
(2159, 239, 25, 100, '2018-01-25'),
(2158, 239, 24, 100, '2018-02-25'),
(2157, 238, 25, 100, '2018-01-25'),
(2293, 241, 94, 0, '2018-03-01'),
(2292, 241, 10, 100, '2018-02-23'),
(2156, 238, 24, 100, '2018-02-25'),
(2155, 237, 25, 100, '2018-01-25'),
(2154, 237, 24, 100, '2018-02-25'),
(2153, 236, 49, 100, '2018-02-22'),
(2291, 64, 93, 100, '2018-02-22'),
(2288, 57, 93, 100, '2018-02-21'),
(2287, 57, 16, 0, '0000-00-00'),
(2286, 57, 15, 100, '2018-01-16'),
(2150, 233, 49, 100, '2018-02-22'),
(2149, 232, 49, 100, '2018-02-22'),
(2148, 231, 49, 100, '2018-02-22'),
(2147, 230, 49, 100, '2018-02-22'),
(2272, 240, 54, 100, '2018-02-23'),
(2290, 64, 16, 0, '0000-00-00'),
(2289, 64, 15, 100, '2018-01-16'),
(2275, 76, 93, 100, '2018-02-22'),
(1914, 68, 90, 100, '2018-02-23'),
(1932, 69, 80, 100, '2018-02-24'),
(1930, 70, 54, 100, '2018-02-23'),
(1931, 71, 54, 0, '0000-00-00'),
(1933, 72, 80, 100, '2018-02-23'),
(1934, 74, 3, 100, '2018-02-23'),
(2274, 76, 16, 100, '2018-03-03'),
(2273, 76, 15, 100, '2018-02-16'),
(2281, 83, 16, 100, '2018-03-03'),
(2280, 83, 15, 100, '2018-02-16'),
(2284, 92, 16, 100, '2018-03-03'),
(2283, 92, 15, 100, '2018-02-16'),
(2229, 114, 92, 100, '2018-02-22'),
(2228, 114, 91, 100, '2018-02-22'),
(2227, 114, 87, 100, '2018-02-22'),
(2226, 114, 85, 100, '2018-02-22'),
(2223, 113, 92, 100, '2018-02-22'),
(2222, 113, 91, 100, '2018-02-22'),
(2221, 113, 87, 100, '2018-02-22'),
(2220, 113, 85, 100, '2018-02-22'),
(2217, 112, 92, 100, '2018-02-22'),
(2216, 112, 91, 100, '2018-02-20'),
(2215, 112, 87, 100, '2018-02-15'),
(2214, 112, 85, 100, '2018-02-15'),
(2181, 108, 92, 100, '2018-02-22'),
(2180, 108, 91, 100, '2018-02-22'),
(2179, 108, 87, 100, '2018-02-22'),
(2178, 108, 85, 100, '2018-02-22'),
(2211, 111, 92, 100, '2018-02-22'),
(2210, 111, 91, 100, '2018-02-22'),
(2209, 111, 87, 100, '2018-02-22'),
(2208, 111, 85, 100, '2018-02-22'),
(2205, 110, 92, 100, '2018-02-23'),
(2204, 110, 91, 100, '2018-02-22'),
(2203, 110, 87, 100, '2018-02-22'),
(2202, 110, 85, 100, '2018-02-22'),
(2199, 109, 92, 100, '2018-02-22'),
(2198, 109, 91, 100, '2018-02-22'),
(2197, 109, 87, 100, '2018-02-22'),
(2196, 109, 85, 100, '2018-02-22'),
(1820, 122, 88, 0, '0000-00-00'),
(1819, 122, 89, 0, '0000-00-00'),
(1824, 123, 88, 0, '0000-00-00'),
(1823, 123, 89, 0, '0000-00-00'),
(2177, 108, 88, 100, '2018-02-22'),
(2176, 108, 89, 100, '2018-02-22'),
(2201, 110, 88, 100, '2018-02-22'),
(2200, 110, 89, 100, '2018-02-22'),
(2207, 111, 88, 100, '2018-02-22'),
(2206, 111, 89, 100, '2018-02-22'),
(2195, 109, 88, 100, '2018-02-22'),
(2194, 109, 89, 100, '2018-02-22'),
(2213, 112, 88, 100, '2018-02-03'),
(2212, 112, 89, 100, '2018-02-20'),
(2219, 113, 88, 100, '2018-02-22'),
(2218, 113, 89, 100, '2018-02-15'),
(2237, 116, 88, 100, '2018-02-22'),
(2236, 116, 89, 100, '2018-02-22'),
(2243, 117, 88, 100, '2018-02-22'),
(2242, 117, 89, 100, '2018-02-22'),
(2249, 118, 88, 100, '2018-02-22'),
(2248, 118, 89, 100, '2018-02-22'),
(2255, 119, 88, 100, '2018-02-22'),
(2254, 119, 89, 100, '2018-02-22'),
(2261, 120, 88, 100, '2018-02-22'),
(2260, 120, 89, 100, '2018-02-22'),
(2267, 121, 88, 100, '2018-02-23'),
(2266, 121, 89, 100, '2018-03-02'),
(1821, 122, 85, 0, '0000-00-00'),
(1822, 122, 87, 0, '0000-00-00'),
(1825, 123, 85, 0, '0000-00-00'),
(1826, 123, 87, 0, '0000-00-00'),
(2225, 114, 88, 100, '2018-02-22'),
(2224, 114, 89, 100, '2018-02-22'),
(2231, 115, 88, 100, '2018-02-03'),
(2230, 115, 89, 100, '2018-02-22'),
(2232, 115, 85, 100, '2018-02-22'),
(2233, 115, 87, 100, '2018-02-22'),
(2234, 115, 91, 100, '2018-02-22'),
(2235, 115, 92, 100, '2018-02-22'),
(2238, 116, 85, 100, '2018-02-22'),
(2239, 116, 87, 100, '2018-02-22'),
(2240, 116, 91, 100, '2018-02-22'),
(2241, 116, 92, 100, '2018-02-22'),
(2244, 117, 85, 100, '2018-02-22'),
(2245, 117, 87, 100, '2018-02-22'),
(2246, 117, 91, 100, '2018-02-22'),
(2247, 117, 92, 100, '2018-02-22'),
(2250, 118, 85, 100, '2018-02-22'),
(2251, 118, 87, 100, '2018-02-22'),
(2252, 118, 91, 100, '2018-02-22'),
(2253, 118, 92, 100, '2018-02-22'),
(2256, 119, 85, 100, '2018-02-22'),
(2257, 119, 87, 100, '2018-02-22'),
(2258, 119, 91, 100, '2018-02-22'),
(2259, 119, 92, 100, '2018-02-23'),
(2262, 120, 85, 100, '2018-02-22'),
(2263, 120, 87, 100, '2018-02-22'),
(2264, 120, 91, 100, '2018-02-22'),
(2265, 120, 92, 100, '2018-02-23'),
(2268, 121, 85, 100, '2018-02-22'),
(2269, 121, 87, 100, '2018-02-22'),
(2270, 121, 91, 100, '2018-02-22'),
(2271, 121, 92, 100, '2018-02-23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hak_akses`
--

CREATE TABLE `tbl_hak_akses` (
  `id` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hak_akses`
--

INSERT INTO `tbl_hak_akses` (`id`, `id_user_level`, `id_menu`) VALUES
(1, 1, 3),
(2, 1, 1),
(3, 1, 2),
(4, 1, 23),
(5, 1, 27),
(6, 1, 32),
(7, 1, 40),
(8, 1, 64),
(9, 1, 66),
(10, 1, 65),
(11, 1, 68),
(12, 1, 67),
(13, 1, 69),
(14, 1, 70),
(15, 1, 71),
(16, 1, 72),
(17, 1, 73),
(18, 1, 74),
(19, 1, 75),
(21, 1, 77),
(22, 1, 78),
(23, 1, 79),
(24, 1, 80),
(25, 1, 81),
(26, 1, 82),
(27, 1, 83),
(28, 1, 84),
(29, 1, 76),
(30, 1, 85),
(31, 1, 86),
(32, 1, 87),
(33, 1, 88),
(34, 1, 89),
(35, 1, 90),
(36, 1, 91),
(37, 1, 92),
(38, 1, 93),
(39, 1, 94),
(40, 1, 95),
(41, 1, 96),
(42, 1, 97),
(43, 1, 98),
(44, 1, 99),
(45, 1, 100),
(46, 1, 101),
(47, 1, 102),
(48, 1, 103),
(49, 1, 104),
(50, 1, 105),
(51, 1, 107),
(54, 1, 134),
(55, 1, 116),
(56, 1, 117),
(59, 1, 111),
(60, 1, 112),
(61, 1, 114),
(78, 1, 110),
(79, 1, 109),
(81, 1, 115),
(82, 1, 113),
(83, 1, 120),
(84, 1, 118),
(85, 1, 121),
(86, 1, 122),
(87, 1, 123),
(88, 1, 124),
(89, 1, 126),
(90, 1, 125),
(91, 1, 127),
(92, 1, 128),
(93, 1, 129),
(94, 1, 130),
(95, 1, 131),
(97, 1, 133),
(98, 1, 132),
(100, 1, 108),
(102, 2, 3),
(103, 2, 23),
(104, 2, 27),
(105, 2, 32),
(106, 2, 40),
(107, 2, 107),
(109, 2, 110),
(111, 2, 111),
(112, 2, 112),
(113, 2, 113),
(114, 2, 114),
(115, 2, 115),
(116, 2, 116),
(117, 2, 117),
(118, 2, 118),
(119, 2, 120),
(120, 2, 121),
(121, 2, 122),
(122, 2, 123),
(123, 2, 124),
(124, 2, 127),
(125, 2, 126),
(126, 2, 125),
(127, 2, 128),
(128, 2, 129),
(129, 2, 130),
(130, 2, 131),
(131, 2, 132),
(132, 2, 133),
(133, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_indexes`
--

CREATE TABLE `tbl_indexes` (
  `index_id` int(11) NOT NULL,
  `index_location_no` int(11) NOT NULL,
  `index_item_no` int(11) NOT NULL,
  `index_sub_no` int(11) NOT NULL,
  `index_itemNo` varchar(100) NOT NULL,
  `index_desc` text NOT NULL,
  `index_status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_indexes`
--

INSERT INTO `tbl_indexes` (`index_id`, `index_location_no`, `index_item_no`, `index_sub_no`, `index_itemNo`, `index_desc`, `index_status`) VALUES
(1, 1, 14, 11, 'P01-VSD-M-B6412.01', 'from SS3-MDP-302 to VSD-M-B6412.01', ''),
(2, 1, 14, 11, 'P02-VSD-M-B6412.01', 'From SS3-MDP-302 To VSD-M-B6412.01', ''),
(3, 1, 14, 11, 'P01-3-B6412.01', 'from VSD-M-B6412.01 to M-B6412.01', ''),
(4, 1, 14, 11, 'P02-M-B6412.01', 'from VSD-M-B6412.01 to M-B6412.01', ''),
(5, 1, 14, 11, 'P-VSD-M-B6412.02', 'from SS3-MDP-302 to VSD-M-B6412.02', ''),
(6, 1, 14, 11, 'P-M-B6412.02', 'from VSD-M-B6412.02 to M-B6412.02', ''),
(7, 1, 14, 11, 'P-01-CC-B6412.01', 'from SS3-PDP-401 to CC-B6412.01', ''),
(10, 1, 14, 11, 'C01-CC-B6412.01', 'from VSD-M-B6412.01 to CC-B6412.01', ''),
(11, 1, 14, 11, 'C02-CC-B6412.01', 'from VSD-M-B6412.01 to CC-B6412.01', ''),
(12, 1, 14, 11, 'C03-CC-B6412.01', 'from VSD-M-B6412.01 to CC-B6412.01', ''),
(13, 1, 14, 11, 'C01-M-B6412.01', 'from VSD-M-B6412.01 to M-B6412.01', ''),
(14, 1, 14, 11, 'C04-CC-B6412.01', 'from VSD-M-B6412.02 to CC-B6412.01', ''),
(15, 1, 14, 11, 'C05-CC-B6412.02', 'from VSD-M-6412.02 to CC-B6412.01', ''),
(16, 1, 14, 11, 'C06-CC-B6412.01', 'from VSD-M-B6412.02 to CC-B6412.01', ''),
(17, 1, 14, 11, 'C01-M-B6412.02', 'from VSD-M-B6412.02 to M-B6412.02', ''),
(18, 1, 14, 11, 'P02-CC-B6412.01', 'from SS3-PDP-401 to CC-B6412.01', ''),
(19, 1, 2, 3, 'ZSC/ZSO1-V6412-01-01', 'from ZSC/ZSO1-V6412-01 to P3-JBD-DI-013', ''),
(20, 1, 2, 2, 'ZSC/ZS02-V6412-01-01', 'from ZSC/ZSC02-V6412-01 to P3-JBD-DI-013', ''),
(21, 1, 14, 11, 'P03-CC-B614.01', 'from SS3-PDP-401 to CC-B6412.01', ''),
(22, 1, 14, 17, 'L-P4LPE401-5-JB01', 'From P4-LPE-401 to P4LPE401-5-JB001', ''),
(23, 1, 2, 3, 'XZY1-V6412-01-01', 'from XZY1-V6412-01 to P3-JBD-S-004', ''),
(24, 1, 2, 2, 'XZY2-V6412-01-01', 'from XZY2-V6412-01 to P3-JBD-S004', ''),
(25, 1, 14, 17, 'L-FBL--10-01', 'From P4LPE401-5-JB01 to FBL-10-01', ''),
(26, 1, 14, 17, 'L-P4LPE401-5-JB02', 'From P4LPE401-5-JB01 to P4LPE401-5JB02', ''),
(27, 1, 2, 13, 'ZSC/ZSO1-U6412-01-01', 'from ZSC/ZSO-6412-DM-0001 to P4-JBD-D-001', ''),
(28, 1, 2, 13, 'ZSC/ZSO2-U6412-01-01', 'from ZSC/ZSO-6412-DM-0002 to P4-JBD-D-002', ''),
(29, 1, 14, 17, 'L-FSL-10-01', 'From P4LPE401-5JB02 to P4LPE401-5-JB03', ''),
(30, 1, 2, 13, 'ZSC/ZSO3-U6412-01-01', 'from ZSC/ZSO-6412-DM-0003 to P4-JBD-D-005', ''),
(31, 1, 14, 17, 'L-P4LPE401-5-JB-03', 'From P4LPE401-5-JB-02 to P4LPE401-5-JB03', ''),
(32, 1, 2, 13, 'XZY1-U6412-01-01', 'from XY-6412-DMY-0001 to P4-JBD-S-002', ''),
(33, 1, 14, 17, 'L-FSL-10-02', 'From P4PLE401-5-JB03 to FSL-10-02', ''),
(34, 1, 2, 13, 'XZY2-U6412-01-01', 'from XY-6412-DMY-0002 to P4-JBD-S-003', ''),
(35, 1, 14, 18, 'L-P4LPN401-12-JB01', 'From P4-LPN-401 to P4LPN401-12-JB01', ''),
(36, 1, 2, 13, 'XZY2-U6412-01-01', 'from XY-6412-DMY-0003 to P4-JBD-S-006', ''),
(37, 1, 14, 18, 'L-P4LPN401-12-JB03', 'From P4LPN401-12-JB01 to P4LPN401-12-JB03', ''),
(38, 1, 2, 19, 'AT11-PA6412-01-01', 'from AT11-PA6412-01 to P4-JBG-A-001', ''),
(39, 1, 14, 18, 'L-FLL-10-01', 'From P4LPN401-12-JB03 to FLL-10-01', ''),
(40, 1, 2, 19, 'AT12-PA6412-01-01', 'from AT12-PA6412-01 to P4-JBG-A-001', ''),
(41, 1, 14, 18, 'L-P4LPN401-12-JB02', 'From P4LPN401-12-JB03 to P4LPN401-12-JB02', ''),
(42, 1, 14, 18, 'L-FLL-10-02', 'From 4PLN401-12-JB02 to FLL-10-02', ''),
(43, 1, 2, 19, '6412-FM-0001-01', 'from 6412-FM-0001 to P3-JBF-0002', ''),
(44, 1, 14, 18, 'L-P4LPN401-12-JB04', 'From P4LPN401-12-JB-02 to P4LPN01-12-JB04', ''),
(45, 1, 2, 19, 'UA11-PA6412-01-01', 'from UA11-PA6412-01 to P4-JBG-SP-001', ''),
(46, 1, 2, 19, 'UA12-PA6412-01-01', 'from UA12-PA6412-01 to P4-JBG-SP-001', ''),
(47, 1, 14, 18, 'L-FLL-10-03', 'From P4LPN401-12-JB04 to FLL-10-03', ''),
(239, 1, 19, 20, '6412-LTN-101', 'Grounding Pit', ''),
(238, 1, 19, 20, '6412-EW-102', 'Grounding Pit', ''),
(237, 1, 19, 20, '6412-EW-101', 'Grounding Pit', ''),
(236, 1, 22, 18, 'P4LPE401-12-JB04', 'Junction Box Lighting', ''),
(235, 0, 22, 18, 'P4LPE401-12-JB03', 'Junction Box Lighting', ''),
(241, 1, 8, 1, 'PSV4-V6412-01', 'Safety Relief Valve', ''),
(234, 0, 22, 18, 'P4LPE401-12-JB02', 'Junction Box Lighting', ''),
(233, 1, 22, 18, 'P4LPE401-12-JB01', 'Junction Box Lighting', ''),
(232, 1, 22, 17, 'P4LPE401-5-JB03', 'Junchtion Box Lighting', ''),
(57, 1, 9, 3, 'XZV1-V6412-01', 'On/Off Valve (Butterfly)', ''),
(231, 1, 22, 17, 'P4LPE401-5-JB02', 'Junchtion Box Lighting', ''),
(230, 1, 22, 17, 'P4LPE401-5-JB01', 'Junction Box Lighting', ''),
(240, 1, 5, 19, 'AT12-PA612-01', 'Gas Detector', ''),
(108, 1, 73, 1, 'TP-10-01-01', 'RTO Rich Off Gas Vent Header', ''),
(64, 1, 9, 2, 'XZV2-V6412-01', 'On/Off Valve (Butterfly)', ''),
(68, 1, 75, 3, 'PG4-U6412-01', 'Pressure Gauge', ''),
(69, 1, 59, 19, '6412-FM-0001', 'Manual Alarm Call Points (Break Glass)', ''),
(70, 1, 5, 19, 'AT11PA6412-01', 'Hydrocarbon Gas Detector', ''),
(71, 1, 5, 5, 'AT12-PA6412-01', 'Hydrocarbon Gas Detector', ''),
(72, 1, 59, 19, 'UA11-PA6412-01', 'Audible Alarm Horn (EX)', ''),
(74, 1, 3, 19, 'UA12-PA6412-01', 'Flashing Light Flammable (EX)', ''),
(76, 1, 9, 13, 'XZV1-U6412-01', '3-Way Damper', ''),
(83, 1, 9, 13, 'XZV2-U6412-01', '3-Way Daper', ''),
(92, 1, 9, 13, 'XZV3-U6412-01', '3-Way Damper', ''),
(109, 1, 73, 2, 'TP-10-02-01', 'Flare Vent Header', ''),
(110, 1, 73, 2, 'TP-10-02-02', 'Flare Vent Header', ''),
(111, 1, 73, 3, 'TP-10-03-01', 'Off Gas to Burner', ''),
(112, 1, 73, 4, 'TP-15-01-01', 'Instrument Air for RTO KO Drum', ''),
(113, 1, 73, 4, 'TP-15-01-02', 'Instrument Air for RTO Package ', ''),
(114, 1, 73, 4, 'TP-15-01-03', 'Instrument Air line to XVZ2', ''),
(115, 1, 73, 4, 'TP-15-01-04', 'Instrumen Air Line to XVZ3', ''),
(116, 1, 73, 4, 'TP-15-01-05', 'Instrument Air Line to XVZ3', ''),
(117, 1, 73, 8, 'TP-20-01-01', 'Natural Gas for RTO Package', ''),
(118, 1, 73, 9, 'TP-20-02-01', 'Cold Water Supply for RTO Package', ''),
(119, 1, 73, 10, 'TP-20-03-01', 'Cold Water Return for RTO Package', ''),
(120, 1, 73, 12, 'TP-20-04-01', 'Low Pressure N2 for RTO Package', ''),
(121, 1, 73, 13, 'TP-25-01-01', 'RTO waste air vent header', ''),
(122, 1, 73, 23, 'TP-25-02-01', 'RTO waste air vent header-2', ''),
(123, 1, 73, 16, 'TP-25-04-01', 'Waste air to RTO Package', ''),
(242, 1, 14, 1, 'P-M-Test', 'from VSD-M-Test', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_items`
--

CREATE TABLE `tbl_items` (
  `id` int(11) NOT NULL,
  `item_no` int(11) NOT NULL,
  `item_discipline_no` int(11) NOT NULL,
  `item_id` varchar(30) NOT NULL,
  `item_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_items`
--

INSERT INTO `tbl_items` (`id`, `item_no`, `item_discipline_no`, `item_id`, `item_name`) VALUES
(1, 14, 11, 'CABL_LV', 'LV POWER CABLES AND CONTROL CABLES'),
(2, 2, 2, 'CABL_MULTICORE_I', 'MULTICORE INSTRUMENT CABLES'),
(3, 3, 2, 'FIRE_DETECT', 'FIRE DETECTOR'),
(4, 4, 2, 'TRANS', 'TRANSMITER'),
(5, 5, 2, 'GAS_DETECT', 'GAS DETECTOR'),
(6, 6, 2, 'HAND_SWITCH', 'HAND SWITCH'),
(7, 7, 2, 'MARSH_BOX_INST', 'JBs & MARSHALING BOXES'),
(8, 8, 2, 'PSV', 'RELIEV VALVES'),
(9, 9, 2, 'VALV_ON_OFF_PNEU', 'ACTUATED ON/OFF VALVE PNUMATIC TYPE'),
(10, 10, 2, 'SOLENOID_VALV', 'SOLENOID VALVE'),
(11, 11, 2, 'ORIFICE_PLATE', 'ORIFICE PLATE'),
(12, 12, 2, 'LIMIT_SWITCH', 'LIMIT SWITCH'),
(13, 60, 18, 'PA_CENTRAL', 'PA/GA CENTRAL SYSTEM & MARSHALLING CABINET'),
(14, 16, 11, 'CATH_PRO', 'CATHODIC PROTECTION'),
(15, 17, 11, 'CTL_STATION', 'CONTROL STATION'),
(16, 19, 11, 'EARTHING', 'EARTHING SYSTEM'),
(17, 20, 11, 'LIGHTING', 'LIGHTING CIRCUITS'),
(18, 22, 11, 'MARSH_BOX_ELEC', 'JBs & MARSHALING BOXES'),
(19, 23, 11, 'MOTOR_HV', 'MOTORS HV'),
(20, 24, 11, 'MOTOR_LV', 'MOTORS LV'),
(21, 25, 11, 'SOCK_OUT', 'POWER SOCKETS OUTLETS'),
(22, 59, 2, 'PA_BEACON_JB', 'PA/GA FLASHING BEACONS + JB'),
(23, 27, 11, 'TRACE_HAETING', 'TRACE HEATING'),
(24, 29, 12, 'PIG_LAUNCHER', 'PIG LAUNCHER'),
(25, 74, 12, 'PAINTING', 'PAINTING'),
(26, 31, 12, 'SUBSYSTEM_LINES', 'SUBSYSTEM ALL LINE'),
(27, 36, 2, 'ROTAMETER', 'ROTAMETER'),
(28, 35, 2, 'VALV', 'VALVE LEAK TEST'),
(29, 34, 12, 'VESEL', 'PREASSURE VESEL'),
(30, 37, 2, 'PRESS_SWITCH', 'PRESSURE SWITCH'),
(31, 38, 12, 'TANK', 'STORAGE TANKS'),
(32, 39, 1, 'COMP_CENT', 'CENTRIFUGAL COMPRESSOR'),
(33, 40, 1, 'EXCH_SHELL', 'HEAT EXCHANGERS (SHEEL & TUBE)'),
(34, 41, 1, 'EXCH_PLATE', 'PLATE HEAT EXCHANGER'),
(35, 42, 1, 'STRU', 'STRUCTURE'),
(36, 43, 1, 'COMP_REC', 'RECIPROCATING COMPRESSOR'),
(37, 44, 1, 'COUPLING', 'HYDRAULIC COUPLING'),
(38, 45, 1, 'PUMP_CENT', 'CENTRIFUGAL PUMPS'),
(39, 46, 1, 'CRANE_GANTRY', 'ELECTRYCAL GANTRY CRANE'),
(40, 47, 1, 'CRANE', 'CRANE AND PEDESTAL'),
(41, 48, 1, 'FILTER', 'AIR FILTERS/FLAME TRAPS'),
(42, 49, 1, 'LUBE_OIL_PECKAGE', 'LUBE SEAL OIL PACKAGE'),
(43, 50, 1, 'MEC_GENERAL', 'MECHANICAL GENERAL PURPOSE (TEST)'),
(44, 51, 1, 'PACKAGE', 'PACKAGE/ELECTRICAL'),
(45, 52, 1, 'PADEYES', 'PADEYES'),
(46, 53, 1, 'PEDESTAL', 'PEDESTAL CRANE SYSTEMS'),
(47, 54, 1, 'PUMP_CENT_VERT', 'VERTICAL CENTRIFUGAL PUMPS'),
(48, 55, 1, 'PUMP_MET', 'METERING PUMPS'),
(49, 56, 1, 'PUMP_REC', 'RECIPROCATING PUMPS'),
(50, 57, 1, 'PUMP_ROT', 'ROTARY PUMPS'),
(51, 58, 1, 'PUMP_SUB', 'ELECTRO SUBMERSIBLE PUMPS'),
(52, 61, 2, 'PA_LOADSPEAKER_JB', 'PA/GA LOUDSPEAKERS (25,8,6W) +JB'),
(53, 62, 17, 'CO2_SYST', 'CO2 DELUGE SYSTEM'),
(54, 63, 17, 'DELUGE_SYST', 'WATER DELUGE SYSTEM'),
(55, 64, 17, 'FIRE_FIGHT_EQPT', 'PORTABLE FIRE FIGHTING EQUIPMENT'),
(56, 65, 17, 'FIRST_AID_EQPT', 'FIRST AID EQUIPMENT'),
(57, 66, 17, 'FW_MONITOR', 'FIREWATER MONITOR'),
(58, 67, 17, 'HOSE_REELS', 'HOSE REELS'),
(59, 68, 17, 'HYDRANT_FIRE_EQPT', 'HYDRANTS/CABINETS/EQUIPMENT'),
(60, 69, 15, 'LIFE_RAFTS', 'LIFE RAFTS'),
(61, 70, 17, 'LIFEBOAT_CRADLE', 'LIFEBOAT & CRADLE'),
(62, 71, 17, 'SURVIVAL_EQPT', 'SURVIVAL EQUIPMENT'),
(63, 72, 11, 'CTL_PAN', 'Control Panel'),
(64, 73, 12, 'PIPING', 'PIPEWORK'),
(65, 75, 2, 'Gauge', 'Local Gauge');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_locations`
--

CREATE TABLE `tbl_locations` (
  `id` int(11) NOT NULL,
  `location_project_no` int(11) NOT NULL,
  `location_id` varchar(30) NOT NULL,
  `location_name` varchar(200) NOT NULL,
  `location_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_locations`
--

INSERT INTO `tbl_locations` (`id`, `location_project_no`, `location_id`, `location_name`, `location_status`) VALUES
(3, 1, 's', 's', 1),
(4, 1, 's', 's', 1),
(5, 1, '23', 'ffs', 1),
(6, 1, '12', 'asa', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_locations_log`
--

CREATE TABLE `tbl_locations_log` (
  `id` int(11) NOT NULL,
  `id_location` int(11) NOT NULL,
  `location_project_no` int(11) NOT NULL,
  `location_id` varchar(30) NOT NULL,
  `location_name` varchar(200) NOT NULL,
  `id_users` int(11) NOT NULL,
  `note` enum('add','update','delete','restore') NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_locations_log`
--

INSERT INTO `tbl_locations_log` (`id`, `id_location`, `location_project_no`, `location_id`, `location_name`, `id_users`, `note`, `datetime`) VALUES
(10, 5, 1, '23', 'ffs', 12, 'delete', '2019-12-28 09:14:23'),
(11, 4, 1, 's', 's', 12, 'delete', '2019-12-28 09:14:23'),
(12, 3, 1, 's', 's', 12, 'delete', '2019-12-28 09:14:23'),
(13, 6, 1, '12', 'asa', 12, 'add', '2019-12-28 09:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_macros`
--

CREATE TABLE `tbl_macros` (
  `macro_id` bigint(20) NOT NULL,
  `macro_form_no` int(11) NOT NULL,
  `macro_x` int(11) NOT NULL,
  `macro_y` int(11) NOT NULL,
  `macro_cell` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_macros`
--

INSERT INTO `tbl_macros` (`macro_id`, `macro_form_no`, `macro_x`, `macro_y`, `macro_cell`) VALUES
(1, 6, 1, 1, 'MECHANICAL'),
(2, 6, 2, 1, 'PRECOMMISSIONING CHECK LIST'),
(3, 6, 4, 1, 'CENTRIFUGAL COMPRESSOR'),
(4, 6, 7, 1, 'FORM                  :'),
(5, 6, 7, 5, 'C-MX-36'),
(6, 6, 7, 13, 'TUG NUMBER'),
(7, 6, 8, 1, 'LOCATION          :'),
(8, 6, 9, 1, 'SUB-SYSTEM    :'),
(9, 6, 10, 1, 'EQUIPMENT     Nº   :'),
(10, 6, 12, 1, 'ITEM'),
(11, 6, 12, 2, 'CHECK LIST '),
(12, 6, 13, 1, '1'),
(13, 6, 13, 2, 'Check that the nameplate details are complete and correct.\n'),
(14, 6, 14, 1, '2'),
(15, 6, 14, 2, 'Check the location, elevation, orientation and that the compressor is level.\n'),
(16, 6, 15, 1, '3'),
(17, 6, 15, 2, 'Check that the compressor holding down arrangements are correct.\nenergized.'),
(18, 6, 16, 1, '4'),
(19, 6, 16, 2, 'Check for any installation damage.\ncorrect bolting,'),
(20, 6, 17, 1, '5'),
(21, 6, 17, 2, 'Check the compressor and the auxillaries for cleanliness.\n'),
(22, 6, 18, 1, '6'),
(23, 6, 18, 2, 'Check all the platforming and ladders are installed as per approved drawings.\n'),
(24, 6, 19, 1, '7'),
(25, 6, 19, 2, 'Check all of the auxillary items are supplied and they have been correctly installed.\n'),
(26, 6, 20, 1, '8'),
(27, 6, 20, 2, 'Check that the suction strainers have been installed.\nto specifications.'),
(28, 6, 21, 1, '9'),
(29, 6, 21, 2, 'Check the painting visually for damage.\n'),
(30, 6, 22, 1, '10'),
(31, 6, 22, 2, 'Check the equipment is bonded as per drawings and specifications.\n'),
(32, 6, 23, 1, '11'),
(33, 6, 23, 2, 'Check that with unbolted flanges on the suction and discharge piping, that the corresponding pipe flanges on the package align with them correctly. \n'),
(34, 6, 24, 1, '12'),
(35, 6, 24, 2, 'Check that the suction, discharge and utility pipe-supports are in accordance with the design drawings.\n'),
(36, 6, 25, 1, '13'),
(37, 6, 25, 2, 'Check that there is adequate space available to be able to withdraw the internals using suitable lifting gear.\n'),
(38, 6, 26, 1, '14'),
(39, 6, 26, 2, 'Check that both the coupling and coupling guards have been installed.\nprotection diagram.'),
(40, 6, 27, 1, '15'),
(41, 6, 27, 2, 'Check preservation is carried out as per approved procedure.\n'),
(42, 6, 28, 1, '16'),
(43, 6, 28, 2, 'Produce a set of marked-up drawings which are as per installation.\n'),
(44, 6, 29, 1, '17'),
(45, 6, 29, 2, 'Produce a defects list to be issued in the Punch List.\n'),
(46, 6, 30, 1, 'REMARKS:'),
(47, 6, 32, 1, 'DESCRIPTION'),
(48, 6, 32, 5, 'TEST/INSPECTION PERFORMED BY'),
(49, 6, 32, 9, 'TEST/INSPECTION                       CHECKED BY                  CONTRACTOR'),
(50, 6, 32, 14, 'TEST/INSPECTION                       APPROVED BY                  COMPANY'),
(51, 6, 33, 1, 'Signature'),
(52, 6, 34, 1, 'Print name'),
(53, 6, 35, 1, 'Date'),
(54, 1, 1, 1, 'MECHANICAL'),
(55, 1, 2, 1, 'PRECOMMISSIONING CHECK LIST'),
(56, 1, 4, 1, 'CENTRIFUGAL COMPRESSOR'),
(57, 1, 7, 1, 'FORM                  :'),
(58, 1, 7, 5, 'C-MX-36'),
(59, 1, 7, 13, 'TUG NUMBER'),
(60, 1, 8, 1, 'LOCATION          :'),
(61, 1, 9, 1, 'SUB-SYSTEM    :'),
(62, 1, 10, 1, 'EQUIPMENT     Nº   :'),
(63, 1, 12, 1, 'ITEM'),
(64, 1, 12, 2, 'CHECK LIST '),
(65, 1, 13, 1, '1'),
(66, 1, 13, 2, 'Check that the nameplate details are complete and correct.\n'),
(67, 1, 14, 1, '2'),
(68, 1, 14, 2, 'Check the location, elevation, orientation and that the compressor is level.\n'),
(69, 1, 15, 1, '3'),
(70, 1, 15, 2, 'Check that the compressor holding down arrangements are correct.\nenergized.'),
(71, 1, 16, 1, '4'),
(72, 1, 16, 2, 'Check for any installation damage.\ncorrect bolting,'),
(73, 1, 17, 1, '5'),
(74, 1, 17, 2, 'Check the compressor and the auxillaries for cleanliness.\n'),
(75, 1, 18, 1, '6'),
(76, 1, 18, 2, 'Check all the platforming and ladders are installed as per approved drawings.\n'),
(77, 1, 19, 1, '7'),
(78, 1, 19, 2, 'Check all of the auxillary items are supplied and they have been correctly installed.\n'),
(79, 1, 20, 1, '8'),
(80, 1, 20, 2, 'Check that the suction strainers have been installed.\nto specifications.'),
(81, 1, 21, 1, '9'),
(82, 1, 21, 2, 'Check the painting visually for damage.\n'),
(83, 1, 22, 1, '10'),
(84, 1, 22, 2, 'Check the equipment is bonded as per drawings and specifications.\n'),
(85, 1, 23, 1, '11'),
(86, 1, 23, 2, 'Check that with unbolted flanges on the suction and discharge piping, that the corresponding pipe flanges on the package align with them correctly. \n'),
(87, 1, 24, 1, '12'),
(88, 1, 24, 2, 'Check that the suction, discharge and utility pipe-supports are in accordance with the design drawings.\n'),
(89, 1, 25, 1, '13'),
(90, 1, 25, 2, 'Check that there is adequate space available to be able to withdraw the internals using suitable lifting gear.\n'),
(91, 1, 26, 1, '14'),
(92, 1, 26, 2, 'Check that both the coupling and coupling guards have been installed.\nprotection diagram.'),
(93, 1, 27, 1, '15'),
(94, 1, 27, 2, 'Check preservation is carried out as per approved procedure.\n'),
(95, 1, 28, 1, '16'),
(96, 1, 28, 2, 'Produce a set of marked-up drawings which are as per installation.\n'),
(97, 1, 29, 1, '17'),
(98, 1, 29, 2, 'Produce a defects list to be issued in the Punch List.\n'),
(99, 1, 30, 1, '   REMARKS:'),
(100, 1, 32, 1, 'DESCRIPTION'),
(101, 1, 32, 5, 'TEST/INSPECTION PERFORMED BY'),
(102, 1, 32, 9, 'TEST/INSPECTION                       CHECKED BY                  CONTRACTOR'),
(103, 1, 32, 14, 'TEST/INSPECTION                       APPROVED BY                  COMPANY'),
(104, 1, 33, 1, 'Signature'),
(105, 1, 34, 1, 'Print name'),
(106, 1, 35, 1, 'Date');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id_menu` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `is_main_menu` int(11) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL COMMENT 'y=yes,n=no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id_menu`, `title`, `url`, `icon`, `is_main_menu`, `is_aktif`) VALUES
(1, 'setting', '#', 'icon-cog', 0, 'y'),
(3, 'user level setup', 'userlevel', 'icon-smile', 1, 'y'),
(23, 'CRUD Generator', '../denzoe/index.php', 'icon-qrcode', 1, 'y'),
(27, 'phpmyadmin', '../../phpmyadmin/index.php', 'icon-sitemap', 1, 'y'),
(32, 'menu setup', 'kelolamenu', 'icon-laptop', 1, 'y'),
(40, 'user setup', 'user', 'icon-github-alt', 1, 'y'),
(107, 'company setup', 'perusahaan', 'icon-building', 1, 'y'),
(108, 'Home', 'home', 'icon-home', 0, 'y'),
(109, 'projek setup', 'projek', 'icon-puzzle-piece', 0, 'y'),
(110, 'type', 'TYPE', 'icon-coffee', 0, 'y'),
(111, 'module', 'module', 'icon-align-justify', 0, 'y'),
(112, 'reporting', 'reporting', 'icon-beaker', 0, 'y'),
(113, 'projects', 'projects', 'icon-gamepad', 109, 'y'),
(114, 'systems', 'systems', 'icon-puzzle-piece', 109, 'y'),
(115, 'subsystems', 'subs', 'icon-asterisk', 109, 'y'),
(116, 'disciplines', 'disciplines', 'icon-user-md', 109, 'y'),
(117, 'locations', 'locations', 'icon-flag-alt', 109, 'y'),
(118, 'import data', 'import', 'icon-unlink', 109, 'y'),
(120, 'item type', 'items', 'icon-eye-open', 110, 'y'),
(121, 'form template', 'templates', 'icon-file-alt', 110, 'y'),
(122, 'assosiate', 'assosiate', 'icon-lightbulb', 110, 'y'),
(123, 'equipment item', 'equipment_item', 'icon-folder-open-alt', 111, 'y'),
(124, 'task sheet', 'tasksheet', 'icon-folder-close-alt', 111, 'y'),
(125, 'punch list', 'punchlists', 'icon-hdd', 111, 'y'),
(126, 'precom report', 'precom_report', 'icon-star', 112, 'y'),
(127, 'comm report', 'comm_report', 'icon-star-half-empty', 112, 'y'),
(128, 'status index', 'status_index', 'icon-star-half-full (alias)', 112, 'y'),
(129, 'punch list reg', 'punch_list_reg', 'icon-location-arrow', 112, 'y'),
(130, 'system/subsystem list (future)', 'system/subsystem_list_(future)', 'icon-code-fork', 112, 'y'),
(131, 'test package(future)', 'test_package(future)', 'icon-edit-sign', 112, 'y'),
(132, 'dossier precom(future)', 'dossier_precom(future)', 'icon-check-minus', 112, 'y'),
(133, 'dossier com(future)', 'dossier_com(future)', 'icon-ellipsis-horizontal', 112, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_perusahaan`
--

CREATE TABLE `tbl_perusahaan` (
  `id_perusahaan` int(11) NOT NULL,
  `kode` varchar(6) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `biodata` text NOT NULL,
  `no_izin` varchar(50) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `no_pajak` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(250) NOT NULL,
  `password_email` varchar(250) NOT NULL,
  `tgl_berdiri` date NOT NULL,
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_perusahaan`
--

INSERT INTO `tbl_perusahaan` (`id_perusahaan`, `kode`, `nama_perusahaan`, `biodata`, `no_izin`, `no_hp`, `no_pajak`, `alamat`, `email`, `password_email`, `tgl_berdiri`, `images`) VALUES
(1, 'PR0001', 'COMMISOF', 'Cilamaya PLTUG', '909897f7f8nmdhg7', '09087765674', '88494769', 'Jln. Raya Cilamaya', 'dedenalsaian@gmail.com', 'dedenalsaianok', '2019-10-03', 'avatar1.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_progress2`
--

CREATE TABLE `tbl_progress2` (
  `Id` int(11) NOT NULL,
  `table_id` varchar(40) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_progress2`
--

INSERT INTO `tbl_progress2` (`Id`, `table_id`, `keterangan`, `table`) VALUES
(1, 'system_id', 'System', 'system'),
(2, 'sub_id', 'Sub-System', 'sub'),
(3, 'discipline_id', 'Discipline', 'discipline');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_projects`
--

CREATE TABLE `tbl_projects` (
  `id` int(11) NOT NULL,
  `project_id` varchar(30) NOT NULL,
  `project_name` varchar(200) NOT NULL,
  `project_desc` text NOT NULL,
  `project_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_projects`
--

INSERT INTO `tbl_projects` (`id`, `project_id`, `project_name`, `project_desc`, `project_status`) VALUES
(1, 'RTO', 'RTO - U3 PROJECT', 'Systhetic Rubber Indonesia (SRI) U3 Project', 0),
(2, 'JW1', 'Jawa 1 Power', 'Pertamina CGPP Jawa 1 Power', 1),
(6, 'RT2', 'RTT', 'nnnnn kdjfkd dfsjdjf', 1),
(7, '1', '1', '1', 1),
(8, '2', '2', '2', 1),
(9, '1', '1', '1\r\n\r\n1', 1),
(10, '2', 'Project 2', 'dhsdsj djshdjhs dsdjsh', 0),
(11, '1', 'pembuatan software', 'ddssg sgsdf', 0),
(12, 'rt2', 'dsds', 'dsds', 0),
(13, '21', 'dsd', 'fgfggsd', 0),
(14, 'k', 'k', 'k', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_projects_log`
--

CREATE TABLE `tbl_projects_log` (
  `id` int(11) NOT NULL,
  `id_project` int(11) NOT NULL,
  `project_id` varchar(30) NOT NULL,
  `project_name` varchar(200) NOT NULL,
  `project_desc` text NOT NULL,
  `id_users` int(11) NOT NULL,
  `note` enum('add','update','delete','restore') NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_projects_log`
--

INSERT INTO `tbl_projects_log` (`id`, `id_project`, `project_id`, `project_name`, `project_desc`, `id_users`, `note`, `datetime`) VALUES
(1, 6, 'RT2', 'RTT', 'kdjfkd dfsjdjf', 12, 'add', '2019-12-27 10:29:18'),
(2, 6, 'RT2-2', 'RTT OK', 'nnnnn kdjfkd dfsjdjf', 12, 'update', '2019-12-27 10:32:00'),
(3, 6, 'RT2', 'RTT', 'nnnnn kdjfkd dfsjdjf', 12, 'update', '2019-12-27 16:34:43'),
(4, 6, 'RT2', 'RTT', 'nnnnn kdjfkd dfsjdjf', 12, 'delete', '2019-12-27 16:42:38'),
(5, 2, 'JW1', 'Jawa 1 Power', 'Pertamina CGPP Jawa 1 Power', 12, 'delete', '2019-12-28 03:18:44'),
(6, 7, '1', '1', '1', 12, 'add', '2019-12-28 09:21:13'),
(7, 8, '2', '2', '2', 12, 'add', '2019-12-28 09:21:20'),
(8, 8, '2', '2', '2', 12, 'delete', '2019-12-28 09:21:47'),
(9, 7, '1', '1', '1', 12, 'delete', '2019-12-28 09:21:47'),
(10, 9, '1', '1', '1\r\n\r\n1', 12, 'add', '2019-12-28 11:16:28'),
(11, 9, '1', '1', '1\r\n\r\n1', 12, 'delete', '2019-12-28 11:16:40'),
(12, 10, '2', 'Project 2', 'dhsdsj djshdjhs dsdjsh', 12, 'add', '2019-12-28 13:47:19'),
(13, 11, '1', 'pembuatan software', 'ddssg sgsdf', 12, 'add', '2019-12-30 09:12:19'),
(14, 12, 'rt2', 'dsds', 'dsds', 12, 'add', '2019-12-30 09:14:18'),
(15, 13, '21', 'dsd', 'fgfggsd', 12, 'add', '2019-12-30 10:08:37'),
(16, 14, 'k', 'k', 'k', 12, 'add', '2020-01-04 21:34:34'),
(17, 14, 'k', 'k', 'k', 12, 'delete', '2020-01-04 21:35:25'),
(18, 13, '21', 'dsd', 'fgfggsd', 12, 'update', '2020-01-04 22:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_punchlist`
--

CREATE TABLE `tbl_punchlist` (
  `id` int(11) NOT NULL,
  `punch_id` char(8) NOT NULL DEFAULT '0',
  `punch_location_no` int(11) NOT NULL,
  `punch_sub_no` int(11) NOT NULL,
  `punch_discipline_no` varchar(60) DEFAULT '',
  `punch_itemNo` varchar(100) DEFAULT NULL,
  `punch_desc` text NOT NULL,
  `punch_category` char(1) NOT NULL,
  `originator_ctr` varchar(30) DEFAULT NULL,
  `originator_cpy` varchar(50) DEFAULT NULL,
  `originator_date` date DEFAULT NULL,
  `verified_ctr` varchar(60) DEFAULT NULL,
  `verified_cpy` varchar(60) DEFAULT NULL,
  `verified_date` date DEFAULT NULL,
  `punch_status` varchar(10) NOT NULL DEFAULT '0',
  `punch_date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_punchlist`
--

INSERT INTO `tbl_punchlist` (`id`, `punch_id`, `punch_location_no`, `punch_sub_no`, `punch_discipline_no`, `punch_itemNo`, `punch_desc`, `punch_category`, `originator_ctr`, `originator_cpy`, `originator_date`, `verified_ctr`, `verified_cpy`, `verified_date`, `punch_status`, `punch_date`) VALUES
(1, 'PL000001', 1, 4, '2', 'Test 4', 'Test 4', 'C', 'TEST 4', 'TEST 4', '2019-06-12', 'TEST 4', '', '2019-06-29', 'Done', '0000-00-00'),
(2, 'PL000003', 1, 12, '13', 'Test 3', 'Test punch list 3', 'B', 'test 3', 'test 3', '2019-06-27', 'test 3', '', '0000-00-00', 'Done', '0000-00-00'),
(3, 'PL000002', 1, 4, '12', 'Line 2', 'Spade to be installed ', 'B', 'Andi', 'Andre', '2019-05-09', 'Budi', 'Andre', '2019-07-01', 'Done', '2019-07-02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id_setting` int(11) NOT NULL,
  `nama_setting` varchar(50) NOT NULL,
  `value` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id_setting`, `nama_setting`, `value`) VALUES
(1, 'Tampil Menu', 'tidak');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subs`
--

CREATE TABLE `tbl_subs` (
  `id` int(11) NOT NULL,
  `sub_system_no` int(11) NOT NULL,
  `sub_id` varchar(30) NOT NULL,
  `sub_name` varchar(200) NOT NULL,
  `sub_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subs`
--

INSERT INTO `tbl_subs` (`id`, `sub_system_no`, `sub_id`, `sub_name`, `sub_status`) VALUES
(1, 1, '10-01', 'RTO Rich Off Gas Vent Header', 0),
(2, 1, '10-02', 'Flare Vent Header', 0),
(3, 1, '10-03', 'Off Gas to Burner', 0),
(4, 2, '15-01', 'Instrument Air', 0),
(5, 3, '20-01', 'Natural Gas for RTO Package', 0),
(6, 3, '20-02', 'Cold Water Supply for RTO', 0),
(7, 3, '20-03', 'Cold Water Return for RTO Package', 0),
(8, 3, '20-05', 'RTO Package', 0),
(9, 3, '20-04', 'Low Pressure N2 for RTO Package', 0),
(10, 4, '25-01', 'Waste Air to RTO package', 0),
(11, 5, '30-01', 'Emergency Lighting System', 0),
(12, 5, '30-02', 'Normal Lighting System', 0),
(13, 6, '35-01', 'Installation and Testing Instrument at RTO Package', 0),
(14, 5, '30-03', 'Lightening and Earting system', 0),
(15, 5, '30-4', 'test sub 30-4', 0),
(17, 1, '9', 'fghyy', 1),
(18, 12, '1', '1', 0),
(19, 13, '1', 'fsfs', 0),
(20, 13, 'f', 'fd', 0),
(21, 13, 'f', 'fd', 0),
(22, 1, '1', '1', 1),
(23, 1, '1', '1', 1),
(24, 1, '1', '1', 1),
(25, 1, '1', '1', 1),
(26, 1, '2', '2', 1),
(27, 1, '2', '2', 1),
(28, 2, '12', 'ddsds', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subs_log`
--

CREATE TABLE `tbl_subs_log` (
  `id` int(11) NOT NULL,
  `id_sub` int(11) NOT NULL,
  `sub_system_no` int(11) NOT NULL,
  `sub_id` varchar(30) NOT NULL,
  `sub_name` varchar(200) NOT NULL,
  `id_users` int(11) NOT NULL,
  `note` enum('add','update','delete','restore') NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subs_log`
--

INSERT INTO `tbl_subs_log` (`id`, `id_sub`, `sub_system_no`, `sub_id`, `sub_name`, `id_users`, `note`, `datetime`) VALUES
(1, 18, 12, '1', '1', 12, 'add', '2019-12-28 03:12:29'),
(2, 19, 13, '1', 'fsfs', 12, 'add', '2019-12-28 03:17:49'),
(3, 20, 13, 'f', 'fd', 12, 'add', '2019-12-28 03:18:01'),
(4, 21, 13, 'f', 'fd', 12, 'add', '2019-12-28 03:18:11'),
(5, 22, 1, '1', '1', 12, 'add', '2019-12-28 09:26:20'),
(6, 23, 1, '1', '1', 12, 'add', '2019-12-28 09:26:27'),
(7, 24, 1, '1', '1', 12, 'add', '2019-12-28 09:27:02'),
(8, 25, 1, '1', '1', 12, 'add', '2019-12-28 09:27:09'),
(9, 25, 1, '1', '1', 12, 'delete', '2019-12-28 09:27:12'),
(10, 24, 1, '1', '1', 12, 'delete', '2019-12-28 09:27:12'),
(11, 22, 1, '1', '1', 12, 'delete', '2019-12-28 09:27:16'),
(12, 26, 1, '2', '2', 12, 'add', '2019-12-28 09:27:25'),
(13, 27, 1, '2', '2', 12, 'add', '2019-12-28 09:27:31'),
(14, 27, 1, '2', '2', 12, 'delete', '2019-12-28 09:27:34'),
(15, 26, 1, '2', '2', 12, 'delete', '2019-12-28 09:27:34'),
(16, 28, 2, '12', 'ddsds', 12, 'add', '2019-12-28 13:35:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_systems`
--

CREATE TABLE `tbl_systems` (
  `id` int(11) NOT NULL,
  `system_project_no` int(11) NOT NULL,
  `system_id` varchar(30) NOT NULL,
  `system_name` varchar(200) NOT NULL,
  `system_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_systems`
--

INSERT INTO `tbl_systems` (`id`, `system_project_no`, `system_id`, `system_name`, `system_status`) VALUES
(1, 1, '10', 'Off Gas KO Drum', 0),
(2, 1, '15', 'Instrument Air System', 0),
(3, 1, '20', 'Off Gas and Waste Air Treatment', 0),
(4, 1, '25', 'RTO Waste Header', 0),
(5, 1, '30', 'Lighting System', 0),
(6, 1, '35', 'Fire & Gas System', 0),
(7, 1, '50', 'test 2', 1),
(8, 1, '40', 'test', 1),
(11, 1, '20', 'komputer 1', 1),
(12, 1, '1', 'nnn', 1),
(13, 2, '1', 'dsds', 0),
(14, 2, '222', 'fdfd', 0),
(15, 1, '1', '1', 1),
(16, 1, '1', '1', 1),
(17, 10, '1', 'sada', 0),
(18, 10, '2', '2', 0),
(19, 1, 'dg', 'fg', 0),
(20, 11, 'dsds', 'dsd', 0),
(21, 1, '1', '1', 0),
(22, 1, '1', '1', 0),
(23, 1, '222', '2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_systems_log`
--

CREATE TABLE `tbl_systems_log` (
  `id` int(11) NOT NULL,
  `id_system` int(11) NOT NULL,
  `system_project_no` int(11) NOT NULL,
  `system_id` varchar(30) NOT NULL,
  `system_name` varchar(200) NOT NULL,
  `id_users` int(11) NOT NULL,
  `note` enum('add','update','delete','restore') NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_systems_log`
--

INSERT INTO `tbl_systems_log` (`id`, `id_system`, `system_project_no`, `system_id`, `system_name`, `id_users`, `note`, `datetime`) VALUES
(1, 11, 1, '20', 'komputer', 12, 'add', '2019-12-27 17:51:38'),
(2, 11, 1, '20', 'komputer 1', 12, 'update', '2019-12-27 17:53:10'),
(3, 11, 1, '20', 'komputer 1', 12, 'delete', '2019-12-27 18:00:58'),
(4, 12, 1, '1', 'nnn', 12, 'add', '2019-12-28 03:11:39'),
(5, 12, 1, '1', 'nnn', 12, 'delete', '2019-12-28 03:12:57'),
(6, 13, 2, '1', 'dsds', 12, 'add', '2019-12-28 03:17:22'),
(7, 14, 2, '222', 'fdfd', 12, 'add', '2019-12-28 03:17:31'),
(8, 15, 1, '1', '1', 12, 'add', '2019-12-28 09:24:15'),
(9, 16, 1, '1', '1', 12, 'add', '2019-12-28 09:24:19'),
(10, 16, 1, '1', '1', 12, 'delete', '2019-12-28 09:24:23'),
(11, 15, 1, '1', '1', 12, 'delete', '2019-12-28 09:24:23'),
(12, 8, 1, '40', 'test', 12, 'delete', '2019-12-28 09:31:05'),
(13, 7, 1, '50', 'test 2', 12, 'delete', '2019-12-28 09:31:05'),
(14, 17, 10, '1', 'sada', 12, 'add', '2020-01-04 22:44:58'),
(15, 18, 10, '2', '2', 12, 'add', '2020-01-04 22:46:26'),
(16, 19, 1, 'dg', 'fg', 12, 'add', '2020-01-04 22:46:51'),
(17, 20, 11, 'dsds', 'dsd', 12, 'add', '2020-01-05 08:44:37'),
(18, 18, 10, '2', '2', 12, 'update', '2020-01-05 09:08:23'),
(19, 21, 1, '1', '1', 12, 'add', '2020-01-06 16:30:02'),
(20, 22, 1, '1', '1', 12, 'add', '2020-01-06 16:31:12'),
(21, 23, 1, '222', '2', 12, 'add', '2020-01-06 16:33:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_templates`
--

CREATE TABLE `tbl_templates` (
  `id` int(11) NOT NULL,
  `tmp_no` int(11) NOT NULL,
  `tmp_id` varchar(20) DEFAULT NULL,
  `tmp_discipline_no` int(11) NOT NULL,
  `tmp_name` varchar(100) NOT NULL,
  `tmp_name2` varchar(200) NOT NULL,
  `tmp_type` tinyint(1) NOT NULL,
  `tmp_type2` tinyint(1) NOT NULL,
  `tmp_title1` varchar(255) NOT NULL,
  `tmp_title2` varchar(255) NOT NULL,
  `tmp_title3` varchar(255) NOT NULL,
  `tmp_title4` varchar(255) NOT NULL,
  `tmp_remark` tinyint(1) NOT NULL DEFAULT '0',
  `tmp_status` tinyint(3) NOT NULL DEFAULT '0',
  `tmp_na` tinyint(1) NOT NULL DEFAULT '0',
  `tmp_ref` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_templates`
--

INSERT INTO `tbl_templates` (`id`, `tmp_no`, `tmp_id`, `tmp_discipline_no`, `tmp_name`, `tmp_name2`, `tmp_type`, `tmp_type2`, `tmp_title1`, `tmp_title2`, `tmp_title3`, `tmp_title4`, `tmp_remark`, `tmp_status`, `tmp_na`, `tmp_ref`) VALUES
(1, 17, 'EC-02B', 11, 'EC-02B', '', 1, 0, 'ELECTRICAL', 'PRECOMMISSIONING CHECK LIST', 'H V SWITCHBOARD/MCC', '', 1, 0, 1, 1),
(2, 18, 'EC-02A', 11, 'EC-02A', '', 1, 0, 'ELECTRICAL', 'PRECOMMISSIONING CHECK LIST', 'L V SWITCHBOARD/MCC', '', 1, 0, 0, 0),
(3, 19, 'EC-03B', 11, 'EC-03B', '', 1, 0, 'ELECTRICAL', 'PRECOMMISSIONING CHECK LIST', 'H V CABLES', '', 1, 0, 0, 0),
(4, 20, 'EC-03A', 11, 'EC-03A', '', 1, 0, 'ELECTRICAL', 'PRECOMMISSIONING CHECK LIST', 'L V POWER CABLES', 'CONTROL CABLES', 1, 0, 0, 1),
(5, 21, 'CEX10', 11, 'C-EX-10', '', 1, 0, 'ELECTRICAL', 'PRECOMMISSIONING CHECK LIST', 'MULTICORE INSTRUMENT CABLES', '', 1, 1, 0, 1),
(6, 22, 'CEX12', 11, 'C-EX-12', '', 1, 0, 'ELECTRICAL', 'PRECOMMISSIONING CHECK LIST', 'HV MOTOR', '', 1, 0, 0, 1),
(7, 23, 'CEX13', 11, 'C-EX-13', '', 1, 0, 'ELECTRICAL', 'PRECOMMISSIONING CHECK LIST', 'L V  MOTOR', '', 1, 0, 0, 1),
(8, 24, 'CEX15', 11, 'C-EX-15', '', 1, 0, 'ELECTRICAL', 'PRECOMMISSIONING CHECK LIST', 'LV DISTRIBUTION BOARD /', 'CONTROL PANEL / CONSOLE', 1, 0, 0, 1),
(9, 25, 'CEX18', 11, 'C-EX-18', '', 1, 0, 'ELECTRICAL', 'PRECOMMISSIONING CHECK LIST', 'LIGHTING CIRCUITS', '', 1, 1, 0, 1),
(10, 26, 'CEX19', 11, 'C-EX-19', '', 1, 0, 'ELECTRICAL', 'PRECOMMISSIONING CHECK LIST', 'POWER SOCKET OUTLETS', '', 1, 0, 0, 1),
(11, 27, 'CEX20', 11, 'C-EX-20', '', 1, 0, 'ELECTRICAL', 'PRECOMMISSIONING CHECK LIST', 'ELECTRICAL HEATER', '', 1, 0, 0, 1),
(12, 28, 'CEX23', 11, 'C-EX-23', '', 1, 0, 'ELECTRICAL', 'PRECOMMISSIONING CHECK LIST', 'CONTROL STATION', '', 1, 1, 0, 1),
(13, 29, 'EC10A', 11, 'EC-10A', '', 1, 0, 'ELECTRICAL', 'PRECOMMISSIONING CHECK LIST', 'EARTHING SYSTEM', '', 1, 1, 0, 1),
(14, 31, 'ET-02A', 11, 'ET-02A', '', 2, 1, 'ELECTRICAL', 'PRECOMMISSIONING TEST SHEET', 'SWITCHBOARD/MCC', '', 1, 1, 1, 1),
(15, 32, 'ET-02B', 11, 'ET-02B', '', 2, 1, 'ELECTRICAL', 'PRECOMMISSIONING TEST SHEET', 'LV SWITCHBOARD/MCC', '', 1, 0, 1, 1),
(16, 33, 'TEX08', 11, 'T-EX-08', '', 2, 1, 'ELECTRICAL', 'PRECOMMISSIONING TEST SHEET', 'HV CABLE', '', 1, 1, 1, 0),
(17, 34, 'ET-03A', 11, 'ET-03A', '', 2, 1, 'ELECTRICAL', 'PRECOMMISSIONING TEST SHEET', 'L.V. POWER CABLES', '', 1, 0, 1, 0),
(18, 35, 'ET-04A', 11, 'ET-04A', '', 2, 1, 'ELECTRICAL', 'PRECOMMISSIONING TEST SHEET', 'CONTROL CABLES', '', 1, 0, 0, 0),
(19, 36, 'TEX12', 11, 'T-EX-12', '', 2, 1, 'ELECTRICAL', 'PRECOMMISSIONING TEST SHEET', 'H.V. MOTOR', '', 1, 0, 1, 1),
(20, 37, 'ET-14A', 11, 'ET-14A', '', 2, 1, 'ELECTRICAL', 'PRECOMMISSIONING TEST SHEET', 'L.V. MOTOR', '', 1, 0, 1, 1),
(21, 38, 'ET-05A', 11, 'ET-05A', '', 2, 1, 'ELECTRICAL', 'PRECOMMISSIONING TEST SHEET', 'DISTRIBUTION BOARD', 'CONTROL PANEL/CONSOLE', 1, 0, 1, 1),
(22, 39, 'ET-09A', 11, 'ET-09A', '', 2, 1, 'ELECTRICAL', 'PRECOMMISSIONING TEST SHEET', 'LIGHTING CIRCUITS AND SOCKET OUTLET', 'CONVENIENCE SOCKETS OUTLETS CIRCUITS', 1, 0, 1, 2),
(23, 40, 'TEX19', 11, 'T-EX-19', '', 2, 1, 'ELECTRICAL', 'PRECOMMISSIONING TEST SHEET', 'POWER SOCKET OUTLETS', '', 1, 0, 1, 2),
(24, 41, 'TEX20', 11, 'T-EX-20', '', 2, 1, 'ELECTRICAL', 'PRECOMMISSIONING TEST SHEET', 'HEATERS', '', 1, 0, 1, 1),
(25, 42, 'TEX23', 11, 'T-EX-23', '', 2, 1, 'ELECTRICAL', 'PRECOMMISSIONING TEST SHEET', 'CONTROL STATION', '', 1, 1, 1, 1),
(26, 43, 'ET10A', 11, 'ET-10A', '', 2, 1, 'ELECTRICAL', 'PRECOMMISSIONING TEST SHEET', 'EARTHING SYSTEM', '', 1, 1, 1, 0),
(27, 1, 'CIX00', 2, 'C-IX-00', '', 1, 0, 'INSTRUMENT', 'PRECOMMISSIONING CHECK LIST', 'TEMPERATURE ELEMENT', '', 1, 1, 0, 0),
(28, 2, 'CIX03', 2, 'C-IX-03', '', 1, 0, 'INSTRUMENT', 'PRECOMMISSIONING CHECK LIST', 'THERMOWELL', '', 1, 1, 0, 0),
(29, 3, 'IC-05A', 2, 'IC-05A', '', 1, 0, 'INSTRUMENT', 'PRECOMMISSIONING', 'LOCAL GAUGE', '', 1, 1, 0, 0),
(30, 4, 'CIX08', 2, 'C-IX-08', '', 1, 0, 'INSTRUMENT', 'PRECOMMISSIONING CHECK LIST', 'TRANSMISTTER', '', 1, 0, 0, 0),
(31, 5, 'CIX11', 2, 'C-IX-11', '', 1, 0, 'INSTRUMENT', 'PRECOMMISSIONING CHECK LIST', 'ORIFICE PLATE', '', 1, 1, 1, 0),
(32, 6, 'IC01A', 2, 'IC-01A', '', 1, 0, 'INSTRUMENT', 'PRECOMMISSIONING CHECK LIST', 'RELIEF VALVE', '', 1, 1, 0, 0),
(33, 7, 'CIX23', 2, 'C-IX-23', '', 1, 0, 'INSTRUMENT', 'PRECOMMISSIONING CHECK LIST', 'ACTUATED ON/OFF VALVE ASSEMBLY ( PNEUMATIC TYPE )', '', 1, 1, 0, 0),
(34, 8, 'IC-08A', 2, 'IC-08A', '', 1, 0, 'INSTRUMENT', 'PRECOMMISSIONING CHECK LIST', 'CONTROL VALVE', '', 1, 0, 0, 0),
(35, 9, 'C3131', 2, 'C-31-31', '', 1, 0, 'INSTRUMENT', 'PRECOMMISSIONING CHECK LIST', 'ACTUATED VALVE CONTROL STATION', '', 1, 1, 0, 0),
(36, 10, 'IT-02A', 2, 'IT-02A', '', 2, 0, 'INSTRUMENT', 'PRECOMMISSIONING TEST SHEET', 'CONTROL VALVE', '', 1, 1, 0, 0),
(37, 11, 'IT-04A', 2, 'IT-04A', '', 2, 0, 'INSTRUMENT', 'PRECOMMISSIONING TEST SHEET', 'ACTUATED VALVE', 'ESD,BLOWDOWN,SHUT-OFF', 1, 1, 1, 0),
(38, 12, 'TIX04', 2, 'T-IX-04', '', 2, 0, 'INSTRUMENT', 'PRECOMMISSIONING TEST SHEET', 'ANALOG OUTPUT', '', 0, 0, 0, 0),
(39, 13, 'IT-10A', 2, 'IT-10A', '', 2, 0, 'INSTRUMENT', 'PRECOMMISSIONING TEST SHEET', 'SWITCHED OUTPUT', '', 0, 1, 0, 0),
(40, 14, 'IT-08A', 2, 'IT-08A', '', 2, 0, 'INSTRUMENT', 'PRECOMMISSIONING TEST SHEET', 'TUBING PRESSURE TEST', 'HYDRAULIC,PNEUMATIC, IMPULSE', 2, 1, 0, 0),
(41, 15, 'TIX07', 2, 'T-IX-07', '', 2, 0, 'INSTRUMENT', 'PRECOMMISSIONING TEST SHEET', 'FLOW ELEMENT ( ORIFICE PLATE )', '', 3, 1, 1, 0),
(42, 16, 'IC-02A', 2, 'IC-02A', '', 1, 0, 'INSTRUMENT', 'PRECOMMISSIONING CHECK LIST', 'INSTRUMENT EQUIPMENT INSTALLATION', '', 1, 1, 1, 0),
(43, 30, 'PC-02A', 12, 'PC-02A', 'PIPE WORK FOR TEST PACK', 1, 1, 'PRECOMMISSIONING CHECK LIST', 'PIPING & VESSEL', 'PIPEWORK', '', 1, 0, 0, 0),
(44, 44, 'PT-01A', 12, 'PT-01A', 'PIPING PRESSURE TEST', 2, 2, 'PRECOMMISSIONING TEST SHEET', 'PIPING & VESSEL', 'PIPING PRESSURE TEST', '', 1, 0, 0, 1),
(45, 45, 'PT-02A', 12, 'PT-02A', 'PIPEWORK FLUSHING/CLEANING', 2, 2, 'PRECOMMISSIONING TEST SHEET', 'PIPING & VESSEL', 'FLUSHING AND CLEANING', '', 1, 0, 0, 1),
(46, 46, 'PC-04A', 12, 'PC-04A', 'PIPEWORK DRAINING & DRYING', 2, 2, 'PRECOMMISSIONING TEST SHEET', 'PIPING & VESSEL', 'PIPEWORK DRYING & BLOWING', '', 2, 0, 0, 0),
(47, 47, 'CMX01', 1, 'C-MX-01', '', 1, 0, 'MECHANICAL', 'PRECOMMISSIONING CHECK LIST', 'CRANE AND PEDESTAL', '', 1, 1, 0, 0),
(48, 48, 'CMX02', 1, 'C-MX-02', '', 1, 0, 'MECHANICAL', 'PRECOMMISSIONING CHECK LIST', 'LIFT', '', 1, 1, 0, 0),
(49, 49, 'CMX03', 1, 'C-MX-03', '', 1, 0, 'MECHANICAL', 'PRECOMMISSIONING CHECK LIST', 'AIR WINCHES', '', 1, 1, 0, 0),
(50, 50, 'CMX04', 1, 'C-MX-04', '', 1, 0, 'MECHANICAL', 'PRECOMMISSIONING CHECK LIST', 'PEDESTAL CRANE SYSTEMS', '', 1, 1, 0, 0),
(51, 51, 'CMX05', 1, 'C-MX-05', '', 1, 0, 'MECHANICAL', 'PRECOMMISSIONING CHECK LIST', 'GANTRY CRANE (ELECTRICAL)', '', 1, 1, 0, 0),
(52, 52, 'CMX06', 1, 'C-MX-06', '', 1, 0, 'MECHANICAL', 'PRECOMMISSIONING CHECK LIST', 'TROLLEY HOIST', '', 1, 0, 0, 0),
(53, 53, 'CMX07', 1, 'C-MX-07', '', 1, 0, 'MECHANICAL', 'PRECOMMISSIONING CHECK LIST', 'AIR TRASPORTER', '', 1, 0, 0, 0),
(54, 54, 'CMX08', 1, 'C-MX-08', '', 1, 0, 'MECHANICAL', 'PRECOMMISSIONING CHECK LIST', 'FLARE TIP', 'CHANGE OUT/HANDLING UNIT', 1, 1, 0, 0),
(55, 55, 'CMX09', 1, 'C-MX-09', '', 1, 0, 'MECHANICAL', 'PRECOMMISSIONING CHECK LIST', 'PRESSURE VESSEL', '', 1, 0, 0, 0),
(56, 56, 'CMX32', 1, 'C-MX-32', '', 1, 0, 'MECHANICAL', 'PRECOMMISSIONING CHECK LIST', 'RECIPROCATING COMPRESSOR', '', 1, 0, 0, 0),
(57, 57, 'CMX33', 1, 'C-MX-33', '', 1, 0, 'MECHANICAL', 'PRECOMMISSIONING CHECK LIST', 'HVAC. FAN', '', 1, 0, 0, 0),
(58, 58, 'CMX34', 1, 'C-MX-34', '', 1, 0, 'MECHANICAL', 'PRECOMMISSIONING CHECK LIST', 'HVAC. REFRIGERATION UNIT', '', 1, 0, 0, 0),
(59, 59, 'CMX35', 1, 'C-MX-35', '', 1, 0, 'MECHANICAL', 'PRECOMMISSIONING CHECK LIST', 'GAS TURBINE DRIVE', '', 1, 0, 0, 0),
(60, 60, 'CMX36', 1, 'C-MX-36', '', 1, 0, 'MECHANICAL', 'PRECOMMISSIONING CHECK LIST', 'CENTRIFUGAL COMPRESSOR', '', 1, 0, 0, 0),
(61, 61, 'CMX37', 1, 'C-MX-37', '', 1, 0, 'MECHANICAL', 'PRECOMMISSIONING CHECK LIST', 'P.S.A INERT GAS GENERATOR', '', 1, 0, 0, 0),
(62, 62, 'CMX38', 1, 'C-MX-38', '', 1, 0, 'MECHANICAL', 'PRECOMMISSIONING CHECK LIST', 'TURBO EXPANDER COMPRESSOR', '', 1, 0, 0, 0),
(63, 63, 'CMX39', 1, 'C-MX-39', '', 1, 0, 'MECHANICAL', 'PRECOMMISSIONING CHECK LIST', 'HEATER', '', 1, 0, 0, 0),
(64, 64, 'CEX22', 11, 'C-EX-22', '', 1, 0, 'ELECTRICAL', 'PRECOMMISSIONING CHECK LIST', 'TRACE HEATING', '', 1, 0, 0, 1),
(65, 65, 'CEX30', 11, 'C-EX-30', '', 1, 0, 'ELECTRICAL', 'PRECOMMISSIONING CHECK LIST', 'CABLE RACKING', '', 1, 0, 0, 1),
(66, 66, 'EC-12A', 11, 'EC-12A', '', 1, 0, 'ELECTRICAL', 'PRECOMMISSIONING CHECK LIST', 'JUNCTION BOX/MARSHALLING BOX', '', 1, 0, 0, 1),
(67, 67, 'CEX33', 11, 'C-EX-33', '', 1, 0, 'PRECOMMISSIONING CHECK LIST', 'CATHODIC PROTECTION', 'ELECTRICAL', '', 1, 1, 0, 1),
(68, 68, 'IC-03A', 2, 'IC-03A', '', 1, 0, 'INSTRUMENT', 'PRECOMMISSIONING CHECK LIST', 'INSTRUMENT CABLES', '', 1, 0, 1, 0),
(69, 69, 'CIX31', 2, 'C-IX-31', '', 1, 0, 'INSTRUMENT', 'PRECOMMISSIONING CHECK LIST', 'ACTUATED ON/OFF VALVE', 'PNUEMATIC TYPE', 1, 1, 1, 0),
(70, 70, 'CIX31I', 2, 'C-IX-31I', '', 1, 0, 'INSTRUMENT', 'PRECOMMISSIONING CHECK LIST', 'JUNCTION BOX & MARSHALLING BOX', '', 1, 1, 1, 0),
(71, 71, 'IC-11A', 2, 'IC-11A', '', 1, 0, 'INSTRUMENT', 'PRECOMMISSIONING CHECK LIST', 'GAS DETECTOR', '', 1, 1, 1, 0),
(72, 72, 'CXX02', 12, 'C-XX-02', '', 1, 0, 'PIPING', 'PRECOMMISSIONING CHECK LIST', 'PAINTING', '', 1, 0, 0, 0),
(73, 73, 'TEX22 ', 11, 'T-EX-22', '', 2, 1, 'ELECTRICAL', 'PRECOMMISSIONING CHECK LIST', 'TRACE HEATING', '', 1, 0, 1, 0),
(74, 74, 'PT25', 12, 'PT-25', '', 2, 1, 'PIPING', 'PRECOMMISSIONING CHECK LIST', 'SUBSYSTEM ALL LINE', '', 1, 1, 0, 0),
(75, 75, 'TIX03', 2, 'T-IX-03', '', 2, 0, 'INSTRUMENT', 'PRECOMMISSIONING CHECK LIST', 'RELIEF VALVE', '', 3, 1, 0, 0),
(76, 76, 'TIX02A', 2, 'T-IX-02A', '', 2, 0, 'INSTRUMENT', 'PRECOMMISSIONING CHECK LIST', 'ACTUATED ON/OFF VALVE PNEUMATIC TYPE', '', 1, 0, 0, 0),
(77, 77, 'IT-03A', 2, 'IT-03A', '', 2, 1, 'INSTRUMENT', 'PRECOMMISSIONING CHECK LIST', 'INSTRUMENT CABLES', '', 1, 1, 0, 0),
(78, 78, 'PC01', 12, 'PC-01', '', 1, 1, 'PIPING', 'PRECOMMISSIONING CHECK LIST', '', '', 1, 1, 0, 0),
(79, 79, 'PC-03A', 12, 'PC-03A', '', 1, 1, 'PIPING & VESSEL', 'PRECOMMISSIONING CHECK LIST', 'REINSTATEMENT', '', 1, 0, 0, 0),
(80, 80, 'TPX01', 12, 'T-PX-01', '', 2, 1, 'PIPING', 'PRECOMMISSIONING CHECK LIST', 'SUBSYSTEM ALL LINE', '', 1, 1, 0, 0),
(81, 81, 'CIX00', 2, 'C-IX-00', '', 1, 0, 'INSTRUMENT', '', 'PRECOMMISSIONING CHECK LIST', '', 0, 0, 0, 0),
(82, 82, '', 1, '', '', 1, 0, '', '', '', '', 0, 0, 0, 0),
(83, 83, '', 1, '', '', 2, 0, '', '', '', '', 0, 0, 0, 0),
(84, 84, '', 1, '', '', 2, 0, '', '', '', '', 0, 0, 0, 0),
(85, 85, '', 1, '', '', 2, 0, '', '', '', '', 0, 0, 0, 0),
(86, 86, '', 1, '', '', 2, 0, '', '', '', '', 0, 0, 0, 0),
(87, 87, '', 1, '', '', 2, 0, '', '', '', '', 0, 0, 0, 0),
(88, 88, '', 1, '', '', 2, 0, '', '', '', '', 0, 0, 0, 0),
(89, 89, '', 1, '', '', 2, 0, '', '', '', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_template_details`
--

CREATE TABLE `tbl_template_details` (
  `temp_no` bigint(20) NOT NULL,
  `temp_tmp_no` int(11) NOT NULL,
  `temp_text` text NOT NULL,
  `temp_txt` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_template_details`
--

INSERT INTO `tbl_template_details` (`temp_no`, `temp_tmp_no`, `temp_text`, `temp_txt`) VALUES
(1, 1, 'Check for mechanical damage', ''),
(2, 1, 'Check installed equipment is suitable and conforms to specification', ''),
(3, 1, 'Check installation conforms to P&ID and hook-up drawing', ''),
(4, 1, 'Check tube fittings manufacturer is the one chosen for the plant', ''),
(5, 1, 'Check piping connections provide required block & bleed facility', ''),
(6, 1, 'Check insulation and heat-tracing', ''),
(7, 1, 'Check identification (tag number, tag plates)', ''),
(8, 1, 'Check supporting and protection against vibrations', ''),
(9, 1, 'Check accessibility conforms to specifications, with platforming where necessary', ''),
(10, 1, 'Check calibration certificate', ''),
(882, 0, 'tet', ''),
(14, 1, '', ''),
(883, 1, '', ''),
(881, 0, 'TEST', ''),
(18, 1, 'Flush instrument pipework with dry air', ''),
(19, 1, 'Check equipment is correctly preserved', ''),
(20, 1, 'Produce marked-up documents in accordance with installation', ''),
(21, 1, 'Produce the list of defects for punch list issue', ''),
(22, 2, 'Check for mechanical damage', ''),
(23, 2, 'Check installed equipment is suitable and conforms to specification (lengthâ€¦)', ''),
(24, 2, 'Check installation conforms to P&ID and hook-up drawing', ''),
(25, 2, '', ''),
(26, 2, '', ''),
(27, 2, '', ''),
(28, 2, 'Check identification (tag number, tag plates)', ''),
(29, 2, '', ''),
(30, 2, 'Check accessibility conforms to specifications with platforming where necessary', ''),
(31, 2, '', ''),
(32, 2, '', ''),
(935, 86, '', ''),
(884, 1, '', ''),
(35, 2, '', ''),
(36, 2, '', ''),
(37, 2, '', ''),
(38, 2, '', ''),
(39, 2, '', ''),
(40, 2, 'Check equipment is correctly preserved', ''),
(41, 2, 'Produce marked-up documents in accordance with installation', ''),
(42, 2, 'Produce the list of defects for punch list issue', ''),
(43, 3, 'Check for mechanical damage', ''),
(44, 3, 'Check installed equipment is suitable and conforms to specification', ''),
(45, 3, 'Check installation conforms to P&ID and hook-up drawing', ''),
(46, 3, 'Check tube fittings manufacturer is the one chosen for the plant', ''),
(47, 3, 'Check piping connections provide required block & bleed facility', ''),
(48, 3, 'Check insulation and heat-tracing', ''),
(49, 3, 'Check identification (tag number, tag plates)', ''),
(50, 3, 'Check supporting and protection against vibrations', ''),
(51, 3, 'Check accessibility conforms to specifications with platforming where necessary', ''),
(52, 3, 'Check calibration certificate', ''),
(53, 3, 'Check instrument positioning and visibility', ''),
(54, 3, '', ''),
(55, 3, '', ''),
(56, 3, 'Flush instrument pipework with dry air', ''),
(57, 3, 'Check equipment is correctly preserved', ''),
(58, 3, 'Produce marked-up documents in accordance with installation', ''),
(59, 3, 'Produce the list of defects for punch list issue', ''),
(60, 4, 'Check for mechanical damage', ''),
(61, 4, 'Check installed equipment is suitable and conforms to specification', ''),
(62, 4, 'Check installation conforms to P&ID and hook-up drawing', ''),
(63, 4, 'Check tube fittings manufacturer is the one chosen for the plant', ''),
(64, 4, 'Check piping connections provide required block & bleed facility', ''),
(65, 4, 'Check insulation and heat-tracing', ''),
(66, 4, 'Check identification (tag number, tag plates)', ''),
(67, 4, 'Check supporting and protection against vibrations', ''),
(68, 4, 'Check accessibility conforms to specifications, with platforming where necessary', ''),
(69, 4, 'Check calibration certificate', ''),
(70, 4, 'Check electrical connections', ''),
(71, 4, 'Check cable conformity and identification at instrument side', ''),
(72, 4, 'Check cable gland conformity and mounting', ''),
(73, 4, 'Check earthing connections (cable armour and screen)', ''),
(74, 4, 'Check ATEX certificate', ''),
(75, 4, '', ''),
(76, 4, '', ''),
(77, 4, 'Flush instrument pipework with dry air', ''),
(78, 4, 'Check equipment is correctly preserved', ''),
(79, 4, 'Produce marked-up documents in accordance with installation', ''),
(80, 4, 'Produce the list of defects for punch list issue', ''),
(81, 5, 'Check for mechanical damage', ''),
(82, 5, 'Check installed equipment is suitable and conforms to specification', ''),
(83, 5, 'Check installation conforms to P&ID and hook-up drawing', ''),
(84, 5, 'Check piping upstream and downstream straight lengths are in line with specifications', ''),
(85, 5, 'Check flow direction is clearly identified on the tab', ''),
(86, 5, 'Measure bore and check tolerances against data sheet', ''),
(87, 5, 'Check tag number is stamped or engraved on tab', ''),
(88, 5, '', ''),
(89, 5, 'Check accessibility conforms to specifications, with platforming where necessary', ''),
(90, 5, 'Check calibration certificate', ''),
(91, 5, 'Check plate flatness and surface finish', ''),
(92, 5, '', ''),
(93, 5, '', ''),
(94, 5, '', ''),
(95, 5, '', ''),
(96, 5, '', ''),
(97, 5, '', ''),
(98, 5, '', ''),
(99, 5, 'Protect and store plate until ready for installation (after hydrotest and just prior to commissioning)', ''),
(100, 5, 'Produce marked-up documents in accordance with installation', ''),
(101, 5, 'Produce the list of defects for punch list issue', ''),
(102, 6, 'Check for mechanical damage', ''),
(103, 6, 'Check installed equipment is suitable and conforms to specification', ''),
(104, 6, 'Check installation conforms to P&ID and hook-up drawing', ''),
(105, 6, 'Check installation is in line with manufacturer''s recommendations', ''),
(106, 6, '', ''),
(107, 6, 'Check insulation and heat-tracing', ''),
(108, 6, 'Check identification (tag number, tag plates)', ''),
(109, 6, 'Check supporting and protection against vibrations', ''),
(110, 6, 'Check accessibility conforms to specifications, with platforming where necessary', ''),
(111, 6, 'Check calibration certificate and date', ''),
(112, 6, 'Check that calibration seal is not broken', ''),
(113, 6, 'Check that transport locking device has been removed after iinstallation', ''),
(114, 6, '', ''),
(115, 6, '', ''),
(116, 6, '', ''),
(117, 6, '', ''),
(118, 6, '', ''),
(119, 6, '', ''),
(120, 6, 'Check equipment is correctly preserved', ''),
(121, 6, 'Produce marked-up documents in accordance with installation', ''),
(122, 6, 'Produce the list of defects for punch list issue', ''),
(123, 7, 'Check for mechanical damage', ''),
(124, 7, 'Check installed equipment is suitable and conforms to specification', ''),
(125, 7, 'Check installation conforms to P&ID, typical and hook-up drawing', ''),
(126, 7, 'Check valve is installed in accordance with flow direction', ''),
(127, 7, 'Check tube fittings manufacturer is the one chosen for the plant', ''),
(128, 7, 'Check identification (tag number, tag plates)', ''),
(129, 7, 'Check accessibility conforms to specifications, with platforming where necessary', ''),
(130, 7, '', ''),
(131, 7, 'Check " Valve + Control Panel " FAT report', ''),
(132, 7, 'Check limit switches as per form C-JX-08', ''),
(133, 7, 'Check control panel as per form C-JX-31', ''),
(134, 7, '', ''),
(135, 7, '', ''),
(136, 7, '', ''),
(137, 7, '', ''),
(138, 7, 'Check ATEX certificates ', ''),
(139, 7, '', ''),
(140, 7, 'Flush instrument pipework with dry air', ''),
(141, 7, 'Check equipment is correctly preserved', ''),
(142, 7, 'Produce marked-up documents in accordance with installation', ''),
(143, 7, 'Produce the list of defects for punch list issue', ''),
(144, 8, 'Check for mechanical damage', ''),
(145, 8, 'Check installed equipment is suitable and conforms to specification', ''),
(146, 8, 'Check installation conforms to P&ID and hook-up drawing', ''),
(147, 8, 'Check valve is installed in accordance with flow direction', ''),
(148, 8, 'Check tube fittings manufacturer is the one chosen for the plant', ''),
(149, 8, 'Check insulation and heat-tracing', ''),
(150, 8, 'Check identification (tag number, tag plates)', ''),
(151, 8, 'Check supporting and protection against vibrations', ''),
(152, 8, 'Check accessibility conforms to specifications, with platforming where necessary', ''),
(153, 8, 'Check calibration certificate', ''),
(154, 8, 'Check connections between actuator and electro-positioner', ''),
(155, 8, '', ''),
(156, 8, '', ''),
(157, 8, '', ''),
(158, 8, '', ''),
(159, 8, '', ''),
(160, 8, '', ''),
(161, 8, 'Flush instrument pipework with dry air ', ''),
(162, 8, 'Check equipment is correctly preserved', ''),
(163, 8, 'Produce marked-up documents in accordance with installation', ''),
(164, 8, 'Produce the list of defects for punch list issue', ''),
(165, 9, 'Check for mechanical damage', ''),
(166, 9, 'Check installed equipment is suitable and conforms to specification', ''),
(167, 9, 'Check installation conforms to hook-up drawing', ''),
(168, 9, 'Check construction conforms to detailed drawings', ''),
(169, 9, 'Check tube fittings manufacturer is the one chosen for the plant', ''),
(170, 9, 'Check insulation and heat-tracing', ''),
(171, 9, 'Check identification (tag number, tag plates)', ''),
(172, 9, 'Check supporting and protection against vibrations', ''),
(173, 9, 'Check accessibility conforms to specifications, with platforming where necessary', ''),
(174, 9, 'Check instruction plates', ''),
(175, 9, 'Check electrical connections', ''),
(176, 9, 'Check cables conformity and identification', ''),
(177, 9, 'Check cable glands conformity and mounting', ''),
(178, 9, 'Check earthing connections (cable armour and screen)', ''),
(179, 9, 'Check ATEX certificates', ''),
(180, 9, '', ''),
(181, 9, '', ''),
(182, 9, 'Flush instrument pipework with dry air', ''),
(183, 9, 'Check equipment is correctly preserved', ''),
(184, 9, 'Produce marked-up documents in accordance with installation', ''),
(185, 9, 'Produce the list of defects for punch list issue', ''),
(186, 10, 'SOLENOID VALVE', ''),
(187, 10, 'SOLENOID VALVE', ''),
(188, 10, 'LIMIT SWITCH', ''),
(189, 10, 'LIMIT SWITCH', ''),
(190, 10, 'PRESSURE SWITCH', ''),
(191, 10, 'PRESSURE GAUGE', ''),
(192, 10, 'PRESSURE GAUGE', ''),
(193, 11, 'SOLENOID', ''),
(194, 11, 'SOLENOID', ''),
(195, 11, 'LIMIT SWITCH', ''),
(196, 11, 'LIMIT SWITCH', ''),
(907, 38, '', ''),
(198, 16, 'Check for mechanical damage', ''),
(199, 16, 'Check installed equipment is suitable and conforms to specification', ''),
(200, 16, 'Check installation conforms to F&G detection layout drawings', ''),
(201, 16, 'Check test facility is installed', ''),
(202, 16, 'Check sensor activation lamp is visible', ''),
(203, 16, 'Check remote annunciator is installed where required', ''),
(204, 16, 'Check identification (tag number, tag plates)', ''),
(205, 16, 'Check supporting and protection against vibrations', ''),
(206, 16, 'Check accessibility conforms to specifications, with platforming where necessary', ''),
(207, 16, 'Check calibration certificate', ''),
(208, 16, 'Check electrical connections', ''),
(209, 16, 'Check cable conformity and identification', ''),
(210, 16, 'Check cable gland conformity and mounting', ''),
(211, 16, 'Check earthing connections (cable armour and screen)', ''),
(212, 16, 'Check ATEX certificate', ''),
(213, 16, '', ''),
(214, 16, '', ''),
(215, 16, 'Check equipment is correctly preserved', ''),
(216, 16, 'Produce marked-up documents in accordance with installation', ''),
(217, 16, 'Produce the list of defects for punch list issue', ''),
(218, 16, '', ''),
(219, 17, 'Check switchboard is de-energized and safe.', ''),
(220, 17, 'Check conformity against data sheet and project specification', ''),
(221, 17, 'Check preservation status and anti-condensation heaters are ready to be energized.', ''),
(222, 17, 'Check equipment is correclty aligned, leveled, rigid and secured with correct bolting.', ''),
(223, 17, 'Check all panel mounted devices are undamaged and tagged in accordance with data.', ''),
(224, 17, 'Check if construction rating plate data is correct.', ''),
(225, 17, 'Check bus bars and supports are clean and clear of debris, torque all bolts to specification.', ''),
(226, 17, 'Check earthing and bonding of all equipment against drawings', ''),
(227, 17, 'Check gland plates (if any) and terminations are correct and suitable for external cabling.', ''),
(228, 17, 'Check all switching devices are mechanically operational and undamaged.', ''),
(229, 17, 'Check switchgear mechanical interlocks against interlock diagram', ''),
(230, 17, 'Check all shutters are identified, operational and lockable.', ''),
(231, 17, 'Check C.T''s &VT''s are properly installed and match drawing and protection diagram.', ''),
(232, 17, 'Check protection relays against protection diagram ', ''),
(233, 17, 'Check protection relays are tagged correctly.', ''),
(234, 17, 'Check interconnection wiring against drawings.', ''),
(235, 17, 'Check all fuses and switchgear ratings ( circuit-breakers , contactors , etc,,,)', ''),
(236, 17, 'Check power cables are properly fitted and armour and screens earthing is correct', ''),
(237, 17, 'Check vendor special tools are available.', ''),
(238, 17, 'Produce marked-up drawing in accordance with installation.', ''),
(239, 17, 'Check suppliers document', ''),
(240, 17, 'Produce a defects list for punch list issue.', ''),
(241, 18, 'Check switchboard is de-energized and safe.', ''),
(242, 18, 'Check conformity against data sheet and project specification', ''),
(243, 18, 'Check preservation status and anti-condensation heaters are ready to be energized.', ''),
(244, 18, 'Check equipment is correctly aligned, leveled, rigid and secured with correct bolting,', ''),
(245, 18, 'Check all panel mounted devices are undamaged ', ''),
(246, 18, 'Check all panel mounted devices are  tagged in accordance with data.', ''),
(247, 18, 'Check if construction rating plate data is correct.', ''),
(248, 18, 'Check bus bars and supports are clean and clear of debris, torque all bolts to specifications.', ''),
(249, 18, 'Check earthing and bonding of all equipment against drawings.', ''),
(250, 18, 'Check gland plates (if any) and terminations are correct and suitable for external cabling.', ''),
(251, 18, 'Check all switching devices are mechanically operational and undamaged.', ''),
(252, 18, 'Check all circuit breakers and starter cubicles run freely in compartments', ''),
(253, 18, 'Check swithgear mechanical interlocks against interlock diagram', ''),
(254, 18, 'Check all C.T''s &VT''s are properly installed and match drawings and protection diagram.', ''),
(255, 18, 'Check protection relays against protection diagram.', ''),
(256, 18, 'Check all equipment are identified against drawings (cubicles, relays etc,,,) ', ''),
(257, 18, 'Check interconnection wiring against drawings.', ''),
(258, 18, 'Check all fuses and switchgear ratings ( breakers , contactors, etc,,,)', ''),
(259, 18, 'Check vendor special tools are available.', ''),
(260, 18, 'Produce marked-up drawings in accordance with installation.', ''),
(261, 18, 'Produce a defects list for punch list issue.', ''),
(262, 19, 'Check cable physical integrity.', ''),
(263, 19, 'Check cable data against cable schedule.', ''),
(264, 19, 'Check cable routing against drawings (segregation, distance…). ', ''),
(265, 19, 'Check cable is supported and  fixed to rack according to project Specification.', ''),
(266, 19, 'Check bending radius is within the specified limits.', ''),
(267, 19, 'Check cable and core marking against drawings', ''),
(268, 19, 'Check cable gland suit for cable type.', ''),
(269, 19, 'Check cable earthing against drawings', ''),
(270, 19, 'Check gland plate for single core cables is non ferrous.', ''),
(271, 19, 'Produce list of defects for punch list issue.', ''),
(272, 20, 'Check cable physical integrity.', ''),
(273, 20, 'Check cable is as specified in project cable schedule.', ''),
(274, 20, 'Check cable routing against drawings (segregation, distance…).', ''),
(275, 20, 'Check cable is supported and  fixed to rack according to project Specification.', ''),
(276, 20, 'Check bending radius is within the specified limits.', ''),
(277, 20, 'Check cable is correctly loomed and segregated .', ''),
(278, 20, 'Check cable and core marking against drawings.', ''),
(279, 20, 'Check cable gland suit for cable type.', ''),
(280, 20, 'Check cable earthing against drawings', ''),
(281, 20, 'Check gland plate for single core cables is non ferrous.', ''),
(282, 20, 'Produce list of defects for punch list issue.', ''),
(283, 21, 'Check cable physical integrity.', ''),
(284, 21, 'Check cable data against cable schedule.', ''),
(285, 21, 'Check cable routing against drawings (segregation, distance…).', ''),
(286, 21, 'Check cable is supported and  fixed to rack according to project Specification.', ''),
(287, 21, 'Check bending radius is within the specified limits', ''),
(288, 21, 'Check cables is correctly loomed and segregated in accordance with specification.', ''),
(289, 21, 'Check cable and core marking against drawings.', ''),
(290, 21, 'Check cable gland suit for cable type.', ''),
(291, 21, 'Check terminations are in accordance with termination diagram and produce marked-up termination drawings.', ''),
(292, 21, 'Produce a defect  list for punch list issue.', ''),
(293, 21, 'Check cable earthing against drawings', ''),
(294, 22, 'Check motor is de-energized and safe.', ''),
(295, 22, 'Check preservation status and anti-condensation heater is ready to be energized.', ''),
(296, 22, 'Check motor is correctly tagged.', ''),
(297, 22, 'Check general mechanical arrangement  ', ''),
(298, 22, 'Check shaft rotates freely and quietly in both directions,  motor uncoupled', ''),
(299, 22, 'Check motor data conformity against data sheet and project specification (rating plate)', ''),
(300, 22, 'Check motor earthing against drawings.', ''),
(301, 22, 'Check cooling system is undamaged and is conformity against drawings.', ''),
(302, 22, 'Check phase sequence connection', ''),
(303, 22, 'Check power and auxiliary terminal boxes are clean ', ''),
(304, 22, 'Check terminal boxes screws are tighted', ''),
(305, 22, 'Check cable glands are correctly mounted', ''),
(306, 22, 'Check all auxiliary devices (vibration & temperature probes,  CT''s if any...) for proper installation and connection', ''),
(307, 22, 'Check painting integrity', ''),
(308, 22, 'Check the avaibility of certification documents according hazardous area motor installation ', ''),
(309, 22, 'Check Supplier''s documentation and drawings', ''),
(310, 22, 'Produce a defects list for punch list issue.', ''),
(311, 23, 'Check motor is de-energized and safe.', ''),
(312, 23, 'Check preservation status and anti-condensation heater is ready to be energized.', ''),
(313, 23, 'Check motor is correclty tagged', ''),
(314, 23, 'Check mechanical general arrangement  ', ''),
(315, 23, 'Check shaft rotates free and quietly in both directions,  motor uncoupled', ''),
(316, 23, 'Check motor data conformity against data sheet/ project specification (rating plate)', ''),
(317, 23, 'Check motor earthing against drawings.', ''),
(318, 23, 'Check phase sequence connection', ''),
(319, 23, 'Check motor terminal box is clean', ''),
(320, 23, 'Check terminal boxes screws are tighted', ''),
(321, 23, 'Check cable glands are correctly mounted', ''),
(322, 23, 'Check auxiliary devices (if any) for proper installation and connection', ''),
(323, 23, 'Check painting integrity', ''),
(324, 23, 'Check the avaibility of certification documents according hazardous area motor installation ', ''),
(325, 23, 'Check Supplier''s documentation and drawings', ''),
(326, 23, 'Produce a defects list for punch list issue.', ''),
(327, 24, 'Check equipment is de-energized and safe.', ''),
(328, 24, 'Check preservation status and anti-condensation heaters are ready to be energized.', ''),
(329, 24, 'Check equipment earthing and bonding against drawings.', ''),
(330, 24, 'Check equipment is undammaged, correctly mounted, tagged and installed in accordance with layout drawings.', ''),
(331, 24, 'Check all doors, gland plates are correctly mounted', ''),
(332, 24, 'Check panel-front components, indicators, lamps, meters are securely mounted and undamaged.', ''),
(333, 24, 'Check all switching devices rating and tagging against drawings. ', ''),
(334, 24, 'Check all switching devices  for proper  mechanical operation.', ''),
(335, 24, 'Check external wiring and cabling against drawings.', ''),
(336, 24, 'Check cable connections', ''),
(337, 24, 'Carry out checks in accordance with manufacturer''s procedure', ''),
(338, 24, 'Produce marked-up drawings in accordance with installation.', ''),
(339, 24, 'Produce a list of defects for punch list issue.', ''),
(340, 25, 'Check that the circuit is de-energized and safe.', ''),
(341, 25, 'Check luminaires / sockets rating and tagging against drawings.', ''),
(342, 25, 'Check luminaires / sockets are correctly mounted, accessible and don''t clash with other equipment.', ''),
(343, 25, 'Check luminaires / sockets and junction boxes are undamaged', ''),
(344, 25, 'Check  luminaires / sockets and junction boxes are installed in accordance with drawings', ''),
(345, 25, 'Check all unused entries on junction boxes are suitably plugged', ''),
(346, 25, 'Check cable glands mounting and compliance with specification', ''),
(347, 25, 'Check cable for proper connection', ''),
(348, 25, 'Check earthing and bonding against drawings.', ''),
(349, 25, 'Check circuit breaker rating', ''),
(350, 25, 'Produce marked-up drawings in accordance with installation.', ''),
(351, 25, 'Produce a defects list for punch list issue.', ''),
(352, 25, '', ''),
(353, 26, 'Check that circuit is de-energized and safe.', ''),
(354, 26, 'Check the conformity against drawings and specification.', ''),
(355, 26, 'Check sockets are correctly mounted, accessible.', ''),
(356, 26, 'Check sockets and junction boxes are undamaged ', ''),
(357, 26, 'Check socket and junction boxes are  installed in accordance with drawings', ''),
(358, 26, 'Check cable glands mounting and compliance with specification', ''),
(359, 26, 'Check cable for proper connection', ''),
(360, 26, 'Check mechanical interlock', ''),
(361, 26, 'Check circuit breaker rating', ''),
(362, 26, 'Check earthing and bonding are in conformity with project specifications.', ''),
(363, 26, 'Check earthing and bonding against drawings.', ''),
(364, 26, 'Produce marked-up drawings in accordance with installation.', ''),
(365, 26, 'Produce a defects list for punch list issue.', ''),
(366, 27, 'Check equipment is de-energized and safe.', ''),
(367, 27, 'Check nameplate data is correct.', ''),
(368, 27, 'Check cable glands and terminals for proper size and installation.', ''),
(369, 27, 'Check equipment tagging against drawings.', ''),
(370, 27, 'Check earthing and bonding against drawings.', ''),
(371, 27, 'Produce marked-up termination drawing in accordance with installation.', ''),
(372, 27, 'Check the avaibility of certification documents according hazardous area equipment installation ', ''),
(373, 27, 'Check Supplier''s documentation and drawings', ''),
(374, 27, 'Produce a defects list for punch list issue', ''),
(375, 28, 'Check circuit is de-energized and safe.', ''),
(376, 28, 'Check equipment is installed in accordance with layout drawing ', ''),
(377, 28, 'Check equipment is  undamaged and correcly tagged', ''),
(378, 28, 'Check nameplate data is correct', ''),
(379, 28, 'Check control station and emergency stop pushbutton accessibility', ''),
(380, 28, 'Check pushbuttons for proper  mechanical operation', ''),
(381, 28, 'Check local anmeter scale (if any) ', ''),
(382, 28, 'Check all bolts are fitted and all unused entries are suitably plugged.', ''),
(383, 28, 'Check cable glands mounting and compliance with specification', ''),
(384, 28, 'Check cable glands and terminals for proper size and installation.', ''),
(385, 28, 'Check earthing and bonding against drawings.', ''),
(386, 28, 'Check the avaibility of certification documents according hazardous area equipment installation ', ''),
(387, 28, 'Produce marked-up termination drawings in accordance with installation.', ''),
(388, 28, 'Produce a defects list for punch list issue.', ''),
(389, 29, 'Check all earth bars installation and tagging against drawings.', ''),
(390, 29, 'Check earthing cables installation and tagging against drawings.', ''),
(391, 29, 'Check earthing cables cross section against drawings.', ''),
(392, 29, 'Check all connections are tight, clean and coated with an approved anti-corrosive grease.', ''),
(393, 29, 'Check earthing networks segregation (IS)', ''),
(394, 29, 'Check earth rods correct installation', ''),
(395, 29, 'Produce marked-up drawings in accordance with installation.', ''),
(396, 29, 'Produce a defects list for punch list issue.', ''),
(397, 29, '', ''),
(398, 29, '', ''),
(399, 30, 'Check that all of the materiel conforms to the specifications.', ''),
(400, 30, 'Check the pipe work installation conforms to specifications, drawings and P&IDs', ''),
(401, 30, 'Check that pipe work and valves are undamaged. Also check  the ancillaries and any other component. ', ''),
(402, 30, 'Check the installation of all pipe-supports are as per specifications and drawings. Also springs have shipping-stops fitted and the piping sits on its supports.', ''),
(403, 30, 'Check the location of the pipe anchors.', ''),
(404, 30, 'Check the alignment of the pipe guides.', ''),
(405, 30, 'Check  the check-valves operate freely before they are installed into position.', ''),
(406, 30, 'Check that the flow direction of the valves is in the correct sense/direction.', ''),
(407, 30, 'After the installation of a valve check that it operates freely.', ''),
(408, 30, 'Check the valves are correctly lubricated and they have the correct spindle packing.', ''),
(409, 30, 'Check there is a suitble access, both to operate and to maintain valves.', ''),
(410, 30, 'Check that the pipework does not in any way load and stress the equipment it is serving.', ''),
(411, 30, 'Check the pipe flanges are mounted square to each other. Also the bolting and gaskets are correct.', ''),
(412, 30, 'Check that all the bolts and fasteners are suitably lubricated.', ''),
(413, 30, 'Produce a set of marked-up drawings in accordance with the installation.', ''),
(414, 30, 'Produce a defects list for isue in the Punch List.', ''),
(415, 33, 'CORE CONTINUITY     ', ''),
(416, 33, 'SCREEN CONTINUITY    ', ''),
(417, 33, 'ARMOUR CONTINUITY', ''),
(418, 33, '1 st INSULATION TEST: Voltage applied:', 'kV'),
(419, 33, 'Ph1/Ph2-Ph3-armour-Earth : ', 'M&Omega;'),
(420, 33, 'Ph2/Ph1-Ph3-armour-Earth', 'M&Omega;'),
(421, 33, 'Ph3/Ph2-Ph1-armour-Earth', 'M&Omega;'),
(422, 33, 'HV TEST  1 min.  :Voltage applied: ', 'kV'),
(423, 33, 'Ph1/Ph2-Ph3-armour-Earth', 'µA '),
(424, 33, 'Ph2/Ph1-Ph3-armour-Earth', 'µA '),
(425, 33, 'Ph3/Ph2-Ph1-armour-Earth', 'µA '),
(426, 33, '2nd INSULATION TEST: Voltage applied:', 'kV'),
(427, 33, 'Ph1/Ph2-Ph3-armour-Earth : ', 'M&Omega;'),
(428, 33, 'Ph2/Ph1-Ph3-armour-Earth', 'M&Omega;'),
(429, 33, 'Ph3/Ph2-Ph1-armour-Earth', 'M&Omega;'),
(430, 33, 'RE-CONNECT TERMINATIONS', ''),
(431, 33, 'Tightening torque', 'N.m'),
(432, 38, ' R-EARTH', 'M&Omega'),
(433, 38, ' S-EARTH', 'M&Omega'),
(434, 38, ' T-EARTH', 'M&Omega'),
(435, 38, 'R-S', 'M&Omega'),
(436, 38, 'S-T', 'M&Omega'),
(437, 38, 'R-T', 'M&Omega'),
(438, 47, 'Check that the nameplate details are correct.', ''),
(439, 47, 'Check both the location and elevation are correct and the crane is level.', ''),
(440, 47, 'Check for the correct welding of the stub-pedestal and that the slewing ring is torqued to the correct value.', ''),
(441, 47, 'Check for any damage incurred during the installation.', ''),
(442, 47, 'Check the crane is installed as per specifications and approved drawings.', ''),
(443, 47, 'Check the crane for cleanliness.', ''),
(444, 47, 'Check preservation is carried out as per approved procedure.', ''),
(445, 47, 'Check that all the ladders and platfoming are installed as per approved drawings.', ''),
(446, 47, 'Check the painting visually for any damage', ''),
(447, 47, 'Check the earthing and bonding of the units is as per drawings and specifications.', ''),
(448, 47, 'Check large items in the crane can be withdrawn using suitable lifting equipment.', ''),
(449, 47, 'Check that all of the ropes of the crane are serviceable.', ''),
(450, 47, 'Check that the crane bolting is suitably lubricated.', ''),
(451, 48, 'Check that the nameplate details are correct and that the S.W.L. is clearly displayed.', ''),
(452, 48, 'Check that the location of the tower is correct and that it is level.', ''),
(453, 48, 'Make a dimentional check of the tower against the approved drawings.', ''),
(454, 48, 'Check that the fixing arrangement of the lift is correct and also the mounting in the tower.', ''),
(455, 48, 'Check for any installation damage.', ''),
(456, 48, 'Check that the lift, rack and tower are installed in accordance with approved drawings and specifications.', ''),
(457, 48, 'Check the lift and rack for cleanliness.', ''),
(458, 48, 'Check that preservation has been carried out in accordance with approved procedures.', ''),
(459, 48, 'Check that the shafts are free to rotate in the correct direction.', ''),
(460, 48, 'Check that the pinion wheels are correctly engaged on the rack.', ''),
(461, 48, 'Check that the doors of the car operate freely.', ''),
(462, 48, 'Check the free operation of the station doors.', ''),
(463, 48, 'Check the maintenance access at the lift stations. Also check the trapdoor operation in the car roof.', ''),
(464, 49, 'Check that the nameplate details are complete and correct.', ''),
(465, 49, 'Check the location, the elevation, orientation and that the unit is level.', ''),
(466, 49, 'Check the holding down arrangements.', ''),
(467, 49, 'Check for any installation damage.', ''),
(468, 49, 'Check preservation is carried out as per approved procedures.', ''),
(469, 49, 'Check the painting visually for damage.', ''),
(470, 49, 'Check earthing and bonding are carried out as per approved procedure.', ''),
(471, 49, 'Check the free rotation of the drum.', ''),
(472, 49, 'Check brake linkage and clevis pins.', ''),
(473, 49, 'Check the filter element, lubricator level and the regulator settings.', ''),
(474, 49, 'Check the condition of the wire ropes.', ''),
(475, 49, 'Check the coupling alignment.', ''),
(476, 49, 'Produce marked-up drawings in accordance with the install-ation. Also produce a defects list for issue in the Punch List.', ''),
(477, 50, 'Hydraulic Circuit.  ( refer to C-GX-07 )', ''),
(478, 50, 'Pneumatic Circuit.', ''),
(479, 50, 'Air Receiver. ( refer to C-CX-01 )', ''),
(480, 50, 'Air Compressor. ( refer to C-KX-06 )', ''),
(481, 50, 'Hydraulic Tank. ( refer to C-DX-01 )', ''),
(482, 50, 'Air Filter. ( refer to C-HX-01 )', ''),
(483, 50, 'Air Drier. ( refer to C-HX-09 )', ''),
(484, 50, 'Emergency Slewing System.', ''),
(485, 50, 'Check the location, the elevation, orientation and the level of the Emergency Slewing System (ESS).', ''),
(486, 50, 'Check for any installation damage of ESS.', ''),
(487, 50, 'Check the suction and the discharge piping are adequately supported of ESS.', ''),
(488, 51, 'Check that the name plate details are correct and that it includes the Authority stamp.', ''),
(489, 51, 'Check that the S.W.L. is clearly displayed on the gantry.', ''),
(490, 51, 'Check that the gantry location is correct.  Also check the elevation, orientation and that the gantry is level.', ''),
(491, 51, 'Check that the gantry is correctly installed on the "downshop beams" and that the end stops are installed.', ''),
(492, 51, 'Check for any installation damage and also the condition of the ropes.', ''),
(493, 51, 'Check that the gantry crane is installed in accordance with both the specifications and the approved drawings.', ''),
(494, 51, 'Check the general cleanliness of the unit.', ''),
(495, 51, 'Check that the preservation of the unit has been carried out in accordance with an approved procedure.', ''),
(496, 51, 'Check that any maintenance ladders or platforms are installed in accordance with the approved drawings.', ''),
(497, 51, 'Check that the painting is sound and without damage.', ''),
(498, 51, 'Check that the gantry is correctly aligned on the runway beams over the full operating length.  Also check that the gantry contacts squarely on both sets of end-stops.', ''),
(499, 51, 'Check that the trolley is correctly aligned on the gantry over its full operating length.', ''),
(500, 51, 'Check the mechanical operation of the gantry interlocks.', ''),
(501, 51, 'Check that the bearings are correctly lubricated.', ''),
(502, 51, 'Check that all of the components can be withdrawn with suitable lifting gear.', ''),
(503, 51, 'Check that the bolting is suitably lubricated.', ''),
(504, 51, 'Check that all of the commissioning spares,the boltings, gaskets and special tools are available in the stores.', ''),
(505, 51, 'Check that the preservation fluids have been removed and that flushing has been carried out. Control that the systems have been charged with the recommended lubricants.', ''),
(506, 51, 'Check that the operational zone is clear.', ''),
(507, 51, 'Check that the Vendor is satisfied that the unit is ready for commissioning.', ''),
(508, 51, 'Seal up the unit as required.', ''),
(509, 51, 'Produce a set of marked-up drawings in accordance with the installation.', ''),
(510, 51, 'Produce a defects list to be issued in the Punch List.', ''),
(511, 52, 'Check that the nameplate details are correct and that the S.W.L. is correctly displayed.', ''),
(512, 52, 'Check that the hoist is installed on the correct runway beams.', ''),
(513, 52, 'Check that the hoist is installed correctly on its beam and that the end-stops are installed.', ''),
(514, 52, 'Check that there is no installation damage.', ''),
(515, 52, 'Check that the hoist is installed in accordance with the specifications.', ''),
(516, 52, 'Check the general cleanliness of the hoist and chain.', ''),
(517, 52, 'Check the preservation is carried out as per approved procedure.', ''),
(518, 52, 'Check any maintenance ladders or platforms are installed as per approved drawings.', ''),
(519, 52, 'Check the condition of the painting for damage.', ''),
(520, 52, 'Check the alignment of the trolley on the runway beam over its operating length.', ''),
(521, 52, 'Check that the bolting is suitably lubricated.', ''),
(522, 52, 'Check that the operation zone is clear.', ''),
(523, 52, 'Pack the handchain into its bag.', ''),
(524, 52, 'Produce marked-up drawings in accordance with the installation.', ''),
(525, 52, 'Produce a defects list for inclusion in the Punch List.', ''),
(526, 53, 'Check that the nameplate details are correct.', ''),
(527, 53, 'Check that the air transporter is installed in accordance with the specifications and the approved drawings.', ''),
(528, 53, 'Check the general cleanliness of the unit.', ''),
(529, 53, 'Check the freedom of movement of the handlebar and that the axel is greased.', ''),
(530, 53, 'Check that the air outlet pads are suitably protected.', ''),
(531, 53, 'Check the correct functioning of the air outlet valve.', ''),
(532, 53, 'Check that the S.W.L. is displayed on both the front and rear of the transporter.', ''),
(533, 53, 'Check that the warning sign, "Do Not Lift with Load via Padeyes", is displayed on each side of the unit.', ''),
(534, 53, 'Check that the stores contain the commissioning spares, the bolting, gaskets and the special tools.', ''),
(535, 53, 'Produce a defect list for issue in the Punch List.', ''),
(536, 54, 'Check the nameplate details are correct and has the Certification Authority Stamp and also S.W.L. is displayed', ''),
(537, 54, 'Check that the crane is installed at the correct elevation and that the rails are installed parallel and in accordance with the approved drawings.', ''),
(538, 54, 'Check for any installation damage.', ''),
(539, 54, 'Check that the crane is inaccordance with specifications and the approved drawings.', ''),
(540, 54, 'Check that the rope is reeved and anchored to the drum in accordance with the approved drawings. Also it must be undamaged and lubricated as per specifications.', ''),
(541, 54, 'Check that the air hose is sufficiently long to allow the crane to be operated at the limit of its travel.', ''),
(542, 54, 'Check that all the hose couplings are compatible.', ''),
(543, 54, 'Check the general cleanliness of the crane and that the rails are not obstructed.', ''),
(544, 54, 'Check preservation is carried out as per approved procedure.', ''),
(545, 54, 'Check that the painting is sound and undamaged.', ''),
(546, 54, 'Check that all the commissioning spares, the lubricants, bolting and any special tools are available in the stores.', ''),
(547, 54, 'Check that the preservation fluids have been removed and the systems have been flushed out.  Also check that the recommended lubricants have been used to fill the system.', ''),
(548, 54, 'Produce a set of marked-up drawings in accordance with the installation.', ''),
(549, 54, 'Produce a defects list to be included and issued in the Punch List.', ''),
(550, 55, 'Check that the nameplate details are both correct and complete.', ''),
(551, 55, 'Check location, elevation, orientation and that the vessel is level.', ''),
(552, 55, 'Check that the holding arrangements are correct.', ''),
(553, 55, 'Check for any installation damage.', ''),
(554, 55, 'Check the nozzles are suitably isolated to enable a safe internal examination.', ''),
(555, 55, 'Check that the vessel and its internals are in accordance with the approved drawings.', ''),
(556, 55, 'Check the vessel internally for cleanliness.', ''),
(557, 55, 'Check that all the internal bolting is correctly tightened.', ''),
(558, 55, 'Check preservation is carried out as per approved procedure.', ''),
(559, 55, 'Check that all the platforming and ladders are installed in accordance with the approved drawings. Also check that the manways are accessible and suitable for use.', ''),
(560, 55, 'Check all painting / insulation / internal linings for damage.', ''),
(561, 55, 'Check the earthing and bonding is as per project specification.', ''),
(562, 55, 'Check that the vessel pipe supports are in accordance with the design.', ''),
(563, 55, 'Check that with disconnected pipework that the pipe flanges correctly align with the nozzle flanges.', ''),
(564, 55, 'Check that the internal components can be withdrawn with the aid of suitably installed lifting equipment.', ''),
(565, 55, 'Check that the bolting is suitably lubricated.', ''),
(566, 55, 'Produce a set of marked-up drawings in accordance with the installation.', ''),
(567, 55, 'Produce a defects list for inclusion in the issued Punch List.', ''),
(568, 56, 'Check that the nameplate details are correct and complete.', ''),
(569, 56, 'Check the location, elevation, orientation and that the unit has been installed level.', ''),
(570, 56, 'Check that the holding down arrangements are correct.', ''),
(571, 56, 'Check for any installation damage.', ''),
(572, 56, 'Check the reciprocating compressor is installed as per approved data sheets and drawings', ''),
(573, 56, 'Check the unit for cleanliness.', ''),
(574, 56, 'Check the suction strainers have been installed.  (cooling water and air)', ''),
(575, 56, 'Check the general accessibility of the unit.', ''),
(576, 56, 'Check the painting visually for damage.', ''),
(577, 56, 'Check the earthing and bonding are as per Project Specifications.', ''),
(578, 56, 'Check that the supports, of the suction and discharge pipes, are in accordance with the design drawings.', ''),
(579, 56, 'Check that with the flanges of the suction, discharge and utility pipes unbolted that the flanges align correctly.', ''),
(580, 56, 'Check that there is adequate space to withdraw the unit.', ''),
(581, 56, 'Check that the bolting is suitably lubricated.', ''),
(582, 56, 'Check that the coupling guard has been installed.', ''),
(583, 56, 'Check preservation is carried out as per approved procedure.', ''),
(584, 56, 'Produce a set of marked-up drawings in accordance with the installation.', ''),
(585, 56, 'Produce a defects list for issue in the Punch List.', ''),
(586, 57, 'Check that the nameplate data is correct and complete.', ''),
(587, 57, 'Check that the equipment  "Tag Number"  is correct.', ''),
(588, 57, 'Check the location elevation and orientation are correct and the fan is level.', ''),
(589, 57, 'Check that the fan and motor are correctly mounted.', ''),
(590, 57, 'Check the anti-vibration mountings are installed and are adjusted correctly.', ''),
(591, 57, 'Check the painting or insulation for damage.', ''),
(592, 57, 'Check that the access doors are installed.', ''),
(593, 57, 'Check that all of the transport/shipping brackets have been removed.', ''),
(594, 57, 'Check that the fan is internally clean.', ''),
(595, 57, 'Check all the lubrication points and grease nipples are easily accessible.', ''),
(596, 57, 'Remove the fan drive belt guards to check that the alignment and tension of the belts are correct.', ''),
(597, 57, 'Check the free rotation of the fan motor and impeller.', ''),
(598, 57, 'Check that there is adequate space available to withdraw the impeller and motor for any required future maintenance.', ''),
(599, 57, 'At the time of removal of the fan drive belt guards, verify that the guards are internally lined with non-ferrous material.', ''),
(600, 57, ' Check the fan inlet guards are securely installed.  ( where applicable )', ''),
(601, 57, 'Check the connecting ductwork has its gaskets installed.', ''),
(602, 57, 'Check the equipment is bonded as per drawings and specifications.', ''),
(603, 57, 'Check that the equipment is preserved correctly.', ''),
(604, 57, 'Produce a set of marked-up drawings in accordance with the installation.', ''),
(605, 57, 'Produce a defects list for issue in the Punch List.', ''),
(606, 58, 'Check that the nameplate details are complete and correct.', ''),
(607, 58, 'Check that the equipment "Tag Number" is correct.', ''),
(608, 58, 'Check the location, elevation, orientation and that the skid is level.', ''),
(609, 58, 'Check that the holding down arragement is correct and that all the anti-vibration mountings are correctly adjusted.', ''),
(610, 58, 'Check the equipment is bonded as per drawings and specifications.', ''),
(611, 58, 'Remove the compressor coupling guards and the coupling spacer.', ''),
(612, 58, 'Check that the compressor motor rotates freely.', ''),
(613, 58, 'Replace both the coupling spacer and guards.', ''),
(614, 58, 'Check that there is sufficient access to remove both the condencer and chiller tube bundles.', ''),
(615, 58, 'Check that the chillers are correctly insulated as per the design.', ''),
(616, 58, 'Check that the skid pipework is securely mounted and that it is insulated as per the design.', ''),
(617, 58, 'Check the pipework connections to the skid are correctly supported and that they impart no load onto the refrigeration unit.', ''),
(618, 58, 'Ensure all the equipment drains and overflows are piped to a suitable drain line.', ''),
(619, 58, 'Check that the water expansion tank is internally lined with an acceptable coating and that it is clean.', ''),
(620, 58, 'Check that the ball-valve operates correctly.', ''),
(621, 58, 'Check that the freon charge pressure at the skid is being maintained at the vendors recommended level.', ''),
(622, 58, 'Check that the equipment is preserved as per approved procedure.', ''),
(623, 58, 'Produce a set of marked-up drawings in accordance with the installation.', ''),
(624, 58, 'Produce a defects list for issue in the Punch List.', ''),
(625, 59, 'Check that the nameplate details are complete and correct.', ''),
(626, 59, 'Check all of the auxillary items are supplied and they are correctly installed.', ''),
(627, 59, 'Check the location, elevation, orientation and that the turbine is level.', ''),
(628, 59, 'Check that the turbine holding down arrangements are correct.', ''),
(629, 59, 'Check for any installation damage.', ''),
(630, 59, 'Check the turbine and its auxillaries for cleanliness.', ''),
(631, 59, 'Check preservation is carried out as per approved procedure.', ''),
(632, 59, 'Check that the insulation on the power turbine, including that which is for the protection of the personell, has not been damaged.', ''),
(633, 59, 'Check that the acoustic enclosure is complete and undamaged.', ''),
(634, 59, 'Check that the fuel sytems are complete. Where applicable both gas and liquid fuel systems.', ''),
(635, 59, 'Check the equipment is bonded as per drawings and specifications.', ''),
(636, 59, 'Check all of the utility pipe-supports are as per design.', ''),
(637, 59, 'Check that when the utility pipe flanges are disconnected, that they align correctly with their relative skid pipe flanges.', ''),
(638, 59, 'Check that there is adequate space available and provision for the removal of the turbine using suitable lifting gear.', ''),
(639, 59, 'Check that the coupling and the coupling guard have been installed.', ''),
(640, 59, 'Produce a set of marked-up drawings in accordance with the installation.', ''),
(641, 59, 'Produce a defects list for issue in the Punch List.', ''),
(642, 60, 'Check that the nameplate details are complete and correct.', ''),
(643, 60, 'Check the location, elevation, orientation and that the compressor is level.', ''),
(644, 60, 'Check that the compressor holding down arrangements are correct.', ''),
(645, 60, 'Check for any installation damage.', ''),
(646, 60, 'Check the compressor and the auxillaries for cleanliness.', ''),
(647, 60, 'Check all the platforming and ladders are installed as per approved drawings.', ''),
(648, 60, 'Check all of the auxillary items are supplied and they have been correctly installed.', ''),
(649, 60, 'Check that the suction strainers have been installed.', ''),
(650, 60, 'Check the painting visually for damage.', ''),
(651, 60, 'Check the equipment is bonded as per drawings and specifications.', ''),
(652, 60, 'Check that with unbolted flanges on the suction and discharge piping, that the corresponding pipe flanges on the package align with them correctly. ', ''),
(653, 60, 'Check that the suction, discharge and utility pipe-supports are in accordance with the design drawings.', ''),
(654, 60, 'Check that there is adequate space available to be able to withdraw the internals using suitable lifting gear.', ''),
(655, 60, 'Check that both the coupling and coupling guards have been installed.', ''),
(656, 60, 'Check preservation is carried out as per approved procedure.', ''),
(657, 60, 'Produce a set of marked-up drawings which are as per installation.', ''),
(658, 60, 'Produce a defects list to be issued in the Punch List.', ''),
(659, 61, 'Check that the nameplate details are correct and complete.', ''),
(660, 61, 'Check the location, elevation, orientation and that the skid is level.', ''),
(661, 61, 'Check that the holding down arrangements are correct.', ''),
(662, 61, 'Check for any installation damage.', ''),
(663, 61, 'Check the package is installed as per specifiations and approved drawings.', ''),
(664, 61, 'Check that all the nozzles that are not to be used are suitably sealed.', ''),
(665, 61, 'Check the package throughout for cleanliness.', ''),
(666, 61, 'Check preservation is carried out as per approved procedure.', ''),
(667, 61, 'Check the painting visually  for damage.', ''),
(668, 61, 'Check the equipment is bonded as per drawings and specifications.', ''),
(669, 61, 'Check that the skid piping-supports are in accordance with the design.', ''),
(670, 61, 'Check that after unbolting the pipework flanges that they align correctly with their respective skid flanges.', ''),
(671, 61, 'Check that the items can be withdrawn when using suitable lifting gear.', ''),
(672, 61, 'Check that the temporary fine mesh strainer has been installed.  (The strainer for normal use is of a coaser mesh.)', ''),
(673, 61, 'Check that the two pre-filters and two after- filters are serviceable.  ( for Y- type stainers.)', ''),
(674, 61, 'Check that the bolting is suitably lubricated.', ''),
(675, 61, 'Produce a set of marked-up drawings in accordance with the installation.', ''),
(676, 61, 'Produce a defects list for issue in the Punch List.', ''),
(677, 62, 'Check that the nameplate details are complete and correct.', ''),
(678, 62, 'Check that all of the auxillary items have been supplied and also that they have been correctly installed.', ''),
(679, 62, 'Check the location, elevation, orientation are correct and that the unit is level.', ''),
(680, 62, 'Check that the holding down arrangements are correct.', ''),
(681, 62, 'Check for any installation damage.', ''),
(682, 62, 'Check the unit for cleanliness.', ''),
(683, 62, 'Check that the inlet strainers have been installed.', ''),
(684, 62, 'Check that the seal-gas system is complete.', ''),
(685, 62, 'Check that the equipment is bonded in accordance with drawings and specifications.', ''),
(686, 62, 'Check that the utility piping-supports are constructed in accordance with the design drawings', ''),
(687, 62, 'Check that the unbolted flanges of the inlet, outlet and utility piping align correctly with the pipe flanges on the package.', ''),
(688, 62, 'Check that there is adequate space available to remove the rotors when using suitable lifting gear.', ''),
(689, 62, ' Check that preservation has been carried out in accordance with the approved procedure.', ''),
(690, 62, 'Produce a set of marked-up drawings which are in accordance with the installation.', ''),
(691, 62, 'Produce a defects list for issue in the Punch List.', ''),
(692, 63, 'Check that the equipment nameplate is correct.', ''),
(693, 63, 'Check the location, elevation, orientation and that the heater is level.', ''),
(694, 63, 'Check for any installation damage.', ''),
(695, 63, 'Check that the holding down arrangements are correct.', ''),
(696, 63, 'Check heater refractory work for quality and conformity.', ''),
(697, 63, 'Check the installation of the burners for conformity, level and orientation. Check operation of the combustion-air louvres.', ''),
(698, 63, 'Check the operation and the position of the stack-damper.', ''),
(699, 63, 'Verify that the vacuum indicators and their piping are correct and that they are not obstructed from view.', ''),
(700, 63, 'Verify the flue gas sampling installation.', ''),
(701, 63, 'Check for the free operation of the overpressure openings.', ''),
(702, 63, 'Check the heater for cleanliness.', ''),
(703, 63, 'Check that the heater is bonded according to the specifications.', ''),
(704, 63, 'Check that the internal tubes-support is in accordance with the design. ', ''),
(705, 63, 'Check that the access ladders and the gangway provide easy access and that they conform to the design drawings.', ''),
(706, 63, 'Check that the observation doors, situated on the combustion chamber, operate quite freely.', ''),
(707, 63, 'Check the valving arrangement of the combustible fuel.', ''),
(708, 63, 'Check the combustion ductwork where applicable.', ''),
(709, 63, 'Check that the stack conforms to the project drawings. Also where possible carry out an internal inspection.', '');
INSERT INTO `tbl_template_details` (`temp_no`, `temp_tmp_no`, `temp_text`, `temp_txt`) VALUES
(710, 63, 'Produced a set of marked-up drawings which are as per installation.', ''),
(711, 63, 'Produce a defects list for issue in the Punch List.', ''),
(712, 64, 'Check that the circuit is de-energized and safe.', ''),
(713, 64, 'Check all tapes and junction boxex are undamaged. ', ''),
(714, 64, 'Check all tapes and junction boxex are installed according to drawings.', ''),
(715, 64, 'Check all tapes characteristics against project data (type, rated power)', ''),
(716, 64, 'Check cable glands mounthing and compliance with specification.', ''),
(717, 64, 'Check thermostat installation (if any).', ''),
(718, 64, 'Check rating of circuit breaker against drawings.', ''),
(719, 64, 'Check circuit earthing and bonding against drawings.', ''),
(720, 64, 'Check tapes, junction boxes, cables and accessories tagging.', ''),
(721, 64, 'Check the avaibility of certification documents according hazardous area equipment installation. ', ''),
(722, 64, 'Produce a defects list for punch list issue.', ''),
(723, 64, 'Produce marked-up drawings in accordance with installation.', ''),
(927, 33, '', ''),
(725, 65, 'Check cable tray / ladder  is undamaged and installed against drawings without clashes with pipe runs or other equipment.', ''),
(726, 65, 'Check cable tray / ladder is adequately supported against drawings ( no excessive deflection).', ''),
(727, 65, 'Check cables segregation in accordance with drawings.', ''),
(728, 65, 'Check the capacity of cable tray / ladder (bunching , size of cables, etc…).', ''),
(729, 65, 'Check insulation pads are adapted to stainless steel or aluminium cable tray /ladder.', ''),
(730, 65, 'Check cable tray / ladder cleanness', ''),
(731, 65, 'Check lids intallation (if any) against drawings,', ''),
(732, 65, 'Check cable tray / ladder earthed and bonded against drawings.', ''),
(733, 65, 'Produce  marked-up  layout drawing in accordance with installation.', ''),
(734, 65, 'Produce a defects list for punch list issue.', ''),
(735, 66, 'Check box is de-energized and safe.', ''),
(736, 66, 'Check box is correctly mounted and easily accessible.', ''),
(737, 66, 'Check box tagging against drawing.', ''),
(738, 66, 'Check nameplate data is correct.', ''),
(739, 66, 'Check flameproof joints are clean and greased with approved lubricants ', ''),
(740, 66, 'Check for missing bolts and gaskets ', ''),
(741, 66, 'Check all bolts are fitted and correcly tighted .', ''),
(742, 66, 'Check all unused entries are suitably plugged.', ''),
(743, 66, 'Check cable glands mounting and compliance with specification', ''),
(744, 66, 'Check earthing and bonding against drawings.', ''),
(745, 66, ' Check terminal blocks segregation barriers are fitted where necessary.', ''),
(746, 66, 'Check the availability of certification documents according to hazardous area box installation', ''),
(747, 66, 'Produce marked-up termination drawings in accordance with installation.', ''),
(748, 66, 'Produce a defects list for punch list issue.', ''),
(749, 67, 'Check that equipment is de-energized and safe.', ''),
(750, 67, 'Check that all equipment and cables are clearly identified and tagged in accordance with construction drawings.', ''),
(751, 67, 'Check that equipment is in good condition and installed in the correct location.', ''),
(752, 67, 'Check that all field equipment is suitable for the area in which it is installed.', ''),
(753, 67, 'Check probe type and size.   ', ''),
(754, 67, 'Check that type and location of each Deep Well Anode Ground bed is as specified and its effective boundary defined and secured.', ''),
(755, 67, 'Check that the Deep Well Anode Bed is outside any hazardous area.', ''),
(756, 67, 'Check that all test points are positioned correctly and labeled with all necessary information.', ''),
(757, 67, 'Check all cable connections are correctly terminated, clean and secure.', ''),
(758, 67, 'Check the polarisation cells to ground the pipeline as specified and the Spark Gap Surge Diverter is installed at each insulation joint.', ''),
(759, 67, 'Check manufacturers nameplate data.', ''),
(760, 67, 'Check that cables are adequately supported.', ''),
(761, 67, 'Check all glands and ensure gland plates are suitable for external locations.', ''),
(762, 67, 'Check that all earthing and bonding is as per specification.', ''),
(763, 67, 'Produce marked-up drawings in accordance with the installation.', ''),
(764, 67, 'Record all defects on Precommissioning Punchlist.', ''),
(929, 33, '', ''),
(928, 33, '', ''),
(767, 68, 'Check cable physical integrity.', ''),
(768, 68, 'Check cable data against cable schedule.', ''),
(769, 68, 'Check cable routing against drawings (segregation, distance…).', ''),
(770, 68, 'Check cable is supported and  fixed to rack according to project Specification.', ''),
(771, 68, 'Check bending radius is within the specified limits', ''),
(772, 68, 'Check cables is correctly loomed and segregated in accordance with specification.', ''),
(773, 68, 'Check cable and core marking against drawings.', ''),
(774, 68, 'Check cable gland suit for cable type.', ''),
(775, 68, 'Check terminations are in accordance with termination diagram and produce marked-up termination drawings.', ''),
(776, 68, 'Produce a defect  list for punch list issue.', ''),
(930, 82, '', ''),
(931, 83, '', ''),
(779, 69, 'Check for mechanical damage', ''),
(780, 69, 'Check installed equipment is suitable and conforms to specification', ''),
(781, 69, 'Check installation conforms to hook-up drawing', ''),
(782, 69, 'Check construction conforms to detailed drawings', ''),
(783, 69, 'Check tube fittings manufacturer is the one chosen for the plant', ''),
(784, 69, 'Check insulation and heat-tracing', ''),
(785, 69, 'Check identification (tag number, tag plates)', ''),
(786, 69, 'Check supporting and protection against vibrations', ''),
(787, 69, 'Check accessibility conforms to specifications, with platforming where necessary', ''),
(788, 69, 'Check instruction plates', ''),
(789, 69, 'Check electrical connections', ''),
(790, 69, 'Check cables conformity and identification', ''),
(791, 69, 'Check cable glands conformity and mounting', ''),
(792, 69, 'Check earthing connections (cable armour and screen)', ''),
(793, 69, 'Check ATEX certificates', ''),
(794, 69, 'Flush instrument pipework with dry air', ''),
(795, 69, 'Check equipment is correctly preserved', ''),
(796, 69, 'Produce marked-up documents in accordance with installation', ''),
(797, 69, 'Produce the list of defects for punch list issue', ''),
(798, 70, 'Check box is de-energized and safe.', ''),
(799, 70, 'Check box is correctly mounted and easily accessible.', ''),
(800, 70, 'Check box tagging against drawing.', ''),
(801, 70, 'Check nameplate data is correct.', ''),
(802, 70, 'Check flameproof joints are clean and greased with approved lubricants ', ''),
(803, 70, 'Check for missing bolts and gaskets ', ''),
(804, 70, 'Check all bolts are fitted and correcly tighted .', ''),
(805, 70, 'Check all unused entries are suitably plugged.', ''),
(806, 70, 'Check cable glands mounting and compliance with specification', ''),
(807, 70, 'Check earthing and bonding against drawings.', ''),
(808, 70, ' Check terminal blocks segregation barriers are fitted where necessary.', ''),
(809, 70, 'Check the availability of certification documents according to hazardous area box installation', ''),
(810, 70, 'Produce marked-up termination drawings in accordance with installation.', ''),
(811, 70, 'Produce a defects list for punch list issue.', ''),
(812, 71, 'Check for mechanical damage', ''),
(813, 71, 'Check installed equipment is suitable and conforms to specification', ''),
(814, 71, 'Check installation conforms to F&G detection layout drawings', ''),
(815, 71, 'Check test facility is installed', ''),
(816, 71, 'Check tube fittings manufacturer is the one chosen for the plant', ''),
(817, 71, 'Check protective cap is installed', ''),
(818, 71, 'Check identification (tag number, tag plates)', ''),
(819, 71, 'Check supporting and protection against vibrations', ''),
(820, 71, 'Check accessibility conforms to specifications, with platforming where necessary', ''),
(821, 71, 'Check calibration certificate', ''),
(822, 71, 'Check electrical connections', ''),
(823, 71, 'Check cable conformity and identification', ''),
(824, 71, 'Check cable gland conformity and mounting', ''),
(825, 71, 'Check earthing connections (cable armour and screen)', ''),
(826, 71, 'Check ATEX certificate', ''),
(827, 71, 'Flush instrument pipework with dry air', ''),
(828, 71, 'Dismantle and storel sensor until installation just before commissioning', ''),
(829, 71, 'Check equipment is correctly preserved', ''),
(830, 71, 'Produce marked-up documents in accordance with installation', ''),
(831, 71, 'Produce the list of defects for punch list issue', ''),
(832, 71, 'Produce the list of defects for punch list issue', ''),
(833, 72, 'Check that the completed painting is in accordance with the specifications covering quality and thickness.', ''),
(834, 72, 'Check that the marking (identification coating) and the colour coding conforms to the specifications.', ''),
(835, 72, 'Check that after pre-commissioning is finished that the painting of piping systems and of the equipment is "touched up" to conform to the specifications', ''),
(836, 72, 'Produce a defects list for issue in the Punch List.', ''),
(837, 76, 'SOLENOID VALVE', ''),
(838, 76, 'SOLENOID VALVE', ''),
(839, 76, 'LIMIT SWITCH', ''),
(840, 76, 'LIMIT SWITCH', ''),
(841, 76, ' PRESSURE SWITCH', ''),
(842, 76, ' PRESSURE GAUGE', ''),
(843, 76, ' PRESSURE GAUGE', ''),
(844, 78, 'Check that the nameplate details are both correct and complete', ''),
(845, 78, 'Check the location, elevation, orientation and that the vessel is level', ''),
(846, 78, 'Check that the holding arrangments are correct', ''),
(847, 78, 'Check for any installation damage', ''),
(848, 78, 'Check that the nozzle are suitably isolated to enable asafe internal examintion to be made', ''),
(849, 78, 'Check the vessel internals are as per approved drawings; ( incuding any heating devices )', ''),
(850, 78, 'Check the vessel internally for cleanliness', ''),
(851, 78, 'Check that all the internal bolting has been tightened', ''),
(852, 78, 'Check preservation is carried out as per approved procedure', ''),
(853, 78, 'Check all platforming and ladders are installed as per approved drawings. Also manways are accessible and suitable for operation', ''),
(854, 78, 'Check out the painting, insulation and the lining for damage', ''),
(855, 78, 'Check the earting and bonding are as per Project spesifications', ''),
(856, 78, 'Check that the pipe support are in accordance with the approved desaign', ''),
(857, 78, 'Check the disconnected pipework flanges against the nozzle flanges for', ''),
(858, 78, 'Check the internals can be withdrwan with the use of suitable lifting gear', ''),
(859, 78, 'For floating roofs: check internally the roof pontoons', ''),
(860, 78, 'Check that the bolting is suitably lubricated', ''),
(861, 78, 'Produce a set of marked-up drawings in accordance with tha installation', ''),
(862, 78, 'Produce a defects list for inclusion in the Punch List issue', ''),
(863, 79, 'Check the namplate details are both correct and complete', ''),
(864, 79, 'Check location, elevation, orientation and that the vessel is level', ''),
(865, 79, 'Check that the holding arrangements are correct', ''),
(866, 79, 'Check for any installation damage', ''),
(867, 79, 'Check the nozzle are suitably isolated to enable a safe internal examination', ''),
(868, 79, 'Check that the vessel and its internals are in accordance with the approved drawings', ''),
(869, 79, 'Check the vessel internally for cleanliness', ''),
(870, 79, 'Check that all the internal bolting is correctly tightened', ''),
(871, 79, 'Check the preservation is carried out as per approved procedure', ''),
(872, 79, 'Check that all the platforming and ladders are installed in accordance with the approved drawings. Also check that the manways are accessible and suitable for use', ''),
(873, 79, 'Check all painting / insulation / internal linings for damage', ''),
(874, 79, 'Check the earthing and bonding is as per project specification', ''),
(875, 79, 'Check that the vessel pipe support are in accordance with the design', ''),
(876, 79, 'Check that with disconnected pipework that the pipe flanges correctly align with the nozzle flanges', ''),
(877, 79, 'Check that the internal components can be withdrawn with the aid of suitably insatalled lifting equipment', ''),
(878, 79, 'Check that the bolting is suitably lubricated', ''),
(879, 79, 'Produce a set of marked-up drawings in accordance with the installation', ''),
(880, 79, 'Produce a defects list for inclusion in the issued Punch List', ''),
(934, 85, '', ''),
(933, 84, '', ''),
(932, 84, '', ''),
(885, 82, '', ''),
(926, 33, '', ''),
(908, 38, '', ''),
(909, 38, '', ''),
(910, 38, '', ''),
(911, 38, '', ''),
(912, 38, '', ''),
(913, 38, '', ''),
(914, 38, '', ''),
(915, 38, '', ''),
(916, 38, '', ''),
(917, 38, '', ''),
(918, 38, '', ''),
(920, 33, '', ''),
(921, 33, '', ''),
(922, 33, '', ''),
(923, 33, '', ''),
(924, 33, '', ''),
(925, 33, '', ''),
(937, 88, '', ''),
(936, 87, '', ''),
(938, 89, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_template_details_temp`
--

CREATE TABLE `tbl_template_details_temp` (
  `temp_no` bigint(20) NOT NULL,
  `temp_tmp_no` int(11) NOT NULL,
  `temp_text` text NOT NULL,
  `temp_txt` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_template_details_temp`
--

INSERT INTO `tbl_template_details_temp` (`temp_no`, `temp_tmp_no`, `temp_text`, `temp_txt`) VALUES
(1, 1, 'Check for mechanical damage', ''),
(2, 1, 'Check installed equipment is suitable and conforms to specification', ''),
(3, 1, 'Check installation conforms to P&ID and hook-up drawing', ''),
(4, 1, 'Check tube fittings manufacturer is the one chosen for the plant', ''),
(5, 1, 'Check piping connections provide required block & bleed facility', ''),
(6, 1, 'Check insulation and heat-tracing', ''),
(7, 1, 'Check identification (tag number, tag plates)', ''),
(8, 1, 'Check supporting and protection against vibrations', ''),
(9, 1, 'Check accessibility conforms to specifications, with platforming where necessary', ''),
(10, 1, 'Check calibration certificate', ''),
(14, 1, '', ''),
(18, 1, 'Flush instrument pipework with dry air', ''),
(19, 1, 'Check equipment is correctly preserved', ''),
(20, 1, 'Produce marked-up documents in accordance with installation', ''),
(21, 1, 'Produce the list of defects for punch list issue', ''),
(881, 0, 'TEST', ''),
(882, 0, 'tet', ''),
(883, 1, '', ''),
(884, 1, '', ''),
(895, 88, 'd', ''),
(886, 82, 'a1', ''),
(887, 82, 'a2', ''),
(893, 87, 'c', ''),
(894, 87, 'c1', ''),
(896, 88, 'd1', ''),
(888, 82, 'a3', ''),
(889, 82, 'a4', ''),
(890, 82, 'ini item percobaan 2', ''),
(891, 84, '', ''),
(43, 3, 'Check for mechanical damage', ''),
(44, 3, 'Check installed equipment is suitable and conforms to specification', ''),
(45, 3, 'Check installation conforms to P&ID and hook-up drawing', ''),
(46, 3, 'Check tube fittings manufacturer is the one chosen for the plant', ''),
(47, 3, 'Check piping connections provide required block & bleed facility', ''),
(48, 3, 'Check insulation and heat-tracing', ''),
(49, 3, 'Check identification (tag number, tag plates)', ''),
(50, 3, 'Check supporting and protection against vibrations', ''),
(51, 3, 'Check accessibility conforms to specifications with platforming where necessary', ''),
(52, 3, 'Check calibration certificate', ''),
(53, 3, 'Check instrument positioning and visibility', ''),
(54, 3, '', ''),
(55, 3, '', ''),
(56, 3, 'Flush instrument pipework with dry air', ''),
(57, 3, 'Check equipment is correctly preserved', ''),
(58, 3, 'Produce marked-up documents in accordance with installation', ''),
(59, 3, 'Produce the list of defects for punch list issue', ''),
(892, 85, '', ''),
(898, 89, '', ''),
(899, 90, '', ''),
(900, 90, '', ''),
(901, 90, '', ''),
(902, 91, 'test color', ''),
(903, 91, 'adfadfaf', ''),
(904, 92, '', ''),
(905, 92, '', ''),
(906, 93, 'tereretetr', ''),
(60, 4, 'Check for mechanical damage', ''),
(61, 4, 'Check installed equipment is suitable and conforms to specification', ''),
(62, 4, 'Check installation conforms to P&ID and hook-up drawing', ''),
(63, 4, 'Check tube fittings manufacturer is the one chosen for the plant', ''),
(64, 4, 'Check piping connections provide required block & bleed facility', ''),
(65, 4, 'Check insulation and heat-tracing', ''),
(66, 4, 'Check identification (tag number, tag plates)', ''),
(67, 4, 'Check supporting and protection against vibrations', ''),
(68, 4, 'Check accessibility conforms to specifications, with platforming where necessary', ''),
(69, 4, 'Check calibration certificate', ''),
(70, 4, 'Check electrical connections', ''),
(71, 4, 'Check cable conformity and identification at instrument side', ''),
(72, 4, 'Check cable gland conformity and mounting', ''),
(73, 4, 'Check earthing connections (cable armour and screen)', ''),
(74, 4, 'Check ATEX certificate', ''),
(75, 4, '', ''),
(76, 4, '', ''),
(77, 4, 'Flush instrument pipework with dry air', ''),
(78, 4, 'Check equipment is correctly preserved', ''),
(79, 4, 'Produce marked-up documents in accordance with installation', ''),
(80, 4, 'Produce the list of defects for punch list issue', ''),
(931, 83, '', ''),
(933, 84, '', ''),
(935, 86, '', ''),
(399, 30, 'Check that all of the materiel conforms to the specifications.', ''),
(400, 30, 'Check the pipe work installation conforms to specifications, drawings and P&IDs', ''),
(401, 30, 'Check that pipe work and valves are undamaged. Also check  the ancillaries and any other component. ', ''),
(402, 30, 'Check the installation of all pipe-supports are as per specifications and drawings. Also springs have shipping-stops fitted and the piping sits on its supports.', ''),
(403, 30, 'Check the location of the pipe anchors.', ''),
(404, 30, 'Check the alignment of the pipe guides.', ''),
(405, 30, 'Check  the check-valves operate freely before they are installed into position.', ''),
(406, 30, 'Check that the flow direction of the valves is in the correct sense/direction.', ''),
(407, 30, 'After the installation of a valve check that it operates freely.', ''),
(408, 30, 'Check the valves are correctly lubricated and they have the correct spindle packing.', ''),
(409, 30, 'Check there is a suitble access, both to operate and to maintain valves.', ''),
(410, 30, 'Check that the pipework does not in any way load and stress the equipment it is serving.', ''),
(411, 30, 'Check the pipe flanges are mounted square to each other. Also the bolting and gaskets are correct.', ''),
(412, 30, 'Check that all the bolts and fasteners are suitably lubricated.', ''),
(413, 30, 'Produce a set of marked-up drawings in accordance with the installation.', ''),
(414, 30, 'Produce a defects list for isue in the Punch List.', ''),
(863, 79, 'Check the namplate details are both correct and complete', ''),
(864, 79, 'Check location, elevation, orientation and that the vessel is level', ''),
(865, 79, 'Check that the holding arrangements are correct', ''),
(866, 79, 'Check for any installation damage', ''),
(867, 79, 'Check the nozzle are suitably isolated to enable a safe internal examination', ''),
(868, 79, 'Check that the vessel and its internals are in accordance with the approved drawings', ''),
(869, 79, 'Check the vessel internally for cleanliness', ''),
(870, 79, 'Check that all the internal bolting is correctly tightened', ''),
(871, 79, 'Check the preservation is carried out as per approved procedure', ''),
(872, 79, 'Check that all the platforming and ladders are installed in accordance with the approved drawings. Also check that the manways are accessible and suitable for use', ''),
(873, 79, 'Check all painting / insulation / internal linings for damage', ''),
(874, 79, 'Check the earthing and bonding is as per project specification', ''),
(875, 79, 'Check that the vessel pipe support are in accordance with the design', ''),
(876, 79, 'Check that with disconnected pipework that the pipe flanges correctly align with the nozzle flanges', ''),
(877, 79, 'Check that the internal components can be withdrawn with the aid of suitably insatalled lifting equipment', ''),
(878, 79, 'Check that the bolting is suitably lubricated', ''),
(879, 79, 'Produce a set of marked-up drawings in accordance with the installation', ''),
(880, 79, 'Produce a defects list for inclusion in the issued Punch List', ''),
(186, 10, 'SOLENOID VALVE', ''),
(187, 10, 'SOLENOID VALVE', ''),
(188, 10, 'LIMIT SWITCH', ''),
(189, 10, 'LIMIT SWITCH', ''),
(190, 10, 'PRESSURE SWITCH', ''),
(191, 10, 'PRESSURE GAUGE', ''),
(192, 10, 'PRESSURE GAUGE', ''),
(193, 11, 'SOLENOID', ''),
(194, 11, 'SOLENOID', ''),
(195, 11, 'LIMIT SWITCH', ''),
(196, 11, 'LIMIT SWITCH', ''),
(907, 38, '', ''),
(432, 38, ' R-EARTH', ''),
(433, 38, ' S-EARTH', ''),
(434, 38, ' T-EARTH', ''),
(435, 38, 'R-S', ''),
(436, 38, 'S-T', ''),
(437, 38, 'R-T', ''),
(908, 38, '', ''),
(909, 38, '', ''),
(910, 38, '', ''),
(911, 38, '', ''),
(912, 38, '', ''),
(913, 38, '', ''),
(914, 38, '', ''),
(915, 38, '', ''),
(916, 38, '', ''),
(917, 38, '', ''),
(918, 38, '', ''),
(241, 18, 'Check switchboard is de-energized and safe.', ''),
(242, 18, 'Check conformity against data sheet and project specification', ''),
(243, 18, 'Check preservation status and anti-condensation heaters are ready to be energized.', ''),
(244, 18, 'Check equipment is correctly aligned, leveled, rigid and secured with correct bolting,', ''),
(245, 18, 'Check all panel mounted devices are undamaged ', ''),
(246, 18, 'Check all panel mounted devices are  tagged in accordance with data.', ''),
(247, 18, 'Check if construction rating plate data is correct.', ''),
(248, 18, 'Check bus bars and supports are clean and clear of debris, torque all bolts to specifications.', ''),
(249, 18, 'Check earthing and bonding of all equipment against drawings.', ''),
(250, 18, 'Check gland plates (if any) and terminations are correct and suitable for external cabling.', ''),
(251, 18, 'Check all switching devices are mechanically operational and undamaged.', ''),
(252, 18, 'Check all circuit breakers and starter cubicles run freely in compartments', ''),
(253, 18, 'Check swithgear mechanical interlocks against interlock diagram', ''),
(255, 18, 'Check protection relays against protection diagram.', ''),
(256, 18, 'Check all equipment are identified against drawings (cubicles, relays etc,,,) ', ''),
(257, 18, 'Check interconnection wiring against drawings.', ''),
(258, 18, 'Check all fuses and switchgear ratings ( breakers , contactors, etc,,,)', ''),
(259, 18, 'Check vendor special tools are available.', ''),
(260, 18, 'Produce marked-up drawings in accordance with installation.', ''),
(261, 18, 'Produce a defects list for punch list issue.', ''),
(219, 17, 'Check switchboard is de-energized and safe.', ''),
(220, 17, 'Check conformity against data sheet and project specification', ''),
(221, 17, 'Check preservation status and anti-condensation heaters are ready to be energized.', ''),
(222, 17, 'Check equipment is correclty aligned, leveled, rigid and secured with correct bolting.', ''),
(223, 17, 'Check all panel mounted devices are undamaged and tagged in accordance with data.', ''),
(224, 17, 'Check if construction rating plate data is correct.', ''),
(225, 17, 'Check bus bars and supports are clean and clear of debris, torque all bolts to specification.', ''),
(226, 17, 'Check earthing and bonding of all equipment against drawings', ''),
(227, 17, 'Check gland plates (if any) and terminations are correct and suitable for external cabling.', ''),
(228, 17, 'Check all switching devices are mechanically operational and undamaged.', ''),
(229, 17, 'Check switchgear mechanical interlocks against interlock diagram', ''),
(230, 17, 'Check all shutters are identified, operational and lockable.', ''),
(232, 17, 'Check protection relays against protection diagram ', ''),
(233, 17, 'Check protection relays are tagged correctly.', ''),
(234, 17, 'Check interconnection wiring against drawings.', ''),
(235, 17, 'Check all fuses and switchgear ratings ( circuit-breakers , contactors , etc,,,)', ''),
(236, 17, 'Check power cables are properly fitted and armour and screens earthing is correct', ''),
(237, 17, 'Check vendor special tools are available.', ''),
(238, 17, 'Produce marked-up drawing in accordance with installation.', ''),
(239, 17, 'Check suppliers document', ''),
(240, 17, 'Produce a defects list for punch list issue.', ''),
(272, 20, 'Check cable physical integrity.', ''),
(273, 20, 'Check cable is as specified in project cable schedule.', ''),
(274, 20, 'Check cable routing against drawings (segregation, distance…).', ''),
(275, 20, 'Check cable is supported and  fixed to rack according to project Specification.', ''),
(276, 20, 'Check bending radius is within the specified limits.', ''),
(277, 20, 'Check cable is correctly loomed and segregated .', ''),
(278, 20, 'Check cable and core marking against drawings.', ''),
(279, 20, 'Check cable gland suit for cable type.', ''),
(280, 20, 'Check cable earthing against drawings', ''),
(281, 20, 'Check gland plate for single core cables is non ferrous.', ''),
(282, 20, 'Produce list of defects for punch list issue.', ''),
(262, 19, 'Check cable physical integrity.', ''),
(263, 19, 'Check cable data against cable schedule.', ''),
(264, 19, 'Check cable routing against drawings (segregation, distance…). ', ''),
(265, 19, 'Check cable is supported and  fixed to rack according to project Specification.', ''),
(266, 19, 'Check bending radius is within the specified limits.', ''),
(267, 19, 'Check cable and core marking against drawings', ''),
(268, 19, 'Check cable gland suit for cable type.', ''),
(269, 19, 'Check cable earthing against drawings', ''),
(270, 19, 'Check gland plate for single core cables is non ferrous.', ''),
(271, 19, 'Produce list of defects for punch list issue.', ''),
(735, 66, 'Check box is de-energized and safe.', ''),
(736, 66, 'Check box is correctly mounted and easily accessible.', ''),
(737, 66, 'Check box tagging against drawing.', ''),
(738, 66, 'Check nameplate data is correct.', ''),
(739, 66, 'Check flameproof joints are clean and greased with approved lubricants ', ''),
(740, 66, 'Check for missing bolts and gaskets ', ''),
(741, 66, 'Check all bolts are fitted and correcly tighted .', ''),
(742, 66, 'Check all unused entries are suitably plugged.', ''),
(743, 66, 'Check cable glands mounting and compliance with specification', ''),
(744, 66, 'Check earthing and bonding against drawings.', ''),
(745, 66, ' Check terminal blocks segregation barriers are fitted where necessary.', ''),
(746, 66, 'Check the availability of certification documents according to hazardous area box installation', ''),
(747, 66, 'Produce marked-up termination drawings in accordance with installation.', ''),
(748, 66, 'Produce a defects list for punch list issue.', ''),
(198, 16, 'Check for mechanical damage', ''),
(199, 16, 'Check installed equipment is suitable and conforms to specification', ''),
(200, 16, 'Check installation conforms to F&G detection layout drawings', ''),
(201, 16, 'Check test facility is installed', ''),
(202, 16, 'Check sensor activation lamp is visible', ''),
(203, 16, 'Check remote annunciator is installed where required', ''),
(204, 16, 'Check identification (tag number, tag plates)', ''),
(205, 16, 'Check supporting and protection against vibrations', ''),
(206, 16, 'Check accessibility conforms to specifications, with platforming where necessary', ''),
(207, 16, 'Check calibration certificate', ''),
(208, 16, 'Check electrical connections', ''),
(209, 16, 'Check cable conformity and identification', ''),
(210, 16, 'Check cable gland conformity and mounting', ''),
(211, 16, 'Check earthing connections (cable armour and screen)', ''),
(212, 16, 'Check ATEX certificate', ''),
(213, 16, '', ''),
(214, 16, '', ''),
(215, 16, 'Check equipment is correctly preserved', ''),
(216, 16, 'Produce marked-up documents in accordance with installation', ''),
(217, 16, 'Produce the list of defects for punch list issue', ''),
(218, 16, '', ''),
(767, 68, 'Check cable physical integrity.', ''),
(768, 68, 'Check cable data against cable schedule.', ''),
(769, 68, 'Check cable routing against drawings (segregation, distance…).', ''),
(770, 68, 'Check cable is supported and  fixed to rack according to project Specification.', ''),
(771, 68, 'Check bending radius is within the specified limits', ''),
(772, 68, 'Check cables is correctly loomed and segregated in accordance with specification.', ''),
(773, 68, 'Check cable and core marking against drawings.', ''),
(774, 68, 'Check cable gland suit for cable type.', ''),
(775, 68, 'Check terminations are in accordance with termination diagram and produce marked-up termination drawings.', ''),
(776, 68, 'Produce a defect  list for punch list issue.', ''),
(144, 8, 'Check for mechanical damage', ''),
(145, 8, 'Check installed equipment is suitable and conforms to specification', ''),
(146, 8, 'Check installation conforms to P&ID and hook-up drawing', ''),
(147, 8, 'Check valve is installed in accordance with flow direction', ''),
(148, 8, 'Check tube fittings manufacturer is the one chosen for the plant', ''),
(149, 8, 'Check insulation and heat-tracing', ''),
(150, 8, 'Check identification (tag number, tag plates)', ''),
(151, 8, 'Check supporting and protection against vibrations', ''),
(152, 8, 'Check accessibility conforms to specifications, with platforming where necessary', ''),
(153, 8, 'Check calibration certificate', ''),
(154, 8, 'Check connections between actuator and electro-positioner', ''),
(155, 8, '', ''),
(156, 8, '', ''),
(157, 8, '', ''),
(158, 8, '', ''),
(159, 8, '', ''),
(160, 8, '', ''),
(161, 8, 'Flush instrument pipework with dry air ', ''),
(162, 8, 'Check equipment is correctly preserved', ''),
(163, 8, 'Produce marked-up documents in accordance with installation', ''),
(164, 8, 'Produce the list of defects for punch list issue', ''),
(837, 76, 'SOLENOID VALVE', ''),
(838, 76, 'SOLENOID VALVE', ''),
(839, 76, 'LIMIT SWITCH', ''),
(840, 76, 'LIMIT SWITCH', ''),
(841, 76, ' PRESSURE SWITCH', ''),
(842, 76, ' PRESSURE GAUGE', ''),
(843, 76, ' PRESSURE GAUGE', ''),
(812, 71, 'Check for mechanical damage', ''),
(813, 71, 'Check installed equipment is suitable and conforms to specification', ''),
(814, 71, 'Check installation conforms to F&G detection layout drawings', ''),
(815, 71, 'Check test facility is installed', ''),
(816, 71, 'Check tube fittings manufacturer is the one chosen for the plant', ''),
(817, 71, 'Check protective cap is installed', ''),
(818, 71, 'Check identification (tag number, tag plates)', ''),
(819, 71, 'Check supporting and protection against vibrations', ''),
(820, 71, 'Check accessibility conforms to specifications, with platforming where necessary', ''),
(821, 71, 'Check calibration certificate', ''),
(822, 71, 'Check electrical connections', ''),
(823, 71, 'Check cable conformity and identification', ''),
(824, 71, 'Check cable gland conformity and mounting', ''),
(825, 71, 'Check earthing connections (cable armour and screen)', ''),
(826, 71, 'Check ATEX certificate', ''),
(827, 71, 'Flush instrument pipework with dry air', ''),
(828, 71, 'Dismantle and storel sensor until installation just before commissioning', ''),
(829, 71, 'Check equipment is correctly preserved', ''),
(830, 71, 'Produce marked-up documents in accordance with installation', ''),
(831, 71, 'Produce the list of defects for punch list issue', ''),
(832, 71, 'Produce the list of defects for punch list issue', ''),
(389, 29, 'Check all earth bars installation and tagging against drawings.', ''),
(390, 29, 'Check earthing cables installation and tagging against drawings.', ''),
(391, 29, 'Check earthing cables cross section against drawings.', ''),
(392, 29, 'Check all connections are tight, clean and coated with an approved anti-corrosive grease.', ''),
(393, 29, 'Check earthing networks segregation (IS)', ''),
(394, 29, 'Check earth rods correct installation', ''),
(395, 29, 'Produce marked-up drawings in accordance with installation.', ''),
(396, 29, 'Produce a defects list for punch list issue.', ''),
(397, 29, '', ''),
(398, 29, '', ''),
(844, 78, 'Check that the nameplate details are both correct and complete', ''),
(845, 78, 'Check the location, elevation, orientation and that the vessel is level', ''),
(846, 78, 'Check that the holding arrangments are correct', ''),
(847, 78, 'Check for any installation damage', ''),
(848, 78, 'Check that the nozzle are suitably isolated to enable asafe internal examintion to be made', ''),
(849, 78, 'Check the vessel internals are as per approved drawings; ( incuding any heating devices )', ''),
(850, 78, 'Check the vessel internally for cleanliness', ''),
(851, 78, 'Check that all the internal bolting has been tightened', ''),
(852, 78, 'Check preservation is carried out as per approved procedure', ''),
(853, 78, 'Check all platforming and ladders are installed as per approved drawings. Also manways are accessible and suitable for operation', ''),
(854, 78, 'Check out the painting, insulation and the lining for damage', ''),
(855, 78, 'Check the earting and bonding are as per Project spesifications', ''),
(856, 78, 'Check that the pipe support are in accordance with the approved desaign', ''),
(857, 78, 'Check the disconnected pipework flanges against the nozzle flanges for', ''),
(858, 78, 'Check the internals can be withdrwan with the use of suitable lifting gear', ''),
(859, 78, 'For floating roofs: check internally the roof pontoons', ''),
(860, 78, 'Check that the bolting is suitably lubricated', ''),
(861, 78, 'Produce a set of marked-up drawings in accordance with tha installation', ''),
(862, 78, 'Produce a defects list for inclusion in the Punch List issue', ''),
(102, 6, 'Check for mechanical damage', ''),
(103, 6, 'Check installed equipment is suitable and conforms to specification', ''),
(104, 6, 'Check installation conforms to P&ID and hook-up drawing', ''),
(106, 6, '', ''),
(107, 6, 'Check insulation and heat-tracing', ''),
(108, 6, 'Check identification (tag number, tag plates)', ''),
(109, 6, 'Check supporting and protection against vibrations', ''),
(110, 6, 'Check accessibility conforms to specifications, with platforming where necessary', ''),
(111, 6, 'Check calibration certificate and date', ''),
(112, 6, 'Check that calibration seal is not broken', ''),
(113, 6, 'Check that transport locking device has been removed after iinstallation', ''),
(114, 6, '', ''),
(115, 6, '', ''),
(116, 6, '', ''),
(117, 6, '', ''),
(118, 6, '', ''),
(119, 6, '', ''),
(120, 6, 'Check equipment is correctly preserved', ''),
(121, 6, 'Produce marked-up documents in accordance with installation', ''),
(122, 6, 'Produce the list of defects for punch list issue', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_users` int(11) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `images` text NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `is_aktif` enum('y','n') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_users`, `nama_user`, `username`, `password`, `images`, `id_user_level`, `is_aktif`) VALUES
(12, 'denzoe', 'denzoe', '$2y$04$ymhuqJQF9zAu5M31oegFxudHzVncBgdjtT9rPdmdfWF5nr/XuOFPK', '', 1, 'y'),
(13, 'admin', 'admin', '$2y$04$HxjI/c7pC2KkiTm98Hz9uuNUUhrCIvRk6EVB.KKRUi98V1p2rsyEC', '', 1, 'y');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_level`
--

CREATE TABLE `tbl_user_level` (
  `id_user_level` int(11) NOT NULL,
  `nama_level` varchar(30) NOT NULL,
  `bagian` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_level`
--

INSERT INTO `tbl_user_level` (`id_user_level`, `nama_level`, `bagian`) VALUES
(1, 'Super Admin', 'manager'),
(2, 'admin', 'manager');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_disciplines`
--
ALTER TABLE `tbl_disciplines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_disciplines_log`
--
ALTER TABLE `tbl_disciplines_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_locations`
--
ALTER TABLE `tbl_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_locations_log`
--
ALTER TABLE `tbl_locations_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `tbl_perusahaan`
--
ALTER TABLE `tbl_perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- Indexes for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_projects_log`
--
ALTER TABLE `tbl_projects_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_punchlist`
--
ALTER TABLE `tbl_punchlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `tbl_subs`
--
ALTER TABLE `tbl_subs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subs_log`
--
ALTER TABLE `tbl_subs_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_systems`
--
ALTER TABLE `tbl_systems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_systems_log`
--
ALTER TABLE `tbl_systems_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_templates`
--
ALTER TABLE `tbl_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_users`);

--
-- Indexes for table `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_disciplines`
--
ALTER TABLE `tbl_disciplines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tbl_disciplines_log`
--
ALTER TABLE `tbl_disciplines_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_hak_akses`
--
ALTER TABLE `tbl_hak_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `tbl_locations`
--
ALTER TABLE `tbl_locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_locations_log`
--
ALTER TABLE `tbl_locations_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `tbl_perusahaan`
--
ALTER TABLE `tbl_perusahaan`
  MODIFY `id_perusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_projects`
--
ALTER TABLE `tbl_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_projects_log`
--
ALTER TABLE `tbl_projects_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_punchlist`
--
ALTER TABLE `tbl_punchlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_subs`
--
ALTER TABLE `tbl_subs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tbl_subs_log`
--
ALTER TABLE `tbl_subs_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_systems`
--
ALTER TABLE `tbl_systems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tbl_systems_log`
--
ALTER TABLE `tbl_systems_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tbl_templates`
--
ALTER TABLE `tbl_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_user_level`
--
ALTER TABLE `tbl_user_level`
  MODIFY `id_user_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
