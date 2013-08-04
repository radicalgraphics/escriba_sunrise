CREATE DATABASE  IF NOT EXISTS `qubaldb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `qubaldb`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: qubaldb
-- ------------------------------------------------------
-- Server version	5.5.29

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
-- Dumping data for table `qubalapp_rules_edu_skills_per_course`
--

LOCK TABLES `qubalapp_rules_edu_skills_per_course` WRITE;
/*!40000 ALTER TABLE `qubalapp_rules_edu_skills_per_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_rules_edu_skills_per_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_person_has_nicknames`
--

LOCK TABLES `qubalapp_person_has_nicknames` WRITE;
/*!40000 ALTER TABLE `qubalapp_person_has_nicknames` DISABLE KEYS */;
INSERT INTO `qubalapp_person_has_nicknames` (`id`, `person_id`, `nickname_id`) VALUES (12,3,2),(18,4,1),(17,5,1),(16,6,1),(14,9,1),(15,9,2);
/*!40000 ALTER TABLE `qubalapp_person_has_nicknames` ENABLE KEYS */;
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
-- Dumping data for table `qubalapp_student`
--

LOCK TABLES `qubalapp_student` WRITE;
/*!40000 ALTER TABLE `qubalapp_student` DISABLE KEYS */;
INSERT INTO `qubalapp_student` (`person_ptr_id`) VALUES (1),(2),(3),(5),(6),(9),(10),(11),(12),(13);
/*!40000 ALTER TABLE `qubalapp_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_courses_completed_by_student`
--

LOCK TABLES `qubalapp_courses_completed_by_student` WRITE;
/*!40000 ALTER TABLE `qubalapp_courses_completed_by_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_courses_completed_by_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_reward_has_edu_skill_points`
--

LOCK TABLES `qubalapp_reward_has_edu_skill_points` WRITE;
/*!40000 ALTER TABLE `qubalapp_reward_has_edu_skill_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_reward_has_edu_skill_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_person`
--

LOCK TABLES `qubalapp_person` WRITE;
/*!40000 ALTER TABLE `qubalapp_person` DISABLE KEYS */;
INSERT INTO `qubalapp_person` (`user_id`, `name`, `lastname`, `birth`, `email`, `image`, `xp`, `twitter`, `facebook`, `dropbox`, `has_address_id`, `has_powers_id`) VALUES (1,'Boche','Lordus','1977-11-05 23:27:53','bochelord@gmail.com','images/persons/3099_87029885861_618030861_2924074_1823527_n.jpg',1994,'','','',NULL,1),(2,'Manuel','Gonzalez Garcia','1976-07-23 03:45:00','leunam.san@gmail.com','images/persons/Mass-effect-avatar---The-illusive-man.jpg',55,'','','',4,2),(3,'Sander','Boelsma','2013-07-29 13:29:31','sander@studiesoft.com','images/persons/Sanders-Color-300_8.png',152,'','','',5,3),(4,'test','test','2013-07-29 03:41:26','tete@tetet.com','',42,'','','',NULL,4),(5,'Jan','Van der Vaart','1988-07-29 16:32:25','jan@vandervaart.com','images/persons/jan_avatar.jpg',754,'','','',5,5),(6,'Maria Antonia','Fernandez','1983-07-29 16:34:43','maria.antonia@fernandez.com','images/persons/fresca01.jpg',345,'','','',NULL,6),(9,'Darth','Vader','2013-07-29 16:33:48','darth@deathstar.com','images/persons/images.jpg',2024,'','','',NULL,7),(10,'Caroline','Van houten','2013-07-31 17:05:22','rere@34343.com','images/persons/images_1.jpg',48,'','','',NULL,8),(11,'Fresca','Buenorra','2013-07-31 17:16:11','fresquisima@pibon.com','images/persons/30xeiav.jpg',34,'','','',NULL,9),(12,'cateto','sinimagen','2013-07-31 19:08:56','pklpkpkp@reere.com','',42,'','','',NULL,11),(13,'perro','peerraaa','2013-08-06 21:54:00','fdwwfw@erwew.com','default_images/default_avatar_grey_50.jpg',0,'','','',NULL,13);
/*!40000 ALTER TABLE `qubalapp_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_person_has_achievements`
--

LOCK TABLES `qubalapp_person_has_achievements` WRITE;
/*!40000 ALTER TABLE `qubalapp_person_has_achievements` DISABLE KEYS */;
INSERT INTO `qubalapp_person_has_achievements` (`id`, `person_id`, `achievement_id`) VALUES (129,1,1),(130,1,2),(131,1,3),(122,2,1),(123,2,2),(124,2,4),(125,2,5),(112,3,2),(127,4,1),(128,4,2),(121,5,2),(120,6,4),(118,9,1),(119,9,4),(126,11,2),(147,13,1),(148,13,2),(149,13,3),(150,13,4),(151,13,5),(152,13,8),(153,13,9);
/*!40000 ALTER TABLE `qubalapp_person_has_achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_student_is_enrolled_in_courses`
--

LOCK TABLES `qubalapp_student_is_enrolled_in_courses` WRITE;
/*!40000 ALTER TABLE `qubalapp_student_is_enrolled_in_courses` DISABLE KEYS */;
INSERT INTO `qubalapp_student_is_enrolled_in_courses` (`id`, `student_id`, `course_id`) VALUES (24,1,2),(25,1,4),(20,2,1),(21,2,2),(22,2,3),(23,2,4),(7,3,1),(8,3,2),(18,5,1),(19,5,2),(17,6,2),(15,9,3),(16,9,4),(30,13,4),(31,13,5);
/*!40000 ALTER TABLE `qubalapp_student_is_enrolled_in_courses` ENABLE KEYS */;
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
-- Dumping data for table `qubalapp_rules_xp_per_level`
--

LOCK TABLES `qubalapp_rules_xp_per_level` WRITE;
/*!40000 ALTER TABLE `qubalapp_rules_xp_per_level` DISABLE KEYS */;
INSERT INTO `qubalapp_rules_xp_per_level` (`id`, `level`, `xp`) VALUES (1,1,50),(2,2,100),(3,3,175),(4,4,300),(5,5,500),(6,6,750),(7,7,1100),(8,8,1350),(9,9,1500),(10,10,1700);
/*!40000 ALTER TABLE `qubalapp_rules_xp_per_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_achievement`
--

LOCK TABLES `qubalapp_achievement` WRITE;
/*!40000 ALTER TABLE `qubalapp_achievement` DISABLE KEYS */;
INSERT INTO `qubalapp_achievement` (`id`, `name`, `description`, `image`, `unlock_nickname_id`, `unlocked_date`) VALUES (1,'Big Wooden Head','You are the one and biggest , Big WoodenHead','images/achievements/Yummy_Potato_by_TattooAddict_2.png',NULL,NULL),(2,'Great Balls of OpenSource','Set up a server based on open source software','images/achievements/Sky_Lantern.jpg',NULL,NULL),(3,'Too much','You have spent more than 3 hours in front of the screen','images/achievements/Cov.jpg',NULL,NULL),(4,'IronHeart','Your teammates never walk alone : You helped a teammate to finish a quest in time','images/achievements/cover.jpg',NULL,NULL),(5,'Penguin xtrmntr','Defeat the evil ubuntu penguin master and bring him to his knees making a proper server run showing good manners','images/achievements/kill-bill.jpg',1,NULL),(8,'Jarf','Jarf','',NULL,NULL),(9,'cabessaaa','efefe','',NULL,NULL);
/*!40000 ALTER TABLE `qubalapp_achievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_course_has_students`
--

LOCK TABLES `qubalapp_course_has_students` WRITE;
/*!40000 ALTER TABLE `qubalapp_course_has_students` DISABLE KEYS */;
INSERT INTO `qubalapp_course_has_students` (`id`, `course_id`, `student_id`) VALUES (1,1,1),(2,1,2),(3,2,1),(4,2,2),(8,4,1),(9,4,2),(10,4,3);
/*!40000 ALTER TABLE `qubalapp_course_has_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_reward_has_powers_points`
--

LOCK TABLES `qubalapp_reward_has_powers_points` WRITE;
/*!40000 ALTER TABLE `qubalapp_reward_has_powers_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_reward_has_powers_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_reward_has_achievement`
--

LOCK TABLES `qubalapp_reward_has_achievement` WRITE;
/*!40000 ALTER TABLE `qubalapp_reward_has_achievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_reward_has_achievement` ENABLE KEYS */;
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
-- Dumping data for table `qubalapp_teacher_teach_in_courses`
--

LOCK TABLES `qubalapp_teacher_teach_in_courses` WRITE;
/*!40000 ALTER TABLE `qubalapp_teacher_teach_in_courses` DISABLE KEYS */;
INSERT INTO `qubalapp_teacher_teach_in_courses` (`id`, `teacher_id`, `course_id`) VALUES (4,4,1),(5,4,2),(6,4,3);
/*!40000 ALTER TABLE `qubalapp_teacher_teach_in_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_challenge_has_documents`
--

LOCK TABLES `qubalapp_challenge_has_documents` WRITE;
/*!40000 ALTER TABLE `qubalapp_challenge_has_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_challenge_has_documents` ENABLE KEYS */;
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
-- Dumping data for table `qubalapp_reward`
--

LOCK TABLES `qubalapp_reward` WRITE;
/*!40000 ALTER TABLE `qubalapp_reward` DISABLE KEYS */;
INSERT INTO `qubalapp_reward` (`id`, `name`, `xp`) VALUES (1,'fasfasf',23);
/*!40000 ALTER TABLE `qubalapp_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_course_has_documents`
--

LOCK TABLES `qubalapp_course_has_documents` WRITE;
/*!40000 ALTER TABLE `qubalapp_course_has_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_course_has_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_power`
--

LOCK TABLES `qubalapp_power` WRITE;
/*!40000 ALTER TABLE `qubalapp_power` DISABLE KEYS */;
INSERT INTO `qubalapp_power` (`id`, `teamwork`, `communication`, `responsability`, `perseverance`, `mastery`, `focus`) VALUES (1,1,1,1,1,1,1),(2,1,1,1,1,1,1),(4,1,1,1,1,1,1),(5,1,1,1,1,1,1),(6,1,1,1,1,1,1),(7,1,1,1,1,85,1),(8,1,1,1,1,1,1),(9,1,1,1,1,1,1),(10,1,1,1,1,1,1),(11,1,1,1,1,1,1),(12,1,1,1,1,1,1),(13,1,1,1,1,1,1);
/*!40000 ALTER TABLE `qubalapp_power` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_edu_skill`
--

