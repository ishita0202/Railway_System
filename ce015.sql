-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2021 at 11:07 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ce015`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add admin', 7, 'add_admin'),
(26, 'Can change admin', 7, 'change_admin'),
(27, 'Can delete admin', 7, 'delete_admin'),
(28, 'Can view admin', 7, 'view_admin'),
(29, 'Can add feedback', 8, 'add_feedback'),
(30, 'Can change feedback', 8, 'change_feedback'),
(31, 'Can delete feedback', 8, 'delete_feedback'),
(32, 'Can view feedback', 8, 'view_feedback'),
(33, 'Can add passenger', 9, 'add_passenger'),
(34, 'Can change passenger', 9, 'change_passenger'),
(35, 'Can delete passenger', 9, 'delete_passenger'),
(36, 'Can view passenger', 9, 'view_passenger'),
(37, 'Can add payment', 10, 'add_payment'),
(38, 'Can change payment', 10, 'change_payment'),
(39, 'Can delete payment', 10, 'delete_payment'),
(40, 'Can view payment', 10, 'view_payment'),
(41, 'Can add reservation', 11, 'add_reservation'),
(42, 'Can change reservation', 11, 'change_reservation'),
(43, 'Can delete reservation', 11, 'delete_reservation'),
(44, 'Can view reservation', 11, 'view_reservation'),
(45, 'Can add tickets', 12, 'add_tickets'),
(46, 'Can change tickets', 12, 'change_tickets'),
(47, 'Can delete tickets', 12, 'delete_tickets'),
(48, 'Can view tickets', 12, 'view_tickets'),
(49, 'Can add train', 13, 'add_train'),
(50, 'Can change train', 13, 'change_train'),
(51, 'Can delete train', 13, 'delete_train'),
(52, 'Can view train', 13, 'view_train'),
(53, 'Can add user details', 14, 'add_userdetails'),
(54, 'Can change user details', 14, 'change_userdetails'),
(55, 'Can delete user details', 14, 'delete_userdetails'),
(56, 'Can view user details', 14, 'view_userdetails');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$zbPy7XlVkYiJ$6UzlGnwkP2SV0o5dOt7j1wL1efpYbI/ZpSqbzLr3mEs=', '2021-04-01 13:42:15.025961', 0, 'pihoo', 'Princy', 'Gajera', 'princygajera121@gmail.com', 0, 1, '2021-03-30 07:18:59.536356');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'raildata', 'admin'),
(8, 'raildata', 'feedback'),
(9, 'raildata', 'passenger'),
(10, 'raildata', 'payment'),
(11, 'raildata', 'reservation'),
(12, 'raildata', 'tickets'),
(13, 'raildata', 'train'),
(14, 'raildata', 'userdetails'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-03-29 17:46:13.298494'),
(2, 'auth', '0001_initial', '2021-03-29 17:46:17.218436'),
(3, 'admin', '0001_initial', '2021-03-29 17:46:35.968965'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-03-29 17:46:40.933658'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-03-29 17:46:41.058487'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-03-29 17:46:43.783014'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-03-29 17:46:46.736252'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-03-29 17:46:46.928852'),
(9, 'auth', '0004_alter_user_username_opts', '2021-03-29 17:46:47.058530'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-03-29 17:46:48.317153'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-03-29 17:46:48.387713'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-03-29 17:46:48.453001'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-03-29 17:46:48.865376'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-03-29 17:46:49.008163'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-03-29 17:46:49.248124'),
(16, 'auth', '0011_update_proxy_permissions', '2021-03-29 17:46:49.378044'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-03-29 17:46:49.723273'),
(18, 'raildata', '0001_initial', '2021-03-29 17:46:53.668014'),
(19, 'sessions', '0001_initial', '2021-03-29 17:46:54.167591'),
(20, 'raildata', '0002_auto_20210330_1245', '2021-03-30 07:16:04.479609'),
(21, 'raildata', '0002_auto_20210329_1742', '2021-03-30 15:27:46.545885');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('64iw6wyurangks4u24h2w26ycc875f0b', '.eJxVj7tOxDAQRX9llRpZHuexTkp6Kj4guvFjY1js1djeBvHvOLAFtOfcOdJ8ditq2deaHa_BdktH3dNftsG8u3gI-4Z4ScKkWDhs4piIh83iJVl3fX5s_wV25L1dS00eypAB5IjB2K0fJj31HtOwkRolnVVvjdWOYKC1ch66V36ep9lLr1s0p8rGtdZrZZQGrMslRJSQYqPbjnvEBdxMYYQY0_EOyVEODYE53HFtSC10Pt3Eh_hJ3MCl8pE9ES2Kfs3XN5VUWT8:1lRxeA:L4dOKqMmzOPwWLJrLE1r2VjoFAh9Ebz65IzJrJs6XU8', '2021-04-15 13:46:06.117792');

-- --------------------------------------------------------

--
-- Table structure for table `raildata_admin`
--

CREATE TABLE `raildata_admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `raildata_feedback`
--

