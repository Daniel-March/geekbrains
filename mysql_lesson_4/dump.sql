-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: vk
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `community`
--

DROP TABLE IF EXISTS `community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_community_user1_idx` (`admin_id`),
  CONSTRAINT `fk_community_user1` FOREIGN KEY (`admin_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community`
--

LOCK TABLES `community` WRITE;
/*!40000 ALTER TABLE `community` DISABLE KEYS */;
INSERT INTO `community` VALUES (1,'quos','Sed molestias sit omnis.',80),(2,'dolor','Sed et sequi et dolor doloremque.',93),(3,'eum','Incidunt odio dolorem neque.',75),(4,'sdam','Nihil quis ad occaecati non non quia provident.',44),(5,'laudantium','Quis earum non illum deserunt esse recusandae distinctio.',14),(6,'placeat','Quam ut possimus deleniti at laborum et.',79),(7,'est','Eius eius veniam ducimus quisquam in aut ad.',19),(8,'et','Minima architecto et quibusdam dolor accusantium repellat quia.',21),(9,'officia','Ea accusamus laudantium expedita ad neque enim atque delectus.',35),(10,'veniam','Voluptatum eos rerum itaque eos rerum rerum aut rerum.',1);
/*!40000 ALTER TABLE `community` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend_request`
--

DROP TABLE IF EXISTS `friend_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friend_request` (
  `from_user_id` int unsigned NOT NULL,
  `to_user_id` int unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`from_user_id`,`to_user_id`),
  KEY `fk_friend_request_user1_idx` (`from_user_id`),
  KEY `fk_friend_request_user2_idx` (`to_user_id`),
  CONSTRAINT `fk_friend_request_user1` FOREIGN KEY (`from_user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_friend_request_user2` FOREIGN KEY (`to_user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_request`
--

LOCK TABLES `friend_request` WRITE;
/*!40000 ALTER TABLE `friend_request` DISABLE KEYS */;
INSERT INTO `friend_request` VALUES (1,65,1,'1985-08-11 03:33:18','1979-03-23 11:04:04'),(3,98,-1,'2015-01-08 09:05:32','2016-01-20 06:09:36'),(7,41,1,'1980-06-06 07:48:51',NULL),(7,44,0,'2012-02-04 09:18:14',NULL),(9,26,0,'1982-11-28 09:57:23',NULL),(10,53,1,'1995-04-26 16:39:30','2000-08-23 17:57:23'),(11,28,-1,'1989-02-20 19:20:02','1971-07-16 15:42:11'),(11,69,1,'1999-05-16 19:55:05','1997-07-25 00:04:07'),(12,31,1,'1977-04-02 07:44:52',NULL),(13,96,-1,'1975-05-22 06:36:23','1984-03-17 23:59:40'),(14,32,0,'1994-08-02 04:56:48','1972-01-09 09:18:48'),(14,54,1,'1984-01-10 19:00:56','1983-08-30 07:53:36'),(15,77,0,'2014-05-23 11:03:49','1990-12-07 19:22:48'),(17,35,0,'2008-06-15 15:43:12',NULL),(18,53,-1,'2004-06-23 17:38:05','2013-10-10 10:43:33'),(20,77,0,'1997-07-22 02:44:05',NULL),(20,97,0,'1970-06-24 17:48:02','2003-09-26 02:46:05'),(21,11,1,'1998-07-27 10:41:04','1974-12-22 03:44:41'),(22,37,-1,'1994-12-02 05:23:49','1992-01-05 08:03:08'),(22,67,-1,'2017-01-07 04:04:41','1980-01-25 20:05:19'),(22,82,0,'1987-09-01 04:23:20','1974-03-08 17:25:07'),(23,77,-1,'2003-12-06 14:56:18','2011-03-26 04:48:24'),(24,94,-1,'1972-11-29 09:06:18',NULL),(26,52,1,'1989-06-26 15:47:37',NULL),(26,70,1,'1990-03-20 18:33:42',NULL),(27,89,0,'1986-03-10 14:21:03','1993-12-24 06:29:28'),(28,26,0,'2004-03-16 04:03:51','1984-10-07 13:39:04'),(28,92,0,'1985-12-26 08:36:16',NULL),(30,35,0,'1976-12-30 03:25:08',NULL),(30,37,-1,'1989-08-06 08:33:17',NULL),(30,47,0,'1999-07-18 00:08:59','2000-11-18 13:33:21'),(30,84,1,'1991-11-27 16:45:12','1995-02-14 20:28:35'),(31,4,-1,'1983-09-02 01:34:45',NULL),(31,88,0,'1989-04-06 18:23:42','1982-11-27 13:01:04'),(33,88,0,'1997-09-30 18:16:35',NULL),(34,39,0,'2017-11-26 12:51:16','1980-04-03 04:59:12'),(34,96,0,'1978-09-28 02:43:31',NULL),(36,74,0,'1971-06-22 14:49:54',NULL),(37,8,1,'1981-05-09 11:25:16','2011-03-14 08:36:34'),(38,9,0,'2015-11-25 20:02:17',NULL),(38,74,0,'2014-02-27 18:00:11','1994-11-10 13:10:50'),(39,17,-1,'2009-10-28 18:30:53',NULL),(39,75,0,'2006-09-12 06:24:32',NULL),(40,51,-1,'1977-08-02 00:21:17',NULL),(40,63,1,'2000-11-19 15:20:10',NULL),(42,94,0,'1989-01-19 07:07:56','1974-11-07 07:32:00'),(43,33,0,'1981-02-05 06:10:15',NULL),(43,42,1,'2014-01-10 00:48:00',NULL),(43,50,1,'1973-01-11 04:24:39','2020-03-05 19:41:12'),(43,92,-1,'1985-07-05 12:06:25','2020-10-06 07:22:03'),(44,85,0,'1995-12-07 13:14:32',NULL),(48,71,0,'2006-01-22 08:59:18',NULL),(51,79,0,'2004-10-22 15:08:11',NULL),(53,13,1,'1974-01-17 20:13:01','1997-10-07 08:27:27'),(53,65,-1,'1993-10-06 06:21:19','2018-09-25 21:07:51'),(53,100,0,'2020-12-31 20:45:21','1994-07-28 03:30:19'),(54,73,-1,'1989-11-25 16:04:05',NULL),(55,57,-1,'1981-09-09 19:13:01',NULL),(56,5,-1,'1977-05-22 12:48:38',NULL),(56,76,1,'2006-11-26 19:46:26','2001-06-21 17:02:32'),(59,70,1,'1979-09-11 20:14:05',NULL),(60,89,1,'1994-04-04 10:48:58','2004-10-23 17:35:25'),(61,58,1,'2010-05-01 05:15:14',NULL),(61,92,-1,'1997-03-14 14:09:33','1982-08-27 03:50:40'),(63,4,0,'1977-11-17 19:18:22',NULL),(63,78,0,'2012-11-18 18:31:29','2011-01-31 08:26:00'),(66,2,0,'1971-12-04 09:01:00','1971-12-06 11:10:42'),(66,3,0,'2013-08-16 04:50:53',NULL),(66,52,-1,'1990-08-03 23:02:40','2008-04-04 09:57:08'),(67,86,-1,'1975-01-27 04:28:00','1978-04-25 19:24:16'),(68,22,1,'1986-09-23 22:52:10','2016-03-15 17:48:44'),(73,43,0,'2013-12-08 06:36:50','1999-04-22 08:42:06'),(75,23,0,'2013-07-18 20:31:43','2007-03-20 00:55:11'),(76,63,-1,'1997-09-17 10:09:03','2015-09-30 15:49:42'),(76,87,0,'2002-09-05 03:10:15','2021-02-11 10:11:23'),(77,13,-1,'1979-05-28 22:35:23','1977-04-26 10:01:05'),(79,2,-1,'1999-03-22 22:34:12','1979-02-17 18:47:24'),(79,4,1,'2019-03-21 03:16:57','2018-03-15 07:47:53'),(81,9,1,'2008-05-17 22:44:01',NULL),(81,63,0,'1985-10-19 00:18:24',NULL),(81,98,-1,'2000-12-03 01:07:58','1981-08-18 18:22:09'),(82,8,0,'2014-05-06 03:34:43',NULL),(85,35,1,'1997-02-23 11:37:44',NULL),(86,3,-1,'1980-09-25 23:41:39','2014-06-01 20:55:42'),(87,27,0,'1987-09-30 11:50:58',NULL),(88,96,1,'2006-12-20 09:37:27',NULL),(89,18,-1,'1998-08-26 07:09:35',NULL),(91,23,1,'1996-08-22 22:42:33','1997-09-29 11:56:15'),(91,26,0,'1985-04-25 20:09:37',NULL),(91,70,-1,'1973-12-13 02:08:03',NULL),(91,88,1,'1995-07-26 23:01:15','2020-05-10 23:53:29'),(94,42,0,'1999-08-01 12:54:44','2016-12-03 10:05:53'),(94,53,0,'2010-04-27 22:57:52','1985-09-21 02:00:39'),(95,46,0,'2018-02-19 09:14:01','1986-11-16 11:57:28'),(96,86,0,'2002-11-30 13:08:02',NULL),(97,63,0,'1976-09-26 19:54:11','1996-06-06 18:53:16'),(98,34,1,'1983-02-06 16:05:03',NULL),(99,11,1,'2016-02-06 04:19:56',NULL),(99,81,-1,'2003-06-18 01:43:56','2013-02-16 05:04:36');
/*!40000 ALTER TABLE `friend_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like`
--

DROP TABLE IF EXISTS `like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `like` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `post_id` int unsigned DEFAULT NULL,
  `message_id` int unsigned DEFAULT NULL,
  `media_id` int unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_UNIQUE` (`user_id`,`post_id`),
  UNIQUE KEY `message_UNIQUE` (`user_id`,`message_id`),
  UNIQUE KEY `media_UNIQUE` (`user_id`,`media_id`),
  KEY `fk_like_user1_idx` (`user_id`),
  KEY `fk_like_post1_idx` (`post_id`),
  KEY `fk_like_message1_idx` (`message_id`),
  KEY `fk_like_media1_idx` (`media_id`),
  CONSTRAINT `fk_like_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_like_message1` FOREIGN KEY (`message_id`) REFERENCES `message` (`id`),
  CONSTRAINT `fk_like_post1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  CONSTRAINT `fk_like_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like`
--

LOCK TABLES `like` WRITE;
/*!40000 ALTER TABLE `like` DISABLE KEYS */;
INSERT INTO `like` VALUES (1,24,40,NULL,NULL,'2004-11-23 02:43:23'),(2,36,76,NULL,NULL,'1971-11-21 20:38:03'),(3,58,79,NULL,NULL,'1992-07-25 21:25:00'),(4,56,71,NULL,NULL,'1993-02-16 05:40:41'),(5,28,96,NULL,NULL,'1970-06-17 00:22:29'),(6,81,3,NULL,NULL,'1970-06-03 03:19:39'),(7,53,40,NULL,NULL,'2002-05-07 05:21:49'),(8,52,31,NULL,NULL,'2002-05-05 06:54:19'),(9,71,43,NULL,NULL,'1997-06-09 01:17:16'),(10,19,97,NULL,NULL,'2012-12-15 20:30:12'),(11,75,83,NULL,NULL,'2019-10-26 08:22:09'),(12,54,11,NULL,NULL,'2016-06-26 16:53:02'),(13,7,32,NULL,NULL,'1996-06-02 02:50:15'),(14,35,12,NULL,NULL,'1972-08-14 04:41:46'),(15,52,61,NULL,NULL,'1989-01-09 19:55:49'),(16,92,49,NULL,NULL,'1993-08-13 16:46:08'),(17,91,88,NULL,NULL,'2007-09-02 18:24:55'),(18,85,49,NULL,NULL,'1983-12-13 02:47:50'),(19,32,49,NULL,NULL,'2021-03-08 10:26:02'),(20,60,48,NULL,NULL,'1985-05-22 06:57:19'),(21,79,3,NULL,NULL,'2014-06-23 06:59:32'),(22,15,60,NULL,NULL,'1992-02-10 07:31:48'),(23,21,87,NULL,NULL,'2020-07-17 11:08:35'),(24,35,49,NULL,NULL,'2005-07-09 06:11:31'),(25,36,41,NULL,NULL,'2003-11-06 17:15:51'),(26,90,20,NULL,NULL,'2004-08-17 13:25:44'),(27,69,70,NULL,NULL,'1971-10-28 20:54:17'),(28,17,70,NULL,NULL,'1990-10-16 00:52:36'),(29,73,49,NULL,NULL,'2009-07-15 16:48:50'),(30,8,10,NULL,NULL,'2000-11-04 02:14:21'),(31,96,23,NULL,NULL,'1970-12-03 11:54:27'),(32,71,14,NULL,NULL,'2016-10-04 17:15:54'),(33,55,90,NULL,NULL,'1978-03-25 06:59:51'),(34,10,NULL,64,NULL,'2011-01-17 02:15:51'),(35,75,NULL,7,NULL,'1994-10-11 07:21:24'),(36,39,NULL,87,NULL,'2009-05-03 22:45:38'),(37,50,NULL,98,NULL,'2019-11-06 13:50:52'),(38,5,NULL,86,NULL,'2018-05-02 18:14:18'),(39,73,NULL,31,NULL,'1973-06-01 08:54:55'),(40,39,NULL,49,NULL,'1999-11-27 21:08:58'),(41,77,NULL,37,NULL,'1991-10-13 12:11:34'),(42,81,NULL,64,NULL,'2005-03-04 07:27:20'),(43,69,NULL,47,NULL,'1994-01-04 17:31:14'),(44,72,NULL,18,NULL,'1999-08-13 01:11:23'),(45,30,NULL,78,NULL,'2016-01-04 10:42:54'),(46,64,NULL,35,NULL,'1979-05-03 07:18:35'),(47,89,NULL,79,NULL,'2006-08-25 06:23:08'),(48,52,NULL,21,NULL,'2005-07-08 22:44:51'),(49,2,NULL,14,NULL,'1990-03-27 06:13:07'),(50,58,NULL,37,NULL,'2020-03-21 06:09:39'),(51,48,NULL,33,NULL,'1970-03-22 05:15:20'),(52,17,NULL,40,NULL,'2020-03-23 00:39:57'),(53,64,NULL,80,NULL,'1995-10-20 20:36:50'),(55,80,NULL,97,NULL,'1993-07-11 11:24:08'),(56,69,NULL,60,NULL,'1981-10-20 02:55:56'),(57,75,NULL,52,NULL,'1986-06-03 18:44:50'),(58,51,NULL,57,NULL,'2000-07-05 17:26:08'),(59,71,NULL,17,NULL,'1999-03-24 20:25:11'),(60,39,NULL,34,NULL,'2005-10-01 03:16:02'),(61,73,NULL,30,NULL,'2007-07-26 20:23:21'),(62,28,NULL,23,NULL,'1997-09-23 04:40:05'),(63,35,NULL,39,NULL,'2001-04-11 06:33:52'),(64,37,NULL,72,NULL,'1997-07-05 15:50:06'),(65,71,NULL,42,NULL,'1972-09-26 02:32:06'),(66,11,NULL,18,NULL,'1982-04-08 02:56:25'),(67,88,NULL,NULL,27,'1973-07-20 07:46:31'),(68,91,NULL,NULL,64,'1972-04-15 00:22:06'),(69,15,NULL,NULL,43,'2003-06-07 01:49:34'),(70,52,NULL,NULL,86,'2011-09-27 05:00:08'),(71,59,NULL,NULL,95,'1988-11-24 14:02:22'),(72,85,NULL,NULL,55,'2011-03-28 12:11:33'),(73,83,NULL,NULL,94,'1988-03-03 14:35:51'),(74,45,NULL,NULL,33,'2009-11-22 12:10:33'),(75,28,NULL,NULL,18,'1985-11-18 14:20:31'),(76,46,NULL,NULL,61,'2012-06-12 03:57:53'),(77,47,NULL,NULL,99,'2014-08-15 12:54:25'),(78,37,NULL,NULL,96,'1974-03-13 20:12:17'),(79,40,NULL,NULL,25,'1995-07-16 02:41:10'),(80,33,NULL,NULL,16,'1975-01-25 01:52:31'),(81,40,NULL,NULL,84,'1978-08-19 10:43:55'),(83,28,NULL,NULL,73,'2020-10-11 19:48:52'),(84,63,NULL,NULL,10,'1976-08-04 13:31:03'),(85,72,NULL,NULL,8,'1983-10-15 06:30:57'),(87,66,NULL,NULL,98,'1989-03-12 17:07:29'),(88,87,NULL,NULL,27,'2011-08-26 04:22:16'),(89,86,NULL,NULL,33,'1983-03-06 23:49:25'),(90,6,NULL,NULL,33,'2014-03-25 04:25:15'),(91,1,NULL,NULL,64,'1973-10-06 00:04:04'),(92,73,NULL,NULL,44,'1985-12-04 15:28:46'),(94,75,NULL,NULL,41,'1990-08-11 15:50:37'),(95,47,NULL,NULL,34,'1977-08-13 19:35:37'),(96,74,NULL,NULL,60,'2008-02-25 12:40:47'),(97,74,NULL,NULL,80,'1990-09-16 16:31:37'),(98,96,NULL,NULL,97,'1989-06-08 00:18:31'),(99,98,NULL,NULL,70,'1982-06-05 22:20:59'),(100,57,NULL,NULL,32,'2003-05-07 02:14:39');
/*!40000 ALTER TABLE `like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `url` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blob` blob,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_media_media_type1_idx` (`media_type_id`),
  KEY `fk_media_user1_idx` (`user_id`),
  CONSTRAINT `fk_media_media_type1` FOREIGN KEY (`media_type_id`) REFERENCES `media_type` (`id`),
  CONSTRAINT `fk_media_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `media_chk_1` CHECK (json_valid(`metadata`))
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,2,77,'application/vnd.oasis.opendocument.presentati',NULL,NULL,'2019-06-12 21:42:34'),(2,1,28,'application/x-gtar',NULL,NULL,'2014-06-12 19:58:58'),(3,2,32,'application/x-gramps-xml',NULL,NULL,'2012-05-26 07:56:33'),(4,1,59,'video/quicktime',NULL,NULL,'1993-12-10 01:19:42'),(5,2,16,'application/vnd.epson.msf',NULL,NULL,'2007-06-05 06:00:15'),(6,3,53,'application/vnd.kde.kpresenter',NULL,NULL,'2014-10-04 14:34:40'),(7,3,3,'text/calendar',NULL,NULL,'2016-06-08 21:24:31'),(8,3,86,'application/vnd.trid.tpt',NULL,NULL,'1970-05-23 09:29:08'),(9,3,50,'application/jsonml+json',NULL,NULL,'2009-08-19 23:17:30'),(10,2,95,'application/vnd.dreamfactory',NULL,NULL,'1988-08-16 10:43:52'),(11,3,15,'application/vnd.sus-calendar',NULL,NULL,'2019-11-05 19:12:01'),(12,2,75,'video/x-ms-wvx',NULL,NULL,'2007-10-31 11:03:48'),(13,1,2,'application/vnd.openxmlformats-officedocument',NULL,NULL,'2006-11-01 15:35:26'),(14,1,50,'application/rtf',NULL,NULL,'2010-06-22 13:19:23'),(15,1,59,'text/x-sfv',NULL,NULL,'1987-04-26 03:48:28'),(16,2,80,'text/vnd.graphviz',NULL,NULL,'2011-10-14 19:36:40'),(17,2,55,'application/omdoc+xml',NULL,NULL,'1982-03-05 07:05:48'),(18,1,76,'text/vnd.in3d.3dml',NULL,NULL,'1980-03-25 05:03:00'),(19,3,10,'application/vnd.dece.zip',NULL,NULL,'1990-03-24 04:45:59'),(20,2,27,'application/vnd.ms-pki.stl',NULL,NULL,'1973-10-04 16:18:49'),(21,1,30,'application/msword',NULL,NULL,'1988-01-02 16:44:44'),(22,3,13,'application/x-ms-xbap',NULL,NULL,'2017-01-08 01:33:41'),(23,1,51,'application/x-tar',NULL,NULL,'2001-01-20 05:43:14'),(24,3,30,'application/vnd.iccprofile',NULL,NULL,'1983-04-27 03:21:09'),(25,3,61,'text/vnd.curl.dcurl',NULL,NULL,'2005-03-25 11:10:55'),(26,1,77,'application/vnd.rig.cryptonote',NULL,NULL,'1977-10-26 21:01:20'),(27,3,81,'application/vnd.oasis.opendocument.graphics-t',NULL,NULL,'1982-01-19 19:45:21'),(28,2,87,'application/vnd.ms-excel.addin.macroenabled.1',NULL,NULL,'1990-11-20 10:50:39'),(29,3,82,'application/x-gca-compressed',NULL,NULL,'1987-03-20 05:24:31'),(30,2,7,'application/vnd.ms-excel.sheet.macroenabled.1',NULL,NULL,'1988-06-02 13:46:02'),(31,2,86,'text/vcard',NULL,NULL,'1989-08-02 07:29:27'),(32,3,76,'text/x-fortran',NULL,NULL,'1998-09-05 10:37:04'),(33,2,94,'application/vnd.lotus-freelance',NULL,NULL,'1981-05-18 10:00:14'),(34,2,26,'application/vnd.semf',NULL,NULL,'2013-09-14 05:02:49'),(35,1,86,'application/x-gnumeric',NULL,NULL,'2013-10-24 07:38:54'),(36,2,29,'application/vnd.shana.informed.package',NULL,NULL,'2010-06-13 22:39:37'),(37,1,32,'model/vnd.mts',NULL,NULL,'1983-06-23 17:09:36'),(38,2,47,'application/vnd.epson.msf',NULL,NULL,'2017-11-03 04:45:38'),(39,3,39,'video/3gpp2',NULL,NULL,'1977-04-28 18:50:56'),(40,3,82,'video/x-sgi-movie',NULL,NULL,'2015-06-02 14:24:27'),(41,3,2,'application/vnd.ds-keypoint',NULL,NULL,'1979-05-30 19:49:44'),(42,2,74,'application/vnd.shana.informed.formtemplate',NULL,NULL,'1987-01-09 04:01:08'),(43,3,8,'text/vnd.graphviz',NULL,NULL,'1989-03-19 10:56:38'),(44,2,64,'application/postscript',NULL,NULL,'1981-02-08 05:08:16'),(45,3,97,'image/x-portable-bitmap',NULL,NULL,'1985-07-12 01:02:11'),(46,3,30,'application/x-gnumeric',NULL,NULL,'2015-12-23 03:26:14'),(47,3,57,'application/x-t3vm-image',NULL,NULL,'1993-01-26 10:07:07'),(48,1,22,'application/x-shar',NULL,NULL,'2005-02-10 19:40:23'),(49,2,57,'application/vnd.xfdl',NULL,NULL,'1991-03-30 01:53:08'),(50,2,53,'application/emma+xml',NULL,NULL,'1989-01-30 14:10:08'),(51,2,99,'video/vnd.dece.mobile',NULL,NULL,'2007-02-18 16:18:57'),(52,3,57,'application/vnd.wolfram.player',NULL,NULL,'1999-05-30 00:38:03'),(53,1,21,'image/x-portable-bitmap',NULL,NULL,'2004-05-19 00:10:07'),(54,1,12,'application/vnd.syncml.dm+xml',NULL,NULL,'1971-03-06 16:38:31'),(55,2,80,'image/vnd.xiff',NULL,NULL,'1972-05-31 23:30:10'),(56,3,59,'application/vnd.flographit',NULL,NULL,'1997-06-04 03:54:11'),(57,3,50,'image/x-pcx',NULL,NULL,'1994-09-08 19:00:03'),(58,1,63,'application/vnd.rn-realmedia-vbr',NULL,NULL,'2015-08-18 22:19:41'),(59,2,92,'application/vnd.realvnc.bed',NULL,NULL,'1977-07-01 18:47:00'),(60,1,47,'application/vnd.uoml+xml',NULL,NULL,'2009-02-02 08:47:51'),(61,3,96,'image/vnd.dvb.subtitle',NULL,NULL,'2003-12-06 05:22:56'),(62,3,71,'application/vnd.ezpix-package',NULL,NULL,'1989-05-10 11:43:04'),(63,2,81,'application/x-freearc',NULL,NULL,'1979-09-22 20:45:58'),(64,3,2,'text/turtle',NULL,NULL,'2005-01-01 02:17:37'),(65,2,39,'image/x-rgb',NULL,NULL,'2003-08-02 12:54:04'),(66,2,79,'application/vnd.quark.quarkxpress',NULL,NULL,'2007-06-04 11:40:50'),(67,2,34,'application/vnd.openxmlformats-officedocument',NULL,NULL,'2005-02-24 12:36:43'),(68,2,67,'image/sgi',NULL,NULL,'1983-12-13 03:26:17'),(69,2,38,'application/x-gtar',NULL,NULL,'1992-01-14 14:53:54'),(70,3,14,'application/x-futuresplash',NULL,NULL,'2002-09-08 13:28:32'),(71,1,70,'application/vnd.openxmlformats-officedocument',NULL,NULL,'1973-01-30 10:09:14'),(72,3,98,'model/vnd.collada+xml',NULL,NULL,'2001-01-25 13:09:46'),(73,1,4,'application/vnd.dvb.service',NULL,NULL,'1999-05-30 02:26:39'),(74,2,77,'application/x-msmediaview',NULL,NULL,'1971-01-22 02:44:42'),(75,3,86,'video/mj2',NULL,NULL,'1995-05-30 06:57:45'),(76,1,84,'text/plain',NULL,NULL,'2013-08-31 16:25:34'),(77,3,99,'application/vnd.data-vision.rdz',NULL,NULL,'1980-02-11 18:26:58'),(78,2,34,'application/vnd.uiq.theme',NULL,NULL,'1991-12-30 15:07:06'),(79,3,46,'application/vnd.kde.kontour',NULL,NULL,'2006-04-25 14:41:45'),(80,2,16,'application/vnd.quark.quarkxpress',NULL,NULL,'1989-05-23 23:55:20'),(81,3,88,'application/x-shockwave-flash',NULL,NULL,'2001-03-04 22:15:01'),(82,3,21,'application/vnd.recordare.musicxml',NULL,NULL,'2018-05-14 14:33:01'),(83,1,28,'application/vnd.ms-htmlhelp',NULL,NULL,'1989-09-25 04:19:18'),(84,3,76,'application/ecmascript',NULL,NULL,'2016-08-09 12:36:50'),(85,2,66,'application/vnd.hydrostatix.sof-data',NULL,NULL,'1988-07-18 11:14:48'),(86,3,83,'application/vnd.dvb.ait',NULL,NULL,'1983-12-27 15:34:02'),(87,2,61,'application/vnd.openxmlformats-officedocument',NULL,NULL,'1972-12-13 21:11:20'),(88,3,55,'application/vnd.pvi.ptid1',NULL,NULL,'1973-03-30 21:54:23'),(89,2,41,'video/vnd.dece.sd',NULL,NULL,'1979-11-24 02:30:31'),(90,1,59,'application/vnd.wap.wbxml',NULL,NULL,'1976-11-14 13:01:36'),(91,1,54,'application/vnd.syncml.dm+wbxml',NULL,NULL,'2013-03-16 14:19:05'),(92,2,8,'application/vnd.dart',NULL,NULL,'2019-07-25 19:37:14'),(93,2,97,'image/vnd.net-fpx',NULL,NULL,'1997-12-13 17:46:38'),(94,2,30,'application/x-iso9660-image',NULL,NULL,'1973-11-12 02:28:29'),(95,2,76,'application/vnd.svd',NULL,NULL,'1989-08-07 10:03:39'),(96,2,26,'application/x-futuresplash',NULL,NULL,'2003-02-07 06:58:18'),(97,2,39,'application/x-wais-source',NULL,NULL,'2017-04-12 00:50:14'),(98,2,85,'application/x-msmediaview',NULL,NULL,'1973-05-24 05:20:39'),(99,2,35,'application/postscript',NULL,NULL,'1972-03-31 21:07:40'),(100,2,32,'application/vnd.sun.xml.draw',NULL,NULL,'2008-10-25 09:03:50');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_type`
--

DROP TABLE IF EXISTS `media_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_type` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_type`
--

LOCK TABLES `media_type` WRITE;
/*!40000 ALTER TABLE `media_type` DISABLE KEYS */;
INSERT INTO `media_type` VALUES (1,'video'),(2,'audio'),(3,'image');
/*!40000 ALTER TABLE `media_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int unsigned NOT NULL,
  `to_user_id` int unsigned NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_message_user1_idx` (`from_user_id`),
  KEY `fk_message_user2_idx` (`to_user_id`),
  CONSTRAINT `fk_message_user1` FOREIGN KEY (`from_user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_message_user2` FOREIGN KEY (`to_user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,28,50,'Enim vel officiis ut est debitis.','1997-04-27 05:20:15',NULL,NULL),(2,67,33,'Maxime quidem ut autem minus.','1995-11-14 05:28:55','2016-03-09 09:02:36',NULL),(3,50,86,'Quos enim adipisci quia dolorem ad sit.','1991-03-22 19:57:32',NULL,NULL),(4,49,58,'Neque et voluptatibus ea iusto.','2004-12-28 08:43:59',NULL,NULL),(5,25,2,'Vel error voluptas iure iure qui et.','2004-07-29 01:59:31',NULL,NULL),(6,48,89,'Enim eos odio sunt aut et fugiat et sed.','1984-02-15 10:15:05','2017-02-11 13:00:49',NULL),(7,95,81,'Sit maxime sed facere voluptas odio.','1970-01-02 01:06:57','2012-02-17 10:10:36',NULL),(8,63,74,'Quo illo dolor nihil commodi corrupti quis.','2009-03-14 01:29:35','1994-11-16 12:24:01',NULL),(9,78,59,'Maxime officia qui earum illo asperiores natus.','1984-04-13 13:53:30',NULL,NULL),(10,10,38,'Voluptatem et similique quod qui.','1997-06-21 02:05:37','1995-01-02 09:50:30',NULL),(11,70,53,'Consequatur ut error quibusdam voluptatem.','1998-11-19 12:47:12',NULL,NULL),(12,55,31,'Aperiam accusamus quo hic consequatur exercitationem dolores fugiat.','1985-02-21 09:36:48','1988-07-20 07:00:59',NULL),(13,24,56,'Nisi suscipit quis temporibus debitis repellendus aut.','1994-10-16 06:18:23',NULL,NULL),(14,22,68,'Nulla et voluptas consectetur voluptas distinctio voluptate laboriosam.','1994-03-25 00:32:46','1976-04-29 02:00:44',NULL),(15,67,28,'Ipsa alias at voluptates aut.','2016-06-02 02:25:25',NULL,NULL),(16,73,95,'Qui nisi tenetur quia accusantium id corrupti.','1974-03-24 01:15:47','2013-06-28 20:53:20',NULL),(17,78,40,'Sit sunt harum occaecati repellendus molestias culpa est.','1971-06-14 19:19:58','1994-10-23 21:59:10',NULL),(18,27,28,'Rerum inventore et voluptas omnis minima aliquam.','1978-02-23 15:07:56','1987-05-15 13:53:53',NULL),(19,25,75,'Impedit quos eius et repellendus.','1999-01-08 02:52:27',NULL,NULL),(20,85,50,'Eligendi enim voluptatem sit quaerat omnis.','2001-06-20 05:24:37',NULL,NULL),(21,77,33,'Soluta voluptatibus recusandae quod et delectus.','2000-07-05 16:32:00',NULL,NULL),(22,39,71,'Aut quisquam quia repellat voluptatibus ex blanditiis.','1998-10-13 05:10:13','1971-01-28 05:02:29',NULL),(23,14,2,'Laboriosam consequuntur rem qui eligendi.','2015-06-22 01:36:56','1977-12-01 18:28:03',NULL),(24,44,92,'Sint consectetur ex deserunt doloremque et fugit.','2018-05-12 13:06:11','2020-10-23 05:07:58',NULL),(25,60,54,'Laborum id assumenda nostrum nostrum est.','2017-04-05 10:33:32',NULL,NULL),(26,29,30,'Et quia consequatur voluptatem sed.','1996-05-27 18:14:02',NULL,NULL),(27,6,84,'Voluptatum rerum exercitationem laborum ea cum est expedita.','1984-11-20 06:12:36',NULL,NULL),(28,61,30,'Nihil doloremque necessitatibus eius pariatur error occaecati sed.','2003-10-01 21:57:27','2014-10-08 00:31:05',NULL),(29,39,82,'Saepe cupiditate neque reiciendis consequatur voluptatem dolore.','1977-06-05 13:21:57','1992-07-27 22:15:12',NULL),(30,98,6,'Cumque vel dolore eligendi nemo nesciunt occaecati.','2012-10-17 22:31:08','1982-11-21 10:56:51',NULL),(31,10,70,'Est ut quisquam iure minima.','1988-04-04 21:06:11','1973-09-21 17:47:24',NULL),(32,100,87,'Vel est maxime cumque nisi repellendus ut.','1971-01-31 12:20:12','2015-04-13 11:30:23',NULL),(33,9,27,'Rem in asperiores veritatis.','1988-01-01 22:45:16',NULL,NULL),(34,14,34,'Aliquam iusto illo suscipit expedita rerum quisquam.','2015-01-05 04:31:38',NULL,NULL),(35,2,99,'Ut voluptas consequatur ad et vitae quibusdam tempora.','2012-10-14 00:29:00','2015-05-02 08:17:48',NULL),(36,84,78,'Impedit quos non et qui molestiae rerum.','1978-12-04 06:39:38','2002-12-07 20:35:11',NULL),(37,32,22,'Ipsa error odit aut voluptas doloribus.','1970-11-06 12:07:20','1980-10-22 22:15:49',NULL),(38,48,45,'Numquam et a omnis vero aut.','1998-08-07 21:54:20',NULL,NULL),(39,23,91,'Quos enim et maiores eaque.','1999-09-08 03:16:28',NULL,NULL),(40,36,83,'Cupiditate dolorem repudiandae ad quo et.','2009-04-12 13:27:10','1991-07-23 05:22:20',NULL),(41,44,65,'Ut ut sint enim accusantium.','1986-11-18 08:38:54',NULL,NULL),(42,12,50,'Facilis debitis ipsum ex ducimus.','2003-04-02 12:19:14',NULL,NULL),(43,48,72,'Nostrum iste eos quo odio odit.','1974-11-10 03:19:05','1974-06-21 15:12:06',NULL),(44,80,87,'Qui saepe impedit dolorem qui.','1978-08-02 23:44:09','1974-08-20 14:52:17',NULL),(45,53,78,'Doloribus exercitationem rerum adipisci enim consequuntur reprehenderit perspiciatis.','1974-03-08 03:20:10',NULL,NULL),(46,92,62,'Ut architecto rerum reiciendis et.','1991-03-31 15:07:19','2020-02-28 01:34:02',NULL),(47,47,92,'Quae harum error ratione in iure.','1970-10-11 04:53:25','1979-09-24 19:07:03',NULL),(48,49,56,'Corporis autem ut facere nostrum mollitia.','2006-11-09 21:16:15','1978-01-08 15:56:57',NULL),(49,18,63,'Et consectetur repellendus ipsam.','1980-06-08 15:21:21',NULL,NULL),(50,90,19,'Laborum dolores sit aspernatur occaecati est quo.','2019-09-28 18:19:23',NULL,NULL),(51,61,73,'Optio est optio tenetur aut accusantium qui excepturi eligendi.','2017-11-30 16:56:42','1984-02-01 18:48:04',NULL),(52,96,92,'Non non exercitationem et eveniet cumque illum.','2001-05-01 20:44:06','2019-10-19 09:20:45',NULL),(53,94,44,'Ea aut dignissimos nesciunt quia.','1989-03-12 14:34:13','2014-02-28 11:51:52',NULL),(54,37,17,'Ut aut praesentium possimus perspiciatis perferendis.','1976-09-21 18:52:28',NULL,NULL),(55,34,73,'Sit hic libero rerum et est in ut.','1996-09-23 23:30:23','1989-07-14 08:06:39',NULL),(56,99,78,'Porro vel nihil libero voluptas.','2014-12-01 16:53:10',NULL,NULL),(57,37,11,'Nesciunt ut ad illum et.','2011-10-28 10:47:31','2000-01-31 20:47:55',NULL),(58,28,85,'Eius et et et quos qui quae et.','1976-05-27 05:55:53','2009-07-03 13:33:11',NULL),(59,83,7,'Voluptas repudiandae blanditiis accusamus nisi quod.','2008-02-14 14:26:19',NULL,NULL),(60,72,36,'Tenetur amet nihil est et quibusdam quibusdam.','1993-02-10 23:24:42',NULL,NULL),(61,85,64,'Illo consequatur odit voluptatibus non non doloribus.','1997-08-20 12:58:16',NULL,NULL),(62,97,31,'Neque quia necessitatibus quas laudantium provident accusantium.','2004-04-05 06:55:48',NULL,NULL),(63,55,46,'Quam iste sed et facere rem neque explicabo.','2000-01-18 10:08:19','1970-08-26 19:06:07',NULL),(64,87,73,'Repellat pariatur deleniti aut similique ea ducimus voluptatibus.','2008-08-06 06:52:48','1974-08-08 18:50:29',NULL),(65,8,77,'Labore reiciendis temporibus et dolores delectus nihil eos.','1990-05-30 08:13:58','2014-10-27 14:33:50',NULL),(66,92,69,'Eligendi voluptas repellendus et similique ratione repudiandae incidunt.','1992-04-30 16:55:53',NULL,NULL),(67,49,88,'Ut aspernatur error repellat est.','2001-11-25 08:02:02','1974-12-05 14:01:11',NULL),(68,60,43,'Quidem qui quos occaecati possimus.','1984-09-28 02:00:45','2014-03-12 04:38:21',NULL),(69,31,97,'Est ipsam nihil iste ut ab.','2001-08-04 19:29:30',NULL,NULL),(70,60,64,'Magnam dignissimos et voluptatem consectetur fugit et sit.','1985-08-22 12:28:20',NULL,NULL),(71,69,59,'Et dolorum ut nesciunt adipisci.','1978-04-22 02:56:02','2004-12-11 02:37:36',NULL),(72,42,6,'Quis excepturi est laboriosam temporibus earum.','1977-05-19 08:40:38','1984-08-01 02:21:15',NULL),(73,69,69,'Voluptas dolor voluptatibus est nemo.','1991-04-28 09:46:22',NULL,NULL),(74,91,51,'Nihil pariatur autem omnis ducimus.','1997-05-28 01:31:25','2012-06-06 08:55:04',NULL),(75,76,62,'Cumque dignissimos minima qui.','2009-09-05 17:10:29',NULL,NULL),(76,86,60,'Sunt deserunt qui et assumenda.','1991-03-31 16:19:00',NULL,NULL),(77,25,83,'Qui neque deserunt sunt debitis nihil soluta ipsam.','2016-06-21 07:21:44','2008-07-06 15:54:37',NULL),(78,91,80,'Sit dicta ad ut tempore unde et velit molestias.','2002-11-13 07:38:04','1976-07-12 04:25:17',NULL),(79,28,78,'Sequi omnis aut nihil omnis eveniet.','1995-10-05 04:50:26',NULL,NULL),(80,52,36,'In illo sequi aut fugiat.','1995-07-08 17:47:17','1982-09-07 06:35:54',NULL),(81,54,43,'Exercitationem eos sunt ea reprehenderit qui.','1988-12-01 18:22:42','1990-01-20 15:19:27',NULL),(82,4,3,'Non eos nihil iste sed.','2020-10-09 22:51:11',NULL,NULL),(83,31,64,'Autem atque ut dolorem ipsa et ipsam.','1990-10-02 06:05:23','1974-01-25 20:22:03',NULL),(84,45,61,'Maiores quis asperiores occaecati ex alias id.','2017-07-15 17:29:33','1986-07-03 14:03:41',NULL),(85,60,5,'Et officiis commodi suscipit omnis qui dolorem.','2012-07-16 23:38:25','1996-11-15 00:56:48',NULL),(86,25,29,'Aspernatur totam rerum vero atque ut reiciendis quod.','1982-07-17 10:56:43',NULL,NULL),(87,63,66,'Et in voluptate et voluptas ut eaque.','2002-12-15 01:27:30',NULL,NULL),(88,35,31,'Autem commodi laudantium perferendis officiis numquam tempore.','1975-05-20 09:02:03',NULL,NULL),(89,34,26,'Et ea distinctio minima autem molestiae consequuntur et.','1986-01-13 16:36:10','1991-08-07 17:09:12',NULL),(90,82,10,'Consequatur nesciunt laboriosam voluptatem excepturi vel.','1996-05-29 05:20:08','2010-01-29 19:57:37',NULL),(91,88,68,'Et qui similique voluptas alias sed nesciunt nisi.','2006-01-22 02:35:22',NULL,NULL),(92,69,12,'Blanditiis omnis ab suscipit fuga incidunt.','2013-06-29 03:16:18','1972-11-27 05:45:12',NULL),(93,50,59,'Quidem ut quo aut aut quo sit aspernatur atque.','1970-10-24 21:48:04','2003-11-06 00:09:34',NULL),(94,92,78,'Voluptatem beatae tenetur aperiam et itaque deleniti et.','1970-09-04 07:19:33','2002-05-07 05:44:38',NULL),(95,36,43,'Qui aperiam ex exercitationem sit consequatur.','1975-08-20 23:06:11','1996-03-01 21:38:13',NULL),(96,14,90,'Quisquam incidunt voluptatibus perferendis corrupti blanditiis.','2002-12-30 20:19:05',NULL,NULL),(97,86,17,'A et alias quos.','1971-12-15 18:20:44','1974-04-08 21:46:39',NULL),(98,92,17,'Ipsam reprehenderit iste in velit.','1975-12-30 22:52:26','1983-10-05 20:18:36',NULL),(99,80,36,'Dolorem omnis ut unde omnis.','1996-03-09 19:37:57','1995-01-28 04:22:33',NULL),(100,77,40,'Voluptatem aspernatur quibusdam ratione deleniti consequatur molestiae.','2005-11-22 10:54:57','2008-06-25 06:30:31',NULL);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `community_id` int unsigned DEFAULT NULL,
  `post_id` int unsigned DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_id` int unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_post_user1_idx` (`user_id`),
  KEY `fk_post_community1_idx` (`community_id`),
  KEY `fk_post_media1_idx` (`media_id`),
  KEY `fk_post_post1_idx` (`post_id`),
  CONSTRAINT `fk_post_community1` FOREIGN KEY (`community_id`) REFERENCES `community` (`id`),
  CONSTRAINT `fk_post_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_post_post1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  CONSTRAINT `fk_post_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,1,1,NULL,'Consectetur delectus harum sunt dolorem magni officia quod. Nihil qui consequatur deserunt nemo vero sint. Nostrum dicta consequatur tenetur.',1,'1973-04-27 19:58:24','1982-06-29 02:40:23'),(2,2,2,NULL,'Explicabo consectetur sed commodi voluptates enim voluptatem ex. Quaerat ut cum quo voluptatem sunt dolores.',2,'1971-10-27 09:38:55','1997-11-20 12:21:41'),(3,3,3,NULL,'Soluta maiores qui ut sed. Vero mollitia nihil vel illum. Est dolore sint culpa veritatis atque magni rerum. Sint magnam nesciunt temporibus quia.',3,'2011-05-11 04:35:16','1998-11-26 03:56:07'),(4,4,4,NULL,'Fugiat aut sunt iure ipsa velit occaecati. Soluta ratione dolor laudantium amet veritatis. Molestias dolorum quibusdam ratione est reiciendis aspernatur.',4,'1983-01-30 06:46:19','1985-03-01 07:43:34'),(5,5,5,NULL,'Accusantium atque ad ipsam asperiores quia hic. Cum quo aut sequi esse cumque aut qui. Distinctio et ut voluptates rerum quo et commodi. Quasi qui sed aut aut et quo molestias.',5,'1987-03-06 10:28:05','2001-12-26 01:54:23'),(6,6,6,NULL,'Delectus nemo temporibus sit praesentium. Est qui voluptatem consequatur aut distinctio possimus. Architecto eligendi corrupti occaecati adipisci numquam quia nulla.',6,'1980-11-17 18:38:56','1997-10-18 22:22:08'),(7,7,7,NULL,'Dolorum quasi dolores dicta illum non placeat. Accusamus porro repellat est fugiat. Aliquid dolor repellendus nemo ut.',7,'2007-09-15 01:30:10','2014-01-21 01:54:34'),(8,8,8,NULL,'Adipisci rem ex ab ab. Dolorem modi aut dolor quo expedita. Eum quia voluptatibus placeat non.',8,'1994-07-06 10:27:45','1973-07-06 21:47:29'),(9,9,9,NULL,'Illo at ab qui inventore. Soluta facere et aliquam earum enim maiores. Et consequatur vel sed et.',9,'2010-03-28 18:01:29','1987-12-28 16:48:58'),(10,10,10,NULL,'Ut numquam omnis neque ut beatae. Ab quia vel dignissimos magnam et molestias. Quo ipsa necessitatibus in omnis ut. Voluptatem nemo libero autem recusandae iusto eos.',10,'1979-03-24 06:41:53','1996-07-09 23:30:09'),(11,11,1,NULL,'Enim ea molestias illum quibusdam possimus qui totam. Aliquam iste quasi aperiam consequatur voluptatem voluptatem at. Molestiae ut et nam corrupti.',11,'1985-08-04 17:56:07','2005-11-23 18:01:08'),(12,12,2,NULL,'Deserunt doloremque pariatur sapiente inventore. In vel nobis commodi non. Non nihil eligendi quia facilis eum. Accusantium sed reiciendis qui consequatur omnis et recusandae.',12,'2004-11-24 15:33:55','2017-12-18 06:23:19'),(13,13,3,NULL,'Dignissimos rerum expedita cum quaerat delectus. Laudantium quod excepturi autem repellat excepturi dolor aut optio. Quod odio molestias hic cumque voluptas voluptatem.',13,'1975-01-17 16:05:13','2009-06-18 04:37:30'),(14,14,4,NULL,'Eius sit quisquam magni suscipit molestiae consequatur. Consequatur quam quae sed soluta natus. Rem cum modi omnis mollitia amet rerum magni. Rerum voluptate quis sequi ducimus quis.',14,'1993-07-12 02:42:45','1973-11-03 21:42:57'),(15,15,5,NULL,'Asperiores voluptatibus laboriosam alias ut sint. Maxime rem eum a nihil blanditiis quo vitae. Est voluptas cum voluptatem sit. Vitae suscipit reiciendis vitae quaerat eius illo sequi ex.',15,'2004-10-08 08:25:34','1971-03-24 04:52:06'),(16,16,6,NULL,'Vel nisi veritatis ipsa deleniti. Tempore vel beatae tenetur voluptatem qui nemo odit. Consectetur nihil cum voluptatem perferendis itaque. Sed repellat commodi sed voluptatem non numquam.',16,'1996-08-11 07:58:44','2005-10-20 19:58:19'),(17,17,7,NULL,'Laudantium non odit velit eaque odio. Autem eius laudantium qui minima. Laborum et expedita et quod earum accusamus. Molestiae voluptatum id beatae cumque sint optio.',17,'2002-09-06 22:30:20','2011-11-24 15:11:20'),(18,18,8,NULL,'Sunt libero aperiam excepturi eum laudantium id ad. Optio ab libero qui facilis. Est hic qui voluptatem perferendis illum fugit. Natus sed laudantium ut vel veritatis.',18,'2008-10-15 12:55:18','2017-12-16 12:01:30'),(19,19,9,NULL,'Illo nam natus sunt sit dolorem consequuntur error asperiores. Minima deleniti officia rerum. Laudantium omnis et sapiente veritatis quo neque.',19,'1975-01-22 16:59:52','2015-02-27 04:09:04'),(20,20,10,NULL,'Commodi id veniam tempore. Blanditiis quam cumque voluptatum quos quia quia similique consequatur.',20,'1989-10-20 19:51:05','2001-11-04 17:45:22'),(21,21,1,NULL,'Atque adipisci ad non qui quos. Ipsum rerum similique incidunt. Voluptas sapiente unde a esse laborum. Quis non ea explicabo quo ipsa dolor quo.',21,'2016-10-29 16:13:52','2010-02-16 17:17:36'),(22,22,2,NULL,'Commodi amet consequatur eum deserunt unde. Consequatur deserunt aut laborum ipsum accusamus voluptas. Omnis vel ut et ut eaque sit. Minima numquam consequatur autem sint quasi minus.',22,'2018-06-04 09:23:30','1997-02-21 22:19:28'),(23,23,3,NULL,'Autem aut aut quia molestiae qui. Qui reiciendis cum ut qui. Tenetur illum ut debitis aliquid. Non perspiciatis minima ab ipsa.',23,'1974-02-10 08:47:28','1982-11-20 18:55:22'),(24,24,4,NULL,'Velit accusantium eum amet et nesciunt reprehenderit magnam. Tenetur at eum cupiditate voluptatum. A sint voluptatem dicta sed tenetur. Delectus aperiam qui pariatur voluptatem est vel.',24,'2000-08-01 02:30:37','1999-11-05 12:20:17'),(25,25,5,NULL,'Expedita qui ut molestiae aut asperiores. Ipsum quasi tenetur inventore sunt consequuntur. Enim recusandae ut accusamus optio. Nam totam nihil dolorem blanditiis.',25,'1992-01-03 13:58:29','1979-07-25 22:20:35'),(26,26,6,NULL,'Omnis illo aliquam fuga qui. Aliquam fugiat eum ex ipsum reprehenderit omnis. Repudiandae quos sed architecto non voluptatibus. Assumenda temporibus ut eaque commodi omnis aspernatur et quisquam.',26,'1995-08-29 09:32:28','1989-05-10 01:11:40'),(27,27,7,NULL,'Possimus est quia quod nulla perferendis corrupti ad. A officia delectus sint laborum consequuntur possimus possimus. Quam sed voluptatum dolores.',27,'1986-10-09 05:52:10','1986-06-27 08:08:17'),(28,28,8,NULL,'Porro et repellat atque aliquid voluptatum veritatis. Voluptas reiciendis et quo quia in culpa. Et nisi minus praesentium placeat amet in.',28,'1985-06-22 20:47:35','1977-03-17 08:12:48'),(29,29,9,NULL,'Voluptas impedit veniam ab qui aut voluptatem perspiciatis. Ex ut debitis nostrum ratione eveniet. Ut est cumque eum et.',29,'1998-06-05 18:30:51','2000-07-20 19:33:33'),(30,30,10,NULL,'Voluptates totam ut praesentium quos. Officiis labore aspernatur quae ut doloribus sapiente ratione. Sequi itaque nam quas atque ut. Qui fugit inventore non ab sapiente velit cumque.',30,'1972-04-08 09:29:10','2011-06-09 17:58:39'),(31,31,1,NULL,'Totam aut doloremque iusto. Accusantium explicabo facere totam recusandae dolores reiciendis. Aut sunt in officia veritatis atque quos. Est eum aut ad voluptatibus consequatur mollitia perspiciatis.',31,'2006-03-02 11:51:46','1984-07-31 09:42:40'),(32,32,2,NULL,'Qui voluptates tempora dicta culpa labore aut amet. Earum voluptate nam iure sapiente cum praesentium necessitatibus. Odio eum sit sit temporibus itaque consequatur at.',32,'2019-01-05 20:07:30','1993-10-06 15:50:49'),(33,33,3,NULL,'Numquam dolores quaerat quis nostrum delectus velit. Voluptatibus nemo ut non doloribus sit nam est. Fuga velit non sapiente facere. Sed animi ratione qui libero.',33,'1985-11-22 14:49:00','2008-09-25 09:19:30'),(34,34,4,NULL,'Cum et et enim. Doloribus aut quaerat eos voluptatum inventore. Non nobis repellendus eos iste dicta optio. Nam est esse officiis.',34,'1998-11-10 22:48:07','1989-08-11 23:39:01'),(35,35,5,NULL,'Impedit iure in est aliquid excepturi. Est tenetur ex hic sed nisi. Ipsam nam omnis aliquam deleniti nobis.',35,'1988-12-29 00:56:29','1991-03-05 16:59:24'),(36,36,6,NULL,'Dolorem quia aspernatur ut animi qui quia. Esse nobis ratione eligendi voluptas. Quis commodi ullam et.',36,'1971-12-12 07:55:55','1986-08-26 21:34:57'),(37,37,7,NULL,'Omnis exercitationem hic rem rem. Dolore velit voluptatem voluptatibus est in. Non quidem et nesciunt. Vitae impedit facere vitae sit.',37,'2006-06-01 16:51:19','1978-06-03 08:04:48'),(38,38,8,NULL,'Veritatis fugiat pariatur non iusto eum. Et quo cum ratione doloremque magni tenetur fugiat eius. Repellendus fuga natus saepe non magnam sint. Ut hic qui impedit in. Ipsam quod et maxime quidem.',38,'1997-08-13 19:09:32','1997-01-19 19:02:42'),(39,39,9,NULL,'Laudantium eligendi est molestiae. Ut et quia earum rem nihil amet autem fugit. Consequuntur aliquam deleniti quidem tenetur eligendi. Ratione odio officia esse porro quos similique omnis.',39,'2016-11-24 17:13:11','2018-11-03 17:42:22'),(40,40,10,NULL,'Molestiae non dolorum at saepe omnis rem et. Autem minus placeat voluptatum. Nesciunt fugiat aspernatur et omnis odio. Et eaque et sunt id animi laudantium.',40,'2005-04-09 15:32:43','1996-03-01 23:23:49'),(41,41,1,NULL,'Doloremque et ut debitis dolores. Nostrum quia ipsum rem quia et perferendis quasi. Voluptatibus omnis inventore ex dolor.',41,'1973-11-01 16:26:00','1979-09-10 13:44:37'),(42,42,2,NULL,'Nobis dolorem quos ipsa sed dolore id fugiat nobis. Quae ratione assumenda quidem.',42,'1996-08-19 23:02:31','1982-08-19 17:00:18'),(43,43,3,NULL,'In dolorum cum facere nihil sint. Autem rerum dolorem molestias corrupti ut. Est ab qui est corporis.',43,'1979-08-12 05:03:43','1982-06-10 13:36:12'),(44,44,4,NULL,'Et tenetur ut dolore voluptatem placeat aut voluptates. Atque quod commodi voluptate nisi quis rerum est. Alias et consequatur sit nulla animi doloribus ab. Et reprehenderit deleniti facere facere.',44,'1977-12-29 10:08:35','2013-05-06 21:52:56'),(45,45,5,NULL,'Voluptatem placeat quia aut sed ut est. Rem distinctio sequi sed iusto. Sint perferendis omnis voluptatem. Aut sit voluptatem eos et aliquam quia magnam.',45,'2009-10-18 11:00:46','2013-04-18 07:26:53'),(46,46,6,NULL,'Eos nostrum dolorem quisquam. Iste ducimus dolore autem id omnis.',46,'1983-01-27 13:16:31','1973-04-10 06:19:27'),(47,47,7,NULL,'Natus harum minus doloribus ex porro. Earum sed et eos nihil dolorem. Velit autem optio ut excepturi quod praesentium veniam. Cumque occaecati aperiam at.',47,'2012-02-28 04:00:58','1976-11-30 18:29:06'),(48,48,8,NULL,'Et debitis accusantium voluptatem consequatur reiciendis quia officia. Eius corporis amet et sit est ullam atque. Sed nihil ab rem iusto adipisci cumque facere.',48,'1991-05-14 00:25:44','2005-09-06 04:36:33'),(49,49,9,NULL,'Doloribus earum culpa quo quia sunt occaecati mollitia molestias. Vero quos itaque sapiente. Repudiandae provident inventore nostrum et quidem perferendis ipsum. Dicta ea et quis aperiam.',49,'2013-10-22 16:30:05','1997-11-14 03:58:11'),(50,50,10,NULL,'Minus repellat nostrum reprehenderit in. Eos magnam esse laboriosam veniam. Reprehenderit rem aut voluptas necessitatibus. Repellat facilis ex praesentium.',50,'2017-10-22 07:26:15','1987-04-25 01:39:14');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile` (
  `user_id` int unsigned NOT NULL,
  `firstname` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('m','f','x') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'x',
  `birthday` date NOT NULL,
  `address` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_profile_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,'Mikayla','Oberbrunner','f','1980-02-11','52958 Eric Hill Suite 230'),(2,'Rudy','Waters','m','2010-07-05','38796 Markus Motorway Apt. 445'),(3,'Jalon','Ratke','m','1997-08-23','2653 Koch Street'),(4,'Brycen','Kuvalis','m','1976-09-06','4217 Glenda Place Suite 235'),(5,'Kenny','Mayert','f','1995-02-09','012 Trantow Groves Suite 965'),(6,'Eriberto','Rowe','f','1993-09-28','7168 Schultz Drive'),(7,'Ivory','Flatley','m','1988-04-21','72998 Volkman Loaf Apt. 527'),(8,'Carrie','Wilkinson','f','1987-06-02','671 Hoeger Locks'),(9,'June','Williamson','m','1984-10-02','7256 Aidan Trail Apt. 289'),(10,'Priscilla','Langworth','m','1989-10-03','9629 Kris Creek Apt. 917'),(11,'Sherwood','Christiansen','m','1991-09-25','9616 Kessler Cape'),(12,'Monroe','Hoppe','f','1986-01-26','365 Borer Forks'),(13,'Emory','Wolff','f','2012-03-30','080 Daija Parkway Apt. 367'),(14,'Herminia','Heathcote','m','1980-01-03','463 Jerde Manors'),(15,'Ottilie','Glover','m','2002-11-24','57878 Verdie Burgs Apt. 185'),(16,'Raymundo','Kovacek','f','1981-03-08','19868 West Street'),(17,'Myrtle','Pfeffer','f','1981-03-23','21114 McGlynn Fort Apt. 096'),(18,'Margot','Kerluke','f','2001-07-04','22747 Dora Meadow Apt. 731'),(19,'Trisha','Stroman','m','1991-05-24','829 Max Viaduct'),(20,'Fritz','Welch','m','2018-07-11','44315 Gusikowski Mews Suite 150'),(21,'Alexandrea','Grant','f','2005-07-26','6623 Schuppe Mountains'),(22,'Ivy','Volkman','m','2007-04-22','5044 Antwan Square Suite 547'),(23,'Layla','Legros','m','1990-08-24','119 Burley Burgs'),(24,'Joshuah','Gislason','m','1976-02-08','218 Hansen Brooks'),(25,'Jaime','Buckridge','f','2017-06-28','071 Russel Points'),(26,'Daphne','Davis','f','1980-10-11','558 Marquardt Cliffs'),(27,'Maci','Wiegand','f','2021-03-13','094 Lakin Drives'),(28,'Shyann','Lockman','m','1999-09-26','3835 Ara Underpass Apt. 156'),(29,'Tristin','Bailey','f','1977-01-09','760 Renee Row'),(30,'Leonard','Bogisich','f','1982-01-07','68499 Holly Lodge Suite 189'),(31,'Dana','Stoltenberg','m','1993-08-29','059 Delphia Corners Apt. 752'),(32,'Eunice','Koch','f','2001-06-13','0488 Trudie Passage'),(33,'Joan','Schamberger','f','1971-02-23','57641 Kiehn Camp'),(34,'Carolyne','Balistreri','m','1976-06-28','353 Andreane Light'),(35,'Demarcus','Weimann','f','1987-09-22','5812 Kody Road Apt. 921'),(36,'Anthony','Kuhn','m','1995-12-24','67829 Wilkinson Terrace Suite 203'),(37,'Aimee','Schneider','f','1985-10-12','435 Swaniawski Gardens Suite 461'),(38,'Berenice','Pacocha','f','1982-01-22','86271 Kerluke View Suite 330'),(39,'Preston','Ryan','f','1980-09-17','783 Cornelius Court'),(40,'Marlene','Kiehn','m','2010-05-29','858 Trisha Cliff Apt. 642'),(41,'Heidi','Cummerata','f','1980-06-04','263 Aliyah Cape Apt. 935'),(42,'Maci','Franecki','m','2008-03-02','433 Lavinia Viaduct'),(43,'Zion','Turner','m','1974-06-14','203 Estevan Trace Suite 246'),(44,'Evert','Hessel','m','2018-03-03','7116 Retta Trail Suite 738'),(45,'Lora','Ritchie','m','2001-05-18','8715 Cedrick Court'),(46,'Charity','Bernier','m','1994-01-28','8323 Wehner Station Apt. 038'),(47,'Cristobal','Miller','f','2007-10-12','23999 Marvin Inlet'),(48,'Abraham','Feest','f','2016-04-12','0734 Garrison Spur'),(49,'Camren','Bartell','f','1990-02-14','16454 Alexandrine Mountains'),(50,'Herminio','Gibson','m','2003-12-15','11737 Constantin Center'),(51,'Hilton','Lang','m','1984-09-11','1457 McLaughlin Ridges Suite 675'),(52,'Rosetta','Trantow','m','1996-01-25','390 Lizzie Mountains Apt. 973'),(53,'Jakob','Yundt','f','1991-03-31','7416 McClure Islands Suite 669'),(54,'Myriam','Ortiz','m','1998-05-15','72872 Anastasia Loaf'),(55,'Ezequiel','Okuneva','f','2017-01-18','8298 Lehner Avenue Apt. 996'),(56,'Marques','Kuhn','f','1984-08-16','38165 Lind Isle Apt. 941'),(57,'Rosie','DuBuque','m','2010-07-23','49776 Irwin Brook Apt. 936'),(58,'Jamir','Terry','f','2019-06-01','02120 Orval Shoals'),(59,'Hailey','Weissnat','m','1988-09-09','1442 Catalina Flat Apt. 269'),(60,'Alberta','Schamberger','f','1996-04-02','50767 Rice Hollow Suite 728'),(61,'Christop','Schmidt','m','2006-10-22','87996 Johnston Lakes Suite 935'),(62,'Ed','Satterfield','m','1970-10-06','3958 Romaguera Coves'),(63,'Reyna','Mohr','m','1994-10-27','56837 Reilly Islands'),(64,'Diamond','Nicolas','f','2011-05-14','704 Purdy Plains'),(65,'Alva','Fay','f','1976-06-05','00754 Gusikowski Cove'),(66,'Garrison','Veum','m','1974-10-15','880 Van Overpass'),(67,'Edythe','Stracke','m','2009-09-10','9939 Kira Gardens'),(68,'Rowland','Kunde','f','1986-11-18','924 Volkman Mills'),(69,'Florida','Zieme','m','1970-10-11','38062 Paucek Ports Suite 296'),(70,'Keon','Heidenreich','f','1979-06-02','594 Kris Grove Suite 990'),(71,'Willard','Upton','f','2008-10-26','90290 Langosh Square'),(72,'Cletus','Bahringer','f','2021-02-27','9431 Rolfson Fields Suite 274'),(73,'Athena','Aufderhar','f','2002-06-29','674 Mante Passage'),(74,'Stone','Walsh','f','1988-05-02','25852 Vivianne Brook Apt. 030'),(75,'Jarrett','Klein','m','2013-02-10','5663 Daphney Forge Suite 891'),(76,'Oswaldo','Von','m','2010-12-13','026 Williamson Crest'),(77,'Morton','Bednar','f','2012-06-03','98769 Parisian Underpass'),(78,'Dominic','Tremblay','f','2017-06-11','643 Aliza Extension Apt. 260'),(79,'Elouise','Lehner','f','1996-05-27','11543 Carrie Hills Apt. 704'),(80,'Madilyn','Jaskolski','f','2004-01-13','9780 Hamill Roads Suite 588'),(81,'Paul','Runolfsson','f','2010-08-04','6658 Hudson Camp'),(82,'Adolfo','Hyatt','m','1990-02-22','824 Larkin Knoll Apt. 642'),(83,'Dejon','Koelpin','m','1992-06-26','12189 Heller Lock Apt. 153'),(84,'Pietro','Hackett','f','1994-03-17','38782 Casper Knolls'),(85,'Kristina','Gislason','m','1993-06-21','7140 Legros Radial Suite 904'),(86,'Bennie','Turcotte','m','1991-08-05','4772 Josiane Vista Apt. 422'),(87,'Stevie','Lueilwitz','m','1971-10-13','3096 Kuvalis Curve Suite 914'),(88,'Maddison','Prohaska','f','1971-04-28','428 Jaquan Parkways'),(89,'Orin','Harvey','f','1992-12-18','5371 Langworth Trail Apt. 529'),(90,'Rosendo','Olson','m','1998-03-12','232 Fahey Highway Suite 482'),(91,'Jaylan','Konopelski','m','2007-11-07','81962 Cornell Street'),(92,'Quentin','Dickens','f','1984-02-26','9366 Art Run'),(93,'Keira','Smitham','f','1974-06-06','1090 Jast Brooks Apt. 485'),(94,'Eliane','Hane','m','1970-11-04','1601 Schamberger Highway'),(95,'Marianne','Hermiston','f','2010-04-05','7763 Jast Lodge'),(96,'Selina','Stoltenberg','m','2020-06-01','6384 Gerhold Wells Apt. 019'),(97,'Daphne','Ferry','f','2002-08-08','11079 Buckridge Via'),(98,'Stuart','Parker','m','2002-01-30','2490 Benedict Bypass Apt. 778'),(99,'Amely','Ritchie','f','2015-06-21','3279 Hyatt Islands Suite 173'),(100,'Chad','Bins','m','1971-11-02','88324 Schiller Falls');
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint NOT NULL,
  `password_hash` char(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'daniella70@example.net',8977408426,'20bc27a6e74075521c3513d306391f01103aaf3f','1985-01-09 14:06:37',NULL),(2,'mmcdermott@example.net',8954090161,'9f3e6e3aa27b60e1b1dc644bd0f945bd232b7b8d','1980-07-30 17:05:49',NULL),(3,'jaclyn81@example.com',8993217873,'d4e195a134989d0c16678e62040b5c889f877944','1972-07-28 09:18:57',NULL),(4,'to\'connell@example.net',8921458177,'767d7a242df633a97d89a367e3af5ff1e4e1b105','2018-05-10 03:52:06',NULL),(5,'lukas.lemke@example.net',8990551765,'ce19f2c578cd03f856e15e5684217431280f1c90','1978-09-08 11:27:04',NULL),(6,'ocummings@example.org',8913314442,'270591e0b9eebe149c61939b8ac3d784fd97da84','2012-06-09 14:55:00',NULL),(7,'nmante@example.net',8922989337,'50722702742e959d1c65851677771007c5a98ab2','2006-10-31 17:56:28',NULL),(8,'dolores14@example.org',8963622359,'9a13af8acd1b15bf3966dd8b7c2da8395b0b1368','2015-02-01 20:10:14',NULL),(9,'hermiston.adah@example.org',8901736487,'75246c97a0b513051eed58d81b9dbb89eb5a31d2','1985-04-18 23:25:22',NULL),(10,'roob.ludie@example.com',8974703349,'84effed20963b18ea90a4b981ca55b74564b7b4d','1984-02-26 19:13:11',NULL),(11,'muller.corbin@example.org',8976206560,'82603e243187432fadfaba069e4c5c5fcfbe183e','1988-09-03 11:28:37',NULL),(12,'rolando42@example.com',8956334938,'eb3eadcbbbafa0c128149d39c5b946c7ab2bc7e8','2011-03-16 10:15:19',NULL),(13,'gerhold.leanne@example.net',8902678817,'9e5c46afa07495979c06bc2f7a72cfb0df701d44','1985-08-09 09:23:33',NULL),(14,'hdoyle@example.com',8934475662,'94c1d44fa9871a3443b77ab776a3b1f61aa5bc1f','2009-02-23 19:00:11',NULL),(15,'stanford35@example.com',8976544547,'101cb7964487bf71eb00147ad40a348829d42286','1997-06-01 00:48:39',NULL),(16,'alexander72@example.net',8926055662,'b029f0376f2e69a971adb6b8a1c0334c993b1904','1973-09-08 04:58:58',NULL),(17,'champlin.adah@example.com',8906773706,'de66d75458be27c27e357450d780578cdea9e7e6','1990-10-18 04:41:48',NULL),(18,'abailey@example.com',8998806000,'41bdda8a278e44dfc25e0f6e9bcdc507ea0268b8','1975-04-01 16:35:09',NULL),(19,'doyle.bret@example.net',8907889064,'0323e21d7fc4851d7c898eb18946b243777d95b6','1973-05-20 12:34:22',NULL),(20,'dbeatty@example.com',8931522136,'b9467f3f9c43d08c4f86aac5515a0ebdd77b71b5','2004-08-19 01:09:24',NULL),(21,'connie02@example.org',8991030518,'9bca0f41610db65ed0f78e5a7094b3d7081560a1','2016-02-06 04:53:18',NULL),(22,'simeon17@example.org',8916081075,'0aaf8bc1a4cefea53012a0d267f732832353ae41','1978-12-02 12:58:52',NULL),(23,'ahammes@example.com',8976329771,'ad55f4dbe5b4c9f3af708cb2775f360236999281','2007-03-22 10:31:45',NULL),(24,'thaddeus01@example.com',8926990909,'d01d3d353715b1b8eccaf2bd7bb7d42c1ab744f1','2011-03-30 18:42:11',NULL),(25,'hulda.osinski@example.com',8928693170,'0f274eeefcc6425511d4cefcfc35c4dfcce23e48','2004-09-02 00:56:53',NULL),(26,'emmie.fadel@example.org',8948026070,'b3767992d32743aeb97f9009dda3e84257915379','1978-03-02 21:28:39',NULL),(27,'carissa.collier@example.net',8901328526,'7aee6fb5f21141caffc904283d1361f90bbeafc8','2003-03-22 11:24:20',NULL),(28,'heloise.runolfsson@example.com',8903098054,'2ceada5943196f97d5ce455baecfa44334fbed99','1995-01-13 17:21:35',NULL),(29,'lucile.zemlak@example.com',8917878545,'559f4c92b5c9dddfc1f9c40887e62efc6ee8dc68','2014-07-11 23:21:03',NULL),(30,'amitchell@example.com',8919423233,'6b26564aaeedf9345d17683978383714370412e9','2011-09-17 23:34:29',NULL),(31,'linnea23@example.org',8903950371,'e5f5d15096b145e8996bf3b56eafb1c4146c55af','1988-08-17 17:39:44',NULL),(32,'zulauf.alyson@example.org',8944103022,'f14465ded45a6d38d69851d57e43a386e222c9e9','1986-02-15 15:44:04',NULL),(33,'pattie25@example.net',8902471968,'ba1c88c1caa0d7735960c5d34b7500aa85c177f4','2016-01-27 08:52:10',NULL),(34,'josiah.casper@example.net',8925678802,'6fce4f6b1752231b41c387a24f989766d50b5076','2001-12-10 08:57:21',NULL),(35,'cheyanne.ondricka@example.net',8926976849,'2f3868af720cb775259d6cdae5a80a265fa54a11','2018-04-23 03:31:21',NULL),(36,'vince.howe@example.com',8969208003,'9f7244ebc350feae2f31afe2effa26b643cd58c7','1992-01-31 22:26:15',NULL),(37,'jackson43@example.org',8904485015,'99cda51c5262d3b68346dcd55a2b2291d8976083','1989-11-28 23:46:29',NULL),(38,'bsatterfield@example.com',8955296393,'6231cb40cac085b4ca7b7040147257e947efe869','1976-04-04 09:22:53',NULL),(39,'ebert.josue@example.net',8911624014,'a522388adbc8774a6ed13721b3cecd5dba31b646','2004-06-22 18:01:39',NULL),(40,'balistreri.tanner@example.org',8904476210,'c1745d26d63e66d4f58f8bf9d8dcfc43eeb6ac7f','1978-06-01 05:13:01',NULL),(41,'darien74@example.net',8908331677,'515e61a67800d5b7b5b029a06a6d243219cee528','1987-02-28 13:23:27',NULL),(42,'cathryn42@example.com',8999798415,'59c09d830fec79c03dbaf5cd73a6f4d146a82503','2019-02-12 13:27:46',NULL),(43,'olowe@example.com',8914476307,'69a9a0b17a621f20b015e39a2eed964bafdfc95c','2002-02-08 01:56:38',NULL),(44,'wchamplin@example.org',8904134037,'cd3f5115f14a66784464cddf828818345eaf760a','2014-07-15 23:00:37',NULL),(45,'roosevelt.pollich@example.net',8903066211,'f8ec15ff7b890b8051678fb716377014d9891aaa','2000-09-27 07:53:30',NULL),(46,'bennett32@example.com',8943572543,'a9cc5bdb5ff3161f526c0cdf6856af3ddc58c3ff','1985-11-18 08:01:39',NULL),(47,'boyle.seamus@example.org',8937410331,'9f7927d8b9b043d518ba16d172d3bc2acdf8f850','2018-03-10 21:13:39',NULL),(48,'prince.bode@example.net',8932601011,'2b57bae037bf5c9702200eb23a8117da2b8ebfcd','1977-12-02 16:02:52',NULL),(49,'kkessler@example.org',8961602881,'0dfdc76e1748eb186687fd5836c21d0b3e61be67','1990-12-27 21:46:36',NULL),(50,'yost.america@example.com',8999450053,'044ac1084240978254a3fc89adcd46c733fa713b','1983-07-02 04:43:05',NULL),(51,'germaine25@example.net',8989382804,'c1e809cebd69db9567f2d90f8a0f258e92b35dc2','1986-09-10 22:47:06',NULL),(52,'eichmann.sunny@example.net',8989917710,'89ed3256b7ffc5d7d91baed4db7e1d06809d1fa0','1985-08-22 05:17:44',NULL),(53,'edward.hegmann@example.org',8990069003,'4386d890c917530b6c651ace0455756a4223c5bc','1998-07-10 23:07:00',NULL),(54,'betsy62@example.org',8935570994,'6133dacae722cc429ba17deac85c9f8533bdfbb3','2008-04-03 12:02:06',NULL),(55,'vharber@example.net',8927153020,'f519434fcf650b2c8b134a5cf27f0c50cb91b350','2011-04-29 22:54:39',NULL),(56,'alivia99@example.net',8976608507,'5bb63d7a0f922aa60d78dcf7e4aba1a0134e5bff','1999-12-23 03:17:55',NULL),(57,'hherman@example.net',8970450412,'d43116d1b882e3170a5715cfa17a9160e35b2232','2007-07-24 21:15:03',NULL),(58,'jjenkins@example.com',8985783628,'b3fc88f17316430d205d1ff80dd9571efded065b','1982-04-24 15:16:02',NULL),(59,'dbeier@example.com',8993753240,'e84735f931706d9984d20be28ec4c279bbb92a89','2002-02-15 00:10:38',NULL),(60,'jamil.little@example.net',8950624513,'513a98a8e24f7d897815aa36b08b6848ad3fbef5','2005-05-02 19:20:24',NULL),(61,'shanahan.jose@example.com',8959734677,'6e108bbd5dadd201a77b1949edf106ccac64eabd','1992-02-09 10:10:05',NULL),(62,'strosin.rafaela@example.com',8956232631,'0c4f64a76695cb8adb5007e3f48e6abfe13ffcbd','2008-02-09 06:17:45',NULL),(63,'mosciski.chasity@example.org',8951605080,'f8446a80f30bf8e86b3e7c6bd7f5043faa8eecc9','1986-01-03 11:26:01',NULL),(64,'neal40@example.net',8967102932,'17ba66f36eddfef159bc820e59ad9ed937ad7db9','2014-09-07 22:44:33',NULL),(65,'aida.o\'conner@example.org',8985164104,'6cd7a349ad19a5ed51339f4619e3a342ca3d5f9e','1995-12-24 12:09:50',NULL),(66,'jason35@example.org',8912557871,'89faf0ba64537aebbd2d0b76bc34a10c33937da5','1972-05-27 05:30:26',NULL),(67,'brennan.ruecker@example.org',8949261167,'2dca37369cd9bd90ee76dcba566e13f7805be44c','1990-02-07 09:08:39',NULL),(68,'egoodwin@example.org',8982270542,'5a2dcb6a4e761e9c6f387e0f9603323fba0aa0fe','1983-04-21 06:01:04',NULL),(69,'edgar.lang@example.com',8922936293,'b5956022c7dd0d47af9240b614c50f8e39a9ff0d','2010-07-13 02:19:51',NULL),(70,'clare.pagac@example.com',8942005509,'b1c7bba3fc27a364564a4799a6d67c58d63688e0','2018-01-24 21:46:15',NULL),(71,'rdickens@example.org',8982676871,'285f650b4bcb86b062d8fcb2251a88183d803e64','2000-01-28 01:22:11',NULL),(72,'xweber@example.net',8982283783,'831a3a1b26741a92312fce1ce5bc1e901b0c80d4','1977-07-16 09:00:16',NULL),(73,'hauck.deangelo@example.com',8965475405,'24eb0f09cf2b3752858dfa758f48353a02653345','2000-06-06 17:41:55',NULL),(74,'zreilly@example.com',8914872821,'1a0e8a377e83e37317bca8446b6575c048de976c','1990-11-01 09:34:19',NULL),(75,'clint.russel@example.com',8959085390,'648bf6d4196cc755139c9e9ead163ff45ac59015','2015-09-18 06:20:18',NULL),(76,'lesley61@example.net',8927748462,'67ccff36e0f396ea35da0094b57fd28977252a69','2002-01-09 16:13:19',NULL),(77,'owuckert@example.net',8951035949,'1eba7b9678638ab9857a90d6ea7b9b4cccdb51ca','2012-11-17 23:11:10',NULL),(78,'yadira29@example.net',8956293310,'7d370d3c96e8495089eaf9ec2b84e87ae1f76782','2015-02-11 11:41:24',NULL),(79,'korbin21@example.net',8935052595,'582d1b0e80d0f04a5b46950cadac64c6eb46c592','1978-01-02 14:16:48',NULL),(80,'astrosin@example.com',8993115708,'05eb2f7886782d52125195c108d68f949ced27c1','2000-11-24 23:38:32',NULL),(81,'phagenes@example.com',8955012223,'3addd4ecb406583663bf8a6553165d282e134e91','2009-06-23 08:02:24',NULL),(82,'huels.miguel@example.com',8967444210,'1c63996b7dd6d345fd1c85330db583f1ee9327ec','1998-03-31 18:48:57',NULL),(83,'abigayle07@example.com',8956988899,'e859630bab03f40a743758ea8ac224db6a5fa966','1978-11-22 20:44:51',NULL),(84,'fpouros@example.org',8923193250,'6b3ff876a4d5a2d45753f767fb13626319898f56','1980-06-30 12:57:31',NULL),(85,'sarai.gerhold@example.net',8991836426,'e44bcf910af8794c21577b7ac54073162dae4142','1977-06-22 19:03:35',NULL),(86,'macie10@example.com',8967667630,'1838b9102a9a5321181f25b5f22cd1a0d813fba0','2003-03-12 19:09:02',NULL),(87,'greenholt.muriel@example.net',8931400583,'cba7fcb17879d49041559d10365cc9650a00593f','2020-12-27 12:52:12',NULL),(88,'larissa.kuhlman@example.org',8989218860,'1bf0439988ba90a0042581fd36e6582db36a80e6','1993-09-05 01:43:47',NULL),(89,'vesta.murray@example.net',8978205550,'45a82839d840fc8aa2ed232099478be6fdbf02f0','1980-07-28 15:53:26',NULL),(90,'bianka.hoppe@example.net',8924257694,'c8ed21a5186e345124d80c5f8b8e0d599aedbcde','1980-02-01 05:28:50',NULL),(91,'nwunsch@example.net',8939583233,'625832c1bda6a2f60ebb49045e57ee2c1a82dd0f','1976-03-30 14:45:57',NULL),(92,'wiza.mariela@example.org',8977139797,'199bf721c35a49237b269b0324a43b4006ba5eb7','2003-03-17 09:51:50',NULL),(93,'clarissa19@example.net',8962257045,'ee561aad4532c036006152bffbc5247b2670830c','1996-03-08 21:28:44',NULL),(94,'satterfield.carissa@example.com',8900018295,'cc4cc2eee801bfba1ea082778eab6bbc239ef536','1985-06-18 04:01:21',NULL),(95,'turner.johanna@example.com',8971946759,'345ae57e8e438facbbf1381a304fb0bdb652f2a0','2003-12-05 18:20:31',NULL),(96,'alda01@example.com',8929381437,'e09a4cd280be80fa01e39cf811ae7a14dce38502','1973-10-16 18:39:07',NULL),(97,'ima.grady@example.org',8981275890,'8060635e99facb351486eb16a9ba0dfeb7018f20','2001-02-19 00:04:14',NULL),(98,'lillian14@example.com',8977287879,'34548e13e965d69b94a59feaf07f58e471b7e30a','1983-04-19 09:57:51',NULL),(99,'kathlyn34@example.org',8972836429,'98fc7e5f3fa1450528b956d555a45e2bdeee26ce','2016-09-09 23:40:19',NULL),(100,'jessie.zulauf@example.net',8913805293,'73f734bd81fdbdfe08b844df54c44f93002a841c','1999-05-01 12:52:03',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_community`
--

DROP TABLE IF EXISTS `user_community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_community` (
  `community_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`),
  KEY `fk_user_community_community1_idx` (`community_id`),
  KEY `fk_user_community_user1_idx` (`user_id`),
  CONSTRAINT `fk_user_community_community1` FOREIGN KEY (`community_id`) REFERENCES `community` (`id`),
  CONSTRAINT `fk_user_community_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_community`
--

LOCK TABLES `user_community` WRITE;
/*!40000 ALTER TABLE `user_community` DISABLE KEYS */;
INSERT INTO `user_community` VALUES (1,1),(1,11),(1,21),(1,31),(1,41),(1,51),(1,61),(1,71),(1,81),(1,91),(2,2),(2,12),(2,22),(2,32),(2,42),(2,52),(2,62),(2,72),(2,82),(2,92),(3,3),(3,13),(3,23),(3,33),(3,43),(3,53),(3,63),(3,73),(3,83),(3,93),(4,4),(4,14),(4,24),(4,34),(4,44),(4,54),(4,64),(4,74),(4,84),(4,94),(5,5),(5,15),(5,25),(5,35),(5,45),(5,55),(5,65),(5,75),(5,85),(5,95),(6,6),(6,16),(6,26),(6,36),(6,46),(6,56),(6,66),(6,76),(6,86),(6,96),(7,7),(7,17),(7,27),(7,37),(7,47),(7,57),(7,67),(7,77),(7,87),(7,97),(8,8),(8,18),(8,28),(8,38),(8,48),(8,58),(8,68),(8,78),(8,88),(8,98),(9,9),(9,19),(9,29),(9,39),(9,49),(9,59),(9,69),(9,79),(9,89),(9,99),(10,10),(10,20),(10,30),(10,40),(10,50),(10,60),(10,70),(10,80),(10,90),(10,100);
/*!40000 ALTER TABLE `user_community` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'vk'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-22 11:18:50