LOCK TABLES `qubalapp_edu_skill` WRITE;
/*!40000 ALTER TABLE `qubalapp_edu_skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_edu_skill` ENABLE KEYS */;
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
-- Dumping data for table `qubalapp_nickname`
--

LOCK TABLES `qubalapp_nickname` WRITE;
/*!40000 ALTER TABLE `qubalapp_nickname` DISABLE KEYS */;
INSERT INTO `qubalapp_nickname` (`id`, `title`, `description`) VALUES (1,'Katana Henzo','master of the sword!'),(2,'Bisshop','Holy sh*t this guy is GoOD');
/*!40000 ALTER TABLE `qubalapp_nickname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_team_has_teachers`
--

LOCK TABLES `qubalapp_team_has_teachers` WRITE;
/*!40000 ALTER TABLE `qubalapp_team_has_teachers` DISABLE KEYS */;
INSERT INTO `qubalapp_team_has_teachers` (`id`, `team_id`, `teacher_id`) VALUES (1,1,4),(2,2,4),(3,3,4),(4,4,4);
/*!40000 ALTER TABLE `qubalapp_team_has_teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_quest_has_documents`
--

LOCK TABLES `qubalapp_quest_has_documents` WRITE;
/*!40000 ALTER TABLE `qubalapp_quest_has_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_quest_has_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_student_challenged_completed`
--

LOCK TABLES `qubalapp_student_challenged_completed` WRITE;
/*!40000 ALTER TABLE `qubalapp_student_challenged_completed` DISABLE KEYS */;
INSERT INTO `qubalapp_student_challenged_completed` (`id`, `student_id`, `challenge_id`) VALUES (1,3,1),(2,6,1);
/*!40000 ALTER TABLE `qubalapp_student_challenged_completed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_team`
--

LOCK TABLES `qubalapp_team` WRITE;
/*!40000 ALTER TABLE `qubalapp_team` DISABLE KEYS */;
INSERT INTO `qubalapp_team` (`id`, `name`, `is_in_course_id`, `description`, `image`, `captain_id`) VALUES (1,'The A Team',3,'In 1972 four of the best soldiers ','',1),(2,'Cartoonists',1,'WE love cartoons!','images/teams/a8cff54da1e7f749.jpg',2),(3,'Test this!',4,'Prepare to report, log, regress, type, get angry, expect no mercy!','images/teams/testing-with-rspec.png',1),(4,'grgrgr',3,'grgrgr','default_images/default_team_avatar.jpg',11);
/*!40000 ALTER TABLE `qubalapp_team` ENABLE KEYS */;
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
-- Dumping data for table `qubalapp_quest_has_rewards`
--