CREATE TABLE `raildata_feedback` (
  `id` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `Feedback` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `raildata_feedback`
--

INSERT INTO `raildata_feedback` (`id`, `email`, `Feedback`) VALUES
(1, 'princygajera121@gmail.com', 'ewreww');

-- --------------------------------------------------------

--
-- Table structure for table `raildata_passenger`
--

CREATE TABLE `raildata_passenger` (
  `username` varchar(20) NOT NULL,
  `passsword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `raildata_payment`
--

CREATE TABLE `raildata_payment` (
  `id` int(11) NOT NULL,
  `Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `raildata_reservation`
--

CREATE TABLE `raildata_reservation` (
  `id` int(11) NOT NULL,
  `noOfPassenger` int(11) NOT NULL,
  `Age` int(11) NOT NULL,
  `Gender` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `raildata_reservation`
--

INSERT INTO `raildata_reservation` (`id`, `noOfPassenger`, `Age`, `Gender`) VALUES
(1, 2, 18, 'f'),
(2, 2, 13, 'f'),
(3, 2, 13, 'f'),
(4, 1, 13, 'f'),
(5, 1, 13, 'f'),
(6, 2, 13, 'f'),
(7, 4, 18, 'f'),
(8, 3, 18, 'f'),
(9, 2, 13, 'f'),
(10, 10, 19, 'f'),
(11, 10, 19, 'f'),
(12, 1, 18, 'f');

-- --------------------------------------------------------

--
-- Table structure for table `raildata_tickets`
--

CREATE TABLE `raildata_tickets` (
  `Source` varchar(30) NOT NULL,
  `Destination` varchar(30) NOT NULL,
  `ticketStatus` varchar(10) NOT NULL,
  `Trainno` int(11) NOT NULL,
  `Ticketno` int(11) NOT NULL,
  `arrivaltime` varchar(50) NOT NULL,
  `departuretime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `raildata_tickets`
--

INSERT INTO `raildata_tickets` (`Source`, `Destination`, `ticketStatus`, `Trainno`, `Ticketno`, `arrivaltime`, `departuretime`) VALUES
('surat', 'Ahmedabad', '', 130501, 12, '2:20 a.m.', ' 9:05 a.m.'),
('ahmedabad', 'Surat', '', 130105, 17, '2:31 a.m.', ' 6 a.m.'),
('Ahmedabad', 'Vadodara', '', 130106, 25, '5:31 p.m.', ' 7:07 p.m.'),
('Ahmedabad', 'Vadodara', '', 130106, 26, '5:31 p.m.', ' 7:07 p.m.'),
('Ahmedabad', 'Vadodara', '', 130106, 27, '5:31 p.m.', ' 7:07 p.m.'),
('Ahmedabad', 'Vadodara', '', 130106, 28, '5:31 p.m.', ' 7:07 p.m.'),
('Ahmedabad', 'Vadodara', '', 130106, 29, '5:31 p.m.', ' 7:07 p.m.'),
('Ahmedabad', 'Vadodara', '', 130106, 30, '5:31 p.m.', ' 7:07 p.m.'),
('Ahmedabad', 'Vadodara', '', 130106, 31, '5:31 p.m.', ' 7:07 p.m.'),
('Ahmedabad', 'Vadodara', '', 130106, 32, '5:31 p.m.', ' 7:07 p.m.'),
('Ahmedabad', 'Vadodara', '', 130106, 33, '5:31 p.m.', ' 7:07 p.m.'),
('Ahmedabad', 'Vadodara', '', 130106, 34, '5:31 p.m.', ' 7:07 p.m.'),
('Ahmedabad', 'Vadodara', '', 130106, 35, '5:31 p.m.', ' 7:07 p.m.'),
('Surat', 'bhavnagar', '', 110504, 36, '2:17 p.m.', ' 11:21 p.m.'),
('Surat', 'bhavnagar', '', 110504, 37, '2:17 p.m.', ' 11:21 p.m.'),
('Surat', 'bhavnagar', '', 110504, 38, '2:17 p.m.', ' 11:21 p.m.'),
('Surat', 'bhavnagar', '', 110504, 39, '2:17 p.m.', ' 11:21 p.m.');

-- --------------------------------------------------------

--
-- Table structure for table `raildata_train`
--

CREATE TABLE `raildata_train` (
  `Trainno` int(11) NOT NULL,
  `arrivaltime` time(6) NOT NULL,
  `departuretime` time(6) NOT NULL,
  `Source` varchar(30) NOT NULL,
  `Destination` varchar(30) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `raildata_train`
--

INSERT INTO `raildata_train` (`Trainno`, `arrivaltime`, `departuretime`, `Source`, `Destination`, `price`) VALUES
(110105, '12:31:00.000000', '16:00:02.000000', 'Ahmedabad', 'Surat', 250),
(110306, '09:15:00.000000', '16:04:28.000000', 'Rajkot', 'Vadodara', 350),
(110403, '12:31:00.000000', '17:37:17.000000', 'Bhavnagar', 'Rajkot', 250),
(110412, '17:31:00.000000', '04:40:13.000000', 'Bhavnagar', 'Bhuj', 700),
(110504, '14:17:41.000000', '23:21:41.000000', 'Surat', 'Bhavnagar', 600),
(110603, '12:31:00.000000', '18:00:02.000000', 'Vadodara', 'Rajkot', 440),
(110625, '03:31:00.000000', '16:00:02.000000', 'Vadodara', 'Porbandar', 700),
(111015, '13:56:23.000000', '16:00:02.000000', 'Vadodara', 'Surat', 70),
(111201, '10:24:26.000000', '17:24:26.000000', 'Bhuj', 'Ahmedabad', 250),
(120110, '12:31:00.000000', '17:03:06.000000', 'Ahmedabad', 'Bhuj', 300),
(120301, '02:31:00.000000', '09:05:06.000000', 'Rajkot', 'Ahmedabad', 250),
(120325, '14:35:37.000000', '16:35:37.000000', 'Rajkot', 'Porbandar', 120),
(120401, '08:41:24.000000', '16:41:00.000000', 'Bhavnagar', 'Ahmedabad', 540),
(120501, '19:02:00.000000', '23:00:02.000000', 'Surat', 'Ahmedabad', 250),
(120512, '02:18:29.000000', '10:18:29.000000', 'Surat', 'Bhuj', 650),
(120515, '07:11:51.000000', '09:00:06.000000', 'Surat', 'Vadodara', 50),
(120603, '07:31:00.000000', '14:36:19.000000', 'Vadodara', 'Rajkot', 380),
(121305, '17:31:00.000000', '01:57:18.000000', 'Bhuj', 'Surat', 650),
(130105, '02:31:00.000000', '06:00:02.000000', 'Ahmedabad', 'Surat', 250),
(130106, '17:31:00.000000', '19:07:59.000000', 'Ahmedabad', 'Vadodara', 50),
(130125, '10:13:46.000000', '21:02:00.000000', 'Bhavnagar', 'Surat', 500),
(130305, '12:20:52.000000', '22:23:52.000000', 'Rajkot', 'Surat', 350),
(130412, '02:31:00.000000', '09:05:06.000000', 'Bhuj', 'Bhavnagar', 690),
(130501, '02:20:01.000000', '09:05:06.000000', 'Surat', 'Ahmedabad', 150),
(130607, '15:02:00.000000', '21:02:27.000000', 'Vadodara', 'Ahmedabad', 80),
(131206, '09:31:00.000000', '16:10:34.000000', 'Bhuj', 'Vadodara', 400),
(140104, '09:16:03.000000', '17:13:03.000000', 'Ahmedabad', 'Bhavnagar', 360),
(140125, '09:15:01.000000', '22:15:01.000000', 'Ahmedabad', 'Porbandar', 700),
(140304, '16:34:55.000000', '23:34:55.000000', 'Rajkot', 'Bhavnagar', 500),
(140425, '21:31:00.000000', '02:13:07.000000', 'Bhavnagar', 'Porbandar', 100),
(140503, '12:17:04.000000', '21:17:04.000000', 'Surat', 'Rajkot', 570),
(140525, '14:19:50.000000', '09:19:50.000000', 'Surat', 'Porbandar', 720),
(140604, '17:41:29.000000', '06:41:29.000000', 'Vadodara', 'Bhavnagar', 560),
(141225, '04:01:42.000000', '14:00:00.000000', 'Bhuj', 'Porbandar', 700),
(150103, '17:31:00.000000', '22:10:12.000000', 'Ahmedabad', 'Rajkot', 200),
(150312, '04:34:21.000000', '09:34:21.000000', 'Rajkot', 'Bhuj', 250),
(150406, '13:31:49.000000', '23:31:49.000000', 'Bhavnagar', 'Vadodara', 660),
(150501, '13:43:50.000000', '18:43:50.000000', 'Surat', 'Ahmedabad', 250),
(150612, '12:40:33.000000', '00:40:33.000000', 'Vadodara', 'Bhuj', 530),
(151203, '11:29:56.000000', '15:29:56.000000', 'Bhuj', 'Rajkot', 250);

-- --------------------------------------------------------

--
-- Table structure for table `raildata_userdetails`
--

CREATE TABLE `raildata_userdetails` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(50) NOT NULL,
  `conf_pass` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `age` date NOT NULL,
  `contact` int(11) NOT NULL,
  `gender` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `raildata_userdetails`
--

INSERT INTO `raildata_userdetails` (`fname`, `lname`, `email`, `password`, `conf_pass`, `id`, `age`, `contact`, `gender`) VALUES
('Princy', 'Gajera', 'princygajera121@gmail.com', '123456', '123456', 1, '2002-03-28', 2147483647, 'femal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `raildata_admin`
--
ALTER TABLE `raildata_admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `raildata_feedback`
--
ALTER TABLE `raildata_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raildata_passenger`
--
ALTER TABLE `raildata_passenger`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `raildata_payment`
--
ALTER TABLE `raildata_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raildata_reservation`
--
ALTER TABLE `raildata_reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `raildata_tickets`
--
ALTER TABLE `raildata_tickets`
  ADD PRIMARY KEY (`Ticketno`);

--
-- Indexes for table `raildata_train`
--
ALTER TABLE `raildata_train`
  ADD PRIMARY KEY (`Trainno`);

--
-- Indexes for table `raildata_userdetails`
--
ALTER TABLE `raildata_userdetails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `raildata_feedback`
--
ALTER TABLE `raildata_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `raildata_payment`
--
ALTER TABLE `raildata_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `raildata_reservation`
--
ALTER TABLE `raildata_reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `raildata_tickets`
--
ALTER TABLE `raildata_tickets`
  MODIFY `Ticketno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `raildata_userdetails`
--
ALTER TABLE `raildata_userdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
