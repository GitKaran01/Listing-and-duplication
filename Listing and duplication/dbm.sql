-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2025 at 12:52 PM
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
-- Database: `dbm`
--

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `ratings` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `sub_category` varchar(255) DEFAULT NULL,
  `phone1` varchar(255) DEFAULT NULL,
  `phone2` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `is_complete` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT 'unprocessed',
  `duplicate_group_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`id`, `business_name`, `category`, `ratings`, `address`, `sub_category`, `phone1`, `phone2`, `mobile_no`, `area`, `city`, `is_complete`, `status`, `duplicate_group_id`, `created_at`, `updated_at`) VALUES
(1, 'Hiramani Schools And Institutes', 'School', NULL, NULL, 'English,Gujarati,Regional, Co-ed, State', NULL, NULL, '2717242505', 'Sarkhej Gandhinagar Highway', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(2, 'Mother Teresa World School', 'School', NULL, NULL, 'English, Co-ed, ICSE', NULL, NULL, '7964503333', 'Gandhi Nagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(3, 'Cosmos Castle International School', 'School', NULL, NULL, 'English, Co-ed, Central, Badminton, Billiards', NULL, NULL, '7965209779', 'SG Road', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:16:22'),
(4, 'Saint Mary Primary School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7922811354', 'Naroda', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:16:24'),
(5, 'Seventh Day Adventist Higher Secondary School', 'School', NULL, NULL, 'English, Co-ed, ICSE', NULL, NULL, '7925861452', 'Maninagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:16:26'),
(6, 'A One School', 'School', NULL, NULL, 'English,Regional, Co-ed, State', NULL, NULL, '7926741234', 'Satellite Road', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(7, 'JL High School', 'School', NULL, NULL, 'English,Regional, Co-ed, State', NULL, NULL, '7925461060', 'Maninagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(8, 'I P Mission School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7925324308', 'Lal Darwaja', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(9, 'Bhagwati Vidhyalaya', 'School', NULL, NULL, 'Hindi, Co-ed, State', NULL, NULL, '7922831048', 'Kubernagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(10, 'Archana Vidyalaya', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7922770771', 'Khokhra', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(11, 'Purnima Hindi High School', 'School', NULL, NULL, 'Hindi, Co-ed, State', NULL, NULL, '7922870500', 'Odhav', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(12, 'Nutan Fellowship High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7926589606', 'Ashram Road', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(13, 'Airport School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7922864175', 'Sardar Nagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(14, 'Kameshwar Shikshan Sankul', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7926741136', 'Satellite', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(15, 'Democratic Higher Secondary School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7922941407', 'Gomtipur', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(16, 'Jamaaly English Medium School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7925396319', 'Astodia', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(17, 'MSM High School', 'School', NULL, NULL, 'Co-ed, State', NULL, NULL, '7925506511', 'Lal Darwaja', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(18, 'Nalanda Vidhyalay', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7927604183', 'Ghatlodia', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(19, 'Doon International Public School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7925471533', 'Maninagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(20, 'Navchetan High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7926589832', 'Paldi', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(21, 'SM Hindi School', 'School', NULL, NULL, 'Hindi, Co-ed, State', NULL, NULL, '7922830046', 'Nikol', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(22, 'Shree Sanjay Gandhi Vidyapith', 'School', NULL, NULL, 'Hindi, Co-ed, State', NULL, NULL, '7927508587', 'Sabarmati', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(23, 'The Calorx School', 'School', NULL, NULL, 'English, Co-ed, ICSE', NULL, NULL, '9099124000', 'Thaltej road', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(24, 'Bright International School', 'School', NULL, NULL, 'English,Regional, Co-ed, CBSE, SSC', NULL, NULL, '7922808057', 'Gandhi Nagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(25, 'Tapovan Sanskarpith Vidhyalaya', 'School', NULL, NULL, 'English,Regional, Boys, State', NULL, NULL, '7923276902', 'Gandhi Nagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(26, 'St. Joseph High Secondary School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7927508005', 'Sabarmati', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(27, 'Shree Swaminarayan Gurukul', 'School', NULL, NULL, 'English, Co-ed, Central', NULL, NULL, '7927912591', 'Memnagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(28, 'Zebar School', 'School', NULL, NULL, 'English, Co-ed, CBSE', NULL, NULL, '9978854000', 'Thaltej', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(29, 'St. Ann\'s School', 'School', NULL, NULL, 'English, Co-ed, CBSE', NULL, NULL, '2717320205', 'Bopal', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(30, 'Mahatma Gandhi International School', 'School', NULL, NULL, 'English, Co-ed, ICSE', NULL, NULL, '7926463888', 'Navarangpura', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(31, 'Jay Hind School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7925460187', 'Maninagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(32, 'The Manav School', 'School', NULL, NULL, 'English, Co-ed, Central', NULL, NULL, '7926850051', 'Thaltej', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(33, 'Saint Kabir School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7927912011', 'Naranpura', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(34, 'Shivashish Boarding School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7977231338', 'Bopal', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(35, 'Shree Sahjanand Gurukul Madhyamik Shala', 'School', NULL, NULL, 'Regional, Boys, State', NULL, NULL, '7922167288', 'Asarwa', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(36, 'Army School', 'School', NULL, NULL, 'English, Co-ed, Central', NULL, NULL, '7922862543', 'Shahibag', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(37, 'Ganesh Vidyalaya', 'School', NULL, NULL, 'Gujarati, Boys, State', NULL, NULL, '7927644486', 'Vadaj', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(38, 'RH Kapadia High School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7926918123', 'Satellite', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(39, 'Andh Shala', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7926586138', 'Ashram Road', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(40, 'The New Navrang School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7926828104', 'Fatewadi', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(41, 'Shri Swaminarayan Vidhyamandir High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7925331627', 'Ghodasar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(42, 'Sadhu Vaswani School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7922864367', 'Sardar Nagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(43, 'Aadarsh Nivasi Kanya Shala', 'School', NULL, NULL, 'Regional, Girls, State', NULL, NULL, '7926762732', 'Vastrapur', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(44, 'Amardip Prathmik Shala', 'School', NULL, NULL, 'Regional, Boys,Girls, State', NULL, NULL, '7926633410', 'Paldi', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(45, 'Rahe Khair Girls High School', 'School', NULL, NULL, 'Regional, Girls, State', NULL, NULL, '7925392786', 'Khamasa', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(46, 'Vikas Gruh Kanya Vidhyalay', 'School', NULL, NULL, 'Regional, Girls, State', NULL, NULL, '7926635223', 'Paldi', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(47, 'Uma Bhagat Madhyamik Shala', 'School', NULL, NULL, 'Regional, Co-ed, IGCSE', NULL, NULL, '7926620273', 'Paldi', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(48, 'Swaminarayan Gurukul Vishvavidya Pratisthan', 'School', NULL, NULL, 'English, Boys, State', NULL, NULL, '2717242138', 'Sarkhej Gandhinagar Highway', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(49, 'Gurukul Vidhyavihar English School', 'School', NULL, NULL, 'English,Regional, Co-ed, State', NULL, NULL, '797728830', 'Pirana', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(50, 'National High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7927480484', 'Naranpura', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(51, 'Anjuman Islam High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7922170977', 'Kalupur', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(52, 'Pooja Vidhyalaya', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7925850828', 'Amraiwadi', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(53, 'Saint Anns School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7977320205', 'Bopal', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(54, 'Oriental High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7925620516', 'Mirzapur', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(55, 'Kameshwar Vidhya Mandir', 'School', NULL, NULL, 'Co-ed, State', NULL, NULL, '7926930390', 'Vejalpur', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(56, 'Ashram Vinay Mandir', 'School', NULL, NULL, 'Regional, Girls, State', NULL, NULL, '7927556724', 'Sabarmati', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(57, 'JG International School', 'School', NULL, NULL, 'English, Co-ed, ICSE,IGCSE', NULL, NULL, '7927499315', 'Sola Road', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(58, 'Ankur School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7926639666', 'Paldi', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(59, 'SGVP International School', 'School', NULL, NULL, 'English, Boys, ICSE', NULL, NULL, '2717242138', 'Chharodi', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(60, 'Shree Narayana High School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7965446402', 'Naroda', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(61, 'Sandipani School', 'School', NULL, NULL, 'English,Regional, Co-ed, State', NULL, NULL, '9327008611', 'Vejalpur', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(62, 'Amrut Jyoti High School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7926589590', 'Paldi', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(63, 'Silver Bells High School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7922747410', 'Bapunagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(64, 'Sabarmati Kanya Vidhyalay', 'School', NULL, NULL, 'Regional, Girls, State', NULL, NULL, '7927503700', 'Sabarmati', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(65, 'Euro One Kids', 'School', NULL, NULL, 'English, Co-ed, ICSE', NULL, NULL, '9727172089', 'Bopal', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(66, 'Prakash Higher Secondary School', 'School', NULL, NULL, 'English, Co-ed, Central', NULL, NULL, '7926840123', 'Bodakdev', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(67, 'Tutorial High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7926607042', 'Vasna', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(68, 'Satsangi Vidhyalay School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7922748207', 'Bapunagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(69, 'Shiv Vidhyalay', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7927481037', 'Ghatlodia', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(70, 'Shahpur Tutorial High School', 'School', NULL, NULL, 'Regional, Girls, State', NULL, NULL, '7925600915', 'Shahpur', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(71, 'Sagar Vidhyalaya', 'School', NULL, NULL, 'Co-ed, State', NULL, NULL, '7922816231', 'Naroda', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(72, 'Thakker High School', 'School', NULL, NULL, 'English, Co-ed, Central', NULL, NULL, '7926575323', 'Ellis Bridge', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(73, 'Sadhana Vinay Mandir', 'School', NULL, NULL, 'Co-ed, State', NULL, NULL, '7922142814', 'Kalupur', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(74, 'Friends High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7965239632', 'Ghodasar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(75, 'Udgam School', 'School', NULL, NULL, 'English, Co-ed, Central', NULL, NULL, '7926850336', 'Thaltej', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(76, 'Municipal Girls High School', 'School', NULL, NULL, 'Regional, Girls, State', NULL, NULL, '7925351007', 'Jamalpur', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(77, 'GB Shah Jyoti High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7925508721', 'Gheekanta road', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(78, 'Prakash Higher Secondary School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7922164582', 'Ratan Pole', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(79, 'Premier High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7922170196', 'Dariapur', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(80, 'Asarwa Vidhyalaya', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7922139384', 'Asarwa', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(81, 'Akshar Vidhyavihar Girls School', 'School', NULL, NULL, 'Regional, Girls, State', NULL, NULL, '7922820851', 'Sahijpur Bogha', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(82, 'Samarth Vidhyavihar High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7926465985', 'Ellis Bridge', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(83, 'Tripada High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7927474759', 'Naranpura', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(84, 'Akshar Gyan Vidhya Sankul', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7922875490', 'Khodiyarnagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(85, 'Sant Kabir School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7926855154', 'Thaltej', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(86, 'Ahmedabad Tamil High School', 'School', NULL, NULL, 'Co-ed, State', NULL, NULL, '7922160803', 'Khokhra', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(87, 'Upasana Vinay Mandir', 'School', NULL, NULL, 'Co-ed, State', NULL, NULL, '7922148005', 'Sarangpur', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(88, 'Archana High Secondary School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7927437978', 'Memnagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(89, 'Siddharth High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7925464314', 'Maninagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(90, 'Anand Niketan School', 'School', NULL, NULL, 'English, Co-ed, Central', NULL, NULL, '9737047663', 'Gandhi Nagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(91, 'Sanghavi High School', 'School', NULL, NULL, 'Co-ed, State', NULL, NULL, '7927472002', 'Naranpura', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(92, 'Piyuraj Vidhyalaya', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7922819064', 'Naroda', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(93, 'Preksha Vishwa Bharti And Mahapragya Vidya Niketan', 'School', NULL, NULL, 'English, Co-ed, Central', NULL, NULL, '7923276271', 'Gandhinagar Sarkhej Highway', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(94, 'Axay High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7922749878', 'Bapunagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(95, 'Pradhanbhai Bhagabhai Premchand Jain High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7922134996', 'Kalupur', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(96, 'Experimental High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7926600474', 'Vasna', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(97, 'Shrikrishna Vidhyalaya', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7926814003', 'Vejalpur', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(98, 'Chhipa Welfare Girls High School', 'School', NULL, NULL, 'Regional, Girls, State', NULL, NULL, '7925352605', 'Jamalpur', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(99, 'Palavi Vidhyalaya School', 'School', NULL, NULL, 'Co-ed, State', NULL, NULL, '7922134226', 'Asarwa', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(100, 'Parimal Vidhyalaya', 'School', NULL, NULL, 'Hindi, Co-ed, State', NULL, NULL, '7922742960', 'Sahijpur Bogha', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(101, 'Vivekanand Highschool', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7922744395', 'Amraiwadi', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(102, 'Shruti High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7922731680', 'Bapunagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(103, 'AKS English High School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7925890238', 'Ghodasar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(104, 'Sharda Vidhya Mandir', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7925850861', 'Amraiwadi', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(105, 'Maharashtra Shikshan Mandal High School', 'School', NULL, NULL, 'Co-ed, State', NULL, NULL, '7922745165', 'Sahijpur Bogha', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(106, 'Haribhai Hathibhai High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7927506802', 'Sabarmati', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(107, 'Vidhyanagar High School', 'School', NULL, NULL, 'English,Regional, Co-ed, State', NULL, NULL, '7932920969', 'Satellite', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(108, 'Maharaja Agrasen Vidyalaya', 'School', NULL, NULL, 'English, Co-ed, Central', NULL, NULL, '7927437440', 'Memnagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(109, 'HBK New High School', 'School', NULL, NULL, 'Co-ed, State', NULL, NULL, '7925623789', 'Shahibag', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(110, 'Mount Carmel Primary School', 'School', NULL, NULL, 'English, Girls, State', NULL, NULL, '7925601986', 'Khanpur', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(111, 'Mehta Thakker High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7927500782', 'Sabarmati', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(112, 'Amardeep Higher Secondary School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7926633410', 'Paldi', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(113, 'Hindi High School', 'School', NULL, NULL, 'Hindi, Co-ed, State', NULL, NULL, '7925620318', 'Shahpur', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(114, 'Saint Xaviers Higher Secondary School', 'School', NULL, NULL, 'English,Regional, Co-ed, State', NULL, NULL, '7927910400', 'Navarangpura', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(115, 'Swastik Vidhyalay', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7922680022', 'Asarwa', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(116, 'Saint Xaviers Primary And High School', 'School', NULL, NULL, 'English,Regional, Co-ed, State', NULL, NULL, '7925627104', 'Mirzapur', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(117, 'Bhavik Vidhyalay', 'School', NULL, NULL, 'Regional, Co-ed, Central', NULL, NULL, '7927602549', 'Chandlodia', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(118, 'Arbuda Sanskar School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7922873202', 'Odhav', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(119, 'Sharda Vidhyalaya', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7926817023', 'Jivrajpark', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(120, 'Little Flower High School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7927504999', 'Sabarmati', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(121, 'Viswa Vidhyalaya Higher Secondary School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7922123028', 'Asarwa', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(122, 'Navjivan High School', 'School', NULL, NULL, 'Regional, Girls, State', NULL, NULL, '7925351497', 'Khamasa', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(123, 'Ruth Memorial School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7926601666', 'Vasna', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(124, 'Shri S B Thakor High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7927501834', 'Sabarmati', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(125, 'Vidhyanagar High School', 'School', NULL, NULL, 'English,Regional, Co-ed, State', NULL, NULL, '7927542244', 'Ashram Road', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(126, 'Vasant Rajab Madhyamik Shala', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7925391410', 'Behrampura', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(127, 'Super High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7927480578', 'Ghatlodia', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(128, 'Gyandeep Vidyavihar', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7927526975', 'Ranip', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(129, 'RBRC Girls Primary School', 'School', NULL, NULL, 'Regional, Girls, State', NULL, NULL, '7922143505', 'Khadia', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(130, 'AG High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7926443172', 'Navarangpura', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(131, 'Shree Durga School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7925463615', 'Maninagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(132, 'Mangal Vidhyalaya', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7926464864', 'Navarangpura', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(133, 'Eklavya Education Foundation', 'School', NULL, NULL, 'English, Co-ed, Central', NULL, NULL, '7926929229', 'Ellis Bridge', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(134, 'Bal Krishna High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7922742856', 'Bapunagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(135, 'The Republic High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7925506702', 'Lal Darwaja', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(136, 'Gannath Primary School', 'School', NULL, NULL, 'English,Regional, Co-ed, State', NULL, NULL, '7927524942', 'Ranip', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(137, 'Lordshiva School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7926764204', 'Vejalpur', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(138, 'Sharda Shishuvihar And Prathmik Shala', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7922865429', 'Shahibag', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(139, 'Gandhi Vidhyalaya', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7922125317', 'Asarwa', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(140, 'Auro Niketan School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7927492149', 'Sola Road', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(141, 'Vishwabharti English Medium School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7926854795', 'Thaltej', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(142, 'Divine Life English School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7926602954', 'Vasna', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(143, 'Adarsh Vidhya Vihar', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7927508462', 'Maninagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(144, 'Sattva Vikas School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7926841516', 'Thaltej', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(145, 'Little Angle High School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7922869313', 'Sardar Nagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(146, 'Paras English School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7922747677', 'Bapunagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(147, 'Lokniketan Vidhyavihar', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7927521577', 'Ranip', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(148, 'Vidhyanagar Boys High School', 'School', NULL, NULL, 'English,Regional, Boys, State', NULL, NULL, '7965250835', 'Bapunagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(149, 'M And N Vidhyalay', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7925897657', 'Vatva', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(150, 'GM Prakash High School', 'School', NULL, NULL, 'Regional, Girls, State', NULL, NULL, '7922161106', 'Panchkuva', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(151, 'Adarsh Vidhyalaya', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7922730415', 'Bapunagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(152, 'Satyam Vidhyalay', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7926605122', 'Vasna', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(153, 'Shri Sharda Vidyalaya', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7927482446', 'Thaltej', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(154, 'Vidhya Niketan High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7927487441', 'Thaltej', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(155, 'Tanay Foundation', 'Special School', NULL, NULL, 'School For Autism', NULL, NULL, '9712850173', 'Satellite', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(156, 'Learning Clinic School', 'Special School', NULL, NULL, 'Schools For Handicapped', NULL, NULL, '7926579738', 'Paldi', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(157, 'Nutan Vidhyalaya High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7925735352', 'Vatva', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(158, 'Dhruv Education High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7925854643', 'Maninagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(159, 'Karnavati Public School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7926300448', 'University Road', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(160, 'Asmi High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7925890590', 'Vatva', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(161, 'Vishal High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7925832651', 'Vatva', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(162, 'Amar Jyot Vidhyavihar', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7925393071', 'Maninagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(163, 'Green Lawns School', 'School', NULL, NULL, 'English, Co-ed, State', NULL, NULL, '7925891611', 'Isanpur', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(164, 'New Noble School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7922817481', 'Sahijpur Bogha', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(165, 'Jayesh Education High School', 'School', NULL, NULL, 'Co-ed, State', NULL, NULL, '7922746873', 'Thakkarbapa Nagar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58'),
(166, 'Meghdoot Vidhyavihar High School', 'School', NULL, NULL, 'Regional, Co-ed, State', NULL, NULL, '7925833339', 'Ghodasar', ' Ahmedabad', 1, 'unique', NULL, '2025-10-28 06:15:57', '2025-10-28 06:15:58');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_10_28_092428_create_businesses_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