LOCK TABLES `qubalapp_quest_has_rewards` WRITE;
/*!40000 ALTER TABLE `qubalapp_quest_has_rewards` DISABLE KEYS */;
INSERT INTO `qubalapp_quest_has_rewards` (`id`, `quest_id`, `reward_id`) VALUES (1,1,1),(2,2,1);
/*!40000 ALTER TABLE `qubalapp_quest_has_rewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_course`
--

LOCK TABLES `qubalapp_course` WRITE;
/*!40000 ALTER TABLE `qubalapp_course` DISABLE KEYS */;
INSERT INTO `qubalapp_course` (`id`, `image`, `name`, `description`, `starting_date`, `ending_date`, `has_quests_id`, `has_achievements_id`) VALUES (1,'','Stop motion animation','Learn how to make real cartoon animations with the stop motion technique used by the hollywood studios','2013-07-29 02:56:53','2013-07-31 02:56:55',1,1),(2,'images/courses/CIMG7791.JPG','Rooftop Bike fixing','Ever tried to fix a bike on a rooftop? Now you can do it safely with this course !!!','2013-07-29 03:34:28','2013-07-29 03:34:30',1,4),(3,'images/courses/Eurocopa2008_002.jpg','Spanjarden tekniek','Learn how to support the World Champion team in the next endeavor in the Brazil 2014!','2013-07-29 03:37:27','2013-07-29 03:37:28',2,4),(4,'','Test Qubal','This Course is all about Qubal, test every single part, create, delete, change, just click wherever','2013-07-29 16:07:05','2023-07-29 16:08:26',1,3),(5,'','frfggr','grgrgr','2013-08-07 02:00:00','2013-08-30 06:00:00',2,1);
/*!40000 ALTER TABLE `qubalapp_course` ENABLE KEYS */;
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
-- Dumping data for table `qubalapp_challenge_has_rewards`
--

