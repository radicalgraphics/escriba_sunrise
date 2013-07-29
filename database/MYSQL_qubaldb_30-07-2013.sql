-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 30, 2013 at 01:54 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(3, 'Student'),
(2, 'Teacher');

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
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=195 ;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(76, 2, 10),
(77, 2, 11),
(78, 2, 12),
(79, 2, 22),
(80, 2, 23),
(81, 2, 24),
(82, 2, 25),
(83, 2, 26),
(84, 2, 27),
(85, 2, 28),
(86, 2, 29),
(87, 2, 30),
(88, 2, 31),
(89, 2, 32),
(90, 2, 33),
(91, 2, 34),
(92, 2, 35),
(93, 2, 36),
(94, 2, 38),
(95, 2, 40),
(96, 2, 41),
(97, 2, 42),
(98, 2, 43),
(99, 2, 44),
(100, 2, 45),
(101, 2, 47),
(102, 2, 49),
(103, 2, 50),
(104, 2, 51),
(105, 2, 52),
(106, 2, 53),
(107, 2, 54),
(108, 2, 55),
(109, 2, 56),
(110, 2, 57),
(111, 2, 58),
(112, 2, 59),
(113, 2, 60),
(114, 2, 61),
(115, 2, 62),
(116, 2, 63),
(117, 2, 64),
(118, 2, 65),
(119, 2, 66),
(120, 2, 67),
(121, 2, 68),
(122, 2, 69),
(123, 2, 73),
(124, 2, 74),
(125, 2, 75),
(126, 3, 34),
(133, 3, 35),
(134, 3, 36),
(130, 3, 38),
(131, 3, 44),
(132, 3, 50),
(127, 3, 67),
(128, 3, 68),
(129, 3, 69);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$10000$CiPE8Nuu89Fl$tXXml+J/etZOzdCXmGJw1SKZvE+TcUAXr5uoUMRmoS0=', '2013-07-29 16:43:12', 1, 'bochelord', '', '', 'bochelord@gmail.com', 1, 1, '2013-07-28 17:59:20'),
(2, 'pbkdf2_sha256$10000$lBx1TnphOSQP$CmeqRcwgcOvWcR9o64qntSLTXwt6N2DlcjhNj6cHbkE=', '2013-07-29 16:37:23', 1, 'leunam', 'Manuel', 'Gonzalez Garcia', 'leunam.san@gmail.com', 1, 1, '2013-07-28 22:43:23'),
(3, 'pbkdf2_sha256$10000$8iIbPKv6Dcal$cU8yKiexd/hrc11ub36B2X2CtMTxddGemNUC2ZSgqzQ=', '2013-07-29 16:15:03', 1, 'sander', 'Sander', 'Boelsma', 'sander@studiesoft.com', 1, 1, '2013-07-29 00:08:38'),
(4, 'pbkdf2_sha256$10000$O3Algd6PiI5x$hsotP7bGpOYVwC4PKJGBDD+RKT9UUxyZn11gbBqm1T8=', '2013-07-29 03:41:18', 0, 'test', '', '', '', 0, 1, '2013-07-29 03:41:18'),
(5, 'pbkdf2_sha256$10000$ckCcDoIW43oa$TL3zUMJikYu0ajtFEkUQL/xiFRFPT+M88PbwrXEPuX4=', '2013-07-29 15:33:46', 0, 'jan', 'Jan', 'van der Vaart', 'jan@vandervaart.com', 0, 1, '2013-07-29 15:33:46'),
(6, 'pbkdf2_sha256$10000$OXPMaKx0j9EW$F91fRqzdFfgqg3ZvYQI0VX7hHsbSdneHD9BqhL5hr/g=', '2013-07-29 16:38:30', 0, 'maria', 'Maria Antonia', 'Fernandez', 'maria.antonia@fernandez.com', 0, 1, '2013-07-29 15:33:56'),
(7, 'pbkdf2_sha256$10000$Wdv5dng3ZfVv$UXxgvAuwYpOvT382/RMMs6b6cYbkWoNXqUOxUo3n75E=', '2013-07-29 15:34:17', 0, 'juan', 'Juan', 'Jimenez', 'juan@jimenez.com', 0, 1, '2013-07-29 15:34:17'),
(8, 'pbkdf2_sha256$10000$rrpROstcQe7Z$bkeuWMiaRHCwJdEmvhDkiZyCDBErgQz6cD8Zo9L6yBg=', '2013-07-29 15:34:32', 0, 'paco', 'Francisco Jose', 'Gutierrez', 'paco@paco.com', 0, 1, '2013-07-29 15:34:32'),
(9, 'pbkdf2_sha256$10000$sEpshtcZXJXm$YdbPMBJv4RNojzMwSzIHt4Q8A8vyU3CRtpHW9bOGOJs=', '2013-07-29 16:43:41', 0, 'darthvader', '', '', '', 0, 1, '2013-07-29 16:33:08');

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
  KEY `auth_user_groups_5f412f9a` (`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(2, 2, 2),
(3, 2, 3),
(6, 5, 3),
(8, 6, 2),
(7, 7, 3);

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
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=376 ;

--
-- Dumping data for table `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(301, 2, 1),
(302, 2, 2),
(303, 2, 3),
(304, 2, 4),
(305, 2, 5),
(306, 2, 6),
(307, 2, 7),
(308, 2, 8),
(309, 2, 9),
(310, 2, 10),
(311, 2, 11),
(312, 2, 12),
(313, 2, 13),
(314, 2, 14),
(315, 2, 15),
(316, 2, 16),
(317, 2, 17),
(318, 2, 18),
(319, 2, 19),
(320, 2, 20),
(321, 2, 21),
(322, 2, 22),
(323, 2, 23),
(324, 2, 24),
(325, 2, 25),
(326, 2, 26),
(327, 2, 27),
(328, 2, 28),
(329, 2, 29),
(330, 2, 30),
(331, 2, 31),
(332, 2, 32),
(333, 2, 33),
(334, 2, 34),
(335, 2, 35),
(336, 2, 36),
(337, 2, 37),
(338, 2, 38),
(339, 2, 39),
(340, 2, 40),
(341, 2, 41),
(342, 2, 42),
(343, 2, 43),
(344, 2, 44),
(345, 2, 45),
(346, 2, 46),
(347, 2, 47),
(348, 2, 48),
(349, 2, 49),
(350, 2, 50),
(351, 2, 51),
(352, 2, 52),
(353, 2, 53),
(354, 2, 54),
(355, 2, 55),
(356, 2, 56),
(357, 2, 57),
(358, 2, 58),
(359, 2, 59),
(360, 2, 60),
(361, 2, 61),
(362, 2, 62),
(363, 2, 63),
(364, 2, 64),
(365, 2, 65),
(366, 2, 66),
(367, 2, 67),
(368, 2, 68),
(369, 2, 69),
(370, 2, 70),
(371, 2, 71),
(372, 2, 72),
(373, 2, 73),
(374, 2, 74),
(375, 2, 75),
(226, 3, 1),
(227, 3, 2),
(228, 3, 3),
(229, 3, 4),
(230, 3, 5),
(231, 3, 6),
(232, 3, 7),
(233, 3, 8),
(234, 3, 9),
(235, 3, 10),
(236, 3, 11),
(237, 3, 12),
(238, 3, 13),
(239, 3, 14),
(240, 3, 15),
(241, 3, 16),
(242, 3, 17),
(243, 3, 18),
(244, 3, 19),
(245, 3, 20),
(246, 3, 21),
(247, 3, 22),
(248, 3, 23),
(249, 3, 24),
(250, 3, 25),
(251, 3, 26),
(252, 3, 27),
(253, 3, 28),
(254, 3, 29),
(255, 3, 30),
(256, 3, 31),
(257, 3, 32),
(258, 3, 33),
(259, 3, 34),
(260, 3, 35),
(261, 3, 36),
(262, 3, 37),
(263, 3, 38),
(264, 3, 39),
(265, 3, 40),
(266, 3, 41),
(267, 3, 42),
(268, 3, 43),
(269, 3, 44),
(270, 3, 45),
(271, 3, 46),
(272, 3, 47),
(273, 3, 48),
(274, 3, 49),
(275, 3, 50),
(276, 3, 51),
(277, 3, 52),
(278, 3, 53),
(279, 3, 54),
(280, 3, 55),
(281, 3, 56),
(282, 3, 57),
(283, 3, 58),
(284, 3, 59),
(285, 3, 60),
(286, 3, 61),
(287, 3, 62),
(288, 3, 63),
(289, 3, 64),
(290, 3, 65),
(291, 3, 66),
(292, 3, 67),
(293, 3, 68),
(294, 3, 69),
(295, 3, 70),
(296, 3, 71),
(297, 3, 72),
(298, 3, 73),
(299, 3, 74),
(300, 3, 75);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` text,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`),
  KEY `django_admin_log_6340c63c` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=94 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2013-07-28 22:10:08', 1, 17, '3', 'pappar', 1, ''),
