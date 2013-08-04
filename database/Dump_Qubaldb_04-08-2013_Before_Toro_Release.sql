-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 04, 2013 at 05:47 PM
-- Server version: 5.5.32
-- PHP Version: 5.3.10-1ubuntu3.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `qubaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=76 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add log entry', 7, 'add_logentry'),
(20, 'Can change log entry', 7, 'change_logentry'),
(21, 'Can delete log entry', 7, 'delete_logentry'),
(22, 'Can add nickname', 8, 'add_nickname'),
(23, 'Can change nickname', 8, 'change_nickname'),
(24, 'Can delete nickname', 8, 'delete_nickname'),
(25, 'Can add achievement', 9, 'add_achievement'),
(26, 'Can change achievement', 9, 'change_achievement'),
(27, 'Can delete achievement', 9, 'delete_achievement'),
(28, 'Can add power', 10, 'add_power'),
(29, 'Can change power', 10, 'change_power'),
(30, 'Can delete power', 10, 'delete_power'),
(31, 'Can add course', 11, 'add_course'),
(32, 'Can change course', 11, 'change_course'),
(33, 'Can delete course', 11, 'delete_course'),
(34, 'Can add team', 12, 'add_team'),
(35, 'Can change team', 12, 'change_team'),
(36, 'Can delete team', 12, 'delete_team'),
(37, 'Can add person', 13, 'add_person'),
(38, 'Can change person', 13, 'change_person'),
(39, 'Can delete person', 13, 'delete_person'),
(40, 'Can add courses_ completed_ by_ student', 14, 'add_courses_completed_by_student'),
(41, 'Can change courses_ completed_ by_ student', 14, 'change_courses_completed_by_student'),
(42, 'Can delete courses_ completed_ by_ student', 14, 'delete_courses_completed_by_student'),
(43, 'Can add student', 15, 'add_student'),
(44, 'Can change student', 15, 'change_student'),
(45, 'Can delete student', 15, 'delete_student'),
(46, 'Can add teacher', 16, 'add_teacher'),
(47, 'Can change teacher', 16, 'change_teacher'),
(48, 'Can delete teacher', 16, 'delete_teacher'),
(49, 'Can add address', 17, 'add_address'),
(50, 'Can change address', 17, 'change_address'),
(51, 'Can delete address', 17, 'delete_address'),
(52, 'Can add quest', 18, 'add_quest'),
(53, 'Can change quest', 18, 'change_quest'),
(54, 'Can delete quest', 18, 'delete_quest'),
(55, 'Can add challenge', 19, 'add_challenge'),
(56, 'Can change challenge', 19, 'change_challenge'),
(57, 'Can delete challenge', 19, 'delete_challenge'),
(58, 'Can add task', 20, 'add_task'),
(59, 'Can change task', 20, 'change_task'),
(60, 'Can delete task', 20, 'delete_task'),
(61, 'Can add edu_ skill', 21, 'add_edu_skill'),
(62, 'Can change edu_ skill', 21, 'change_edu_skill'),
(63, 'Can delete edu_ skill', 21, 'delete_edu_skill'),
(64, 'Can add reward', 22, 'add_reward'),
(65, 'Can change reward', 22, 'change_reward'),
(66, 'Can delete reward', 22, 'delete_reward'),
(67, 'Can add educational_ document', 23, 'add_educational_document'),
(68, 'Can change educational_ document', 23, 'change_educational_document'),
(69, 'Can delete educational_ document', 23, 'delete_educational_document'),
(70, 'Can add rules_ xp_per_ level', 24, 'add_rules_xp_per_level'),
(71, 'Can change rules_ xp_per_ level', 24, 'change_rules_xp_per_level'),
(72, 'Can delete rules_ xp_per_ level', 24, 'delete_rules_xp_per_level'),
(73, 'Can add rules_ edu_ skills_per_ course', 25, 'add_rules_edu_skills_per_course'),
(74, 'Can change rules_ edu_ skills_per_ course', 25, 'change_rules_edu_skills_per_course'),
(75, 'Can delete rules_ edu_ skills_per_ course', 25, 'delete_rules_edu_skills_per_course');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `is_staff`, `is_active`, `is_superuser`, `last_login`, `date_joined`) VALUES
(1, 'bochelord', '', '', 'bochelord@gmail.com', 'pbkdf2_sha256$10000$CiPE8Nuu89Fl$tXXml+J/etZOzdCXmGJw1SKZvE+TcUAXr5uoUMRmoS0=', 1, 1, 1, '2013-08-04 04:10:18', '2013-07-28 17:59:20'),
(2, 'leunam', 'Manuel', 'Gonzalez Garcia', 'leunam.san@gmail.com', 'pbkdf2_sha256$10000$lBx1TnphOSQP$CmeqRcwgcOvWcR9o64qntSLTXwt6N2DlcjhNj6cHbkE=', 1, 1, 1, '2013-08-03 14:09:30', '2013-07-28 22:43:23'),
(3, 'sander', 'Sander', 'Boelsma', 'sander@studiesoft.com', 'pbkdf2_sha256$10000$8iIbPKv6Dcal$cU8yKiexd/hrc11ub36B2X2CtMTxddGemNUC2ZSgqzQ=', 1, 1, 1, '2013-07-29 16:15:03', '2013-07-29 00:08:38'),
(4, 'test', '', '', '', 'pbkdf2_sha256$10000$sbXgC1X2jzw2$8X7ng9cW46Yj4gyv172MZsH/ZNsb+C+/ki+eNHaLYlk=', 0, 1, 0, '2013-08-02 15:47:24', '2013-07-29 03:41:18'),
(5, 'jan', 'Jan', 'van der Vaart', 'jan@vandervaart.com', 'pbkdf2_sha256$10000$ckCcDoIW43oa$TL3zUMJikYu0ajtFEkUQL/xiFRFPT+M88PbwrXEPuX4=', 0, 1, 0, '2013-08-01 19:28:51', '2013-07-29 15:33:46'),
(6, 'maria', 'Maria Antonia', 'Fernandez', 'maria.antonia@fernandez.com', 'pbkdf2_sha256$10000$OXPMaKx0j9EW$F91fRqzdFfgqg3ZvYQI0VX7hHsbSdneHD9BqhL5hr/g=', 0, 1, 0, '2013-07-29 16:38:30', '2013-07-29 15:33:56'),
(7, 'juan', 'Juan', 'Jimenez', 'juan@jimenez.com', 'pbkdf2_sha256$10000$Wdv5dng3ZfVv$UXxgvAuwYpOvT382/RMMs6b6cYbkWoNXqUOxUo3n75E=', 0, 1, 0, '2013-07-29 15:34:17', '2013-07-29 15:34:17'),
(8, 'paco', 'Francisco Jose', 'Gutierrez', 'paco@paco.com', 'pbkdf2_sha256$10000$rrpROstcQe7Z$bkeuWMiaRHCwJdEmvhDkiZyCDBErgQz6cD8Zo9L6yBg=', 0, 1, 0, '2013-07-29 15:34:32', '2013-07-29 15:34:32'),
(9, 'darthvader', '', '', '', 'pbkdf2_sha256$10000$sEpshtcZXJXm$YdbPMBJv4RNojzMwSzIHt4Q8A8vyU3CRtpHW9bOGOJs=', 0, 1, 0, '2013-07-29 16:43:41', '2013-07-29 16:33:08'),
(10, 'caroline', '', '', '', 'pbkdf2_sha256$10000$s49L1cKorvdW$alNMTS+y8KR58WyxbA7HGxbOED/7ax0OOtenSlO1ZT8=', 0, 1, 0, '2013-08-01 23:06:28', '2013-07-30 18:06:56'),
(11, 'fresca', '', '', '', 'pbkdf2_sha256$10000$DVaAI51tDiWc$2zc3TfbAGh3XelMZjnub93qH273f9qnDnMmeP0+TUPU=', 0, 1, 0, '2013-08-01 22:58:51', '2013-07-31 17:15:52'),
(12, 'noimagen', '', '', '', 'pbkdf2_sha256$10000$ulAOoTw246A4$fGdtOWagAMAwMqN4RXU7WLbmfnl5/+MXAs0r6F5doR0=', 0, 1, 0, '2013-08-02 15:39:15', '2013-07-31 19:08:29');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2013-07-31 17:07:39', 1, 15, '10', 'Caroline Van houten', 1, ''),
(2, '2013-07-31 17:09:12', 1, 15, '10', 'Caroline Van houten', 2, 'No fields changed.'),
(3, '2013-07-31 17:15:52', 1, 3, '11', 'fresca', 1, ''),
(4, '2013-07-31 17:16:37', 1, 15, '11', 'Fresca Buenorra', 1, ''),
(5, '2013-07-31 17:17:20', 1, 15, '11', 'Fresca Buenorra', 2, 'Changed has_achievements and is_team_member_of.'),
(6, '2013-07-31 19:08:29', 1, 3, '12', 'noimagen', 1, ''),
(7, '2013-07-31 19:09:05', 1, 15, '12', 'cateto sinimagen', 1, ''),
(8, '2013-07-31 21:06:56', 1, 16, '4', 'test test', 2, 'Changed image.');

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'content type', 'contenttypes', 'contenttype'),
(5, 'session', 'sessions', 'session'),
(6, 'site', 'sites', 'site'),
(7, 'log entry', 'admin', 'logentry'),
(8, 'nickname', 'qubalapp', 'nickname'),
(9, 'achievement', 'qubalapp', 'achievement'),
(10, 'power', 'qubalapp', 'power'),
(11, 'course', 'qubalapp', 'course'),
(12, 'team', 'qubalapp', 'team'),
(13, 'person', 'qubalapp', 'person'),
(14, 'courses_ completed_ by_ student', 'qubalapp', 'courses_completed_by_student'),
(15, 'student', 'qubalapp', 'student'),
(16, 'teacher', 'qubalapp', 'teacher'),
(17, 'address', 'qubalapp', 'address'),
(18, 'quest', 'qubalapp', 'quest'),
(19, 'challenge', 'qubalapp', 'challenge'),
(20, 'task', 'qubalapp', 'task'),
(21, 'edu_ skill', 'qubalapp', 'edu_skill'),
(22, 'reward', 'qubalapp', 'reward'),
(23, 'educational_ document', 'qubalapp', 'educational_document'),
(24, 'rules_ xp_per_ level', 'qubalapp', 'rules_xp_per_level'),
(25, 'rules_ edu_ skills_per_ course', 'qubalapp', 'rules_edu_skills_per_course');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('03mwoff2teygzgc65eiq7usypz4vmsgn', 'YmFlNTE0MmQ1NTgwNDI3M2NkOTc2YzNjYTdhNzZkYmU5NmQ2OWIxNTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2013-08-18 04:10:18'),
('4d4c6dbad5a0ed5b657e0c78e966dcba', 'YmFlNTE0MmQ1NTgwNDI3M2NkOTc2YzNjYTdhNzZkYmU5NmQ2OWIxNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-08-15 22:40:53'),
('57ljf71q63odz1d6a7e2zgjygrp9wk91', 'YmFlNTE0MmQ1NTgwNDI3M2NkOTc2YzNjYTdhNzZkYmU5NmQ2OWIxNTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2013-08-16 03:44:38'),
('aiyffm9bpf8bpypjvp5n8pw6k4pjq4t9', 'YmFlNTE0MmQ1NTgwNDI3M2NkOTc2YzNjYTdhNzZkYmU5NmQ2OWIxNTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2013-08-16 00:49:33'),
('de973475218c015bc3ca68593a1d9b10', 'YmFlNTE0MmQ1NTgwNDI3M2NkOTc2YzNjYTdhNzZkYmU5NmQ2OWIxNTqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n', '2013-08-15 15:29:37'),
('j98njbn0izrxjifkal95y77eskou93lv', 'M2M5ODY5ZmNjMmY5NGNhYTdlNzc2NzUxOGY1ZTFmYzcyNGVhNWFmNDqAAn1xAS4=', '2013-08-17 21:34:57'),
('n2x03l6bk3d4tej62243sxdk1cxs54qn', 'YmFlNTE0MmQ1NTgwNDI3M2NkOTc2YzNjYTdhNzZkYmU5NmQ2OWIxNTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2013-08-17 14:26:23'),
('s0sar4rwp1y4uk8nqf08s1f54thus8c5', 'YjZiYWZhMzFiNzdlMzY1OGQzNzBlZWI0MTNiNTIyNWY3MWFkYTA2MzqAAn1xAVgKAAAAdGVzdGNvb2tpZVgGAAAAd29ya2VkcQJzLg==', '2013-08-16 11:29:07'),
('sx1urbmr9xuobgo9b6m9knntnjdiblbs', 'YmFlNTE0MmQ1NTgwNDI3M2NkOTc2YzNjYTdhNzZkYmU5NmQ2OWIxNTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2013-08-16 13:22:31'),
('zuckvk9n3kukuiv8bfqf7m4dn8ygwwtp', 'YmFlNTE0MmQ1NTgwNDI3M2NkOTc2YzNjYTdhNzZkYmU5NmQ2OWIxNTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2013-08-17 12:39:24');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_achievement`
--