LOCK TABLES `qubalapp_challenge_has_rewards` WRITE;
/*!40000 ALTER TABLE `qubalapp_challenge_has_rewards` DISABLE KEYS */;
INSERT INTO `qubalapp_challenge_has_rewards` (`id`, `challenge_id`, `reward_id`) VALUES (1,1,1);
/*!40000 ALTER TABLE `qubalapp_challenge_has_rewards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_educational_document`
--

LOCK TABLES `qubalapp_educational_document` WRITE;
/*!40000 ALTER TABLE `qubalapp_educational_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_educational_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_student_tasks_completed`
--

LOCK TABLES `qubalapp_student_tasks_completed` WRITE;
/*!40000 ALTER TABLE `qubalapp_student_tasks_completed` DISABLE KEYS */;
INSERT INTO `qubalapp_student_tasks_completed` (`id`, `student_id`, `task_id`) VALUES (1,3,1),(2,6,1);
/*!40000 ALTER TABLE `qubalapp_student_tasks_completed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_student_is_team_member_of`
--

LOCK TABLES `qubalapp_student_is_team_member_of` WRITE;
/*!40000 ALTER TABLE `qubalapp_student_is_team_member_of` DISABLE KEYS */;
INSERT INTO `qubalapp_student_is_team_member_of` (`id`, `student_id`, `team_id`) VALUES (21,1,1),(22,1,2),(17,2,1),(18,2,2),(19,2,3),(8,3,1),(16,5,2),(14,6,1),(15,6,3),(13,9,3),(20,11,1),(31,13,2),(32,13,3),(33,13,4);
/*!40000 ALTER TABLE `qubalapp_student_is_team_member_of` ENABLE KEYS */;
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
-- Dumping data for table `qubalapp_task_has_documents`
--

