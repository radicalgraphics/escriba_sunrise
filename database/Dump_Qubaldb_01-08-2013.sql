-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 01, 2013 at 09:50 PM
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
(1, 'pbkdf2_sha256$10000$CiPE8Nuu89Fl$tXXml+J/etZOzdCXmGJw1SKZvE+TcUAXr5uoUMRmoS0=', '2013-07-30 04:23:17', 1, 'bochelord', '', '', 'bochelord@gmail.com', 1, 1, '2013-07-28 17:59:20'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=126 ;

--
-- Dumping data for table `qubalapp_person_has_achievements`
--

INSERT INTO `qubalapp_person_has_achievements` (`id`, `person_id`, `achievement_id`) VALUES
(121, 1, 1),
(122, 1, 2),
(123, 1, 4),
(124, 1, 5),
(113, 2, 1),
(114, 2, 2),
(115, 2, 4),
(116, 2, 5),
(125, 3, 2),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `qubalapp_person_has_nicknames`
--

INSERT INTO `qubalapp_person_has_nicknames` (`id`, `person_id`, `nickname_id`) VALUES
(17, 3, 2),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `qubalapp_student_challenged_completed`
--

INSERT INTO `qubalapp_student_challenged_completed` (`id`, `student_id`, `challenge_id`) VALUES
(3, 3, 1),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `qubalapp_student_courses_completed`
--

INSERT INTO `qubalapp_student_courses_completed` (`id`, `student_id`, `course_id`) VALUES
(4, 2, 1),
(9, 3, 2),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `qubalapp_student_is_enrolled_in_courses`
--

INSERT INTO `qubalapp_student_is_enrolled_in_courses` (`id`, `student_id`, `course_id`) VALUES
(18, 1, 2),
(9, 2, 1),
(10, 2, 2),
(11, 2, 3),
(12, 2, 4),
(19, 3, 1),
(20, 3, 2),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `qubalapp_student_is_team_member_of`
--

INSERT INTO `qubalapp_student_is_team_member_of` (`id`, `student_id`, `team_id`) VALUES
(16, 1, 1),
(17, 1, 2),
(9, 2, 1),
(10, 2, 2),
(11, 2, 3),
(18, 3, 1),
(19, 3, 2),
(20, 3, 3),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `qubalapp_student_quests_completed`
--

INSERT INTO `qubalapp_student_quests_completed` (`id`, `student_id`, `quest_id`) VALUES
(3, 3, 1),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `qubalapp_student_tasks_completed`
--

INSERT INTO `qubalapp_student_tasks_completed` (`id`, `student_id`, `task_id`) VALUES
(3, 3, 1),
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
