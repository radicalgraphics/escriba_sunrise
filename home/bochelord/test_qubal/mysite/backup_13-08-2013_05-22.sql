USE `qubaldb`;-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: qubaldb
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `actstream_action`
--

LOCK TABLES `actstream_action` WRITE;
/*!40000 ALTER TABLE `actstream_action` DISABLE KEYS */;
INSERT INTO `actstream_action` (`id`, `actor_content_type_id`, `actor_object_id`, `verb`, `description`, `target_content_type_id`, `target_object_id`, `action_object_content_type_id`, `action_object_object_id`, `timestamp`, `public`, `data`) VALUES (35,3,'14','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 17:54:37',1,'{\"mostrado\": \"si\"}'),(36,3,'14','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-04 17:54:37',1,'{\"mostrado\": \"si\"}'),(37,3,'14','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 17:55:10',1,'{\"mostrado\": \"si\"}'),(38,3,'14','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 17:57:58',1,'{\"mostrado\": \"si\"}'),(39,3,'1','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 18:06:58',1,'{\"mostrado\": \"si\"}'),(40,3,'1','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-04 18:06:58',1,'{\"mostrado\": \"si\"}'),(41,3,'2','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 18:09:10',1,'{\"mostrado\": \"si\"}'),(42,3,'2','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-04 18:09:10',1,'{\"mostrado\": \"si\"}'),(43,3,'1','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-04 18:10:54',1,NULL),(44,3,'14','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 18:10:58',1,'{\"mostrado\": \"si\"}'),(45,3,'14','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-04 18:12:18',1,NULL),(46,3,'14','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 18:12:22',1,'{\"mostrado\": \"si\"}'),(47,3,'2','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-04 18:12:42',1,NULL),(48,3,'2','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 18:12:53',1,'{\"mostrado\": \"si\"}'),(49,3,'2','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-04 19:04:38',1,NULL),(50,3,'2','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 19:04:53',1,'{\"mostrado\": \"si\"}'),(51,3,'1','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-04 19:07:25',1,NULL),(52,3,'1','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 19:07:53',1,'{\"mostrado\": \"si\"}'),(53,3,'1','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-04 19:08:19',1,NULL),(54,3,'10','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 19:08:26',1,'{\"mostrado\": \"si\"}'),(55,3,'10','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-04 19:08:27',1,'{\"mostrado\": \"si\"}'),(56,3,'2','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-04 19:08:28',1,NULL),(57,3,'6','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 19:08:33',1,'{\"mostrado\": \"si\"}'),(58,3,'6','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-04 19:08:33',1,'{\"mostrado\": \"si\"}'),(59,3,'6','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-04 19:08:43',1,NULL),(60,3,'1','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-04 19:08:47',1,NULL),(61,3,'1','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 19:08:52',1,'{\"mostrado\": \"si\"}'),(62,3,'5','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 19:08:55',1,'{\"mostrado\": \"si\"}'),(63,3,'5','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-04 19:08:55',1,'{\"mostrado\": \"si\"}'),(64,3,'10','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-04 19:45:37',1,NULL),(65,3,'10','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 19:45:43',1,'{\"mostrado\": \"si\"}'),(66,3,'10','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-04 19:46:18',1,NULL),(67,3,'13','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 19:46:30',1,'{\"mostrado\": \"si\"}'),(68,3,'13','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-04 19:46:30',1,'{\"mostrado\": \"si\"}'),(69,3,'13','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-04 19:46:36',1,NULL),(70,3,'13','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 19:46:43',1,'{\"mostrado\": \"si\"}'),(71,3,'13','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-04 20:13:15',1,NULL),(72,3,'11','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 20:13:21',1,'{\"mostrado\": \"si\"}'),(73,3,'11','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-04 20:13:21',1,'{\"mostrado\": \"si\"}'),(74,3,'3','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 21:45:52',1,'{\"mostrado\": \"si\"}'),(75,3,'3','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-04 21:45:52',1,'{\"mostrado\": \"si\"}'),(76,3,'3','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-04 21:47:31',1,NULL),(77,3,'3','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 21:47:33',1,'{\"mostrado\": \"si\"}'),(78,3,'11','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-04 21:47:46',1,NULL),(79,3,'1','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 21:47:54',1,'{\"mostrado\": \"si\"}'),(80,3,'12','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-04 22:53:44',1,'{\"mostrado\": \"si\"}'),(81,3,'12','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-04 22:53:44',1,'{\"mostrado\": \"si\"}'),(82,3,'12','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-05 00:24:15',1,NULL),(83,3,'1','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-05 00:24:23',1,'{\"mostrado\": \"si\"}'),(84,3,'5','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-05 00:31:41',1,NULL),(85,3,'2','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-05 00:31:48',1,'{\"mostrado\": \"si\"}'),(86,3,'1','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-05 14:50:17',1,NULL),(87,3,'1','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-05 16:00:13',1,'{\"mostrado\": \"si\"}'),(88,3,'3','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-05 19:25:58',1,'{\"mostrado\": \"si\"}'),(89,3,'1','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-05 19:26:10',1,NULL),(90,3,'1','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-05 19:26:16',1,'{\"mostrado\": \"si\"}'),(91,3,'1','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-05 19:26:16',1,'{\"mostrado\": \"si\"}'),(92,3,'1','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-05 19:27:01',1,NULL),(93,3,'1','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-05 19:27:06',1,'{\"mostrado\": \"si\"}'),(94,3,'2','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-05 19:30:26',1,NULL),(95,3,'2','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-05 19:30:32',1,'{\"mostrado\": \"si\"}'),(96,3,'2','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-05 19:30:32',1,'{\"mostrado\": \"si\"}'),(97,3,'2','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-05 19:30:43',1,NULL),(98,3,'2','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-05 19:30:57',1,'{\"mostrado\": \"si\"}'),(99,3,'1','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-05 19:30:58',1,NULL),(100,3,'1','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-05 19:31:02',1,'{\"mostrado\": \"si\"}'),(101,3,'1','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-05 19:33:07',1,NULL),(102,3,'1','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-05 19:33:13',1,'{\"mostrado\": \"si\"}'),(103,3,'1','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-05 20:29:55',1,NULL),(104,3,'10','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-05 20:30:09',1,'{\"mostrado\": \"si\"}'),(105,3,'10','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-05 20:30:10',1,'{\"mostrado\": \"si\"}'),(106,3,'3','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-05 20:30:12',1,NULL),(107,3,'10','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-05 20:30:24',1,'{\"mostrado\": \"si\"}'),(108,3,'10','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-05 20:30:37',1,'{\"mostrado\": \"si\"}'),(109,3,'10','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-05 23:49:55',1,'{\"mostrado\": \"si\"}'),(110,3,'1','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-06 01:10:31',1,NULL),(111,3,'13','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-06 01:10:38',1,'{\"mostrado\": \"si\"}'),(112,3,'13','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-06 01:10:39',1,'{\"mostrado\": \"si\"}'),(113,3,'10','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-06 01:10:45',1,NULL),(114,3,'13','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-06 01:10:47',1,NULL),(115,3,'2','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-06 01:10:52',1,'{\"mostrado\": \"si\"}'),(116,3,'11','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-06 01:10:54',1,'{\"mostrado\": \"si\"}'),(117,3,'11','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-06 01:10:54',1,'{\"mostrado\": \"si\"}'),(118,3,'2','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-06 01:19:43',1,'{\"mostrado\": \"si\"}'),(119,3,'10','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-06 18:18:51',1,NULL),(120,3,'1','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-06 18:18:56',1,'{\"mostrado\": \"si\"}'),(121,3,'10','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-06 19:13:51',1,NULL),(122,3,'3','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-06 19:14:21',1,'{\"mostrado\": \"si\"}'),(123,3,'3','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-06 19:14:21',1,'{\"mostrado\": \"si\"}'),(124,3,'1','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-07 02:07:52',1,NULL),(125,3,'1','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-07 02:07:58',1,'{\"mostrado\": \"si\"}'),(126,3,'1','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-07 02:07:58',1,'{\"mostrado\": \"si\"}'),(127,3,'1','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-07 02:09:02',1,NULL),(128,3,'1','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-07 02:40:38',1,'{\"mostrado\": \"si\"}'),(129,3,'11','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-07 03:03:51',1,NULL),(130,3,'10','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-07 03:04:01',1,'{\"mostrado\": \"si\"}'),(131,3,'10','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-07 03:04:01',1,'{\"mostrado\": \"si\"}'),(132,3,'10','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-07 03:04:44',1,NULL),(133,3,'1','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-07 04:06:53',1,NULL),(134,3,'14','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-07 04:07:10',1,'{\"mostrado\": \"si\"}'),(135,3,'14','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-07 04:07:10',1,'{\"mostrado\": \"si\"}'),(136,3,'14','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-07 04:09:01',1,NULL),(137,3,'1','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-07 04:09:05',1,'{\"mostrado\": \"si\"}'),(138,3,'1','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-07 04:09:55',1,NULL),(139,3,'2','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-07 04:10:00',1,'{\"mostrado\": \"si\"}'),(140,3,'2','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-07 04:10:00',1,'{\"mostrado\": \"si\"}'),(141,3,'2','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-07 04:18:45',1,NULL),(142,3,'14','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-07 04:18:50',1,'{\"mostrado\": \"si\"}'),(143,3,'14','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-07 04:35:47',1,NULL),(144,3,'1','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-07 04:35:51',1,'{\"mostrado\": \"si\"}'),(145,3,'2','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-08 02:16:41',1,NULL),(146,3,'2','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-08 02:16:50',1,'{\"mostrado\": \"si\"}'),(147,3,'2','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-08 02:18:48',1,NULL),(148,3,'1','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-08 02:24:54',1,'{\"mostrado\": \"si\"}'),(149,3,'1','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-08 02:24:54',1,'{\"mostrado\": \"si\"}'),(150,3,'1','notification_loggedout','Logged out ok',NULL,NULL,NULL,NULL,'2013-08-08 02:38:42',1,NULL),(151,3,'1','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-08 13:07:33',1,'{\"mostrado\": \"si\"}'),(152,3,'3','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-08 16:23:49',1,'{\"mostrado\": \"si\"}'),(153,3,'3','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-08 16:23:50',1,'{\"mostrado\": \"si\"}'),(154,3,'1','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-08 18:39:03',1,'{\"mostrado\": \"si\"}'),(155,3,'14','notification_welcome','Welcome to Qubal!',NULL,NULL,NULL,NULL,'2013-08-10 20:43:13',1,'{\"mostrado\": \"si\"}'),(156,3,'14','notification_got_welcome_xp','You got some XP!',NULL,NULL,NULL,NULL,'2013-08-10 20:43:14',1,'{\"mostrado\": \"si\"}');
/*!40000 ALTER TABLE `actstream_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `actstream_follow`
--

LOCK TABLES `actstream_follow` WRITE;
/*!40000 ALTER TABLE `actstream_follow` DISABLE KEYS */;
/*!40000 ALTER TABLE `actstream_follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add nickname',8,'add_nickname'),(23,'Can change nickname',8,'change_nickname'),(24,'Can delete nickname',8,'delete_nickname'),(25,'Can add achievement',9,'add_achievement'),(26,'Can change achievement',9,'change_achievement'),(27,'Can delete achievement',9,'delete_achievement'),(28,'Can add power',10,'add_power'),(29,'Can change power',10,'change_power'),(30,'Can delete power',10,'delete_power'),(31,'Can add course',11,'add_course'),(32,'Can change course',11,'change_course'),(33,'Can delete course',11,'delete_course'),(34,'Can add team',12,'add_team'),(35,'Can change team',12,'change_team'),(36,'Can delete team',12,'delete_team'),(37,'Can add person',13,'add_person'),(38,'Can change person',13,'change_person'),(39,'Can delete person',13,'delete_person'),(40,'Can add courses_ completed_ by_ student',14,'add_courses_completed_by_student'),(41,'Can change courses_ completed_ by_ student',14,'change_courses_completed_by_student'),(42,'Can delete courses_ completed_ by_ student',14,'delete_courses_completed_by_student'),(43,'Can add student',15,'add_student'),(44,'Can change student',15,'change_student'),(45,'Can delete student',15,'delete_student'),(46,'Can add teacher',16,'add_teacher'),(47,'Can change teacher',16,'change_teacher'),(48,'Can delete teacher',16,'delete_teacher'),(49,'Can add address',17,'add_address'),(50,'Can change address',17,'change_address'),(51,'Can delete address',17,'delete_address'),(52,'Can add quest',18,'add_quest'),(53,'Can change quest',18,'change_quest'),(54,'Can delete quest',18,'delete_quest'),(55,'Can add challenge',19,'add_challenge'),(56,'Can change challenge',19,'change_challenge'),(57,'Can delete challenge',19,'delete_challenge'),(58,'Can add task',20,'add_task'),(59,'Can change task',20,'change_task'),(60,'Can delete task',20,'delete_task'),(61,'Can add edu_ skill',21,'add_edu_skill'),(62,'Can change edu_ skill',21,'change_edu_skill'),(63,'Can delete edu_ skill',21,'delete_edu_skill'),(64,'Can add reward',22,'add_reward'),(65,'Can change reward',22,'change_reward'),(66,'Can delete reward',22,'delete_reward'),(67,'Can add educational_ document',23,'add_educational_document'),(68,'Can change educational_ document',23,'change_educational_document'),(69,'Can delete educational_ document',23,'delete_educational_document'),(70,'Can add rules_ xp_per_ level',24,'add_rules_xp_per_level'),(71,'Can change rules_ xp_per_ level',24,'change_rules_xp_per_level'),(72,'Can delete rules_ xp_per_ level',24,'delete_rules_xp_per_level'),(73,'Can add rules_ edu_ skills_per_ course',25,'add_rules_edu_skills_per_course'),(74,'Can change rules_ edu_ skills_per_ course',25,'change_rules_edu_skills_per_course'),(75,'Can delete rules_ edu_ skills_per_ course',25,'delete_rules_edu_skills_per_course'),(76,'Can add follow',26,'add_follow'),(77,'Can change follow',26,'change_follow'),(78,'Can delete follow',26,'delete_follow'),(79,'Can add action',27,'add_action'),(80,'Can change action',27,'change_action'),(81,'Can delete action',27,'delete_action');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES (1,'pbkdf2_sha256$10000$CiPE8Nuu89Fl$tXXml+J/etZOzdCXmGJw1SKZvE+TcUAXr5uoUMRmoS0=','2013-08-10 20:44:49',1,'bochelord','','','bochelord@gmail.com',1,1,'2013-07-28 17:59:20'),(2,'pbkdf2_sha256$10000$lBx1TnphOSQP$CmeqRcwgcOvWcR9o64qntSLTXwt6N2DlcjhNj6cHbkE=','2013-08-08 02:16:50',1,'leunam','Manuel','Gonzalez Garcia','leunam.san@gmail.com',1,1,'2013-07-28 22:43:23'),(3,'pbkdf2_sha256$10000$8iIbPKv6Dcal$cU8yKiexd/hrc11ub36B2X2CtMTxddGemNUC2ZSgqzQ=','2013-08-08 16:23:49',1,'sander','Sander','Boelsma','sander@studiesoft.com',1,1,'2013-07-29 00:08:38'),(4,'pbkdf2_sha256$10000$sbXgC1X2jzw2$8X7ng9cW46Yj4gyv172MZsH/ZNsb+C+/ki+eNHaLYlk=','2013-08-04 16:36:19',0,'test','','','',0,1,'2013-07-29 03:41:18'),(5,'pbkdf2_sha256$10000$ckCcDoIW43oa$TL3zUMJikYu0ajtFEkUQL/xiFRFPT+M88PbwrXEPuX4=','2013-08-04 19:08:55',0,'jan','Jan','van der Vaart','jan@vandervaart.com',0,1,'2013-07-29 15:33:46'),(6,'pbkdf2_sha256$10000$OXPMaKx0j9EW$F91fRqzdFfgqg3ZvYQI0VX7hHsbSdneHD9BqhL5hr/g=','2013-08-04 19:08:33',0,'maria','Maria Antonia','Fernandez','maria.antonia@fernandez.com',0,1,'2013-07-29 15:33:56'),(7,'pbkdf2_sha256$10000$Wdv5dng3ZfVv$UXxgvAuwYpOvT382/RMMs6b6cYbkWoNXqUOxUo3n75E=','2013-07-29 15:34:17',0,'juan','Juan','Jimenez','juan@jimenez.com',0,1,'2013-07-29 15:34:17'),(8,'pbkdf2_sha256$10000$rrpROstcQe7Z$bkeuWMiaRHCwJdEmvhDkiZyCDBErgQz6cD8Zo9L6yBg=','2013-07-29 15:34:32',0,'paco','Francisco Jose','Gutierrez','paco@paco.com',0,1,'2013-07-29 15:34:32'),(9,'pbkdf2_sha256$10000$sEpshtcZXJXm$YdbPMBJv4RNojzMwSzIHt4Q8A8vyU3CRtpHW9bOGOJs=','2013-08-04 04:04:19',0,'darthvader','','','',0,1,'2013-07-29 16:33:08'),(10,'pbkdf2_sha256$10000$s49L1cKorvdW$alNMTS+y8KR58WyxbA7HGxbOED/7ax0OOtenSlO1ZT8=','2013-08-07 03:04:01',0,'caroline','','','',0,1,'2013-07-30 18:06:56'),(11,'pbkdf2_sha256$10000$DVaAI51tDiWc$2zc3TfbAGh3XelMZjnub93qH273f9qnDnMmeP0+TUPU=','2013-08-06 01:10:54',0,'fresca','','','',0,1,'2013-07-31 17:15:52'),(12,'pbkdf2_sha256$10000$ulAOoTw246A4$fGdtOWagAMAwMqN4RXU7WLbmfnl5/+MXAs0r6F5doR0=','2013-08-04 22:53:44',0,'noimagen','','','',0,1,'2013-07-31 19:08:29'),(13,'pbkdf2_sha256$10000$usXjJr3mcFEV$xuZD9L5i3AGq1B0J5O6ssJRbpcXhR+/Vk7eJNqGUs7g=','2013-08-06 01:10:38',0,'perro','','','',0,1,'2013-08-03 21:34:14'),(14,'pbkdf2_sha256$10000$YRxjQaZY7MDn$2wDOAYW0eFP1esKqL8VZtsrS0SnA758Ws56ySpX3EJ4=','2013-08-10 20:43:13',0,'manu','','','',0,1,'2013-08-04 17:50:42');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,1,14),(15,1,15),(16,1,16),(17,1,17),(18,1,18),(19,1,19),(20,1,20),(21,1,21),(22,1,22),(23,1,23),(24,1,24),(25,1,25),(26,1,26),(27,1,27),(28,1,28),(29,1,29),(30,1,30),(31,1,31),(32,1,32),(33,1,33),(34,1,34),(35,1,35),(36,1,36),(37,1,37),(38,1,38),(39,1,39),(40,1,40),(41,1,41),(42,1,42),(43,1,43),(44,1,44),(45,1,45),(46,1,46),(47,1,47),(48,1,48),(49,1,49),(50,1,50),(51,1,51),(52,1,52),(53,1,53),(54,1,54),(55,1,55),(56,1,56),(57,1,57),(58,1,58),(59,1,59),(60,1,60),(61,1,61),(62,1,62),(63,1,63),(64,1,64),(65,1,65),(66,1,66),(67,1,67),(68,1,68),(69,1,69),(70,1,70),(71,1,71),(72,1,72),(73,1,73),(74,1,74),(75,1,75),(76,1,76),(77,1,77),(78,1,78),(79,1,79),(80,1,80),(81,1,81);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES (1,'2013-08-04 16:40:33',1,10,'2','2: Mas 31 Foc 16 Tem 68 Com 78 Res 64 Per 38',2,'Changed teamwork, communication, responsability, perseverance, mastery and focus.'),(2,'2013-08-04 17:09:05',1,15,'2','Manuel Gonzalez Garcia',2,'Changed xp.'),(3,'2013-08-04 17:09:10',1,15,'3','Sander Boelsma',2,'Changed xp and has_powers.'),(4,'2013-08-04 17:09:14',1,15,'1','Boche Lordus',2,'Changed xp.'),(5,'2013-08-04 17:10:56',1,3,'1','bochelord',2,'Changed password and user_permissions.'),(6,'2013-08-04 17:50:42',1,3,'14','manu',1,''),(7,'2013-08-04 17:52:37',1,15,'14','Manu Morillas',1,''),(8,'2013-08-04 17:57:28',1,12,'1','The A Team',2,'Changed image.'),(9,'2013-08-04 18:18:06',1,9,'2','2: Great Balls of OpenSource',2,'Changed image.'),(10,'2013-08-04 18:18:34',1,9,'1','1: Big Wooden Head',2,'Changed image.'),(11,'2013-08-04 18:18:37',1,9,'1','1: Big Wooden Head',2,'No fields changed.'),(12,'2013-08-04 18:18:44',1,9,'3','3: Too much',2,'Changed image.'),(13,'2013-08-04 18:18:51',1,9,'5','5: Penguin xtrmntr',2,'Changed image.'),(14,'2013-08-04 18:23:46',1,9,'4','4: IronHeart',2,'Changed image.'),(15,'2013-08-04 18:51:16',1,9,'10','10: Mierda CON TOMATEEEEEEEE',1,''),(16,'2013-08-04 18:59:36',1,9,'10','10: Mierda CON TOMATEEEEEEEE',3,''),(17,'2013-08-04 19:00:30',1,11,'3','Spanjarden tekniek',2,'Changed image.'),(18,'2013-08-04 19:00:45',1,11,'2','Rooftop Bike fixing',2,'Changed image.'),(19,'2013-08-04 19:00:56',1,11,'1','Stop motion animation',2,'Changed image.'),(20,'2013-08-04 19:01:12',1,11,'4','Test Qubal',2,'Changed image.'),(21,'2013-08-04 19:05:16',1,12,'1','The A Team',2,'Changed image.'),(22,'2013-08-04 19:06:40',1,12,'2','Cartoonists',2,'Changed image.'),(23,'2013-08-04 19:30:39',1,15,'10','Caroline Van houten',2,'Changed image, is_team_member_of and courses_completed.'),(24,'2013-08-04 19:44:14',1,12,'1','The A Team',2,'Changed image.'),(25,'2013-08-04 19:45:17',1,15,'10','Caroline Van houten',2,'Changed has_achievements.');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'nickname','qubalapp','nickname'),(9,'achievement','qubalapp','achievement'),(10,'power','qubalapp','power'),(11,'course','qubalapp','course'),(12,'team','qubalapp','team'),(13,'person','qubalapp','person'),(14,'courses_ completed_ by_ student','qubalapp','courses_completed_by_student'),(15,'student','qubalapp','student'),(16,'teacher','qubalapp','teacher'),(17,'address','qubalapp','address'),(18,'quest','qubalapp','quest'),(19,'challenge','qubalapp','challenge'),(20,'task','qubalapp','task'),(21,'edu_ skill','qubalapp','edu_skill'),(22,'reward','qubalapp','reward'),(23,'educational_ document','qubalapp','educational_document'),(24,'rules_ xp_per_ level','qubalapp','rules_xp_per_level'),(25,'rules_ edu_ skills_per_ course','qubalapp','rules_edu_skills_per_course'),(26,'follow','actstream','follow'),(27,'action','actstream','action');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES ('5aszylxfgukml9ut4oo3achztpz5dl39','M2M5ODY5ZmNjMmY5NGNhYTdlNzc2NzUxOGY1ZTFmYzcyNGVhNWFmNDqAAn1xAS4=','2013-08-25 02:41:05'),('9mvjlivpq6xql57pou7hf9lyk6ebsjui','NjNlNzdhMzliNGI4OTdhOWRjYmRlMzJmODYyZTBmYjNmMTcyOTM1NjqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQ51Lg==','2013-08-18 17:54:37'),('dfytpqzofz0rx5555dn2ewto5wytcgag','NTdjODdkZWY4ZTA5Yzk4ZWQxNzFjZTY5OTYxZTU5MjhmM2IyMzY5ZDqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQN1Lg==','2013-08-20 19:14:21'),('f7wj196hlpxb3xysz6lt998oi68eh6lx','NTdjODdkZWY4ZTA5Yzk4ZWQxNzFjZTY5OTYxZTU5MjhmM2IyMzY5ZDqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQN1Lg==','2013-08-18 21:47:33'),('kksfg71grtt2zeyr535keevy07vwf8xl','OWUzOWI3M2I1N2Y3MDk5ZDAyM2FkMTliNGZlYmE5MjRjYTdiOTEyNzqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu','2013-08-24 20:45:53'),('lgyrh7dmfe0nt3j75kxf8mm6ukltje7f','NTdjODdkZWY4ZTA5Yzk4ZWQxNzFjZTY5OTYxZTU5MjhmM2IyMzY5ZDqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQN1Lg==','2013-08-22 16:23:49'),('lhngvyehmquk5dnlj7wrgddggjag5b19','M2M5ODY5ZmNjMmY5NGNhYTdlNzc2NzUxOGY1ZTFmYzcyNGVhNWFmNDqAAn1xAS4=','2013-08-22 02:18:48'),('pfvn5tgzveyyv1zhd7jzd3h1c9veftxt','YmFlNTE0MmQ1NTgwNDI3M2NkOTc2YzNjYTdhNzZkYmU5NmQ2OWIxNTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-08-22 13:07:33'),('srelvv4nufjkhq4j50b3n1r2q40a3zk2','YmFlNTE0MmQ1NTgwNDI3M2NkOTc2YzNjYTdhNzZkYmU5NmQ2OWIxNTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-08-21 04:35:51'),('xwpl8xf5a37amno57coa9rx7k97y2che','MmE0NTNlYWE0OWMyNWU1ZGJjODFiM2VjNGFiZDJkOTg2ZGM4Zjk5NTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQJ1Lg==','2013-08-20 01:19:43'),('xy88j1gwbkbib5swrgx3iplvg34hxs76','YmFlNTE0MmQ1NTgwNDI3M2NkOTc2YzNjYTdhNzZkYmU5NmQ2OWIxNTqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==','2013-08-22 18:39:03');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_achievement`
--

LOCK TABLES `qubalapp_achievement` WRITE;
/*!40000 ALTER TABLE `qubalapp_achievement` DISABLE KEYS */;
INSERT INTO `qubalapp_achievement` (`id`, `name`, `description`, `image`, `unlock_nickname_id`, `unlocked_date`) VALUES (1,'Big Wooden Head','You are the one and biggest , Big WoodenHead','images/achievements/Yummy_Potato_by_TattooAddict_3.png',NULL,NULL),(2,'Great Balls of OpenSource','Set up a server based on open source software','images/achievements/Sky_Lantern_1.jpg',NULL,NULL),(3,'Too much','You have spent more than 3 hours in front of the screen','images/achievements/Cov_1.jpg',NULL,NULL),(4,'IronHeart','Your teammates never walk alone : You helped a teammate to finish a quest in time','images/achievements/cover_1.jpg',NULL,NULL),(5,'Penguin xtrmntr','Defeat the evil ubuntu penguin master and bring him to his knees making a proper server run showing good manners','images/achievements/kill-bill_1.jpg',1,NULL),(8,'Jarf','Jarf','',NULL,NULL),(9,'cabessaaa','efefe','',NULL,NULL);
/*!40000 ALTER TABLE `qubalapp_achievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_address`
--

LOCK TABLES `qubalapp_address` WRITE;
/*!40000 ALTER TABLE `qubalapp_address` DISABLE KEYS */;
INSERT INTO `qubalapp_address` (`id`, `street`, `number`, `floor`, `door`, `city`, `postcode`, `country`) VALUES (3,'pappar',121,32,'ererq','ewew','rwererw','wewew'),(4,'Llanos de San Ramón',1,3,'10','Marbella','23601','Spain'),(5,'Hogeweg',21,0,'Red','Wijk aan Zee','1949AW','The Netherlands'),(6,'Divide by cero street',0,0,'0','Amsterdam','1070 AX','Netherlands');
/*!40000 ALTER TABLE `qubalapp_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_challenge`
--

LOCK TABLES `qubalapp_challenge` WRITE;
/*!40000 ALTER TABLE `qubalapp_challenge` DISABLE KEYS */;
INSERT INTO `qubalapp_challenge` (`id`, `name`, `description`) VALUES (1,'fsafsa','fasfasf');
/*!40000 ALTER TABLE `qubalapp_challenge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_challenge_has_documents`
--

LOCK TABLES `qubalapp_challenge_has_documents` WRITE;
/*!40000 ALTER TABLE `qubalapp_challenge_has_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_challenge_has_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_challenge_has_rewards`
--

LOCK TABLES `qubalapp_challenge_has_rewards` WRITE;
/*!40000 ALTER TABLE `qubalapp_challenge_has_rewards` DISABLE KEYS */;
INSERT INTO `qubalapp_challenge_has_rewards` (`id`, `challenge_id`, `reward_id`) VALUES (1,1,1);
/*!40000 ALTER TABLE `qubalapp_challenge_has_rewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_challenge_has_tasks`
--

LOCK TABLES `qubalapp_challenge_has_tasks` WRITE;
/*!40000 ALTER TABLE `qubalapp_challenge_has_tasks` DISABLE KEYS */;
INSERT INTO `qubalapp_challenge_has_tasks` (`id`, `challenge_id`, `task_id`) VALUES (1,1,1);
/*!40000 ALTER TABLE `qubalapp_challenge_has_tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_course`
--

LOCK TABLES `qubalapp_course` WRITE;
/*!40000 ALTER TABLE `qubalapp_course` DISABLE KEYS */;
INSERT INTO `qubalapp_course` (`id`, `image`, `name`, `description`, `starting_date`, `ending_date`, `has_quests_id`, `has_achievements_id`) VALUES (1,'images/courses/35171_1525160773969_1383141894_1404085_2499609_n.jpg','Stop motion animation','Learn how to make real cartoon animations with the stop motion technique used by the hollywood studios','2013-07-29 02:56:53','2013-07-31 02:56:55',1,1),(2,'images/courses/CIMG7791_1.JPG','Rooftop Bike fixing','Ever tried to fix a bike on a rooftop? Now you can do it safely with this course !!!','2013-07-29 03:34:28','2013-07-29 03:34:30',1,4),(3,'images/courses/Eurocopa2008_002_1.jpg','Spanjarden tekniek','Learn how to support the World Champion team in the next endeavor in the Brazil 2014!','2013-07-29 03:37:27','2013-07-29 03:37:28',2,4),(4,'images/courses/The_Real_Revolution_by_pappajackson.jpg','Test Qubal','This Course is all about Qubal, test every single part, create, delete, change, just click wherever','2013-07-29 16:07:05','2023-07-29 16:08:26',1,3),(5,'','frfggr','grgrgr','2013-08-07 02:00:00','2013-08-30 06:00:00',2,1);
/*!40000 ALTER TABLE `qubalapp_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_course_has_documents`
--

LOCK TABLES `qubalapp_course_has_documents` WRITE;
/*!40000 ALTER TABLE `qubalapp_course_has_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_course_has_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_course_has_students`
--

LOCK TABLES `qubalapp_course_has_students` WRITE;
/*!40000 ALTER TABLE `qubalapp_course_has_students` DISABLE KEYS */;
INSERT INTO `qubalapp_course_has_students` (`id`, `course_id`, `student_id`) VALUES (13,1,1),(14,1,2),(11,2,1),(12,2,2),(15,4,1),(16,4,2),(17,4,3);
/*!40000 ALTER TABLE `qubalapp_course_has_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_course_has_teams`
--

LOCK TABLES `qubalapp_course_has_teams` WRITE;
/*!40000 ALTER TABLE `qubalapp_course_has_teams` DISABLE KEYS */;
INSERT INTO `qubalapp_course_has_teams` (`id`, `course_id`, `team_id`) VALUES (1,5,1);
/*!40000 ALTER TABLE `qubalapp_course_has_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_courses_completed_by_student`
--

LOCK TABLES `qubalapp_courses_completed_by_student` WRITE;
/*!40000 ALTER TABLE `qubalapp_courses_completed_by_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_courses_completed_by_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_edu_skill`
--

LOCK TABLES `qubalapp_edu_skill` WRITE;
/*!40000 ALTER TABLE `qubalapp_edu_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_edu_skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_educational_document`
--

LOCK TABLES `qubalapp_educational_document` WRITE;
/*!40000 ALTER TABLE `qubalapp_educational_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_educational_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_nickname`
--

LOCK TABLES `qubalapp_nickname` WRITE;
/*!40000 ALTER TABLE `qubalapp_nickname` DISABLE KEYS */;
INSERT INTO `qubalapp_nickname` (`id`, `title`, `description`) VALUES (1,'Katana Henzo','master of the sword!'),(2,'Bisshop','Holy sh*t this guy is GoOD');
/*!40000 ALTER TABLE `qubalapp_nickname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_person`
--

LOCK TABLES `qubalapp_person` WRITE;
/*!40000 ALTER TABLE `qubalapp_person` DISABLE KEYS */;
INSERT INTO `qubalapp_person` (`user_id`, `name`, `lastname`, `birth`, `email`, `image`, `xp`, `twitter`, `facebook`, `dropbox`, `has_address_id`, `has_powers_id`) VALUES (1,'Boche','Lordus','1977-11-05 23:27:53','bochelord@gmail.com','images/persons/3099_87029885861_618030861_2924074_1823527_n.jpg',10,'','','',NULL,1),(2,'Manuel','Gonzalez Garcia','1976-07-23 03:45:00','leunam.san@gmail.com','images/persons/Mass-effect-avatar---The-illusive-man.jpg',6,'','','',4,2),(3,'Sander','Boelsma','2013-07-29 13:29:31','sander@studiesoft.com','images/persons/Sanders-Color-300_8.png',6,'','','',5,15),(4,'test','test','2013-07-29 03:41:26','tete@tetet.com','',44,'','','',NULL,4),(5,'Jan','Van der Vaart','1988-07-29 16:32:25','jan@vandervaart.com','images/persons/jan_avatar.jpg',758,'','','',5,5),(6,'Maria Antonia','Fernandez','1983-07-29 16:34:43','maria.antonia@fernandez.com','images/persons/fresca01.jpg',349,'','','',NULL,6),(9,'Darth','Vader','2013-07-29 16:33:48','darth@deathstar.com','images/persons/images.jpg',2024,'','','',NULL,7),(10,'Caroline','Van houten','2013-07-31 17:05:22','rere@34343.com','images/persons/pibon.png',56,'','','',NULL,8),(11,'Fresca','Buenorra','2013-07-31 17:16:11','fresquisima@pibon.com','images/persons/30xeiav.jpg',38,'','','',NULL,9),(12,'cateto','sinimagen','2013-07-31 19:08:56','pklpkpkp@reere.com','',44,'','','',NULL,11),(13,'perro','peerraaa','2013-08-06 21:54:00','fdwwfw@erwew.com','default_images/default_avatar_grey_50.jpg',4,'','','',NULL,13),(14,'Manu','Morillas','2013-07-31 22:00:00','mmorillasm@gmail.com','images/persons/Untitled-2.jpg',8,'','','',NULL,14);
/*!40000 ALTER TABLE `qubalapp_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_person_has_achievements`
--

LOCK TABLES `qubalapp_person_has_achievements` WRITE;
/*!40000 ALTER TABLE `qubalapp_person_has_achievements` DISABLE KEYS */;
INSERT INTO `qubalapp_person_has_achievements` (`id`, `person_id`, `achievement_id`) VALUES (159,1,1),(160,1,2),(161,1,3),(154,2,1),(155,2,2),(156,2,4),(157,2,5),(158,3,2),(127,4,1),(128,4,2),(121,5,2),(120,6,4),(118,9,1),(119,9,4),(165,10,1),(126,11,2),(147,13,1),(148,13,2),(149,13,3),(150,13,4),(151,13,5),(152,13,8),(153,13,9),(162,14,1),(163,14,3),(164,14,4);
/*!40000 ALTER TABLE `qubalapp_person_has_achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_person_has_nicknames`
--

LOCK TABLES `qubalapp_person_has_nicknames` WRITE;
/*!40000 ALTER TABLE `qubalapp_person_has_nicknames` DISABLE KEYS */;
INSERT INTO `qubalapp_person_has_nicknames` (`id`, `person_id`, `nickname_id`) VALUES (19,3,2),(18,4,1),(17,5,1),(16,6,1),(14,9,1),(15,9,2);
/*!40000 ALTER TABLE `qubalapp_person_has_nicknames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_power`
--

LOCK TABLES `qubalapp_power` WRITE;
/*!40000 ALTER TABLE `qubalapp_power` DISABLE KEYS */;
INSERT INTO `qubalapp_power` (`id`, `teamwork`, `communication`, `responsability`, `perseverance`, `mastery`, `focus`) VALUES (1,1,1,1,1,1,1),(2,68,78,64,38,31,16),(4,1,1,1,1,1,1),(5,1,1,1,1,1,1),(6,1,1,1,1,1,1),(7,1,1,1,1,85,1),(8,1,1,1,1,1,1),(9,1,1,1,1,1,1),(10,1,1,1,1,1,1),(11,1,1,1,1,1,1),(12,1,1,1,1,1,1),(13,1,1,1,1,1,1),(14,1,1,1,1,1,1),(15,1,1,1,1,1,1);
/*!40000 ALTER TABLE `qubalapp_power` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_quest`
--

LOCK TABLES `qubalapp_quest` WRITE;
/*!40000 ALTER TABLE `qubalapp_quest` DISABLE KEYS */;
INSERT INTO `qubalapp_quest` (`id`, `name`, `description`) VALUES (1,'fdfs','fafda'),(2,'t5t5','t5t');
/*!40000 ALTER TABLE `qubalapp_quest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_quest_has_challenges`
--

LOCK TABLES `qubalapp_quest_has_challenges` WRITE;
/*!40000 ALTER TABLE `qubalapp_quest_has_challenges` DISABLE KEYS */;
INSERT INTO `qubalapp_quest_has_challenges` (`id`, `quest_id`, `challenge_id`) VALUES (1,1,1),(2,2,1);
/*!40000 ALTER TABLE `qubalapp_quest_has_challenges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_quest_has_documents`
--

LOCK TABLES `qubalapp_quest_has_documents` WRITE;
/*!40000 ALTER TABLE `qubalapp_quest_has_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_quest_has_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_quest_has_rewards`
--

LOCK TABLES `qubalapp_quest_has_rewards` WRITE;
/*!40000 ALTER TABLE `qubalapp_quest_has_rewards` DISABLE KEYS */;
INSERT INTO `qubalapp_quest_has_rewards` (`id`, `quest_id`, `reward_id`) VALUES (1,1,1),(2,2,1);
/*!40000 ALTER TABLE `qubalapp_quest_has_rewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_reward`
--

LOCK TABLES `qubalapp_reward` WRITE;
/*!40000 ALTER TABLE `qubalapp_reward` DISABLE KEYS */;
INSERT INTO `qubalapp_reward` (`id`, `name`, `xp`) VALUES (1,'fasfasf',23);
/*!40000 ALTER TABLE `qubalapp_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_reward_has_achievement`
--

LOCK TABLES `qubalapp_reward_has_achievement` WRITE;
/*!40000 ALTER TABLE `qubalapp_reward_has_achievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_reward_has_achievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_reward_has_edu_skill_points`
--

LOCK TABLES `qubalapp_reward_has_edu_skill_points` WRITE;
/*!40000 ALTER TABLE `qubalapp_reward_has_edu_skill_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_reward_has_edu_skill_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_reward_has_powers_points`
--

LOCK TABLES `qubalapp_reward_has_powers_points` WRITE;
/*!40000 ALTER TABLE `qubalapp_reward_has_powers_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_reward_has_powers_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_rules_edu_skills_per_course`
--

LOCK TABLES `qubalapp_rules_edu_skills_per_course` WRITE;
/*!40000 ALTER TABLE `qubalapp_rules_edu_skills_per_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_rules_edu_skills_per_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_rules_xp_per_level`
--

LOCK TABLES `qubalapp_rules_xp_per_level` WRITE;
/*!40000 ALTER TABLE `qubalapp_rules_xp_per_level` DISABLE KEYS */;
INSERT INTO `qubalapp_rules_xp_per_level` (`id`, `level`, `xp`) VALUES (1,1,50),(2,2,100),(3,3,175),(4,4,300),(5,5,500),(6,6,750),(7,7,1100),(8,8,1350),(9,9,1500),(10,10,1700);
/*!40000 ALTER TABLE `qubalapp_rules_xp_per_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_student`
--

LOCK TABLES `qubalapp_student` WRITE;
/*!40000 ALTER TABLE `qubalapp_student` DISABLE KEYS */;
INSERT INTO `qubalapp_student` (`person_ptr_id`) VALUES (1),(2),(3),(5),(6),(9),(10),(11),(12),(13),(14);
/*!40000 ALTER TABLE `qubalapp_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_student_challenged_completed`
--

LOCK TABLES `qubalapp_student_challenged_completed` WRITE;
/*!40000 ALTER TABLE `qubalapp_student_challenged_completed` DISABLE KEYS */;
INSERT INTO `qubalapp_student_challenged_completed` (`id`, `student_id`, `challenge_id`) VALUES (3,3,1),(2,6,1);
/*!40000 ALTER TABLE `qubalapp_student_challenged_completed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_student_courses_completed`
--

LOCK TABLES `qubalapp_student_courses_completed` WRITE;
/*!40000 ALTER TABLE `qubalapp_student_courses_completed` DISABLE KEYS */;
INSERT INTO `qubalapp_student_courses_completed` (`id`, `student_id`, `course_id`) VALUES (14,2,1),(15,3,2),(9,5,3),(6,6,1),(7,6,3),(8,6,4),(19,10,2),(20,10,3),(13,13,5),(16,14,3);
/*!40000 ALTER TABLE `qubalapp_student_courses_completed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_student_is_enrolled_in_courses`
--

LOCK TABLES `qubalapp_student_is_enrolled_in_courses` WRITE;
/*!40000 ALTER TABLE `qubalapp_student_is_enrolled_in_courses` DISABLE KEYS */;
INSERT INTO `qubalapp_student_is_enrolled_in_courses` (`id`, `student_id`, `course_id`) VALUES (38,1,2),(39,1,4),(32,2,1),(33,2,2),(34,2,3),(35,2,4),(36,3,1),(37,3,2),(18,5,1),(19,5,2),(17,6,2),(15,9,3),(16,9,4),(30,13,4),(31,13,5);
/*!40000 ALTER TABLE `qubalapp_student_is_enrolled_in_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_student_is_team_member_of`
--

LOCK TABLES `qubalapp_student_is_team_member_of` WRITE;
/*!40000 ALTER TABLE `qubalapp_student_is_team_member_of` DISABLE KEYS */;
INSERT INTO `qubalapp_student_is_team_member_of` (`id`, `student_id`, `team_id`) VALUES (38,1,1),(39,1,2),(34,2,1),(35,2,2),(36,2,3),(37,3,1),(16,5,2),(14,6,1),(15,6,3),(13,9,3),(45,10,1),(46,10,2),(47,10,3),(48,10,4),(20,11,1),(31,13,2),(32,13,3),(33,13,4),(40,14,1);
/*!40000 ALTER TABLE `qubalapp_student_is_team_member_of` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_student_quests_completed`
--

LOCK TABLES `qubalapp_student_quests_completed` WRITE;
/*!40000 ALTER TABLE `qubalapp_student_quests_completed` DISABLE KEYS */;
INSERT INTO `qubalapp_student_quests_completed` (`id`, `student_id`, `quest_id`) VALUES (3,3,1),(2,6,2);
/*!40000 ALTER TABLE `qubalapp_student_quests_completed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_student_tasks_completed`
--

LOCK TABLES `qubalapp_student_tasks_completed` WRITE;
/*!40000 ALTER TABLE `qubalapp_student_tasks_completed` DISABLE KEYS */;
INSERT INTO `qubalapp_student_tasks_completed` (`id`, `student_id`, `task_id`) VALUES (3,3,1),(2,6,1);
/*!40000 ALTER TABLE `qubalapp_student_tasks_completed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_task`
--

LOCK TABLES `qubalapp_task` WRITE;
/*!40000 ALTER TABLE `qubalapp_task` DISABLE KEYS */;
INSERT INTO `qubalapp_task` (`id`, `name`, `description`) VALUES (1,'fsafsafs','fsafasfsa');
/*!40000 ALTER TABLE `qubalapp_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_task_has_documents`
--

LOCK TABLES `qubalapp_task_has_documents` WRITE;
/*!40000 ALTER TABLE `qubalapp_task_has_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_task_has_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_task_has_rewards`
--

LOCK TABLES `qubalapp_task_has_rewards` WRITE;
/*!40000 ALTER TABLE `qubalapp_task_has_rewards` DISABLE KEYS */;
INSERT INTO `qubalapp_task_has_rewards` (`id`, `task_id`, `reward_id`) VALUES (1,1,1);
/*!40000 ALTER TABLE `qubalapp_task_has_rewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_teacher`
--

LOCK TABLES `qubalapp_teacher` WRITE;
/*!40000 ALTER TABLE `qubalapp_teacher` DISABLE KEYS */;
INSERT INTO `qubalapp_teacher` (`person_ptr_id`, `background_cv`) VALUES (4,'effeef');
/*!40000 ALTER TABLE `qubalapp_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_teacher_is_tutor_of_teams`
--

LOCK TABLES `qubalapp_teacher_is_tutor_of_teams` WRITE;
/*!40000 ALTER TABLE `qubalapp_teacher_is_tutor_of_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_teacher_is_tutor_of_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_teacher_teach_in_courses`
--

LOCK TABLES `qubalapp_teacher_teach_in_courses` WRITE;
/*!40000 ALTER TABLE `qubalapp_teacher_teach_in_courses` DISABLE KEYS */;
INSERT INTO `qubalapp_teacher_teach_in_courses` (`id`, `teacher_id`, `course_id`) VALUES (4,4,1),(5,4,2),(6,4,3);
/*!40000 ALTER TABLE `qubalapp_teacher_teach_in_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_team`
--

LOCK TABLES `qubalapp_team` WRITE;
/*!40000 ALTER TABLE `qubalapp_team` DISABLE KEYS */;
INSERT INTO `qubalapp_team` (`id`, `name`, `is_in_course_id`, `description`, `image`, `captain_id`) VALUES (1,'The A Team',3,'In 1972 four of the best soldiers ','images/teams/the_a-team_logo_2777.gif',1),(2,'Cartoonists',1,'WE love cartoons!','images/teams/images.jpg',2),(3,'Test this!',4,'Prepare to report, log, regress, type, get angry, expect no mercy!','',1),(4,'grgrgr',3,'grgrgr','',11);
/*!40000 ALTER TABLE `qubalapp_team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_team_has_students`
--

LOCK TABLES `qubalapp_team_has_students` WRITE;
/*!40000 ALTER TABLE `qubalapp_team_has_students` DISABLE KEYS */;
INSERT INTO `qubalapp_team_has_students` (`id`, `team_id`, `student_id`) VALUES (15,1,1),(16,1,2),(14,2,2),(4,3,1),(5,3,2),(6,3,3),(9,4,6),(7,4,9),(8,4,10);
/*!40000 ALTER TABLE `qubalapp_team_has_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_team_has_teachers`
--

LOCK TABLES `qubalapp_team_has_teachers` WRITE;
/*!40000 ALTER TABLE `qubalapp_team_has_teachers` DISABLE KEYS */;
INSERT INTO `qubalapp_team_has_teachers` (`id`, `team_id`, `teacher_id`) VALUES (8,1,4),(7,2,4),(3,3,4),(4,4,4);
/*!40000 ALTER TABLE `qubalapp_team_has_teachers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-13  5:22:38