LOCK TABLES `qubalapp_task_has_documents` WRITE;
/*!40000 ALTER TABLE `qubalapp_task_has_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_task_has_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `username`, `first_name`, `last_name`, `email`, `password`, `is_staff`, `is_active`, `is_superuser`, `last_login`, `date_joined`) VALUES (1,'bochelord','','','bochelord@gmail.com','pbkdf2_sha256$10000$CiPE8Nuu89Fl$tXXml+J/etZOzdCXmGJw1SKZvE+TcUAXr5uoUMRmoS0=',1,1,1,'2013-08-04 14:53:35','2013-07-28 17:59:20'),(2,'leunam','Manuel','Gonzalez Garcia','leunam.san@gmail.com','pbkdf2_sha256$10000$lBx1TnphOSQP$CmeqRcwgcOvWcR9o64qntSLTXwt6N2DlcjhNj6cHbkE=',1,1,1,'2013-08-04 04:01:28','2013-07-28 22:43:23'),(3,'sander','Sander','Boelsma','sander@studiesoft.com','pbkdf2_sha256$10000$8iIbPKv6Dcal$cU8yKiexd/hrc11ub36B2X2CtMTxddGemNUC2ZSgqzQ=',1,1,1,'2013-07-29 16:15:03','2013-07-29 00:08:38'),(4,'test','','','','pbkdf2_sha256$10000$sbXgC1X2jzw2$8X7ng9cW46Yj4gyv172MZsH/ZNsb+C+/ki+eNHaLYlk=',0,1,0,'2013-08-04 14:34:18','2013-07-29 03:41:18'),(5,'jan','Jan','van der Vaart','jan@vandervaart.com','pbkdf2_sha256$10000$ckCcDoIW43oa$TL3zUMJikYu0ajtFEkUQL/xiFRFPT+M88PbwrXEPuX4=',0,1,0,'2013-08-04 03:40:29','2013-07-29 15:33:46'),(6,'maria','Maria Antonia','Fernandez','maria.antonia@fernandez.com','pbkdf2_sha256$10000$OXPMaKx0j9EW$F91fRqzdFfgqg3ZvYQI0VX7hHsbSdneHD9BqhL5hr/g=',0,1,0,'2013-07-29 16:38:30','2013-07-29 15:33:56'),(7,'juan','Juan','Jimenez','juan@jimenez.com','pbkdf2_sha256$10000$Wdv5dng3ZfVv$UXxgvAuwYpOvT382/RMMs6b6cYbkWoNXqUOxUo3n75E=',0,1,0,'2013-07-29 15:34:17','2013-07-29 15:34:17'),(8,'paco','Francisco Jose','Gutierrez','paco@paco.com','pbkdf2_sha256$10000$rrpROstcQe7Z$bkeuWMiaRHCwJdEmvhDkiZyCDBErgQz6cD8Zo9L6yBg=',0,1,0,'2013-07-29 15:34:32','2013-07-29 15:34:32'),(9,'darthvader','','','','pbkdf2_sha256$10000$sEpshtcZXJXm$YdbPMBJv4RNojzMwSzIHt4Q8A8vyU3CRtpHW9bOGOJs=',0,1,0,'2013-08-04 04:04:19','2013-07-29 16:33:08'),(10,'caroline','','','','pbkdf2_sha256$10000$s49L1cKorvdW$alNMTS+y8KR58WyxbA7HGxbOED/7ax0OOtenSlO1ZT8=',0,1,0,'2013-08-04 14:53:58','2013-07-30 18:06:56'),(11,'fresca','','','','pbkdf2_sha256$10000$DVaAI51tDiWc$2zc3TfbAGh3XelMZjnub93qH273f9qnDnMmeP0+TUPU=',0,1,0,'2013-08-04 04:01:54','2013-07-31 17:15:52'),(12,'noimagen','','','','pbkdf2_sha256$10000$ulAOoTw246A4$fGdtOWagAMAwMqN4RXU7WLbmfnl5/+MXAs0r6F5doR0=',0,1,0,'2013-08-04 04:02:08','2013-07-31 19:08:29'),(13,'perro','','','','pbkdf2_sha256$10000$usXjJr3mcFEV$xuZD9L5i3AGq1B0J5O6ssJRbpcXhR+/Vk7eJNqGUs7g=',0,1,0,'2013-08-03 23:38:12','2013-08-03 21:34:14');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_student_courses_completed`
--

LOCK TABLES `qubalapp_student_courses_completed` WRITE;
/*!40000 ALTER TABLE `qubalapp_student_courses_completed` DISABLE KEYS */;
INSERT INTO `qubalapp_student_courses_completed` (`id`, `student_id`, `course_id`) VALUES (10,2,1),(3,3,2),(9,5,3),(6,6,1),(7,6,3),(8,6,4),(13,13,5);
/*!40000 ALTER TABLE `qubalapp_student_courses_completed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_teacher_is_tutor_of_teams`
--

LOCK TABLES `qubalapp_teacher_is_tutor_of_teams` WRITE;
/*!40000 ALTER TABLE `qubalapp_teacher_is_tutor_of_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `qubalapp_teacher_is_tutor_of_teams` ENABLE KEYS */;
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
-- Dumping data for table `qubalapp_team_has_students`
--

LOCK TABLES `qubalapp_team_has_students` WRITE;
/*!40000 ALTER TABLE `qubalapp_team_has_students` DISABLE KEYS */;
INSERT INTO `qubalapp_team_has_students` (`id`, `team_id`, `student_id`) VALUES (1,1,1),(2,1,2),(3,2,2),(4,3,1),(5,3,2),(6,3,3),(9,4,6),(7,4,9),(8,4,10);
/*!40000 ALTER TABLE `qubalapp_team_has_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `qubalapp_student_quests_completed`
--

LOCK TABLES `qubalapp_student_quests_completed` WRITE;
/*!40000 ALTER TABLE `qubalapp_student_quests_completed` DISABLE KEYS */;
INSERT INTO `qubalapp_student_quests_completed` (`id`, `student_id`, `quest_id`) VALUES (1,3,1),(2,6,2);
/*!40000 ALTER TABLE `qubalapp_student_quests_completed` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-04 17:52:06
