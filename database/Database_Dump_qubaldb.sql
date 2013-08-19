-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 13, 2013 at 05:01 AM
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
-- Table structure for table `actstream_action`
--

CREATE TABLE IF NOT EXISTS `actstream_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actor_content_type_id` int(11) NOT NULL,
  `actor_object_id` varchar(255) NOT NULL,
  `verb` varchar(255) NOT NULL,
  `description` longtext,
  `target_content_type_id` int(11) DEFAULT NULL,
  `target_object_id` varchar(255) DEFAULT NULL,
  `action_object_content_type_id` int(11) DEFAULT NULL,
  `action_object_object_id` varchar(255) DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `public` tinyint(1) NOT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `actstream_action_3df58830` (`actor_content_type_id`),
  KEY `actstream_action_276d0c93` (`target_content_type_id`),
  KEY `actstream_action_f6b51263` (`action_object_content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=157 ;

--
-- Dumping data for table `actstream_action`
--

INSERT INTO `actstream_action` (`id`, `actor_content_type_id`, `actor_object_id`, `verb`, `description`, `target_content_type_id`, `target_object_id`, `action_object_content_type_id`, `action_object_object_id`, `timestamp`, `public`, `data`) VALUES
(35, 3, '14', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 17:54:37', 1, '{"mostrado": "si"}'),
(36, 3, '14', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-04 17:54:37', 1, '{"mostrado": "si"}'),
(37, 3, '14', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 17:55:10', 1, '{"mostrado": "si"}'),
(38, 3, '14', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 17:57:58', 1, '{"mostrado": "si"}'),
(39, 3, '1', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 18:06:58', 1, '{"mostrado": "si"}'),
(40, 3, '1', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-04 18:06:58', 1, '{"mostrado": "si"}'),
(41, 3, '2', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 18:09:10', 1, '{"mostrado": "si"}'),
(42, 3, '2', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-04 18:09:10', 1, '{"mostrado": "si"}'),
(43, 3, '1', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-04 18:10:54', 1, NULL),
(44, 3, '14', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 18:10:58', 1, '{"mostrado": "si"}'),
(45, 3, '14', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-04 18:12:18', 1, NULL),
(46, 3, '14', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 18:12:22', 1, '{"mostrado": "si"}'),
(47, 3, '2', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-04 18:12:42', 1, NULL),
(48, 3, '2', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 18:12:53', 1, '{"mostrado": "si"}'),
(49, 3, '2', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-04 19:04:38', 1, NULL),
(50, 3, '2', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 19:04:53', 1, '{"mostrado": "si"}'),
(51, 3, '1', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-04 19:07:25', 1, NULL),
(52, 3, '1', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 19:07:53', 1, '{"mostrado": "si"}'),
(53, 3, '1', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-04 19:08:19', 1, NULL),
(54, 3, '10', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 19:08:26', 1, '{"mostrado": "si"}'),
(55, 3, '10', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-04 19:08:27', 1, '{"mostrado": "si"}'),
(56, 3, '2', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-04 19:08:28', 1, NULL),
(57, 3, '6', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 19:08:33', 1, '{"mostrado": "si"}'),
(58, 3, '6', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-04 19:08:33', 1, '{"mostrado": "si"}'),
(59, 3, '6', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-04 19:08:43', 1, NULL),
(60, 3, '1', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-04 19:08:47', 1, NULL),
(61, 3, '1', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 19:08:52', 1, '{"mostrado": "si"}'),
(62, 3, '5', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 19:08:55', 1, '{"mostrado": "si"}'),
(63, 3, '5', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-04 19:08:55', 1, '{"mostrado": "si"}'),
(64, 3, '10', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-04 19:45:37', 1, NULL),
(65, 3, '10', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 19:45:43', 1, '{"mostrado": "si"}'),
(66, 3, '10', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-04 19:46:18', 1, NULL),
(67, 3, '13', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 19:46:30', 1, '{"mostrado": "si"}'),
(68, 3, '13', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-04 19:46:30', 1, '{"mostrado": "si"}'),
(69, 3, '13', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-04 19:46:36', 1, NULL),
(70, 3, '13', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 19:46:43', 1, '{"mostrado": "si"}'),
(71, 3, '13', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-04 20:13:15', 1, NULL),
(72, 3, '11', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 20:13:21', 1, '{"mostrado": "si"}'),
(73, 3, '11', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-04 20:13:21', 1, '{"mostrado": "si"}'),
(74, 3, '3', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 21:45:52', 1, '{"mostrado": "si"}'),
(75, 3, '3', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-04 21:45:52', 1, '{"mostrado": "si"}'),
(76, 3, '3', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-04 21:47:31', 1, NULL),
(77, 3, '3', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 21:47:33', 1, '{"mostrado": "si"}'),
(78, 3, '11', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-04 21:47:46', 1, NULL),
(79, 3, '1', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 21:47:54', 1, '{"mostrado": "si"}'),
(80, 3, '12', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-04 22:53:44', 1, '{"mostrado": "si"}'),
(81, 3, '12', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-04 22:53:44', 1, '{"mostrado": "si"}'),
(82, 3, '12', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-05 00:24:15', 1, NULL),
(83, 3, '1', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-05 00:24:23', 1, '{"mostrado": "si"}'),
(84, 3, '5', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-05 00:31:41', 1, NULL),
(85, 3, '2', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-05 00:31:48', 1, '{"mostrado": "si"}'),
(86, 3, '1', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-05 14:50:17', 1, NULL),
(87, 3, '1', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-05 16:00:13', 1, '{"mostrado": "si"}'),
(88, 3, '3', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-05 19:25:58', 1, '{"mostrado": "si"}'),
(89, 3, '1', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-05 19:26:10', 1, NULL),
(90, 3, '1', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-05 19:26:16', 1, '{"mostrado": "si"}'),
(91, 3, '1', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-05 19:26:16', 1, '{"mostrado": "si"}'),
(92, 3, '1', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-05 19:27:01', 1, NULL),
(93, 3, '1', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-05 19:27:06', 1, '{"mostrado": "si"}'),
(94, 3, '2', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-05 19:30:26', 1, NULL),
(95, 3, '2', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-05 19:30:32', 1, '{"mostrado": "si"}'),
(96, 3, '2', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-05 19:30:32', 1, '{"mostrado": "si"}'),
(97, 3, '2', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-05 19:30:43', 1, NULL),
(98, 3, '2', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-05 19:30:57', 1, '{"mostrado": "si"}'),
(99, 3, '1', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-05 19:30:58', 1, NULL),
(100, 3, '1', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-05 19:31:02', 1, '{"mostrado": "si"}'),
(101, 3, '1', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-05 19:33:07', 1, NULL),
(102, 3, '1', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-05 19:33:13', 1, '{"mostrado": "si"}'),
(103, 3, '1', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-05 20:29:55', 1, NULL),
(104, 3, '10', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-05 20:30:09', 1, '{"mostrado": "si"}'),
(105, 3, '10', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-05 20:30:10', 1, '{"mostrado": "si"}'),
(106, 3, '3', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-05 20:30:12', 1, NULL),
(107, 3, '10', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-05 20:30:24', 1, '{"mostrado": "si"}'),
(108, 3, '10', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-05 20:30:37', 1, '{"mostrado": "si"}'),
(109, 3, '10', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-05 23:49:55', 1, '{"mostrado": "si"}'),
(110, 3, '1', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-06 01:10:31', 1, NULL),
(111, 3, '13', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-06 01:10:38', 1, '{"mostrado": "si"}'),
(112, 3, '13', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-06 01:10:39', 1, '{"mostrado": "si"}'),
(113, 3, '10', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-06 01:10:45', 1, NULL),
(114, 3, '13', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-06 01:10:47', 1, NULL),
(115, 3, '2', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-06 01:10:52', 1, '{"mostrado": "si"}'),
(116, 3, '11', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-06 01:10:54', 1, '{"mostrado": "si"}'),
(117, 3, '11', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-06 01:10:54', 1, '{"mostrado": "si"}'),
(118, 3, '2', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-06 01:19:43', 1, '{"mostrado": "si"}'),
(119, 3, '10', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-06 18:18:51', 1, NULL),
(120, 3, '1', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-06 18:18:56', 1, '{"mostrado": "si"}'),
(121, 3, '10', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-06 19:13:51', 1, NULL),
(122, 3, '3', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-06 19:14:21', 1, '{"mostrado": "si"}'),
(123, 3, '3', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-06 19:14:21', 1, '{"mostrado": "si"}'),
(124, 3, '1', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-07 02:07:52', 1, NULL),
(125, 3, '1', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-07 02:07:58', 1, '{"mostrado": "si"}'),
(126, 3, '1', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-07 02:07:58', 1, '{"mostrado": "si"}'),
(127, 3, '1', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-07 02:09:02', 1, NULL),
(128, 3, '1', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-07 02:40:38', 1, '{"mostrado": "si"}'),
(129, 3, '11', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-07 03:03:51', 1, NULL),
(130, 3, '10', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-07 03:04:01', 1, '{"mostrado": "si"}'),
(131, 3, '10', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-07 03:04:01', 1, '{"mostrado": "si"}'),
(132, 3, '10', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-07 03:04:44', 1, NULL),
(133, 3, '1', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-07 04:06:53', 1, NULL),
(134, 3, '14', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-07 04:07:10', 1, '{"mostrado": "si"}'),
(135, 3, '14', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-07 04:07:10', 1, '{"mostrado": "si"}'),
(136, 3, '14', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-07 04:09:01', 1, NULL),
(137, 3, '1', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-07 04:09:05', 1, '{"mostrado": "si"}'),
(138, 3, '1', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-07 04:09:55', 1, NULL),
(139, 3, '2', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-07 04:10:00', 1, '{"mostrado": "si"}'),
(140, 3, '2', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-07 04:10:00', 1, '{"mostrado": "si"}'),
(141, 3, '2', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-07 04:18:45', 1, NULL),
(142, 3, '14', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-07 04:18:50', 1, '{"mostrado": "si"}'),
(143, 3, '14', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-07 04:35:47', 1, NULL),
(144, 3, '1', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-07 04:35:51', 1, '{"mostrado": "si"}'),
(145, 3, '2', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-08 02:16:41', 1, NULL),
(146, 3, '2', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-08 02:16:50', 1, '{"mostrado": "si"}'),
(147, 3, '2', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-08 02:18:48', 1, NULL),
(148, 3, '1', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-08 02:24:54', 1, '{"mostrado": "si"}'),
(149, 3, '1', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-08 02:24:54', 1, '{"mostrado": "si"}'),
(150, 3, '1', 'notification_loggedout', 'Logged out ok', NULL, NULL, NULL, NULL, '2013-08-08 02:38:42', 1, NULL),
(151, 3, '1', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-08 13:07:33', 1, '{"mostrado": "si"}'),
(152, 3, '3', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-08 16:23:49', 1, '{"mostrado": "si"}'),
(153, 3, '3', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-08 16:23:50', 1, '{"mostrado": "si"}'),
(154, 3, '1', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-08 18:39:03', 1, '{"mostrado": "si"}'),
(155, 3, '14', 'notification_welcome', 'Welcome to Qubal!', NULL, NULL, NULL, NULL, '2013-08-10 20:43:13', 1, '{"mostrado": "si"}'),
(156, 3, '14', 'notification_got_welcome_xp', 'You got some XP!', NULL, NULL, NULL, NULL, '2013-08-10 20:43:14', 1, '{"mostrado": "si"}');

-- --------------------------------------------------------

--
-- Table structure for table `actstream_follow`
--

CREATE TABLE IF NOT EXISTS `actstream_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `object_id` varchar(255) NOT NULL,
  `actor_only` tinyint(1) NOT NULL,
  `started` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`content_type_id`,`object_id`),
  KEY `actstream_follow_6340c63c` (`user_id`),
  KEY `actstream_follow_37ef4eb4` (`content_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;



-- --------------------------------------------------------



-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$10000$CiPE8Nuu89Fl$tXXml+J/etZOzdCXmGJw1SKZvE+TcUAXr5uoUMRmoS0=', '2013-08-10 20:44:49', 1, 'bochelord', '', '', 'bochelord@gmail.com', 1, 1, '2013-07-28 17:59:20'),
(2, 'pbkdf2_sha256$10000$lBx1TnphOSQP$CmeqRcwgcOvWcR9o64qntSLTXwt6N2DlcjhNj6cHbkE=', '2013-08-08 02:16:50', 1, 'leunam', 'Manuel', 'Gonzalez Garcia', 'leunam.san@gmail.com', 1, 1, '2013-07-28 22:43:23'),
(3, 'pbkdf2_sha256$10000$8iIbPKv6Dcal$cU8yKiexd/hrc11ub36B2X2CtMTxddGemNUC2ZSgqzQ=', '2013-08-08 16:23:49', 1, 'sander', 'Sander', 'Boelsma', 'sander@studiesoft.com', 1, 1, '2013-07-29 00:08:38'),
(4, 'pbkdf2_sha256$10000$sbXgC1X2jzw2$8X7ng9cW46Yj4gyv172MZsH/ZNsb+C+/ki+eNHaLYlk=', '2013-08-04 16:36:19', 0, 'test', '', '', '', 0, 1, '2013-07-29 03:41:18'),
(5, 'pbkdf2_sha256$10000$ckCcDoIW43oa$TL3zUMJikYu0ajtFEkUQL/xiFRFPT+M88PbwrXEPuX4=', '2013-08-04 19:08:55', 0, 'jan', 'Jan', 'van der Vaart', 'jan@vandervaart.com', 0, 1, '2013-07-29 15:33:46'),
(6, 'pbkdf2_sha256$10000$OXPMaKx0j9EW$F91fRqzdFfgqg3ZvYQI0VX7hHsbSdneHD9BqhL5hr/g=', '2013-08-04 19:08:33', 0, 'maria', 'Maria Antonia', 'Fernandez', 'maria.antonia@fernandez.com', 0, 1, '2013-07-29 15:33:56'),
(7, 'pbkdf2_sha256$10000$Wdv5dng3ZfVv$UXxgvAuwYpOvT382/RMMs6b6cYbkWoNXqUOxUo3n75E=', '2013-07-29 15:34:17', 0, 'juan', 'Juan', 'Jimenez', 'juan@jimenez.com', 0, 1, '2013-07-29 15:34:17'),
(8, 'pbkdf2_sha256$10000$rrpROstcQe7Z$bkeuWMiaRHCwJdEmvhDkiZyCDBErgQz6cD8Zo9L6yBg=', '2013-07-29 15:34:32', 0, 'paco', 'Francisco Jose', 'Gutierrez', 'paco@paco.com', 0, 1, '2013-07-29 15:34:32'),
(9, 'pbkdf2_sha256$10000$sEpshtcZXJXm$YdbPMBJv4RNojzMwSzIHt4Q8A8vyU3CRtpHW9bOGOJs=', '2013-08-04 04:04:19', 0, 'darthvader', '', '', '', 0, 1, '2013-07-29 16:33:08'),
(10, 'pbkdf2_sha256$10000$s49L1cKorvdW$alNMTS+y8KR58WyxbA7HGxbOED/7ax0OOtenSlO1ZT8=', '2013-08-07 03:04:01', 0, 'caroline', '', '', '', 0, 1, '2013-07-30 18:06:56'),
(11, 'pbkdf2_sha256$10000$DVaAI51tDiWc$2zc3TfbAGh3XelMZjnub93qH273f9qnDnMmeP0+TUPU=', '2013-08-06 01:10:54', 0, 'fresca', '', '', '', 0, 1, '2013-07-31 17:15:52'),
(12, 'pbkdf2_sha256$10000$ulAOoTw246A4$fGdtOWagAMAwMqN4RXU7WLbmfnl5/+MXAs0r6F5doR0=', '2013-08-04 22:53:44', 0, 'noimagen', '', '', '', 0, 1, '2013-07-31 19:08:29'),
(13, 'pbkdf2_sha256$10000$usXjJr3mcFEV$xuZD9L5i3AGq1B0J5O6ssJRbpcXhR+/Vk7eJNqGUs7g=', '2013-08-06 01:10:38', 0, 'perro', '', '', '', 0, 1, '2013-08-03 21:34:14'),
(14, 'pbkdf2_sha256$10000$YRxjQaZY7MDn$2wDOAYW0eFP1esKqL8VZtsrS0SnA758Ws56ySpX3EJ4=', '2013-08-10 20:43:13', 0, 'manu', '', '', '', 0, 1, '2013-08-04 17:50:42');

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
  KEY `qubalapp_challenge_has_documents_91e80f24` (`challenge_id`),
  KEY `qubalapp_challenge_has_documents_ba5e075a` (`educational_document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `image` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `starting_date` datetime NOT NULL,
  `ending_date` datetime NOT NULL,
  `has_quests_id` int(11) NOT NULL,
  `has_achievements_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qubalapp_course_6fc09d2e` (`has_quests_id`),
  KEY `qubalapp_course_df8d1fa3` (`has_achievements_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `qubalapp_course`
--

INSERT INTO `qubalapp_course` (`id`, `image`, `name`, `description`, `starting_date`, `ending_date`, `has_quests_id`, `has_achievements_id`) VALUES
(1, 'images/courses/35171_1525160773969_1383141894_1404085_2499609_n.jpg', 'Stop motion animation', 'Learn how to make real cartoon animations with the stop motion technique used by the hollywood studios', '2013-07-29 02:56:53', '2013-07-31 02:56:55', 1, 1),
(2, 'images/courses/CIMG7791_1.JPG', 'Rooftop Bike fixing', 'Ever tried to fix a bike on a rooftop? Now you can do it safely with this course !!!', '2013-07-29 03:34:28', '2013-07-29 03:34:30', 1, 4),
(3, 'images/courses/Eurocopa2008_002_1.jpg', 'Spanjarden tekniek', 'Learn how to support the World Champion team in the next endeavor in the Brazil 2014!', '2013-07-29 03:37:27', '2013-07-29 03:37:28', 2, 4),
(4, 'images/courses/The_Real_Revolution_by_pappajackson.jpg', 'Test Qubal', 'This Course is all about Qubal, test every single part, create, delete, change, just click wherever', '2013-07-29 16:07:05', '2023-07-29 16:08:26', 1, 3),
(5, '', 'frfggr', 'grgrgr', '2013-08-07 02:00:00', '2013-08-30 06:00:00', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qubalapp_courses_completed_by_student`
--

CREATE TABLE IF NOT EXISTS `qubalapp_courses_completed_by_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qubalapp_courses_completed_by_student_94741166` (`student_id`),
  KEY `qubalapp_courses_completed_by_student_6234103b` (`course_id`)
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `qubalapp_course_has_students`
--

INSERT INTO `qubalapp_course_has_students` (`id`, `course_id`, `student_id`) VALUES
(13, 1, 1),
(14, 1, 2),
(11, 2, 1),
(12, 2, 2),
(15, 4, 1),
(16, 4, 2),
(17, 4, 3);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `qubalapp_course_has_teams`
--

INSERT INTO `qubalapp_course_has_teams` (`id`, `course_id`, `team_id`) VALUES
(1, 5, 1);

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
  `image` varchar(100) NOT NULL,
  `xp` int(11) NOT NULL,
  `twitter` varchar(250) DEFAULT NULL,
  `facebook` varchar(250) DEFAULT NULL,
  `dropbox` varchar(250) DEFAULT NULL,
  `has_address_id` int(11) DEFAULT NULL,
  `has_powers_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `has_powers_id` (`has_powers_id`),
  KEY `qubalapp_person_5e6771a9` (`has_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qubalapp_person`
--

INSERT INTO `qubalapp_person` (`user_id`, `name`, `lastname`, `birth`, `email`, `image`, `xp`, `twitter`, `facebook`, `dropbox`, `has_address_id`, `has_powers_id`) VALUES
(1, 'Boche', 'Lordus', '1977-11-05 23:27:53', 'bochelord@gmail.com', 'images/persons/3099_87029885861_618030861_2924074_1823527_n.jpg', 10, '', '', '', NULL, 1),
(2, 'Manuel', 'Gonzalez Garcia', '1976-07-23 03:45:00', 'leunam.san@gmail.com', 'images/persons/Mass-effect-avatar---The-illusive-man.jpg', 6, '', '', '', 4, 2),
(3, 'Sander', 'Boelsma', '2013-07-29 13:29:31', 'sander@studiesoft.com', 'images/persons/Sanders-Color-300_8.png', 6, '', '', '', 5, 15),
(4, 'test', 'test', '2013-07-29 03:41:26', 'tete@tetet.com', '', 44, '', '', '', NULL, 4),
(5, 'Jan', 'Van der Vaart', '1988-07-29 16:32:25', 'jan@vandervaart.com', 'images/persons/jan_avatar.jpg', 758, '', '', '', 5, 5),
(6, 'Maria Antonia', 'Fernandez', '1983-07-29 16:34:43', 'maria.antonia@fernandez.com', 'images/persons/fresca01.jpg', 349, '', '', '', NULL, 6),
(9, 'Darth', 'Vader', '2013-07-29 16:33:48', 'darth@deathstar.com', 'images/persons/images.jpg', 2024, '', '', '', NULL, 7),
(10, 'Caroline', 'Van houten', '2013-07-31 17:05:22', 'rere@34343.com', 'images/persons/pibon.png', 56, '', '', '', NULL, 8),
(11, 'Fresca', 'Buenorra', '2013-07-31 17:16:11', 'fresquisima@pibon.com', 'images/persons/30xeiav.jpg', 38, '', '', '', NULL, 9),
(12, 'cateto', 'sinimagen', '2013-07-31 19:08:56', 'pklpkpkp@reere.com', '', 44, '', '', '', NULL, 11),
(13, 'perro', 'peerraaa', '2013-08-06 21:54:00', 'fdwwfw@erwew.com', 'default_images/default_avatar_grey_50.jpg', 4, '', '', '', NULL, 13),
(14, 'Manu', 'Morillas', '2013-07-31 22:00:00', 'mmorillasm@gmail.com', 'images/persons/Untitled-2.jpg', 8, '', '', '', NULL, 14);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=166 ;

--
-- Dumping data for table `qubalapp_person_has_achievements`
--

INSERT INTO `qubalapp_person_has_achievements` (`id`, `person_id`, `achievement_id`) VALUES
(159, 1, 1),
(160, 1, 2),
(161, 1, 3),
(154, 2, 1),
(155, 2, 2),
(156, 2, 4),
(157, 2, 5),
(158, 3, 2),
(127, 4, 1),
(128, 4, 2),
(121, 5, 2),
(120, 6, 4),
(118, 9, 1),
(119, 9, 4),
(165, 10, 1),
(126, 11, 2),
(147, 13, 1),
(148, 13, 2),
(149, 13, 3),
(150, 13, 4),
(151, 13, 5),
(152, 13, 8),
(153, 13, 9),
(162, 14, 1),
(163, 14, 3),
(164, 14, 4);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `qubalapp_person_has_nicknames`
--

INSERT INTO `qubalapp_person_has_nicknames` (`id`, `person_id`, `nickname_id`) VALUES
(19, 3, 2),
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `qubalapp_power`
--

INSERT INTO `qubalapp_power` (`id`, `teamwork`, `communication`, `responsability`, `perseverance`, `mastery`, `focus`) VALUES
(1, 1, 1, 1, 1, 1, 1),
(2, 68, 78, 64, 38, 31, 16),
(4, 1, 1, 1, 1, 1, 1),
(5, 1, 1, 1, 1, 1, 1),
(6, 1, 1, 1, 1, 1, 1),
(7, 1, 1, 1, 1, 85, 1),
(8, 1, 1, 1, 1, 1, 1),
(9, 1, 1, 1, 1, 1, 1),
(10, 1, 1, 1, 1, 1, 1),
(11, 1, 1, 1, 1, 1, 1),
(12, 1, 1, 1, 1, 1, 1),
(13, 1, 1, 1, 1, 1, 1),
(14, 1, 1, 1, 1, 1, 1),
(15, 1, 1, 1, 1, 1, 1);

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
  KEY `qubalapp_quest_has_challenges_a9aed552` (`quest_id`),
  KEY `qubalapp_quest_has_challenges_91e80f24` (`challenge_id`)
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
  KEY `qubalapp_reward_has_edu_skill_points_abeecc42` (`reward_id`),
  KEY `qubalapp_reward_has_edu_skill_points_40da9c54` (`edu_skill_id`)
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
  KEY `qubalapp_reward_has_powers_points_abeecc42` (`reward_id`),
  KEY `qubalapp_reward_has_powers_points_7054f357` (`power_id`)
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
(12),
(13),
(14);

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
  KEY `qubalapp_student_challenged_completed_94741166` (`student_id`),
  KEY `qubalapp_student_challenged_completed_91e80f24` (`challenge_id`)
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
  KEY `qubalapp_student_courses_completed_94741166` (`student_id`),
  KEY `qubalapp_student_courses_completed_6234103b` (`course_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `qubalapp_student_courses_completed`
--

INSERT INTO `qubalapp_student_courses_completed` (`id`, `student_id`, `course_id`) VALUES
(14, 2, 1),
(15, 3, 2),
(9, 5, 3),
(6, 6, 1),
(7, 6, 3),
(8, 6, 4),
(19, 10, 2),
(20, 10, 3),
(13, 13, 5),
(16, 14, 3);

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
  KEY `qubalapp_student_is_enrolled_in_courses_94741166` (`student_id`),
  KEY `qubalapp_student_is_enrolled_in_courses_6234103b` (`course_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `qubalapp_student_is_enrolled_in_courses`
--

INSERT INTO `qubalapp_student_is_enrolled_in_courses` (`id`, `student_id`, `course_id`) VALUES
(38, 1, 2),
(39, 1, 4),
(32, 2, 1),
(33, 2, 2),
(34, 2, 3),
(35, 2, 4),
(36, 3, 1),
(37, 3, 2),
(18, 5, 1),
(19, 5, 2),
(17, 6, 2),
(15, 9, 3),
(16, 9, 4),
(30, 13, 4),
(31, 13, 5);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `qubalapp_student_is_team_member_of`
--

INSERT INTO `qubalapp_student_is_team_member_of` (`id`, `student_id`, `team_id`) VALUES
(38, 1, 1),
(39, 1, 2),
(34, 2, 1),
(35, 2, 2),
(36, 2, 3),
(37, 3, 1),
(16, 5, 2),
(14, 6, 1),
(15, 6, 3),
(13, 9, 3),
(45, 10, 1),
(46, 10, 2),
(47, 10, 3),
(48, 10, 4),
(20, 11, 1),
(31, 13, 2),
(32, 13, 3),
(33, 13, 4),
(40, 14, 1);

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
  KEY `qubalapp_task_has_documents_ef96c3b8` (`task_id`),
  KEY `qubalapp_task_has_documents_ba5e075a` (`educational_document_id`)
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
  KEY `qubalapp_task_has_rewards_ef96c3b8` (`task_id`),
  KEY `qubalapp_task_has_rewards_abeecc42` (`reward_id`)
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
  KEY `qubalapp_teacher_is_tutor_of_teams_c12e9d48` (`teacher_id`),
  KEY `qubalapp_teacher_is_tutor_of_teams_95e8aaa1` (`team_id`)
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
  KEY `qubalapp_teacher_teach_in_courses_c12e9d48` (`teacher_id`),
  KEY `qubalapp_teacher_teach_in_courses_6234103b` (`course_id`)
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
  `image` varchar(100) NOT NULL,
  `captain_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qubalapp_team_502ce850` (`is_in_course_id`),
  KEY `qubalapp_team_fd1435fb` (`captain_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `qubalapp_team`
--

INSERT INTO `qubalapp_team` (`id`, `name`, `is_in_course_id`, `description`, `image`, `captain_id`) VALUES
(1, 'The A Team', 3, 'In 1972 four of the best soldiers ', 'images/teams/the_a-team_logo_2777.gif', 1),
(2, 'Cartoonists', 1, 'WE love cartoons!', 'images/teams/images.jpg', 2),
(3, 'Test this!', 4, 'Prepare to report, log, regress, type, get angry, expect no mercy!', '', 1),
(4, 'grgrgr', 3, 'grgrgr', '', 11);

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
  KEY `qubalapp_team_has_students_95e8aaa1` (`team_id`),
  KEY `qubalapp_team_has_students_94741166` (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `qubalapp_team_has_students`
--

INSERT INTO `qubalapp_team_has_students` (`id`, `team_id`, `student_id`) VALUES
(15, 1, 1),
(16, 1, 2),
(14, 2, 2),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(9, 4, 6),
(7, 4, 9),
(8, 4, 10);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `qubalapp_team_has_teachers`
--

INSERT INTO `qubalapp_team_has_teachers` (`id`, `team_id`, `teacher_id`) VALUES
(8, 1, 4),
(7, 2, 4),
(3, 3, 4),
(4, 4, 4);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actstream_action`
--
ALTER TABLE `actstream_action`
  ADD CONSTRAINT `action_object_content_type_id_refs_id_357b994e` FOREIGN KEY (`action_object_content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `actor_content_type_id_refs_id_357b994e` FOREIGN KEY (`actor_content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `target_content_type_id_refs_id_357b994e` FOREIGN KEY (`target_content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `actstream_follow`
--
ALTER TABLE `actstream_follow`
  ADD CONSTRAINT `content_type_id_refs_id_5cf623fd` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_40a75718` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `content_type_id_refs_id_93d2d1f8` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `user_id_refs_id_c0d12874` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `qubalapp_achievement`
--
ALTER TABLE `qubalapp_achievement`
  ADD CONSTRAINT `unlock_nickname_id_refs_id_2f5d0d9a` FOREIGN KEY (`unlock_nickname_id`) REFERENCES `qubalapp_nickname` (`id`);

--
-- Constraints for table `qubalapp_challenge_has_documents`
--
ALTER TABLE `qubalapp_challenge_has_documents`
  ADD CONSTRAINT `challenge_id_refs_id_b0c5f5c2` FOREIGN KEY (`challenge_id`) REFERENCES `qubalapp_challenge` (`id`),
  ADD CONSTRAINT `educational_document_id_refs_id_11a93f73` FOREIGN KEY (`educational_document_id`) REFERENCES `qubalapp_educational_document` (`id`);

--
-- Constraints for table `qubalapp_challenge_has_rewards`
--
ALTER TABLE `qubalapp_challenge_has_rewards`
  ADD CONSTRAINT `challenge_id_refs_id_04ef7255` FOREIGN KEY (`challenge_id`) REFERENCES `qubalapp_challenge` (`id`),
  ADD CONSTRAINT `reward_id_refs_id_ad32a450` FOREIGN KEY (`reward_id`) REFERENCES `qubalapp_reward` (`id`);

--
-- Constraints for table `qubalapp_challenge_has_tasks`
--
ALTER TABLE `qubalapp_challenge_has_tasks`
  ADD CONSTRAINT `challenge_id_refs_id_f17fb0ec` FOREIGN KEY (`challenge_id`) REFERENCES `qubalapp_challenge` (`id`),
  ADD CONSTRAINT `task_id_refs_id_017ad2eb` FOREIGN KEY (`task_id`) REFERENCES `qubalapp_task` (`id`);

--
-- Constraints for table `qubalapp_course`
--
ALTER TABLE `qubalapp_course`
  ADD CONSTRAINT `has_achievements_id_refs_id_565f06c4` FOREIGN KEY (`has_achievements_id`) REFERENCES `qubalapp_achievement` (`id`),
  ADD CONSTRAINT `has_quests_id_refs_id_afa497fb` FOREIGN KEY (`has_quests_id`) REFERENCES `qubalapp_quest` (`id`);

--
-- Constraints for table `qubalapp_courses_completed_by_student`
--
ALTER TABLE `qubalapp_courses_completed_by_student`
  ADD CONSTRAINT `course_id_refs_id_2f9bcead` FOREIGN KEY (`course_id`) REFERENCES `qubalapp_course` (`id`),
  ADD CONSTRAINT `student_id_refs_person_ptr_id_f5670ee0` FOREIGN KEY (`student_id`) REFERENCES `qubalapp_student` (`person_ptr_id`);

--
-- Constraints for table `qubalapp_course_has_documents`
--
ALTER TABLE `qubalapp_course_has_documents`
  ADD CONSTRAINT `course_id_refs_id_d0d5f521` FOREIGN KEY (`course_id`) REFERENCES `qubalapp_course` (`id`),
  ADD CONSTRAINT `educational_document_id_refs_id_f0eee671` FOREIGN KEY (`educational_document_id`) REFERENCES `qubalapp_educational_document` (`id`);

--
-- Constraints for table `qubalapp_course_has_students`
--
ALTER TABLE `qubalapp_course_has_students`
  ADD CONSTRAINT `course_id_refs_id_f43f8aad` FOREIGN KEY (`course_id`) REFERENCES `qubalapp_course` (`id`),
  ADD CONSTRAINT `student_id_refs_person_ptr_id_e2730ab5` FOREIGN KEY (`student_id`) REFERENCES `qubalapp_student` (`person_ptr_id`);

--
-- Constraints for table `qubalapp_course_has_teams`
--
ALTER TABLE `qubalapp_course_has_teams`
  ADD CONSTRAINT `course_id_refs_id_05040df5` FOREIGN KEY (`course_id`) REFERENCES `qubalapp_course` (`id`),
  ADD CONSTRAINT `team_id_refs_id_8ba38b3d` FOREIGN KEY (`team_id`) REFERENCES `qubalapp_team` (`id`);

--
-- Constraints for table `qubalapp_educational_document`
--
ALTER TABLE `qubalapp_educational_document`
  ADD CONSTRAINT `is_from_person_id_refs_user_id_f4f41fa2` FOREIGN KEY (`is_from_person_id`) REFERENCES `qubalapp_person` (`user_id`),
  ADD CONSTRAINT `is_from_team_id_refs_id_4cbe0f4c` FOREIGN KEY (`is_from_team_id`) REFERENCES `qubalapp_team` (`id`);

--
-- Constraints for table `qubalapp_edu_skill`
--
ALTER TABLE `qubalapp_edu_skill`
  ADD CONSTRAINT `is_from_person_id_refs_user_id_13afdd46` FOREIGN KEY (`is_from_person_id`) REFERENCES `qubalapp_person` (`user_id`);

--
-- Constraints for table `qubalapp_person`
--
ALTER TABLE `qubalapp_person`
  ADD CONSTRAINT `has_address_id_refs_id_b94c34d9` FOREIGN KEY (`has_address_id`) REFERENCES `qubalapp_address` (`id`),
  ADD CONSTRAINT `has_powers_id_refs_id_7aa4dc88` FOREIGN KEY (`has_powers_id`) REFERENCES `qubalapp_power` (`id`),
  ADD CONSTRAINT `user_id_refs_id_59256dd4` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `qubalapp_person_has_achievements`
--
ALTER TABLE `qubalapp_person_has_achievements`
  ADD CONSTRAINT `achievement_id_refs_id_94ba99ff` FOREIGN KEY (`achievement_id`) REFERENCES `qubalapp_achievement` (`id`),
  ADD CONSTRAINT `person_id_refs_user_id_52b9fe35` FOREIGN KEY (`person_id`) REFERENCES `qubalapp_person` (`user_id`);

--
-- Constraints for table `qubalapp_person_has_nicknames`
--
ALTER TABLE `qubalapp_person_has_nicknames`
  ADD CONSTRAINT `nickname_id_refs_id_fe72f91b` FOREIGN KEY (`nickname_id`) REFERENCES `qubalapp_nickname` (`id`),
  ADD CONSTRAINT `person_id_refs_user_id_e44b8c78` FOREIGN KEY (`person_id`) REFERENCES `qubalapp_person` (`user_id`);

--
-- Constraints for table `qubalapp_quest_has_challenges`
--
ALTER TABLE `qubalapp_quest_has_challenges`
  ADD CONSTRAINT `challenge_id_refs_id_f1ffd4ea` FOREIGN KEY (`challenge_id`) REFERENCES `qubalapp_challenge` (`id`),
  ADD CONSTRAINT `quest_id_refs_id_107a5ca3` FOREIGN KEY (`quest_id`) REFERENCES `qubalapp_quest` (`id`);

--
-- Constraints for table `qubalapp_quest_has_documents`
--
ALTER TABLE `qubalapp_quest_has_documents`
  ADD CONSTRAINT `educational_document_id_refs_id_f7703d0f` FOREIGN KEY (`educational_document_id`) REFERENCES `qubalapp_educational_document` (`id`),
  ADD CONSTRAINT `quest_id_refs_id_d309e2f3` FOREIGN KEY (`quest_id`) REFERENCES `qubalapp_quest` (`id`);

--
-- Constraints for table `qubalapp_quest_has_rewards`
--
ALTER TABLE `qubalapp_quest_has_rewards`
  ADD CONSTRAINT `quest_id_refs_id_997a857a` FOREIGN KEY (`quest_id`) REFERENCES `qubalapp_quest` (`id`),
  ADD CONSTRAINT `reward_id_refs_id_1cc7b16e` FOREIGN KEY (`reward_id`) REFERENCES `qubalapp_reward` (`id`);

--
-- Constraints for table `qubalapp_reward_has_achievement`
--
ALTER TABLE `qubalapp_reward_has_achievement`
  ADD CONSTRAINT `achievement_id_refs_id_28b408d5` FOREIGN KEY (`achievement_id`) REFERENCES `qubalapp_achievement` (`id`),
  ADD CONSTRAINT `reward_id_refs_id_c5dbab23` FOREIGN KEY (`reward_id`) REFERENCES `qubalapp_reward` (`id`);

--
-- Constraints for table `qubalapp_reward_has_edu_skill_points`
--
ALTER TABLE `qubalapp_reward_has_edu_skill_points`
  ADD CONSTRAINT `edu_skill_id_refs_id_1589308b` FOREIGN KEY (`edu_skill_id`) REFERENCES `qubalapp_edu_skill` (`id`),
  ADD CONSTRAINT `reward_id_refs_id_3b17ec91` FOREIGN KEY (`reward_id`) REFERENCES `qubalapp_reward` (`id`);

--
-- Constraints for table `qubalapp_reward_has_powers_points`
--
ALTER TABLE `qubalapp_reward_has_powers_points`
  ADD CONSTRAINT `power_id_refs_id_54634f9a` FOREIGN KEY (`power_id`) REFERENCES `qubalapp_power` (`id`),
  ADD CONSTRAINT `reward_id_refs_id_8ba3189b` FOREIGN KEY (`reward_id`) REFERENCES `qubalapp_reward` (`id`);

--
-- Constraints for table `qubalapp_rules_edu_skills_per_course`
--
ALTER TABLE `qubalapp_rules_edu_skills_per_course`
  ADD CONSTRAINT `is_from_course_id_refs_id_6f8f12f6` FOREIGN KEY (`is_from_course_id`) REFERENCES `qubalapp_course` (`id`),
  ADD CONSTRAINT `is_from_edu_skill_id_refs_id_ac4d2602` FOREIGN KEY (`is_from_edu_skill_id`) REFERENCES `qubalapp_edu_skill` (`id`);

--
-- Constraints for table `qubalapp_student`
--
ALTER TABLE `qubalapp_student`
  ADD CONSTRAINT `person_ptr_id_refs_user_id_7818ce1a` FOREIGN KEY (`person_ptr_id`) REFERENCES `qubalapp_person` (`user_id`);

--
-- Constraints for table `qubalapp_student_challenged_completed`
--
ALTER TABLE `qubalapp_student_challenged_completed`
  ADD CONSTRAINT `challenge_id_refs_id_d1b29c64` FOREIGN KEY (`challenge_id`) REFERENCES `qubalapp_challenge` (`id`),
  ADD CONSTRAINT `student_id_refs_person_ptr_id_5072148f` FOREIGN KEY (`student_id`) REFERENCES `qubalapp_student` (`person_ptr_id`);

--
-- Constraints for table `qubalapp_student_courses_completed`
--
ALTER TABLE `qubalapp_student_courses_completed`
  ADD CONSTRAINT `course_id_refs_id_06504d03` FOREIGN KEY (`course_id`) REFERENCES `qubalapp_course` (`id`),
  ADD CONSTRAINT `student_id_refs_person_ptr_id_c5176778` FOREIGN KEY (`student_id`) REFERENCES `qubalapp_student` (`person_ptr_id`);

--
-- Constraints for table `qubalapp_student_is_enrolled_in_courses`
--
ALTER TABLE `qubalapp_student_is_enrolled_in_courses`
  ADD CONSTRAINT `course_id_refs_id_38ef5631` FOREIGN KEY (`course_id`) REFERENCES `qubalapp_course` (`id`),
  ADD CONSTRAINT `student_id_refs_person_ptr_id_1b20fcf3` FOREIGN KEY (`student_id`) REFERENCES `qubalapp_student` (`person_ptr_id`);

--
-- Constraints for table `qubalapp_student_is_team_member_of`
--
ALTER TABLE `qubalapp_student_is_team_member_of`
  ADD CONSTRAINT `student_id_refs_person_ptr_id_72f563ff` FOREIGN KEY (`student_id`) REFERENCES `qubalapp_student` (`person_ptr_id`),
  ADD CONSTRAINT `team_id_refs_id_6918c22c` FOREIGN KEY (`team_id`) REFERENCES `qubalapp_team` (`id`);

--
-- Constraints for table `qubalapp_student_quests_completed`
--
ALTER TABLE `qubalapp_student_quests_completed`
  ADD CONSTRAINT `quest_id_refs_id_25930de8` FOREIGN KEY (`quest_id`) REFERENCES `qubalapp_quest` (`id`),
  ADD CONSTRAINT `student_id_refs_person_ptr_id_23692020` FOREIGN KEY (`student_id`) REFERENCES `qubalapp_student` (`person_ptr_id`);

--
-- Constraints for table `qubalapp_student_tasks_completed`
--
ALTER TABLE `qubalapp_student_tasks_completed`
  ADD CONSTRAINT `student_id_refs_person_ptr_id_a79faa5b` FOREIGN KEY (`student_id`) REFERENCES `qubalapp_student` (`person_ptr_id`),
  ADD CONSTRAINT `task_id_refs_id_3164ee7b` FOREIGN KEY (`task_id`) REFERENCES `qubalapp_task` (`id`);

--
-- Constraints for table `qubalapp_task_has_documents`
--
ALTER TABLE `qubalapp_task_has_documents`
  ADD CONSTRAINT `educational_document_id_refs_id_8e21a824` FOREIGN KEY (`educational_document_id`) REFERENCES `qubalapp_educational_document` (`id`),
  ADD CONSTRAINT `task_id_refs_id_b37c329a` FOREIGN KEY (`task_id`) REFERENCES `qubalapp_task` (`id`);

--
-- Constraints for table `qubalapp_task_has_rewards`
--
ALTER TABLE `qubalapp_task_has_rewards`
  ADD CONSTRAINT `reward_id_refs_id_de0ed763` FOREIGN KEY (`reward_id`) REFERENCES `qubalapp_reward` (`id`),
  ADD CONSTRAINT `task_id_refs_id_8195ed6c` FOREIGN KEY (`task_id`) REFERENCES `qubalapp_task` (`id`);

--
-- Constraints for table `qubalapp_teacher`
--
ALTER TABLE `qubalapp_teacher`
  ADD CONSTRAINT `person_ptr_id_refs_user_id_6440353a` FOREIGN KEY (`person_ptr_id`) REFERENCES `qubalapp_person` (`user_id`);

--
-- Constraints for table `qubalapp_teacher_is_tutor_of_teams`
--
ALTER TABLE `qubalapp_teacher_is_tutor_of_teams`
  ADD CONSTRAINT `teacher_id_refs_person_ptr_id_4689048e` FOREIGN KEY (`teacher_id`) REFERENCES `qubalapp_teacher` (`person_ptr_id`),
  ADD CONSTRAINT `team_id_refs_id_5fce041a` FOREIGN KEY (`team_id`) REFERENCES `qubalapp_team` (`id`);

--
-- Constraints for table `qubalapp_teacher_teach_in_courses`
--
ALTER TABLE `qubalapp_teacher_teach_in_courses`
  ADD CONSTRAINT `course_id_refs_id_7ff67297` FOREIGN KEY (`course_id`) REFERENCES `qubalapp_course` (`id`),
  ADD CONSTRAINT `teacher_id_refs_person_ptr_id_6921bf6e` FOREIGN KEY (`teacher_id`) REFERENCES `qubalapp_teacher` (`person_ptr_id`);

--
-- Constraints for table `qubalapp_team`
--
ALTER TABLE `qubalapp_team`
  ADD CONSTRAINT `captain_id_refs_person_ptr_id_6d24b5fa` FOREIGN KEY (`captain_id`) REFERENCES `qubalapp_student` (`person_ptr_id`),
  ADD CONSTRAINT `is_in_course_id_refs_id_184ef969` FOREIGN KEY (`is_in_course_id`) REFERENCES `qubalapp_course` (`id`);

--
-- Constraints for table `qubalapp_team_has_students`
--
ALTER TABLE `qubalapp_team_has_students`
  ADD CONSTRAINT `student_id_refs_person_ptr_id_5f8c9997` FOREIGN KEY (`student_id`) REFERENCES `qubalapp_student` (`person_ptr_id`),
  ADD CONSTRAINT `team_id_refs_id_04a48c17` FOREIGN KEY (`team_id`) REFERENCES `qubalapp_team` (`id`);

--
-- Constraints for table `qubalapp_team_has_teachers`
--
ALTER TABLE `qubalapp_team_has_teachers`
  ADD CONSTRAINT `teacher_id_refs_person_ptr_id_8a2d9e52` FOREIGN KEY (`teacher_id`) REFERENCES `qubalapp_teacher` (`person_ptr_id`),
  ADD CONSTRAINT `team_id_refs_id_73c1b376` FOREIGN KEY (`team_id`) REFERENCES `qubalapp_team` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