(2, '2013-07-28 22:27:27', 1, 9, '1', '1: Big Wooden Head', 1, ''),
(3, '2013-07-28 22:28:47', 1, 15, '1', 'Boche Lordus', 1, ''),
(4, '2013-07-28 22:29:15', 1, 15, '1', 'Boche Lordus', 2, 'Changed xp.'),
(5, '2013-07-28 22:30:43', 1, 24, '1', '1: 50', 1, ''),
(6, '2013-07-28 22:30:47', 1, 24, '2', '2: 100', 1, ''),
(7, '2013-07-28 22:30:52', 1, 24, '3', '3: 175', 1, ''),
(8, '2013-07-28 22:30:58', 1, 24, '4', '4: 300', 1, ''),
(9, '2013-07-28 22:31:03', 1, 24, '5', '5: 500', 1, ''),
(10, '2013-07-28 22:31:13', 1, 24, '6', '6: 750', 1, ''),
(11, '2013-07-28 22:31:28', 1, 24, '7', '7: 1100', 1, ''),
(12, '2013-07-28 22:31:39', 1, 15, '1', 'Boche Lordus', 2, 'Changed xp.'),
(13, '2013-07-28 22:32:40', 1, 10, '1', 'Boche: Mas 45 Foc 30 Soc 56 Com 33 Res 78 Act 45', 1, ''),
(14, '2013-07-28 22:43:24', 1, 3, '2', 'leunam', 1, ''),
(15, '2013-07-28 22:43:32', 1, 3, '2', 'leunam', 2, 'Changed password, is_staff, is_superuser and user_permissions.'),
(16, '2013-07-28 22:43:40', 1, 3, '2', 'leunam', 2, 'Changed password and email.'),
(17, '2013-07-28 22:46:22', 2, 17, '4', 'Llanos de San Ramón', 1, ''),
(18, '2013-07-28 22:47:06', 2, 15, '2', 'Manuel Gonzalez Garcia', 1, ''),
(19, '2013-07-28 22:47:48', 2, 10, '2', 'Manuel: Mas 76 Foc 34 Soc 35 Com 65 Res 48 Act 76', 1, ''),
(20, '2013-07-28 23:40:40', 1, 9, '2', '2: Great Balls of OpenSource', 1, ''),
(21, '2013-07-28 23:43:21', 1, 9, '3', '3: Too much', 1, ''),
(22, '2013-07-28 23:45:18', 1, 9, '4', '4: IronHeart', 1, ''),
(23, '2013-07-28 23:45:56', 1, 15, '1', 'Boche Lordus', 2, 'Changed has_achievements.'),
(24, '2013-07-29 00:08:39', 2, 3, '3', 'sander', 1, ''),
(25, '2013-07-29 00:09:01', 2, 3, '3', 'sander', 2, 'Changed password, is_staff, is_superuser and user_permissions.'),
(26, '2013-07-29 02:20:18', 1, 15, '2', 'Manuel Gonzalez Garcia', 2, 'Changed has_achievements.'),
(27, '2013-07-29 02:21:34', 2, 15, '1', 'Boche Lordus', 2, 'Changed has_achievements.'),
(28, '2013-07-29 02:52:46', 1, 8, '1', '1: Katana Henzo', 1, ''),
(29, '2013-07-29 02:52:50', 1, 9, '5', '5: Linux Penguin Exterminator', 1, ''),
(30, '2013-07-29 02:53:03', 1, 15, '1', 'Boche Lordus', 2, 'Changed has_achievements.'),
(31, '2013-07-29 02:53:28', 1, 15, '1', 'Boche Lordus', 2, 'Changed has_achievements.'),
(32, '2013-07-29 02:53:43', 1, 15, '2', 'Manuel Gonzalez Garcia', 2, 'Changed has_achievements.'),
(33, '2013-07-29 02:54:11', 1, 9, '5', '5: Penguin xtrmntr', 2, 'Changed name.'),
(34, '2013-07-29 02:57:19', 2, 22, '1', '1: fasfasf - 23', 1, ''),
(35, '2013-07-29 02:57:21', 2, 20, '1', '1: fsafsafs', 1, ''),
(36, '2013-07-29 02:57:27', 2, 19, '1', '1: fsafsa', 1, ''),
(37, '2013-07-29 02:57:33', 2, 18, '1', '1: fdfs', 1, ''),
(38, '2013-07-29 02:57:59', 2, 11, '1', 'Stop motion animation', 1, ''),
(39, '2013-07-29 03:34:44', 1, 11, '2', 'Rooftop Bike fixing', 1, ''),
(40, '2013-07-29 03:37:46', 1, 18, '2', '2: t5t5', 1, ''),
(41, '2013-07-29 03:37:55', 1, 11, '3', 'Spanjarden tekniek', 1, ''),
(42, '2013-07-29 03:41:18', 1, 3, '4', 'test', 1, ''),
(43, '2013-07-29 03:41:54', 1, 16, '4', 'test test', 1, ''),
(44, '2013-07-29 03:41:59', 1, 12, '1', 'The A Team', 1, ''),
(45, '2013-07-29 03:57:04', 1, 15, '1', 'Boche Lordus', 2, 'Changed is_team_member_of and is_enrolled_in_courses.'),
(46, '2013-07-29 03:58:45', 1, 12, '2', 'Cartoonists', 1, ''),
(47, '2013-07-29 04:05:44', 2, 15, '2', 'Manuel Gonzalez Garcia', 2, 'Changed xp.'),
(48, '2013-07-29 08:56:09', 3, 8, '2', '2: Bisshop', 1, ''),
(49, '2013-07-29 08:57:17', 3, 17, '5', 'Hogeweg', 1, ''),
(50, '2013-07-29 09:04:50', 3, 3, '3', 'sander', 2, 'Changed password, first_name, last_name and email.'),
(51, '2013-07-29 09:05:38', 3, 17, '5', 'Hogeweg', 2, 'Changed door.'),
(52, '2013-07-29 09:15:57', 3, 10, '2', 'Manuel: Mas 76 Foc 34 Soc 35 Com 65 Res 48 Act 76', 2, 'No fields changed.'),
(53, '2013-07-29 09:16:57', 3, 10, '4', 'test: Mas 63 Foc 52 Soc 32 Com 68 Res 47 Act 63', 1, ''),
(54, '2013-07-29 09:17:16', 3, 10, '4', 'test: Mas 63 Foc 52 Soc 32 Com 68 Res 47 Act 63', 2, 'No fields changed.'),
(55, '2013-07-29 13:30:30', 1, 15, '3', 'Sander Boelsma', 1, ''),
(56, '2013-07-29 14:36:06', 2, 15, '2', 'Manuel Gonzalez Garcia', 2, 'Changed is_enrolled_in_courses.'),
(57, '2013-07-29 15:09:54', 1, 15, '1', 'Boche Lordus', 2, 'Changed is_team_member_of.'),
(58, '2013-07-29 15:15:55', 1, 10, '3', 'Sander: Mas 44 Foc 78 Soc 34 Com 87 Res 67 Act 44', 1, ''),
(59, '2013-07-29 15:23:31', 2, 15, '2', 'Manuel Gonzalez Garcia', 2, 'Changed is_team_member_of, courses_completed and is_enrolled_in_courses.'),
(60, '2013-07-29 15:23:42', 2, 15, '2', 'Manuel Gonzalez Garcia', 2, 'Changed is_enrolled_in_courses.'),
(61, '2013-07-29 15:33:47', 2, 3, '5', 'jan', 1, ''),
(62, '2013-07-29 15:33:56', 2, 3, '6', 'maria', 1, ''),
(63, '2013-07-29 15:34:17', 2, 3, '7', 'juan', 1, ''),
(64, '2013-07-29 15:34:32', 2, 3, '8', 'paco', 1, ''),
(65, '2013-07-29 15:37:31', 2, 3, '8', 'paco', 2, 'Changed password, first_name, last_name and email.'),
(66, '2013-07-29 15:37:52', 2, 2, '1', 'Superuser', 1, ''),
(67, '2013-07-29 15:40:56', 2, 2, '2', 'Teacher', 1, ''),
(68, '2013-07-29 15:43:30', 2, 2, '3', 'Student', 1, ''),
(69, '2013-07-29 15:46:26', 2, 2, '4', 'Staff', 1, ''),
(70, '2013-07-29 15:46:42', 2, 3, '2', 'leunam', 2, 'Changed password, first_name, last_name and groups.'),
(71, '2013-07-29 15:47:30', 2, 3, '5', 'jan', 2, 'Changed password and groups.'),
(72, '2013-07-29 15:49:28', 2, 3, '5', 'jan', 2, 'Changed password, first_name, last_name and email.'),
(73, '2013-07-29 15:51:58', 2, 3, '7', 'juan', 2, 'Changed password, first_name, last_name, email and groups.'),
(74, '2013-07-29 15:52:19', 2, 2, '4', 'Staff', 3, ''),
(75, '2013-07-29 15:52:27', 2, 2, '1', 'Superuser', 3, ''),
(76, '2013-07-29 15:56:14', 2, 3, '6', 'maria', 2, 'Changed password, first_name, last_name, email and groups.'),
(77, '2013-07-29 16:01:22', 2, 17, '6', 'Divide by cero street', 1, ''),
(78, '2013-07-29 16:08:34', 2, 11, '4', 'Test Qubal', 1, ''),
(79, '2013-07-29 16:10:36', 2, 12, '3', 'Test this!', 1, ''),
(80, '2013-07-29 16:11:42', 1, 24, '8', '8: 1350', 1, ''),
(81, '2013-07-29 16:11:51', 1, 24, '9', '9: 1500', 1, ''),
(82, '2013-07-29 16:12:00', 1, 24, '10', '10: 1700', 1, ''),
(83, '2013-07-29 16:12:17', 1, 15, '1', 'Boche Lordus', 2, 'Changed xp.'),
(84, '2013-07-29 16:12:27', 3, 15, '3', 'Sander Boelsma', 2, 'Changed email, image, xp, has_nicknames, has_achievements, has_address, is_team_member_of, courses_completed, quests_completed, challenged_completed, tasks_completed and is_enrolled_in_courses.'),
(85, '2013-07-29 16:29:41', 2, 11, '4', 'Test Qubal', 2, 'Changed image.'),
(86, '2013-07-29 16:30:17', 2, 15, '2', 'Manuel Gonzalez Garcia', 2, 'Changed is_team_member_of and is_enrolled_in_courses.'),
(87, '2013-07-29 16:33:08', 1, 3, '9', 'darthvader', 1, ''),
(88, '2013-07-29 16:34:10', 2, 15, '5', 'Jan Van der Vaart', 1, ''),
(89, '2013-07-29 16:35:36', 1, 15, '9', 'Darth Vader', 1, ''),
(90, '2013-07-29 16:36:48', 2, 15, '6', 'Maria Antonia Fernandez', 1, ''),
(91, '2013-07-29 16:38:11', 2, 10, '6', 'Maria Antonia: Mas 48 Foc 59 Soc 24 Com 35 Res 68 Act 48', 1, ''),
(92, '2013-07-29 16:40:32', 1, 10, '9', 'Darth: Mas 99 Foc 99 Soc 99 Com 99 Res 99 Act 99', 1, ''),
(93, '2013-07-29 16:43:17', 1, 10, '9', 'Darth: Mas 99 Foc 99 Soc 100 Com 100 Res 99 Act 99', 2, 'Changed social_skill and communication.');

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `session_data` text NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3fa3o1cmsuj4oke6f0t0uu1duu15l372', 'YmFlNTE0MmQ1NTgwNDI3M2NkOTc2YzNjYTdhNzZkYmU5NmQ2OWIxNTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2013-08-11 23:37:54'),
('5w39xb1h2epmkooz0s9vvhhuvsor2foj', 'MTVlODgzMTNhMjUzMjkzOTFkNzUxZDkzY2ZhM2IwNDA2MDQwYzQ4NTqAAn1xAShVCV9tZXNzYWdlc3ECXXEDY2RqYW5nby5jb250cmliLm1lc3NhZ2VzLnN0b3JhZ2UuYmFzZQpNZXNzYWdlCnEEKYFxBX1xBihVCmV4dHJhX3RhZ3NxB1gAAAAAVQdtZXNzYWdlcQhYPgAAAFRoZSBzdHVkZW50ICJNYW51ZWwgR29uemFsZXogR2FyY2lhIiB3YXMgY2hhbmdlZCBzdWNjZXNzZnVsbHkuVQVsZXZlbHEJSxR1YmFVDV9hdXRoX3VzZXJfaWSKAQJVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmR1Lg==', '2013-08-12 04:05:44'),
('6w2jbnostxdcm15vs2wpsfldxoge7ibi', 'YTliMGVhMDEzMzIzM2FkOTE2NDMwMjZhY2Q1OTczMDFkYzc2NjA0MzqAAn1xAShVDV9hdXRoX3VzZXJfaWSKAQNVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmRxAnUu', '2013-08-12 16:15:03'),
('9uwqdnzxfs9utmz1fjlj95nmm10zj7ka', 'NDBmNGE0MzFiYmI0Y2EyZDMwYmY3NzFhMmUzNjI3MjFhYzNlMjE4MDqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQl1Lg==', '2013-08-12 16:41:20'),
('gxzqqotv6b3hbcmmfrnc4srt0f916d4g', 'MmE0NTNlYWE0OWMyNWU1ZGJjODFiM2VjNGFiZDJkOTg2ZGM4Zjk5NTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-08-12 02:47:20'),
('jq94svno1w9951212gx6vtruahgjaahu', 'MmE0NTNlYWE0OWMyNWU1ZGJjODFiM2VjNGFiZDJkOTg2ZGM4Zjk5NTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-08-12 02:25:38'),
('ny3r9lgffja5g18ablfh2ss70dngl5qa', 'MmE0NTNlYWE0OWMyNWU1ZGJjODFiM2VjNGFiZDJkOTg2ZGM4Zjk5NTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==', '2013-08-12 12:57:25'),
('q05ku5lvm5oe4kfvitjlbvf35lih81fo', 'YmFlNTE0MmQ1NTgwNDI3M2NkOTc2YzNjYTdhNzZkYmU5NmQ2OWIxNTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==', '2013-08-11 22:43:09'),
('rqnx4e203u66f4s1f5prl75664xei43v', 'MjEzM2U3ZDYxMWQxMzYwYTA1Mzk4NWVhNGM5ZWUyN2JkOWVhNTM1MTqAAn1xAShYCgAAAHRlc3Rjb29raWVxAlgGAAAAd29ya2VkcQNVDV9hdXRoX3VzZXJfaWSKAQlVEl9hdXRoX3VzZXJfYmFja2VuZFUpZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmR1Lg==', '2013-08-12 17:28:49');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `description` text NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `unlock_nicknames_id` int(11) DEFAULT NULL,
  `unlocked_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unlock_nicknames_id` (`unlock_nicknames_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `qubalapp_achievement`
--

INSERT INTO `qubalapp_achievement` (`id`, `name`, `description`, `image`, `unlock_nicknames_id`, `unlocked_date`) VALUES
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
  `description` text NOT NULL,
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
  KEY `qubalapp_challenge_has_documents_91e80f24` (`challenge_id`),
  KEY `qubalapp_challenge_has_documents_ba5e075a` (`educational_document_id`)
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
  KEY `qubalapp_challenge_has_rewards_91e80f24` (`challenge_id`),
  KEY `qubalapp_challenge_has_rewards_abeecc42` (`reward_id`)
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
  KEY `qubalapp_challenge_has_tasks_91e80f24` (`challenge_id`),
  KEY `qubalapp_challenge_has_tasks_ef96c3b8` (`task_id`)
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
  `description` text NOT NULL,
  `starting_date` datetime NOT NULL,
  `ending_date` datetime NOT NULL,
  `has_quests_id` int(11) NOT NULL,
  `has_achievements_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qubalapp_course_6fc09d2e` (`has_quests_id`),
  KEY `qubalapp_course_df8d1fa3` (`has_achievements_id`)
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
  KEY `qubalapp_courses_completed_by_student_6234103b` (`course_id`),
  KEY `qubalapp_courses_completed_by_student_94741166` (`student_id`)
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
  KEY `qubalapp_course_has_documents_6234103b` (`course_id`),
  KEY `qubalapp_course_has_documents_ba5e075a` (`educational_document_id`)
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
  KEY `qubalapp_course_has_students_6234103b` (`course_id`),
  KEY `qubalapp_course_has_students_94741166` (`student_id`)
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
  KEY `qubalapp_course_has_teams_6234103b` (`course_id`),
  KEY `qubalapp_course_has_teams_95e8aaa1` (`team_id`)
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
  `description` text NOT NULL,
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
  PRIMARY KEY (`user_id`),
  KEY `qubalapp_person_5e6771a9` (`has_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qubalapp_person`
--

INSERT INTO `qubalapp_person` (`user_id`, `name`, `lastname`, `birth`, `email`, `image`, `xp`, `twitter`, `facebook`, `dropbox`, `has_address_id`) VALUES
(1, 'Boche', 'Lordus', '1977-11-05 23:27:53', 'bochelord@gmail.com', 'images/persons/3099_87029885861_618030861_2924074_1823527_n.jpg', 1856, '', '', '', NULL),
(2, 'Manuel', 'Gonzalez Garcia', '1976-07-23 03:45:00', 'leunam.san@gmail.com', 'images/persons/Mass-effect-avatar---The-illusive-man.jpg', 53, '', '', '', 4),
(3, 'Sander', 'Boelsma', '2013-07-29 13:29:31', 'sander@studiesoft.com', 'images/persons/Sanders-Color-300_8.png', 152, '', '', '', 5),
(4, 'test', 'test', '2013-07-29 03:41:26', 'tete@tetet.com', 'images/persons/Ar-CDmnCQAE79wU.jpg', 0, '', '', '', NULL),
(5, 'Jan', 'Van der Vaart', '1988-07-29 16:32:25', 'jan@vandervaart.com', 'images/persons/jan_avatar.jpg', 742, '', '', '', 5),
(6, 'Maria Antonia', 'Fernandez', '1983-07-29 16:34:43', 'maria.antonia@fernandez.com', 'images/persons/fresca01.jpg', 345, '', '', '', NULL),
(9, 'Darth', 'Vader', '2013-07-29 16:33:48', 'darth@deathstar.com', 'images/persons/images.jpg', 2000, '', '', '', NULL);

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
  KEY `qubalapp_person_has_achievements_16f39487` (`person_id`),
  KEY `qubalapp_person_has_achievements_b8152600` (`achievement_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=121 ;

--
-- Dumping data for table `qubalapp_person_has_achievements`
--

INSERT INTO `qubalapp_person_has_achievements` (`id`, `person_id`, `achievement_id`) VALUES
(109, 1, 1),
(110, 1, 2),
(111, 1, 3),
(113, 2, 1),
(114, 2, 2),
(115, 2, 4),
(116, 2, 5),
(112, 3, 2),
(25, 4, 1),
(26, 4, 2),
(117, 5, 3),
(120, 6, 4),
(118, 9, 1),
(119, 9, 4);

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
  KEY `qubalapp_person_has_nicknames_16f39487` (`person_id`),
  KEY `qubalapp_person_has_nicknames_f8168153` (`nickname_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `qubalapp_person_has_nicknames`
--

INSERT INTO `qubalapp_person_has_nicknames` (`id`, `person_id`, `nickname_id`) VALUES
(12, 3, 2),
(1, 4, 1),
(13, 5, 1),
(16, 6, 1),
(14, 9, 1),
(15, 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_power`
--

CREATE TABLE IF NOT EXISTS `qubalapp_power` (
  `social_skill` int(11) NOT NULL,
  `communication` int(11) NOT NULL,
  `responsability` int(11) NOT NULL,
  `activity` int(11) NOT NULL,
  `mastery` int(11) NOT NULL,
  `focus` int(11) NOT NULL,
  `has_person_id` int(11) NOT NULL,
  PRIMARY KEY (`has_person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qubalapp_power`
--

INSERT INTO `qubalapp_power` (`social_skill`, `communication`, `responsability`, `activity`, `mastery`, `focus`, `has_person_id`) VALUES
(56, 33, 78, 45, 70, 30, 1),
(35, 65, 48, 76, 18, 34, 2),
(34, 87, 67, 44, 23, 78, 3),
(32, 68, 47, 63, 38, 52, 4),
(24, 35, 68, 48, 15, 59, 6),
(100, 100, 99, 99, 99, 99, 9);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_quest`
--

CREATE TABLE IF NOT EXISTS `qubalapp_quest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
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
  KEY `qubalapp_quest_has_challenges_91e80f24` (`challenge_id`),
  KEY `qubalapp_quest_has_challenges_a9aed552` (`quest_id`)
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
  KEY `qubalapp_quest_has_documents_a9aed552` (`quest_id`),
  KEY `qubalapp_quest_has_documents_ba5e075a` (`educational_document_id`)
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
  KEY `qubalapp_quest_has_rewards_a9aed552` (`quest_id`),
  KEY `qubalapp_quest_has_rewards_abeecc42` (`reward_id`)
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
  KEY `qubalapp_reward_has_achievement_abeecc42` (`reward_id`),
  KEY `qubalapp_reward_has_achievement_b8152600` (`achievement_id`)
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
  KEY `qubalapp_reward_has_edu_skill_points_40da9c54` (`edu_skill_id`),
  KEY `qubalapp_reward_has_edu_skill_points_abeecc42` (`reward_id`)
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
  KEY `qubalapp_reward_has_powers_points_7054f357` (`power_id`),
  KEY `qubalapp_reward_has_powers_points_abeecc42` (`reward_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_rules_edu_skills_per_course`
--

CREATE TABLE IF NOT EXISTS `qubalapp_rules_edu_skills_per_course` (
  `is_from_edu_skill_id` int(11) NOT NULL,
  `is_from_course_id` int(11) NOT NULL,
  PRIMARY KEY (`is_from_edu_skill_id`),
  KEY `qubalapp_rules_edu_skills_per_course_488fd861` (`is_from_course_id`)
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
  `person_ptr_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`person_ptr_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `qubalapp_student`
--

INSERT INTO `qubalapp_student` (`person_ptr_id`) VALUES
(1),
(2),
(3),
(5),
(6),
(9);

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
  KEY `qubalapp_student_challenged_completed_91e80f24` (`challenge_id`),
  KEY `qubalapp_student_challenged_completed_94741166` (`student_id`)
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
  KEY `qubalapp_student_courses_completed_6234103b` (`course_id`),
  KEY `qubalapp_student_courses_completed_94741166` (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `qubalapp_student_courses_completed`
--

INSERT INTO `qubalapp_student_courses_completed` (`id`, `student_id`, `course_id`) VALUES
(4, 2, 1),
(3, 3, 2),
(5, 5, 3),
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
  KEY `qubalapp_student_is_enrolled_in_courses_6234103b` (`course_id`),
  KEY `qubalapp_student_is_enrolled_in_courses_94741166` (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `qubalapp_student_is_enrolled_in_courses`
--

INSERT INTO `qubalapp_student_is_enrolled_in_courses` (`id`, `student_id`, `course_id`) VALUES
(6, 1, 2),
(9, 2, 1),
(10, 2, 2),
(11, 2, 3),
(12, 2, 4),
(7, 3, 1),
(8, 3, 2),
(13, 5, 1),
(14, 5, 2),
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
  KEY `qubalapp_student_is_team_member_of_94741166` (`student_id`),
  KEY `qubalapp_student_is_team_member_of_95e8aaa1` (`team_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `qubalapp_student_is_team_member_of`
--

INSERT INTO `qubalapp_student_is_team_member_of` (`id`, `student_id`, `team_id`) VALUES
(6, 1, 1),
(7, 1, 2),
(9, 2, 1),
(10, 2, 2),
(11, 2, 3),
(8, 3, 1),
(12, 5, 2),
(14, 6, 1),
(15, 6, 3),
(13, 9, 3);

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
  KEY `qubalapp_student_quests_completed_94741166` (`student_id`),
  KEY `qubalapp_student_quests_completed_a9aed552` (`quest_id`)
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
  KEY `qubalapp_student_tasks_completed_94741166` (`student_id`),
  KEY `qubalapp_student_tasks_completed_ef96c3b8` (`task_id`)
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
  `description` text NOT NULL,
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
  KEY `qubalapp_task_has_documents_ba5e075a` (`educational_document_id`),
  KEY `qubalapp_task_has_documents_ef96c3b8` (`task_id`)
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
  KEY `qubalapp_task_has_rewards_abeecc42` (`reward_id`),
  KEY `qubalapp_task_has_rewards_ef96c3b8` (`task_id`)
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
  `background_cv` text NOT NULL,
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
  KEY `qubalapp_teacher_is_tutor_of_teams_95e8aaa1` (`team_id`),
  KEY `qubalapp_teacher_is_tutor_of_teams_c12e9d48` (`teacher_id`)
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
  KEY `qubalapp_teacher_teach_in_courses_6234103b` (`course_id`),
  KEY `qubalapp_teacher_teach_in_courses_c12e9d48` (`teacher_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `qubalapp_teacher_teach_in_courses`
--

INSERT INTO `qubalapp_teacher_teach_in_courses` (`id`, `teacher_id`, `course_id`) VALUES
(1, 4, 1),
(2, 4, 2),
(3, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_team`
--

CREATE TABLE IF NOT EXISTS `qubalapp_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `is_in_course_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `captain_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qubalapp_team_502ce850` (`is_in_course_id`),
  KEY `qubalapp_team_fd1435fb` (`captain_id`)
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
  KEY `qubalapp_team_has_students_94741166` (`student_id`),
  KEY `qubalapp_team_has_students_95e8aaa1` (`team_id`)
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
  KEY `qubalapp_team_has_teachers_95e8aaa1` (`team_id`),
  KEY `qubalapp_team_has_teachers_c12e9d48` (`teacher_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `qubalapp_team_has_teachers`
--

INSERT INTO `qubalapp_team_has_teachers` (`id`, `team_id`, `teacher_id`) VALUES
(1, 1, 4),
(2, 2, 4),
(3, 3, 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
