-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2024 at 10:42 PM
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
-- Database: `rfidattendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(30) NOT NULL,
  `admin_email` varchar(80) NOT NULL,
  `admin_pwd` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_email`, `admin_pwd`) VALUES
(1, 'Hitesh Mulwani', 'miphonehitesh@gmail.com', '$2y$10$89uX3LBy4mlU/DcBveQ1l.32nSianDP/E1MfUh.Z.6B4Z0ql3y7PK');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `device_name` varchar(50) NOT NULL,
  `device_dep` varchar(20) NOT NULL,
  `device_uid` text NOT NULL,
  `device_date` date NOT NULL,
  `device_mode` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `device_name`, `device_dep`, `device_uid`, `device_date`, `device_mode`) VALUES
(4, 'timetest', 't1', 'a6a7e10fddaa0efb', '2024-02-02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT 'None',
  `serialnumber` double NOT NULL DEFAULT 0,
  `gender` varchar(10) NOT NULL DEFAULT 'None',
  `email` varchar(50) NOT NULL DEFAULT 'None',
  `card_uid` varchar(30) NOT NULL,
  `card_select` tinyint(1) NOT NULL DEFAULT 0,
  `user_date` date NOT NULL,
  `device_uid` varchar(20) NOT NULL DEFAULT '0',
  `device_dep` varchar(20) NOT NULL DEFAULT '0',
  `add_card` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `serialnumber`, `gender`, `email`, `card_uid`, `card_select`, `user_date`, `device_uid`, `device_dep`, `add_card`) VALUES
(14, 'card', 1, 'Male', 'None', '114634181', 0, '2024-02-02', 'a6a7e10fddaa0efb', 't1', 1),
(15, 'tag', 2, 'Female', 'None', '312816880', 1, '2024-02-02', 'a6a7e10fddaa0efb', 't1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_logs`
--

CREATE TABLE `users_logs` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `serialnumber` double NOT NULL,
  `card_uid` varchar(30) NOT NULL,
  `device_uid` varchar(20) NOT NULL,
  `device_dep` varchar(20) NOT NULL,
  `checkindate` date NOT NULL,
  `timein` time NOT NULL,
  `timeout` time NOT NULL,
  `card_out` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_logs`
--

INSERT INTO `users_logs` (`id`, `username`, `serialnumber`, `card_uid`, `device_uid`, `device_dep`, `checkindate`, `timein`, `timeout`, `card_out`) VALUES
(1, 'Hitesh', 1, '312816880', '516a9e73cef49656', 'aids', '2024-02-01', '21:30:10', '21:30:12', 1),
(2, 'Abhay', 2, '114634181', '516a9e73cef49656', 'aids', '2024-02-01', '21:30:26', '21:30:37', 1),
(3, 'Manisha', 1, '114634181', '516a9e73cef49656', 'aids', '2024-02-01', '21:41:57', '21:42:18', 1),
(4, 'Hitesh', 2, '312816880', '516a9e73cef49656', 'aids', '2024-02-01', '21:42:27', '21:42:33', 1),
(5, 'Harshada Mam', 0, '312816880', '1975d2577e53cb40', 'P3 [AI & DS]', '2024-02-01', '22:20:05', '22:20:17', 1),
(6, 'Harshada Mam', 0, '312816880', '1975d2577e53cb40', 'P3 [AI & DS]', '2024-02-02', '17:21:44', '17:22:00', 1),
(7, 'Harshada Mam', 0, '312816880', '1975d2577e53cb40', 'P3 [AI & DS]', '2024-02-02', '17:22:09', '17:24:31', 1),
(8, 'Hitesh Mulwani', 65, '114634181', '1975d2577e53cb40', 'P3 [AI & DS]', '2024-02-02', '17:24:09', '17:39:30', 1),
(9, 'tag', 1, '312816880', 'd2fa8b04242a5a13', 'checktime ', '2024-02-02', '17:40:08', '17:41:16', 1),
(10, 'card', 2, '114634181', 'd2fa8b04242a5a13', 'checktime ', '2024-02-02', '17:40:19', '17:42:56', 1),
(11, 'tag', 1, '312816880', 'd2fa8b04242a5a13', 'checktime ', '2024-02-02', '17:41:24', '18:13:24', 1),
(12, 'card', 2, '114634181', 'd2fa8b04242a5a13', 'checktime ', '2024-02-02', '17:43:09', '18:13:50', 1),
(13, 'tag', 1, '312816880', 'd2fa8b04242a5a13', 'checktime ', '2024-02-02', '18:13:39', '22:01:20', 1),
(14, 'card', 2, '114634181', 'd2fa8b04242a5a13', 'checktime ', '2024-02-02', '18:14:03', '22:02:05', 1),
(15, 'tag', 1, '312816880', 'd2fa8b04242a5a13', 'checktime ', '0000-00-00', '21:29:29', '21:30:21', 1),
(16, 'tag', 1, '312816880', 'd2fa8b04242a5a13', 'checktime ', '0000-00-00', '21:30:33', '21:30:44', 1),
(17, 'card', 2, '114634181', 'd2fa8b04242a5a13', 'checktime ', '0000-00-00', '21:31:43', '21:32:04', 1),
(18, 'tag', 1, '312816880', 'd2fa8b04242a5a13', 'checktime ', '0000-00-00', '21:31:53', '21:37:48', 1),
(19, 'card', 2, '114634181', 'd2fa8b04242a5a13', 'checktime ', '0000-00-00', '21:32:07', '21:38:12', 1),
(20, 'card', 1, '114634181', 'a6a7e10fddaa0efb', 't1', '0000-00-00', '21:38:17', '21:38:54', 1),
(21, 'tag', 2, '312816880', 'a6a7e10fddaa0efb', 't1', '0000-00-00', '21:38:35', '21:39:01', 1),
(22, 'tag', 2, '312816880', 'a6a7e10fddaa0efb', 't1', '0000-00-00', '21:39:02', '21:51:35', 1),
(23, 'card', 1, '114634181', 'a6a7e10fddaa0efb', 't1', '0000-00-00', '21:39:08', '21:52:06', 1),
(24, 'tag', 2, '312816880', 'a6a7e10fddaa0efb', 't1', '0000-00-00', '21:51:45', '21:51:58', 1),
(25, 'card', 1, '114634181', 'a6a7e10fddaa0efb', 't1', '0000-00-00', '21:52:08', '21:52:24', 1),
(26, 'tag', 2, '312816880', 'a6a7e10fddaa0efb', 't1', '2024-02-02', '22:01:31', '22:01:48', 1),
(27, 'card', 1, '114634181', 'a6a7e10fddaa0efb', 't1', '2024-02-02', '22:02:21', '22:03:02', 1),
(28, 'tag', 2, '312816880', 'a6a7e10fddaa0efb', 't1', '2024-02-02', '22:02:36', '22:03:09', 1),
(29, 'card', 1, '114634181', 'a6a7e10fddaa0efb', 't1', '2024-02-02', '22:07:26', '22:10:31', 1),
(30, 'tag', 2, '312816880', 'a6a7e10fddaa0efb', 't1', '2024-02-02', '22:07:35', '22:10:27', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_logs`
--
ALTER TABLE `users_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users_logs`
--
ALTER TABLE `users_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