CREATE TABLE IF NOT EXISTS `qubalapp_achievement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `unlock_nickname_id` int(11) DEFAULT NULL,
  `unlocked_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unlock_nickname_id` (`unlock_nickname_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `qubalapp_achievement`
--

INSERT INTO `qubalapp_achievement` (`id`, `name`, `description`, `image`, `unlock_nickname_id`, `unlocked_date`) VALUES
(1, 'Big Wooden Head', 'You are the one and biggest , Big WoodenHead', 'images/achievements/Yummy_Potato_by_TattooAddict_2.png', NULL, NULL),
(2, 'Great Balls of OpenSource', 'Set up a server based on open source software', 'images/achievements/Sky_Lantern.jpg', NULL, NULL),
(3, 'Too much', 'You have spent more than 3 hours in front of the screen', 'images/achievements/Cov.jpg', NULL, NULL),
(4, 'IronHeart', 'Your teammates never walk alone : You helped a teammate to finish a quest in time', 'images/achievements/cover.jpg', NULL, NULL),
(5, 'Penguin xtrmntr', 'Defeat the evil ubuntu penguin master and bring him to his knees making a proper server run showing good manners', 'images/achievements/kill-bill.jpg', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_address`
--

CREATE TABLE IF NOT EXISTS `qubalapp_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(100) NOT NULL,
  `number` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `door` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `qubalapp_address`
--

INSERT INTO `qubalapp_address` (`id`, `street`, `number`, `floor`, `door`, `city`, `postcode`, `country`) VALUES
(3, 'pappar', 121, 32, 'ererq', 'ewew', 'rwererw', 'wewew'),
(4, 'Llanos de San Ramón', 1, 3, '10', 'Marbella', '23601', 'Spain'),
(5, 'Hogeweg', 21, 0, 'Red', 'Wijk aan Zee', '1949AW', 'The Netherlands'),
(6, 'Divide by cero street', 0, 0, '0', 'Amsterdam', '1070 AX', 'Netherlands');

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_challenge`
--

CREATE TABLE IF NOT EXISTS `qubalapp_challenge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `qubalapp_challenge`
--

INSERT INTO `qubalapp_challenge` (`id`, `name`, `description`) VALUES
(1, 'fsafsa', 'fasfasf');

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_challenge_has_documents`
--

CREATE TABLE IF NOT EXISTS `qubalapp_challenge_has_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge_id` int(11) NOT NULL,
  `educational_document_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `challenge_id` (`challenge_id`,`educational_document_id`),
  KEY `qubalapp_challenge_has_documents_22741432` (`challenge_id`),
  KEY `qubalapp_challenge_has_documents_1173705d` (`educational_document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_challenge_has_rewards`
--

CREATE TABLE IF NOT EXISTS `qubalapp_challenge_has_rewards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge_id` int(11) NOT NULL,
  `reward_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `challenge_id` (`challenge_id`,`reward_id`),
  KEY `qubalapp_challenge_has_rewards_22741432` (`challenge_id`),
  KEY `qubalapp_challenge_has_rewards_652b61ed` (`reward_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `qubalapp_challenge_has_rewards`
--

INSERT INTO `qubalapp_challenge_has_rewards` (`id`, `challenge_id`, `reward_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_challenge_has_tasks`
--

CREATE TABLE IF NOT EXISTS `qubalapp_challenge_has_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `challenge_id` (`challenge_id`,`task_id`),
  KEY `qubalapp_challenge_has_tasks_22741432` (`challenge_id`),
  KEY `qubalapp_challenge_has_tasks_3ff01bab` (`task_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `qubalapp_challenge_has_tasks`
--

INSERT INTO `qubalapp_challenge_has_tasks` (`id`, `challenge_id`, `task_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_course`
--

CREATE TABLE IF NOT EXISTS `qubalapp_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `starting_date` datetime NOT NULL,
  `ending_date` datetime NOT NULL,
  `has_quests_id` int(11) NOT NULL,
  `has_achievements_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qubalapp_course_1a70084` (`has_quests_id`),
  KEY `qubalapp_course_6e51f20d` (`has_achievements_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `qubalapp_course`
--

INSERT INTO `qubalapp_course` (`id`, `image`, `name`, `description`, `starting_date`, `ending_date`, `has_quests_id`, `has_achievements_id`) VALUES
(1, 'images/courses/CIMG7626.JPG', 'Stop motion animation', 'Learn how to make real cartoon animations with the stop motion technique used by the hollywood studios', '2013-07-29 02:56:53', '2013-07-31 02:56:55', 1, 1),
(2, 'images/courses/CIMG7791.JPG', 'Rooftop Bike fixing', 'Ever tried to fix a bike on a rooftop? Now you can do it safely with this course !!!', '2013-07-29 03:34:28', '2013-07-29 03:34:30', 1, 4),
(3, 'images/courses/Eurocopa2008_002.jpg', 'Spanjarden tekniek', 'Learn how to support the World Champion team in the next endeavor in the Brazil 2014!', '2013-07-29 03:37:27', '2013-07-29 03:37:28', 2, 4),
(4, 'images/courses/testing-with-rspec.png', 'Test Qubal', 'This Course is all about Qubal, test every single part, create, delete, change, just click wherever', '2013-07-29 16:07:05', '2023-07-29 16:08:26', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_courses_completed_by_student`
--

CREATE TABLE IF NOT EXISTS `qubalapp_courses_completed_by_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qubalapp_courses_completed_by_student_42ff452e` (`student_id`),
  KEY `qubalapp_courses_completed_by_student_b7271b` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_course_has_documents`
--

CREATE TABLE IF NOT EXISTS `qubalapp_course_has_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `educational_document_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `course_id` (`course_id`,`educational_document_id`),
  KEY `qubalapp_course_has_documents_b7271b` (`course_id`),
  KEY `qubalapp_course_has_documents_1173705d` (`educational_document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_course_has_students`
--

CREATE TABLE IF NOT EXISTS `qubalapp_course_has_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `course_id` (`course_id`,`student_id`),
  KEY `qubalapp_course_has_students_b7271b` (`course_id`),
  KEY `qubalapp_course_has_students_42ff452e` (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `qubalapp_course_has_students`
--

INSERT INTO `qubalapp_course_has_students` (`id`, `course_id`, `student_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(8, 4, 1),
(9, 4, 2),
(10, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_course_has_teams`
--

CREATE TABLE IF NOT EXISTS `qubalapp_course_has_teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `course_id` (`course_id`,`team_id`),
  KEY `qubalapp_course_has_teams_b7271b` (`course_id`),
  KEY `qubalapp_course_has_teams_30753b9` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_educational_document`
--

CREATE TABLE IF NOT EXISTS `qubalapp_educational_document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `path` varchar(100) NOT NULL,
  `is_from_team_id` int(11) DEFAULT NULL,
  `is_from_person_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `is_from_team_id` (`is_from_team_id`),
  UNIQUE KEY `is_from_person_id` (`is_from_person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_edu_skill`
--

CREATE TABLE IF NOT EXISTS `qubalapp_edu_skill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `score` int(11) NOT NULL,
  `is_from_person_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `is_from_person_id` (`is_from_person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_nickname`
--

CREATE TABLE IF NOT EXISTS `qubalapp_nickname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `qubalapp_nickname`
--

INSERT INTO `qubalapp_nickname` (`id`, `title`, `description`) VALUES
(1, 'Katana Henzo', 'master of the sword!'),
(2, 'Bisshop', 'Holy sh*t this guy is GoOD');

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_person`
--

CREATE TABLE IF NOT EXISTS `qubalapp_person` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `birth` datetime NOT NULL,
  `email` varchar(75) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `xp` int(11) NOT NULL,
  `twitter` varchar(250) DEFAULT NULL,
  `facebook` varchar(250) DEFAULT NULL,
  `dropbox` varchar(250) DEFAULT NULL,
  `has_address_id` int(11) DEFAULT NULL,
  `has_powers_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `has_powers_id` (`has_powers_id`),
  KEY `qubalapp_person_29a33686` (`has_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qubalapp_person`
--

INSERT INTO `qubalapp_person` (`user_id`, `name`, `lastname`, `birth`, `email`, `image`, `xp`, `twitter`, `facebook`, `dropbox`, `has_address_id`, `has_powers_id`) VALUES
(1, 'Boche', 'Lordus', '1977-11-05 23:27:53', 'bochelord@gmail.com', 'images/persons/3099_87029885861_618030861_2924074_1823527_n.jpg', 1856, '', '', '', NULL, 1),
(2, 'Manuel', 'Gonzalez Garcia', '1976-07-23 03:45:00', 'leunam.san@gmail.com', 'images/persons/Mass-effect-avatar---The-illusive-man.jpg', 53, '', '', '', 4, 2),
(3, 'Sander', 'Boelsma', '2013-07-29 13:29:31', 'sander@studiesoft.com', 'images/persons/Sanders-Color-300_8.png', 152, '', '', '', 5, 3),
(4, 'test', 'test', '2013-07-29 03:41:26', 'tete@tetet.com', '', 0, '', '', '', NULL, 4),
(5, 'Jan', 'Van der Vaart', '1988-07-29 16:32:25', 'jan@vandervaart.com', 'images/persons/jan_avatar.jpg', 742, '', '', '', 5, 5),
(6, 'Maria Antonia', 'Fernandez', '1983-07-29 16:34:43', 'maria.antonia@fernandez.com', 'images/persons/fresca01.jpg', 345, '', '', '', NULL, 6),
(9, 'Darth', 'Vader', '2013-07-29 16:33:48', 'darth@deathstar.com', 'images/persons/images.jpg', 2000, '', '', '', NULL, 7),
(10, 'Caroline', 'Van houten', '2013-07-31 17:05:22', 'rere@34343.com', 'images/persons/images_1.jpg', 0, '', '', '', NULL, 8),
(11, 'Fresca', 'Buenorra', '2013-07-31 17:16:11', 'fresquisima@pibon.com', 'images/persons/30xeiav.jpg', 0, '', '', '', NULL, 9),
(12, 'cateto', 'sinimagen', '2013-07-31 19:08:56', 'pklpkpkp@reere.com', '', 0, '', '', '', NULL, 11);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_person_has_achievements`
--

CREATE TABLE IF NOT EXISTS `qubalapp_person_has_achievements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `achievement_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `person_id` (`person_id`,`achievement_id`),
  KEY `qubalapp_person_has_achievements_21b911c5` (`person_id`),
  KEY `qubalapp_person_has_achievements_5e7a152a` (`achievement_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=129 ;

--
-- Dumping data for table `qubalapp_person_has_achievements`
--

INSERT INTO `qubalapp_person_has_achievements` (`id`, `person_id`, `achievement_id`) VALUES
(109, 1, 1),
(110, 1, 2),
(111, 1, 3),
(122, 2, 1),
(123, 2, 2),
(124, 2, 4),
(125, 2, 5),
(112, 3, 2),
(127, 4, 1),
(128, 4, 2),
(121, 5, 2),
(120, 6, 4),
(118, 9, 1),
(119, 9, 4),
(126, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_person_has_nicknames`
--

CREATE TABLE IF NOT EXISTS `qubalapp_person_has_nicknames` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `nickname_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `person_id` (`person_id`,`nickname_id`),
  KEY `qubalapp_person_has_nicknames_21b911c5` (`person_id`),
  KEY `qubalapp_person_has_nicknames_430c5c0` (`nickname_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `qubalapp_person_has_nicknames`
--

INSERT INTO `qubalapp_person_has_nicknames` (`id`, `person_id`, `nickname_id`) VALUES
(12, 3, 2),
(18, 4, 1),
(17, 5, 1),
(16, 6, 1),
(14, 9, 1),
(15, 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_power`
--

CREATE TABLE IF NOT EXISTS `qubalapp_power` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teamwork` int(11) NOT NULL,
  `communication` int(11) NOT NULL,
  `responsability` int(11) NOT NULL,
  `perseverance` int(11) NOT NULL,
  `mastery` int(11) NOT NULL,
  `focus` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `qubalapp_power`
--

INSERT INTO `qubalapp_power` (`id`, `teamwork`, `communication`, `responsability`, `perseverance`, `mastery`, `focus`) VALUES
(1, 1, 1, 1, 1, 1, 1),
(2, 1, 1, 1, 1, 1, 1),
(4, 1, 1, 1, 1, 1, 1),
(5, 1, 1, 1, 1, 1, 1),
(6, 1, 1, 1, 1, 1, 1),
(7, 1, 1, 1, 1, 1, 1),
(8, 1, 1, 1, 1, 1, 1),
(9, 1, 1, 1, 1, 1, 1),
(10, 1, 1, 1, 1, 1, 1),
(11, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_quest`
--

CREATE TABLE IF NOT EXISTS `qubalapp_quest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `qubalapp_quest`
--

INSERT INTO `qubalapp_quest` (`id`, `name`, `description`) VALUES
(1, 'fdfs', 'fafda'),
(2, 't5t5', 't5t');

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_quest_has_challenges`
--

CREATE TABLE IF NOT EXISTS `qubalapp_quest_has_challenges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quest_id` int(11) NOT NULL,
  `challenge_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `quest_id` (`quest_id`,`challenge_id`),
  KEY `qubalapp_quest_has_challenges_7f44057b` (`quest_id`),
  KEY `qubalapp_quest_has_challenges_22741432` (`challenge_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `qubalapp_quest_has_challenges`
--

INSERT INTO `qubalapp_quest_has_challenges` (`id`, `quest_id`, `challenge_id`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_quest_has_documents`
--

CREATE TABLE IF NOT EXISTS `qubalapp_quest_has_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quest_id` int(11) NOT NULL,
  `educational_document_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `quest_id` (`quest_id`,`educational_document_id`),
  KEY `qubalapp_quest_has_documents_7f44057b` (`quest_id`),
  KEY `qubalapp_quest_has_documents_1173705d` (`educational_document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_quest_has_rewards`
--

CREATE TABLE IF NOT EXISTS `qubalapp_quest_has_rewards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quest_id` int(11) NOT NULL,
  `reward_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `quest_id` (`quest_id`,`reward_id`),
  KEY `qubalapp_quest_has_rewards_7f44057b` (`quest_id`),
  KEY `qubalapp_quest_has_rewards_652b61ed` (`reward_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `qubalapp_quest_has_rewards`
--

INSERT INTO `qubalapp_quest_has_rewards` (`id`, `quest_id`, `reward_id`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_reward`
--

CREATE TABLE IF NOT EXISTS `qubalapp_reward` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `xp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `qubalapp_reward`
--

INSERT INTO `qubalapp_reward` (`id`, `name`, `xp`) VALUES
(1, 'fasfasf', 23);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_reward_has_achievement`
--

CREATE TABLE IF NOT EXISTS `qubalapp_reward_has_achievement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reward_id` int(11) NOT NULL,
  `achievement_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reward_id` (`reward_id`,`achievement_id`),
  KEY `qubalapp_reward_has_achievement_652b61ed` (`reward_id`),
  KEY `qubalapp_reward_has_achievement_5e7a152a` (`achievement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_reward_has_edu_skill_points`
--

CREATE TABLE IF NOT EXISTS `qubalapp_reward_has_edu_skill_points` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reward_id` int(11) NOT NULL,
  `edu_skill_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reward_id` (`reward_id`,`edu_skill_id`),
  KEY `qubalapp_reward_has_edu_skill_points_652b61ed` (`reward_id`),
  KEY `qubalapp_reward_has_edu_skill_points_17775af9` (`edu_skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_reward_has_powers_points`
--

CREATE TABLE IF NOT EXISTS `qubalapp_reward_has_powers_points` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reward_id` int(11) NOT NULL,
  `power_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reward_id` (`reward_id`,`power_id`),
  KEY `qubalapp_reward_has_powers_points_652b61ed` (`reward_id`),
  KEY `qubalapp_reward_has_powers_points_6f86c06` (`power_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_rules_edu_skills_per_course`
--

CREATE TABLE IF NOT EXISTS `qubalapp_rules_edu_skills_per_course` (
  `is_from_edu_skill_id` int(11) NOT NULL,
  `is_from_course_id` int(11) NOT NULL,
  PRIMARY KEY (`is_from_edu_skill_id`),
  KEY `qubalapp_rules_edu_skills_per_course_64b59447` (`is_from_course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_rules_xp_per_level`
--

CREATE TABLE IF NOT EXISTS `qubalapp_rules_xp_per_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `xp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `qubalapp_rules_xp_per_level`
--

INSERT INTO `qubalapp_rules_xp_per_level` (`id`, `level`, `xp`) VALUES
(1, 1, 50),
(2, 2, 100),
(3, 3, 175),
(4, 4, 300),
(5, 5, 500),
(6, 6, 750),
(7, 7, 1100),
(8, 8, 1350),
(9, 9, 1500),
(10, 10, 1700);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_student`
--

CREATE TABLE IF NOT EXISTS `qubalapp_student` (
  `person_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`person_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qubalapp_student`
--

INSERT INTO `qubalapp_student` (`person_ptr_id`) VALUES
(1),
(2),
(3),
(5),
(6),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_student_challenged_completed`
--

CREATE TABLE IF NOT EXISTS `qubalapp_student_challenged_completed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `challenge_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`,`challenge_id`),
  KEY `qubalapp_student_challenged_completed_42ff452e` (`student_id`),
  KEY `qubalapp_student_challenged_completed_22741432` (`challenge_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `qubalapp_student_challenged_completed`
--

INSERT INTO `qubalapp_student_challenged_completed` (`id`, `student_id`, `challenge_id`) VALUES
(1, 3, 1),
(2, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_student_courses_completed`
--

CREATE TABLE IF NOT EXISTS `qubalapp_student_courses_completed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`,`course_id`),
  KEY `qubalapp_student_courses_completed_42ff452e` (`student_id`),
  KEY `qubalapp_student_courses_completed_b7271b` (`course_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `qubalapp_student_courses_completed`
--

INSERT INTO `qubalapp_student_courses_completed` (`id`, `student_id`, `course_id`) VALUES
(10, 2, 1),
(3, 3, 2),
(9, 5, 3),
(6, 6, 1),
(7, 6, 3),
(8, 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_student_is_enrolled_in_courses`
--

CREATE TABLE IF NOT EXISTS `qubalapp_student_is_enrolled_in_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`,`course_id`),
  KEY `qubalapp_student_is_enrolled_in_courses_42ff452e` (`student_id`),
  KEY `qubalapp_student_is_enrolled_in_courses_b7271b` (`course_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `qubalapp_student_is_enrolled_in_courses`
--

INSERT INTO `qubalapp_student_is_enrolled_in_courses` (`id`, `student_id`, `course_id`) VALUES
(6, 1, 2),
(20, 2, 1),
(21, 2, 2),
(22, 2, 3),
(23, 2, 4),
(7, 3, 1),
(8, 3, 2),
(18, 5, 1),
(19, 5, 2),
(17, 6, 2),
(15, 9, 3),
(16, 9, 4);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_student_is_team_member_of`
--

CREATE TABLE IF NOT EXISTS `qubalapp_student_is_team_member_of` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`,`team_id`),
  KEY `qubalapp_student_is_team_member_of_42ff452e` (`student_id`),
  KEY `qubalapp_student_is_team_member_of_30753b9` (`team_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `qubalapp_student_is_team_member_of`
--

INSERT INTO `qubalapp_student_is_team_member_of` (`id`, `student_id`, `team_id`) VALUES
(6, 1, 1),
(7, 1, 2),
(17, 2, 1),
(18, 2, 2),
(19, 2, 3),
(8, 3, 1),
(16, 5, 2),
(14, 6, 1),
(15, 6, 3),
(13, 9, 3),
(20, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_student_quests_completed`
--

CREATE TABLE IF NOT EXISTS `qubalapp_student_quests_completed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `quest_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`,`quest_id`),
  KEY `qubalapp_student_quests_completed_42ff452e` (`student_id`),
  KEY `qubalapp_student_quests_completed_7f44057b` (`quest_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `qubalapp_student_quests_completed`
--

INSERT INTO `qubalapp_student_quests_completed` (`id`, `student_id`, `quest_id`) VALUES
(1, 3, 1),
(2, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_student_tasks_completed`
--

CREATE TABLE IF NOT EXISTS `qubalapp_student_tasks_completed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`,`task_id`),
  KEY `qubalapp_student_tasks_completed_42ff452e` (`student_id`),
  KEY `qubalapp_student_tasks_completed_3ff01bab` (`task_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `qubalapp_student_tasks_completed`
--

INSERT INTO `qubalapp_student_tasks_completed` (`id`, `student_id`, `task_id`) VALUES
(1, 3, 1),
(2, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_task`
--

CREATE TABLE IF NOT EXISTS `qubalapp_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `qubalapp_task`
--

INSERT INTO `qubalapp_task` (`id`, `name`, `description`) VALUES
(1, 'fsafsafs', 'fsafasfsa');

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_task_has_documents`
--

CREATE TABLE IF NOT EXISTS `qubalapp_task_has_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `educational_document_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`,`educational_document_id`),
  KEY `qubalapp_task_has_documents_3ff01bab` (`task_id`),
  KEY `qubalapp_task_has_documents_1173705d` (`educational_document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_task_has_rewards`
--

CREATE TABLE IF NOT EXISTS `qubalapp_task_has_rewards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `reward_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`,`reward_id`),
  KEY `qubalapp_task_has_rewards_3ff01bab` (`task_id`),
  KEY `qubalapp_task_has_rewards_652b61ed` (`reward_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `qubalapp_task_has_rewards`
--

INSERT INTO `qubalapp_task_has_rewards` (`id`, `task_id`, `reward_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_teacher`
--

CREATE TABLE IF NOT EXISTS `qubalapp_teacher` (
  `person_ptr_id` int(11) NOT NULL,
  `background_cv` longtext NOT NULL,
  PRIMARY KEY (`person_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qubalapp_teacher`
--

INSERT INTO `qubalapp_teacher` (`person_ptr_id`, `background_cv`) VALUES
(4, 'effeef');

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_teacher_is_tutor_of_teams`
--

CREATE TABLE IF NOT EXISTS `qubalapp_teacher_is_tutor_of_teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teacher_id` (`teacher_id`,`team_id`),
  KEY `qubalapp_teacher_is_tutor_of_teams_161e15c3` (`teacher_id`),
  KEY `qubalapp_teacher_is_tutor_of_teams_30753b9` (`team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_teacher_teach_in_courses`
--

CREATE TABLE IF NOT EXISTS `qubalapp_teacher_teach_in_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teacher_id` (`teacher_id`,`course_id`),
  KEY `qubalapp_teacher_teach_in_courses_161e15c3` (`teacher_id`),
  KEY `qubalapp_teacher_teach_in_courses_b7271b` (`course_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `qubalapp_teacher_teach_in_courses`
--

INSERT INTO `qubalapp_teacher_teach_in_courses` (`id`, `teacher_id`, `course_id`) VALUES
(4, 4, 1),
(5, 4, 2),
(6, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_team`
--

CREATE TABLE IF NOT EXISTS `qubalapp_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `is_in_course_id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `captain_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qubalapp_team_74800c3a` (`is_in_course_id`),
  KEY `qubalapp_team_2818ea25` (`captain_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `qubalapp_team`
--

INSERT INTO `qubalapp_team` (`id`, `name`, `is_in_course_id`, `description`, `image`, `captain_id`) VALUES
(1, 'The A Team', 3, 'In 1972 four of the best soldiers ', 'images/teams/download.jpg', 1),
(2, 'Cartoonists', 1, 'WE love cartoons!', 'images/teams/a8cff54da1e7f749.jpg', 2),
(3, 'Test this!', 4, 'Prepare to report, log, regress, type, get angry, expect no mercy!', 'images/teams/testing-with-rspec.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_team_has_students`
--

CREATE TABLE IF NOT EXISTS `qubalapp_team_has_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_id` (`team_id`,`student_id`),
  KEY `qubalapp_team_has_students_30753b9` (`team_id`),
  KEY `qubalapp_team_has_students_42ff452e` (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `qubalapp_team_has_students`
--

INSERT INTO `qubalapp_team_has_students` (`id`, `team_id`, `student_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_team_has_teachers`
--

CREATE TABLE IF NOT EXISTS `qubalapp_team_has_teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_id` (`team_id`,`teacher_id`),
  KEY `qubalapp_team_has_teachers_30753b9` (`team_id`),
  KEY `qubalapp_team_has_teachers_161e15c3` (`teacher_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `qubalapp_team_has_teachers`
--

INSERT INTO `qubalapp_team_has_teachers` (`id`, `team_id`, `teacher_id`) VALUES
(1, 1, 4),
(2, 2, 4),
(3, 3, 4);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_5886d21f` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `group_id_refs_id_f116770` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_id_refs_id_7ceef80f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_id_refs_id_dfbab7d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `qubalapp_achievement`
--
ALTER TABLE `qubalapp_achievement`
  ADD CONSTRAINT `unlock_nickname_id_refs_id_47fb5e25` FOREIGN KEY (`unlock_nickname_id`) REFERENCES `qubalapp_nickname` (`id`);

--
-- Constraints for table `qubalapp_challenge_has_documents`
--
ALTER TABLE `qubalapp_challenge_has_documents`
  ADD CONSTRAINT `challenge_id_refs_id_289a4e49` FOREIGN KEY (`challenge_id`) REFERENCES `qubalapp_challenge` (`id`),
  ADD CONSTRAINT `educational_document_id_refs_id_2647b984` FOREIGN KEY (`educational_document_id`) REFERENCES `qubalapp_educational_document` (`id`);

--
-- Constraints for table `qubalapp_challenge_has_rewards`
--
ALTER TABLE `qubalapp_challenge_has_rewards`
  ADD CONSTRAINT `challenge_id_refs_id_76670ad3` FOREIGN KEY (`challenge_id`) REFERENCES `qubalapp_challenge` (`id`),
  ADD CONSTRAINT `reward_id_refs_id_7fa12770` FOREIGN KEY (`reward_id`) REFERENCES `qubalapp_reward` (`id`);

--
-- Constraints for table `qubalapp_challenge_has_tasks`
--
ALTER TABLE `qubalapp_challenge_has_tasks`
  ADD CONSTRAINT `challenge_id_refs_id_9d4c28d` FOREIGN KEY (`challenge_id`) REFERENCES `qubalapp_challenge` (`id`),
  ADD CONSTRAINT `task_id_refs_id_2d49c798` FOREIGN KEY (`task_id`) REFERENCES `qubalapp_task` (`id`);

--
-- Constraints for table `qubalapp_course`
--
ALTER TABLE `qubalapp_course`
  ADD CONSTRAINT `has_achievements_id_refs_id_eec6af8` FOREIGN KEY (`has_achievements_id`) REFERENCES `qubalapp_achievement` (`id`),
  ADD CONSTRAINT `has_quests_id_refs_id_6ba09a5f` FOREIGN KEY (`has_quests_id`) REFERENCES `qubalapp_quest` (`id`);

--
-- Constraints for table `qubalapp_courses_completed_by_student`
--
ALTER TABLE `qubalapp_courses_completed_by_student`
  ADD CONSTRAINT `course_id_refs_id_2d9f0450` FOREIGN KEY (`course_id`) REFERENCES `qubalapp_course` (`id`),
  ADD CONSTRAINT `student_id_refs_person_ptr_id_6db90bf1` FOREIGN KEY (`student_id`) REFERENCES `qubalapp_student` (`person_ptr_id`);

--
-- Constraints for table `qubalapp_course_has_documents`
--
ALTER TABLE `qubalapp_course_has_documents`
  ADD CONSTRAINT `course_id_refs_id_165212c7` FOREIGN KEY (`course_id`) REFERENCES `qubalapp_course` (`id`),
  ADD CONSTRAINT `educational_document_id_refs_id_13305645` FOREIGN KEY (`educational_document_id`) REFERENCES `qubalapp_educational_document` (`id`);

--
-- Constraints for table `qubalapp_course_has_students`
--
ALTER TABLE `qubalapp_course_has_students`
  ADD CONSTRAINT `course_id_refs_id_6a90496a` FOREIGN KEY (`course_id`) REFERENCES `qubalapp_course` (`id`),
  ADD CONSTRAINT `student_id_refs_person_ptr_id_1733afdb` FOREIGN KEY (`student_id`) REFERENCES `qubalapp_student` (`person_ptr_id`);

--
-- Constraints for table `qubalapp_course_has_teams`
--
ALTER TABLE `qubalapp_course_has_teams`
  ADD CONSTRAINT `course_id_refs_id_70a288ed` FOREIGN KEY (`course_id`) REFERENCES `qubalapp_course` (`id`),
  ADD CONSTRAINT `team_id_refs_id_26a6d377` FOREIGN KEY (`team_id`) REFERENCES `qubalapp_team` (`id`);

--
-- Constraints for table `qubalapp_educational_document`
--
ALTER TABLE `qubalapp_educational_document`
  ADD CONSTRAINT `is_from_person_id_refs_user_id_4d57249` FOREIGN KEY (`is_from_person_id`) REFERENCES `qubalapp_person` (`user_id`),
  ADD CONSTRAINT `is_from_team_id_refs_id_740e58db` FOREIGN KEY (`is_from_team_id`) REFERENCES `qubalapp_team` (`id`);

--
-- Constraints for table `qubalapp_edu_skill`
--
ALTER TABLE `qubalapp_edu_skill`
  ADD CONSTRAINT `is_from_person_id_refs_user_id_5502f9e1` FOREIGN KEY (`is_from_person_id`) REFERENCES `qubalapp_person` (`user_id`);

--
-- Constraints for table `qubalapp_person`
--
ALTER TABLE `qubalapp_person`
  ADD CONSTRAINT `has_address_id_refs_id_39195ecf` FOREIGN KEY (`has_address_id`) REFERENCES `qubalapp_address` (`id`),
  ADD CONSTRAINT `has_powers_id_refs_id_72706290` FOREIGN KEY (`has_powers_id`) REFERENCES `qubalapp_power` (`id`),
  ADD CONSTRAINT `user_id_refs_id_56262ed` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `qubalapp_person_has_achievements`
--
ALTER TABLE `qubalapp_person_has_achievements`
  ADD CONSTRAINT `achievement_id_refs_id_71c7a9b7` FOREIGN KEY (`achievement_id`) REFERENCES `qubalapp_achievement` (`id`),
  ADD CONSTRAINT `person_id_refs_user_id_36ccb056` FOREIGN KEY (`person_id`) REFERENCES `qubalapp_person` (`user_id`);

--
-- Constraints for table `qubalapp_person_has_nicknames`
--
ALTER TABLE `qubalapp_person_has_nicknames`
  ADD CONSTRAINT `nickname_id_refs_id_5fc0b4bf` FOREIGN KEY (`nickname_id`) REFERENCES `qubalapp_nickname` (`id`),
  ADD CONSTRAINT `person_id_refs_user_id_294795b4` FOREIGN KEY (`person_id`) REFERENCES `qubalapp_person` (`user_id`);

--
-- Constraints for table `qubalapp_quest_has_challenges`
--
ALTER TABLE `qubalapp_quest_has_challenges`
  ADD CONSTRAINT `challenge_id_refs_id_72a92867` FOREIGN KEY (`challenge_id`) REFERENCES `qubalapp_challenge` (`id`),
  ADD CONSTRAINT `quest_id_refs_id_7768fbde` FOREIGN KEY (`quest_id`) REFERENCES `qubalapp_quest` (`id`);

--
-- Constraints for table `qubalapp_quest_has_documents`
--
ALTER TABLE `qubalapp_quest_has_documents`
  ADD CONSTRAINT `educational_document_id_refs_id_558ac66d` FOREIGN KEY (`educational_document_id`) REFERENCES `qubalapp_educational_document` (`id`),
  ADD CONSTRAINT `quest_id_refs_id_1ce14263` FOREIGN KEY (`quest_id`) REFERENCES `qubalapp_quest` (`id`);

--
-- Constraints for table `qubalapp_quest_has_rewards`
--
ALTER TABLE `qubalapp_quest_has_rewards`
  ADD CONSTRAINT `quest_id_refs_id_625e49d9` FOREIGN KEY (`quest_id`) REFERENCES `qubalapp_quest` (`id`),
  ADD CONSTRAINT `reward_id_refs_id_48a9301` FOREIGN KEY (`reward_id`) REFERENCES `qubalapp_reward` (`id`);

--
-- Constraints for table `qubalapp_reward_has_achievement`
--
ALTER TABLE `qubalapp_reward_has_achievement`
  ADD CONSTRAINT `achievement_id_refs_id_207c7cff` FOREIGN KEY (`achievement_id`) REFERENCES `qubalapp_achievement` (`id`),
  ADD CONSTRAINT `reward_id_refs_id_30747b40` FOREIGN KEY (`reward_id`) REFERENCES `qubalapp_reward` (`id`);

--
-- Constraints for table `qubalapp_reward_has_edu_skill_points`
--
ALTER TABLE `qubalapp_reward_has_edu_skill_points`
  ADD CONSTRAINT `edu_skill_id_refs_id_30d68c06` FOREIGN KEY (`edu_skill_id`) REFERENCES `qubalapp_edu_skill` (`id`),
  ADD CONSTRAINT `reward_id_refs_id_46052146` FOREIGN KEY (`reward_id`) REFERENCES `qubalapp_reward` (`id`);

--
-- Constraints for table `qubalapp_reward_has_powers_points`
--
ALTER TABLE `qubalapp_reward_has_powers_points`
  ADD CONSTRAINT `power_id_refs_id_636fd368` FOREIGN KEY (`power_id`) REFERENCES `qubalapp_power` (`id`),
  ADD CONSTRAINT `reward_id_refs_id_4ef40dd7` FOREIGN KEY (`reward_id`) REFERENCES `qubalapp_reward` (`id`);

--
-- Constraints for table `qubalapp_rules_edu_skills_per_course`
--
ALTER TABLE `qubalapp_rules_edu_skills_per_course`
  ADD CONSTRAINT `is_from_course_id_refs_id_328d9818` FOREIGN KEY (`is_from_course_id`) REFERENCES `qubalapp_course` (`id`),
  ADD CONSTRAINT `is_from_edu_skill_id_refs_id_5552fb2e` FOREIGN KEY (`is_from_edu_skill_id`) REFERENCES `qubalapp_edu_skill` (`id`);

--
-- Constraints for table `qubalapp_student`
--
ALTER TABLE `qubalapp_student`
  ADD CONSTRAINT `person_ptr_id_refs_user_id_c22686e` FOREIGN KEY (`person_ptr_id`) REFERENCES `qubalapp_person` (`user_id`);

--
-- Constraints for table `qubalapp_student_challenged_completed`
--
ALTER TABLE `qubalapp_student_challenged_completed`
  ADD CONSTRAINT `challenge_id_refs_id_d0ea6e` FOREIGN KEY (`challenge_id`) REFERENCES `qubalapp_challenge` (`id`),
  ADD CONSTRAINT `student_id_refs_person_ptr_id_5008a9ea` FOREIGN KEY (`student_id`) REFERENCES `qubalapp_student` (`person_ptr_id`);

--
-- Constraints for table `qubalapp_student_courses_completed`
--
ALTER TABLE `qubalapp_student_courses_completed`
  ADD CONSTRAINT `course_id_refs_id_1f2972db` FOREIGN KEY (`course_id`) REFERENCES `qubalapp_course` (`id`),
  ADD CONSTRAINT `student_id_refs_person_ptr_id_320b2b4` FOREIGN KEY (`student_id`) REFERENCES `qubalapp_student` (`person_ptr_id`);

--
-- Constraints for table `qubalapp_student_is_enrolled_in_courses`
--
ALTER TABLE `qubalapp_student_is_enrolled_in_courses`
  ADD CONSTRAINT `course_id_refs_id_73518f79` FOREIGN KEY (`course_id`) REFERENCES `qubalapp_course` (`id`),
  ADD CONSTRAINT `student_id_refs_person_ptr_id_4b9fc046` FOREIGN KEY (`student_id`) REFERENCES `qubalapp_student` (`person_ptr_id`);

--
-- Constraints for table `qubalapp_student_is_team_member_of`
--
ALTER TABLE `qubalapp_student_is_team_member_of`
  ADD CONSTRAINT `student_id_refs_person_ptr_id_990c3f` FOREIGN KEY (`student_id`) REFERENCES `qubalapp_student` (`person_ptr_id`),
  ADD CONSTRAINT `team_id_refs_id_52b9301c` FOREIGN KEY (`team_id`) REFERENCES `qubalapp_team` (`id`);

--
-- Constraints for table `qubalapp_student_quests_completed`
--
ALTER TABLE `qubalapp_student_quests_completed`
  ADD CONSTRAINT `quest_id_refs_id_5724eacd` FOREIGN KEY (`quest_id`) REFERENCES `qubalapp_quest` (`id`),
  ADD CONSTRAINT `student_id_refs_person_ptr_id_8249d3a` FOREIGN KEY (`student_id`) REFERENCES `qubalapp_student` (`person_ptr_id`);

--
-- Constraints for table `qubalapp_student_tasks_completed`
--
ALTER TABLE `qubalapp_student_tasks_completed`
  ADD CONSTRAINT `student_id_refs_person_ptr_id_5c92ea12` FOREIGN KEY (`student_id`) REFERENCES `qubalapp_student` (`person_ptr_id`),
  ADD CONSTRAINT `task_id_refs_id_129d5adb` FOREIGN KEY (`task_id`) REFERENCES `qubalapp_task` (`id`);

--
-- Constraints for table `qubalapp_task_has_documents`
--
ALTER TABLE `qubalapp_task_has_documents`
  ADD CONSTRAINT `educational_document_id_refs_id_124b811d` FOREIGN KEY (`educational_document_id`) REFERENCES `qubalapp_educational_document` (`id`),
  ADD CONSTRAINT `task_id_refs_id_2a5bb513` FOREIGN KEY (`task_id`) REFERENCES `qubalapp_task` (`id`);

--
-- Constraints for table `qubalapp_task_has_rewards`
--
ALTER TABLE `qubalapp_task_has_rewards`
  ADD CONSTRAINT `reward_id_refs_id_21398df` FOREIGN KEY (`reward_id`) REFERENCES `qubalapp_reward` (`id`),
  ADD CONSTRAINT `task_id_refs_id_296a4287` FOREIGN KEY (`task_id`) REFERENCES `qubalapp_task` (`id`);

--
-- Constraints for table `qubalapp_teacher`
--
ALTER TABLE `qubalapp_teacher`
  ADD CONSTRAINT `person_ptr_id_refs_user_id_6b0a56e3` FOREIGN KEY (`person_ptr_id`) REFERENCES `qubalapp_person` (`user_id`);

--
-- Constraints for table `qubalapp_teacher_is_tutor_of_teams`
--
ALTER TABLE `qubalapp_teacher_is_tutor_of_teams`
  ADD CONSTRAINT `teacher_id_refs_person_ptr_id_102958ba` FOREIGN KEY (`teacher_id`) REFERENCES `qubalapp_teacher` (`person_ptr_id`),
  ADD CONSTRAINT `team_id_refs_id_3763c7d8` FOREIGN KEY (`team_id`) REFERENCES `qubalapp_team` (`id`);

--
-- Constraints for table `qubalapp_teacher_teach_in_courses`
--
ALTER TABLE `qubalapp_teacher_teach_in_courses`
  ADD CONSTRAINT `course_id_refs_id_6eb28701` FOREIGN KEY (`course_id`) REFERENCES `qubalapp_course` (`id`),
  ADD CONSTRAINT `teacher_id_refs_person_ptr_id_50f85351` FOREIGN KEY (`teacher_id`) REFERENCES `qubalapp_teacher` (`person_ptr_id`);

--
-- Constraints for table `qubalapp_team`
--
ALTER TABLE `qubalapp_team`
  ADD CONSTRAINT `captain_id_refs_person_ptr_id_7f68d49e` FOREIGN KEY (`captain_id`) REFERENCES `qubalapp_student` (`person_ptr_id`),
  ADD CONSTRAINT `is_in_course_id_refs_id_58f3c4f1` FOREIGN KEY (`is_in_course_id`) REFERENCES `qubalapp_course` (`id`);

--
-- Constraints for table `qubalapp_team_has_students`
--
ALTER TABLE `qubalapp_team_has_students`
  ADD CONSTRAINT `student_id_refs_person_ptr_id_6e1ccbe1` FOREIGN KEY (`student_id`) REFERENCES `qubalapp_student` (`person_ptr_id`),
  ADD CONSTRAINT `team_id_refs_id_64532fbe` FOREIGN KEY (`team_id`) REFERENCES `qubalapp_team` (`id`);

--
-- Constraints for table `qubalapp_team_has_teachers`
--
ALTER TABLE `qubalapp_team_has_teachers`
  ADD CONSTRAINT `teacher_id_refs_person_ptr_id_476fb7b3` FOREIGN KEY (`teacher_id`) REFERENCES `qubalapp_teacher` (`person_ptr_id`),
  ADD CONSTRAINT `team_id_refs_id_5647bf47` FOREIGN KEY (`team_id`) REFERENCES `qubalapp_team` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
