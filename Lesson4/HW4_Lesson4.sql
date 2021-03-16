-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: vk
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community`
--

LOCK TABLES `community` WRITE;
/*!40000 ALTER TABLE `community` DISABLE KEYS */;
INSERT INTO `community` VALUES (1,'quaerat','Laborum est impedit ullam harum deleniti numquam.',91),(2,'fugiat','Distinctio nihil provident officiis.',21),(3,'aut','Voluptatem ipsum architecto consequatur odit tempore.',18),(4,'in','In consectetur veniam blanditiis sint molestias nihil qui dolorum.',13),(5,'dolor','Ut explicabo libero sit quod qui veniam voluptas.',93),(6,'nihil','Possimus nesciunt et tempora voluptatem ut ut.',69),(7,'sed','Omnis qui molestiae incidunt pariatur error nulla consequatur.',29),(8,'ut','Aliquam ut deleniti laborum eveniet magnam.',68),(9,'id','Autem deleniti quasi vero nemo est dolorem reprehenderit.',78),(10,'totam','Sit magnam minima laborum autem ipsa alias ea praesentium.',98),(11,'et','Reiciendis dolor pariatur dolores perspiciatis a.',9),(12,'labore','Similique aut minima voluptatem dolor omnis.',14),(13,'dolorum','Veritatis consequatur voluptate praesentium et modi.',28),(14,'enim','Cumque autem et aut minima deserunt aspernatur eligendi.',71),(15,'magni','Magnam ipsam voluptas nostrum ipsa.',12),(16,'nemo','Sed similique est voluptatem error delectus sunt.',38),(17,'rerum','Explicabo ipsam illo asperiores ipsum eos tempore recusandae.',88),(18,'cupiditate','Doloribus ut molestiae dolor error dicta iusto accusantium.',34),(19,'quis','Quos perspiciatis commodi eveniet quas sunt qui.',37),(20,'placeat','Et beatae molestiae ipsum blanditiis repudiandae.',43);
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
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '-1 - отказ\n0 - запрос\n1 - дружба',
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
INSERT INTO `friend_request` VALUES (1,15,-1,'1986-06-05 22:11:11',NULL),(1,57,1,'2005-07-05 20:06:10',NULL),(1,91,-1,'1994-05-24 06:32:36',NULL),(2,29,1,'1979-03-06 15:50:14','2000-12-04 23:45:53'),(3,3,0,'2007-01-13 17:42:48',NULL),(3,13,-1,'1972-03-29 15:45:40','1989-08-22 07:41:05'),(4,4,1,'1971-09-02 15:39:59','2019-09-29 12:18:19'),(6,73,1,'1971-07-30 04:54:48',NULL),(8,90,-1,'1987-02-12 01:35:40',NULL),(9,97,0,'2003-06-05 22:58:35','2009-03-02 11:01:14'),(10,98,0,'1970-03-20 05:54:28','2014-08-04 02:17:25'),(12,14,0,'1981-10-05 08:08:28',NULL),(13,48,1,'2014-01-06 02:35:27','1996-03-08 07:26:05'),(13,88,-1,'1972-01-01 20:11:03','1985-10-22 03:56:57'),(13,100,0,'1972-10-18 05:15:52','1993-03-25 19:28:31'),(16,98,1,'2014-02-04 13:05:44',NULL),(21,27,1,'2013-11-15 16:23:22','2011-05-01 20:35:59'),(23,13,0,'1987-05-05 23:48:12',NULL),(25,40,-1,'2004-07-21 08:42:37',NULL),(25,68,1,'1991-01-26 18:25:46',NULL),(25,73,-1,'1985-10-28 00:18:31','2006-08-07 10:38:29'),(26,16,-1,'2019-06-03 10:45:32','1971-04-07 18:25:04'),(26,55,1,'1984-11-20 08:27:25',NULL),(27,12,-1,'2000-07-17 08:42:08','1984-01-04 14:32:30'),(27,30,0,'2004-07-17 19:25:53','2009-02-06 10:30:37'),(27,76,0,'1986-01-09 11:29:57',NULL),(28,62,1,'1997-05-31 08:53:13',NULL),(28,94,-1,'2020-05-29 21:39:23','1990-03-01 17:00:29'),(30,4,-1,'2017-11-18 17:01:46',NULL),(30,52,0,'2006-11-02 10:42:09',NULL),(30,71,1,'2001-05-01 09:07:48','2016-07-29 15:59:05'),(30,81,1,'1976-04-21 00:54:34','2016-09-22 21:22:51'),(31,25,-1,'2000-08-17 00:16:02',NULL),(31,63,1,'1972-11-03 21:39:36',NULL),(32,57,1,'2000-04-04 14:40:08','2016-01-22 03:05:09'),(32,64,-1,'1976-08-03 15:20:27','2009-09-13 16:30:56'),(32,70,0,'1980-12-18 01:34:54',NULL),(32,73,0,'1973-02-18 02:17:20','1980-05-26 20:32:15'),(33,86,0,'1978-10-01 12:33:31',NULL),(35,55,-1,'1989-07-22 04:00:32',NULL),(36,3,1,'1990-09-26 17:19:25',NULL),(36,34,-1,'1995-01-11 12:37:18','2005-07-07 03:28:00'),(36,90,1,'1973-01-15 08:24:43','1997-02-06 02:38:45'),(37,6,-1,'1982-07-07 06:11:16',NULL),(37,99,1,'2004-05-23 10:55:25','1991-10-17 12:21:32'),(38,27,-1,'2011-10-30 23:52:33',NULL),(45,40,-1,'1991-01-05 02:39:02',NULL),(45,85,0,'2021-02-27 04:29:13',NULL),(46,42,0,'2020-09-19 23:30:27','1981-04-24 20:56:08'),(48,55,1,'2001-09-26 15:42:49',NULL),(51,92,0,'1976-02-29 22:53:38',NULL),(53,24,1,'2004-03-31 02:24:25','2014-07-29 00:07:02'),(53,59,0,'1986-11-02 09:13:03','2017-06-06 00:57:11'),(55,95,1,'1985-11-10 18:27:29',NULL),(60,13,1,'1975-06-14 09:34:57',NULL),(60,58,0,'2018-12-21 09:41:10','2013-10-03 12:36:34'),(61,29,0,'1992-06-20 22:22:51','1999-09-29 20:05:57'),(62,6,1,'2005-04-22 08:29:35','1985-09-17 06:46:47'),(62,61,1,'2015-06-17 09:07:41','1985-03-12 20:23:47'),(63,50,-1,'2004-09-02 15:48:52',NULL),(63,83,1,'1971-04-17 16:58:53','2008-01-16 17:34:44'),(64,73,0,'2011-04-15 08:37:53','1971-07-23 03:02:07'),(65,40,0,'1994-03-21 08:17:18',NULL),(66,23,-1,'1982-09-08 09:45:32',NULL),(66,26,1,'1993-06-29 17:47:00',NULL),(66,28,1,'1999-08-21 17:17:21','2010-01-07 20:21:46'),(66,99,1,'1993-07-17 17:03:07',NULL),(68,60,0,'2005-05-15 19:45:14','1993-05-09 01:56:17'),(70,41,-1,'1990-09-11 21:57:56','1972-02-19 12:32:41'),(72,1,0,'1991-08-13 16:13:27','1991-03-01 11:35:51'),(74,64,1,'2017-09-27 13:10:51',NULL),(76,20,1,'2008-03-13 06:56:15',NULL),(76,27,-1,'1979-12-17 09:24:43',NULL),(76,41,0,'2018-05-09 08:22:13','2014-01-29 13:48:42'),(77,26,-1,'1981-01-30 03:10:59',NULL),(80,73,1,'2008-02-20 11:34:05','1994-02-06 11:07:36'),(81,13,1,'1978-09-03 09:33:02',NULL),(81,17,0,'2013-06-21 18:17:52',NULL),(81,21,-1,'1984-08-04 09:57:27',NULL),(82,4,0,'2019-02-28 09:58:54',NULL),(84,29,-1,'2003-09-10 23:48:43',NULL),(84,97,1,'2004-07-20 13:29:20','1993-02-08 17:49:34'),(85,68,-1,'2017-02-16 10:10:14',NULL),(86,32,0,'2015-01-10 15:18:15','1986-07-04 19:25:23'),(86,68,0,'1989-04-16 14:20:33','1974-01-10 23:29:46'),(86,97,1,'2004-10-14 18:54:26','1982-08-23 03:27:50'),(87,83,-1,'1982-06-20 10:28:45',NULL),(89,28,1,'1998-05-15 19:30:33','2012-02-04 07:59:31'),(90,1,-1,'2003-01-30 07:24:58','1991-06-07 14:12:49'),(91,78,1,'2020-01-02 21:57:05','1994-02-07 09:11:29'),(93,63,-1,'1996-04-23 16:29:55','2020-06-27 21:37:52'),(93,95,0,'2006-04-13 04:50:41','1994-11-03 04:15:25'),(94,48,0,'2008-07-11 09:50:39','2019-03-30 05:58:29'),(94,68,1,'1996-01-20 04:13:11','1989-10-28 04:13:22'),(97,34,0,'1975-12-29 12:50:49','2009-06-30 21:29:30'),(97,53,0,'1978-01-23 09:07:35','2016-05-22 23:12:46'),(98,7,0,'1982-07-11 04:20:43',NULL),(98,8,1,'2013-04-21 01:52:40','2015-03-08 15:00:52'),(98,24,1,'1993-06-12 14:19:08','1972-12-25 05:59:59'),(100,25,0,'1983-07-27 21:50:40',NULL);
/*!40000 ALTER TABLE `friend_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `like`
--

DROP TABLE IF EXISTS `like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `like` (
  `like_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `post_id` int unsigned DEFAULT NULL,
  `media_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`like_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  UNIQUE KEY `post_id_UNIQUE` (`post_id`),
  UNIQUE KEY `media_id_UNIQUE` (`media_id`),
  KEY `fk_likes_user1_idx` (`user_id`),
  KEY `fk_likes_post1_idx` (`post_id`),
  KEY `fk_likes_media1_idx` (`media_id`),
  CONSTRAINT `fk_likes_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_likes_post1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  CONSTRAINT `fk_likes_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `like`
--

LOCK TABLES `like` WRITE;
/*!40000 ALTER TABLE `like` DISABLE KEYS */;
INSERT INTO `like` VALUES (1,49,87,96),(2,90,22,30),(3,89,99,83),(4,3,6,62),(5,71,65,69),(6,8,76,9),(7,67,16,35),(8,83,97,27),(9,10,51,47),(10,18,81,74),(11,43,30,60),(12,38,19,82),(13,68,8,80),(14,51,11,85),(16,81,89,26),(18,25,38,38),(22,31,44,17),(23,13,12,24),(25,77,74,16),(26,26,55,4),(32,84,18,55),(35,59,98,1),(38,35,68,67),(42,87,84,5),(44,7,9,56),(45,34,67,54),(51,39,29,31),(54,65,63,7),(57,52,17,29),(60,40,93,12),(61,70,32,41),(65,22,73,70),(66,95,47,98),(68,36,2,18),(86,58,100,48),(88,79,82,59);
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
  `url` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '\\files\\2020\\01\\file.jpg',
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
INSERT INTO `media` VALUES (1,2,52,'application/vnd.wt.stf',NULL,NULL,'1990-07-11 22:43:46'),(2,3,42,'video/jpm',NULL,NULL,'1994-05-10 12:31:09'),(3,1,15,'model/x3d+binary',NULL,NULL,'2016-01-03 05:19:03'),(4,3,77,'application/x-gtar',NULL,NULL,'1984-02-09 05:34:20'),(5,1,99,'application/vnd.umajin',NULL,NULL,'2002-12-06 01:22:32'),(6,2,32,'application/vnd.dpgraph',NULL,NULL,'1977-10-24 11:16:00'),(7,2,3,'application/x-x509-ca-cert',NULL,NULL,'1994-11-14 23:57:11'),(8,2,28,'application/vnd.dna',NULL,NULL,'1975-04-23 06:43:10'),(9,2,21,'text/vnd.graphviz',NULL,NULL,'1988-10-14 14:32:01'),(10,2,68,'image/svg+xml',NULL,NULL,'1992-08-21 08:42:40'),(11,1,1,'video/x-flv',NULL,NULL,'1982-04-02 22:37:35'),(12,1,90,'application/vnd.route66.link66+xml',NULL,NULL,'1973-05-19 06:39:51'),(13,3,28,'application/pdf',NULL,NULL,'2014-09-12 11:25:33'),(14,3,61,'application/vnd.ms-excel.sheet.macroenabled.1',NULL,NULL,'1993-04-07 05:33:24'),(15,2,40,'image/vnd.fastbidsheet',NULL,NULL,'2019-10-01 10:38:55'),(16,2,92,'image/vnd.ms-photo',NULL,NULL,'1989-06-24 13:12:44'),(17,3,62,'application/vnd.epson.salt',NULL,NULL,'2003-03-05 18:12:11'),(18,1,93,'image/x-3ds',NULL,NULL,'1973-05-30 09:39:46'),(19,3,9,'application/vnd.oasis.opendocument.graphics-t',NULL,NULL,'1988-08-16 08:32:15'),(20,3,90,'application/vnd.llamagraphics.life-balance.ex',NULL,NULL,'2002-03-08 07:41:29'),(21,1,34,'application/x-tads',NULL,NULL,'2011-07-30 17:18:18'),(22,1,46,'application/pkixcmp',NULL,NULL,'2011-02-18 20:26:22'),(23,2,59,'application/vnd.oasis.opendocument.spreadshee',NULL,NULL,'1975-02-25 14:42:45'),(24,3,91,'video/x-matroska',NULL,NULL,'1984-07-27 17:43:50'),(25,3,10,'application/x-gramps-xml',NULL,NULL,'2020-07-20 16:42:26'),(26,2,4,'application/vnd.enliven',NULL,NULL,'1989-03-24 04:43:23'),(27,1,77,'audio/x-wav',NULL,NULL,'1972-04-20 19:31:54'),(28,3,85,'text/css',NULL,NULL,'1981-03-08 05:05:41'),(29,1,80,'application/vnd.ezpix-package',NULL,NULL,'1976-11-15 12:29:46'),(30,2,46,'application/xhtml+xml',NULL,NULL,'2000-06-14 08:41:01'),(31,1,11,'video/x-matroska',NULL,NULL,'1970-05-24 20:35:36'),(32,2,11,'video/vnd.uvvu.mp4',NULL,NULL,'2002-04-02 18:03:42'),(33,3,70,'application/json',NULL,NULL,'2003-11-03 19:58:51'),(34,1,48,'application/vnd.ms-wpl',NULL,NULL,'2001-01-20 14:31:22'),(35,3,72,'application/vnd.kde.kivio',NULL,NULL,'1984-08-28 05:32:40'),(36,2,85,'audio/webm',NULL,NULL,'2015-12-22 00:25:16'),(37,1,59,'application/vnd.ms-excel.sheet.macroenabled.1',NULL,NULL,'1978-11-18 23:36:01'),(38,1,42,'application/vnd.ms-project',NULL,NULL,'2004-05-01 19:34:22'),(39,1,3,'image/vnd.fpx',NULL,NULL,'2010-12-07 11:42:03'),(40,1,97,'application/x-blorb',NULL,NULL,'2004-02-11 03:44:35'),(41,1,91,'text/vnd.wap.wml',NULL,NULL,'1976-12-21 10:32:46'),(42,1,21,'application/x-x509-ca-cert',NULL,NULL,'1973-08-15 00:37:20'),(43,3,94,'text/vnd.wap.wmlscript',NULL,NULL,'2012-12-13 08:23:38'),(44,1,72,'application/vnd.fdsn.seed',NULL,NULL,'2005-12-03 00:32:23'),(45,3,50,'application/vnd.oasis.opendocument.image-temp',NULL,NULL,'1997-06-05 12:20:24'),(46,1,94,'text/richtext',NULL,NULL,'1970-02-10 10:04:16'),(47,2,54,'model/vnd.mts',NULL,NULL,'1976-01-16 17:03:48'),(48,1,32,'application/x-xfig',NULL,NULL,'1975-08-17 17:42:20'),(49,1,6,'image/vnd.dvb.subtitle',NULL,NULL,'1986-04-16 14:54:15'),(50,3,2,'application/vnd.tcpdump.pcap',NULL,NULL,'2015-02-21 14:52:57'),(51,3,18,'audio/xm',NULL,NULL,'1994-10-10 06:39:45'),(52,3,82,'text/uri-list',NULL,NULL,'1994-10-05 20:00:56'),(53,3,16,'text/x-nfo',NULL,NULL,'1973-02-15 02:56:25'),(54,1,94,'application/vnd.fdsn.mseed',NULL,NULL,'2009-12-06 05:09:40'),(55,1,56,'application/vnd.epson.quickanime',NULL,NULL,'1978-01-28 14:39:10'),(56,3,30,'application/vnd.ms-powerpoint.presentation.ma',NULL,NULL,'1999-07-14 01:26:20'),(57,2,90,'application/vnd.oasis.opendocument.spreadshee',NULL,NULL,'2016-04-18 20:26:53'),(58,2,14,'image/g3fax',NULL,NULL,'2007-11-28 11:05:36'),(59,3,56,'application/pdf',NULL,NULL,'2018-02-22 05:10:55'),(60,3,58,'application/x-subrip',NULL,NULL,'2014-12-04 23:01:28'),(61,1,2,'application/x-sh',NULL,NULL,'2001-03-11 23:01:11'),(62,2,66,'audio/x-mpegurl',NULL,NULL,'1987-10-23 08:38:19'),(63,2,54,'application/xv+xml',NULL,NULL,'1991-06-05 10:17:41'),(64,3,79,'application/vnd.igloader',NULL,NULL,'1974-02-16 07:28:17'),(65,2,78,'application/vnd.xara',NULL,NULL,'2004-09-07 18:24:11'),(66,3,37,'application/vnd.syncml.dm+xml',NULL,NULL,'1998-06-20 23:23:47'),(67,3,65,'application/x-tcl',NULL,NULL,'1973-04-12 18:01:41'),(68,1,70,'application/vnd.dpgraph',NULL,NULL,'1989-03-05 10:37:44'),(69,3,41,'video/jpm',NULL,NULL,'1979-10-10 07:07:37'),(70,2,99,'application/x-font-ttf',NULL,NULL,'2006-02-02 22:28:15'),(71,3,53,'application/x-mscardfile',NULL,NULL,'1997-08-13 21:25:09'),(72,1,43,'application/voicexml+xml',NULL,NULL,'1974-03-07 22:31:22'),(73,2,79,'application/x-sql',NULL,NULL,'1970-11-07 02:49:11'),(74,2,27,'application/vnd.lotus-organizer',NULL,NULL,'1993-12-02 12:32:38'),(75,2,41,'application/x-msdownload',NULL,NULL,'2003-01-31 22:32:46'),(76,3,40,'application/vnd.sun.xml.math',NULL,NULL,'2010-06-27 14:50:11'),(77,2,35,'application/vnd.ms-pki.stl',NULL,NULL,'2008-01-04 01:32:47'),(78,1,97,'application/xop+xml',NULL,NULL,'1992-09-01 20:40:19'),(79,3,4,'application/rdf+xml',NULL,NULL,'1996-09-05 08:28:30'),(80,3,48,'image/bmp',NULL,NULL,'2011-07-29 20:36:15'),(81,3,55,'text/x-setext',NULL,NULL,'1981-03-26 16:39:38'),(82,3,75,'application/x-ms-xbap',NULL,NULL,'1971-02-20 20:15:28'),(83,1,2,'application/vnd.oasis.opendocument.graphics-t',NULL,NULL,'2017-06-27 08:55:08'),(84,2,1,'image/x-portable-anymap',NULL,NULL,'2016-01-16 07:41:03'),(85,2,7,'video/x-m4v',NULL,NULL,'1997-07-04 03:32:05'),(86,3,39,'application/vnd.oasis.opendocument.presentati',NULL,NULL,'1992-04-19 00:13:22'),(87,2,27,'application/x-ms-wmd',NULL,NULL,'1973-04-24 15:03:03'),(88,3,2,'application/x-glulx',NULL,NULL,'2013-08-07 14:43:52'),(89,1,37,'audio/ogg',NULL,NULL,'2014-04-26 06:11:43'),(90,1,40,'video/x-fli',NULL,NULL,'1988-08-25 13:31:54'),(91,3,12,'application/vnd.ms-artgalry',NULL,NULL,'1986-02-21 13:41:18'),(92,3,18,'application/xv+xml',NULL,NULL,'2007-07-12 15:56:03'),(93,2,86,'application/vnd.hal+xml',NULL,NULL,'1982-05-25 15:17:34'),(94,1,33,'application/vnd.oasis.opendocument.spreadshee',NULL,NULL,'1973-01-19 02:27:23'),(95,3,90,'application/vnd.openxmlformats-officedocument',NULL,NULL,'2000-09-30 12:24:07'),(96,3,69,'application/vnd.flographit',NULL,NULL,'2018-08-08 02:23:56'),(97,2,64,'application/vnd.oasis.opendocument.database',NULL,NULL,'2004-05-27 11:55:14'),(98,2,65,'application/vnd.uiq.theme',NULL,NULL,'1991-09-23 16:29:34'),(99,2,87,'application/rss+xml',NULL,NULL,'1989-11-16 15:15:54'),(100,2,7,'model/mesh',NULL,NULL,'1974-06-01 22:54:49');
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
INSERT INTO `media_type` VALUES (1,'audio'),(2,'image'),(3,'video');
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
INSERT INTO `message` VALUES (1,43,56,'Ducimus et reiciendis omnis consequuntur ducimus odit explicabo.','1981-05-07 02:59:01','1971-03-05 16:11:35',NULL),(2,99,66,'Molestiae est omnis animi natus saepe.','1982-09-18 00:15:58','1986-09-26 17:21:01',NULL),(3,10,38,'Et et repellendus est sit.','2013-08-02 04:42:20',NULL,NULL),(4,25,34,'Dolorum rem odio et vero animi ipsum fugiat explicabo.','1986-12-24 06:03:56',NULL,NULL),(5,65,68,'Et voluptatem ea illo non.','1977-04-01 00:59:55','2006-03-09 14:41:00',NULL),(6,84,52,'Minus necessitatibus ea perspiciatis tempore rerum voluptatibus non.','1999-08-12 09:00:22',NULL,NULL),(7,78,28,'Sint minus voluptates eum saepe dolore culpa.','2020-04-14 15:17:03','1990-04-07 13:54:07',NULL),(8,18,31,'Dolor aut molestias qui et explicabo tempora.','1984-06-01 23:52:52','2018-05-02 19:30:07',NULL),(9,87,40,'Ipsam sit vero sunt soluta dolor.','2009-12-06 12:27:45','2013-09-10 00:36:55',NULL),(10,14,45,'Dolores amet et rerum ducimus.','1986-10-14 05:58:08',NULL,NULL),(11,19,17,'Voluptate distinctio occaecati a.','1979-08-12 05:18:40','2005-09-09 20:29:30',NULL),(12,36,31,'Vel veritatis sapiente et libero sit nisi delectus.','1994-01-09 23:40:40',NULL,NULL),(13,14,54,'Voluptatem dolores libero consequatur velit quia.','1982-07-07 08:14:43','1975-06-24 20:29:45',NULL),(14,35,64,'Fuga perferendis animi doloribus.','2020-11-04 07:02:18','2016-09-12 03:17:57',NULL),(15,13,69,'Laudantium incidunt vitae asperiores.','1970-08-19 03:00:02','1992-07-26 04:15:55',NULL),(16,67,56,'Perferendis facilis et et laudantium hic ad.','1988-06-29 23:17:05',NULL,NULL),(17,25,66,'Occaecati hic pariatur dolore ex aut vel.','1995-11-16 05:33:56',NULL,NULL),(18,22,34,'Sunt inventore quidem expedita consequuntur sunt sed.','2003-10-04 15:32:43',NULL,NULL),(19,3,46,'Illo sunt voluptatem et libero tempore rem.','1998-05-03 01:21:59',NULL,NULL),(20,67,67,'Autem molestiae quia molestias eum occaecati enim.','2013-08-31 08:18:47',NULL,NULL),(21,14,51,'Ut voluptatibus quibusdam magnam dolorem optio labore nesciunt.','1989-01-12 12:14:50',NULL,NULL),(22,19,91,'Aut ut tenetur repudiandae error eius cum.','2018-07-11 21:42:26','1990-06-05 03:36:28',NULL),(23,79,36,'Atque dolorum quo ex accusantium.','1996-10-28 17:00:20','2013-10-21 12:56:17',NULL),(24,22,65,'Consequatur sed enim qui impedit.','2013-01-12 09:14:54','1979-07-26 15:30:00',NULL),(25,75,35,'Illum nobis et et consequatur accusantium qui rerum.','2000-06-03 06:29:54',NULL,NULL),(26,10,94,'Sint ut numquam laboriosam aliquam.','1984-11-17 14:34:16',NULL,NULL),(27,52,45,'Quo est id numquam.','2016-09-06 23:40:09','1982-09-02 17:25:51',NULL),(28,24,65,'Aut voluptatum tempore deleniti repudiandae expedita sequi sint atque.','2010-08-15 00:56:20','1989-03-09 23:02:05',NULL),(29,99,58,'Voluptatem eum aut natus atque quam esse provident.','1975-10-18 07:31:52','1981-10-06 06:59:54',NULL),(30,29,12,'Vel et repudiandae rerum nihil sequi sapiente.','2004-02-28 17:07:20','2017-05-27 12:58:25',NULL),(31,26,95,'Sed laboriosam et ea possimus quibusdam quis ratione.','2014-08-09 00:11:35','1987-06-13 12:05:15',NULL),(32,67,50,'Suscipit quisquam quibusdam omnis et dicta consequatur.','1995-02-18 19:08:00','2017-11-08 19:41:08',NULL),(33,60,89,'Consequatur natus inventore ut ut.','2016-02-02 23:53:06','1974-01-02 05:11:42',NULL),(34,84,62,'Ducimus quidem quos nihil voluptatibus enim laborum corporis.','1975-12-09 22:56:05','1995-10-23 22:40:52',NULL),(35,34,51,'Repudiandae aspernatur odio eos pariatur.','1977-04-01 05:49:01','2002-10-02 14:36:39',NULL),(36,29,47,'Autem ducimus cumque nihil in.','2002-03-25 01:09:03','1983-08-11 19:12:42',NULL),(37,1,48,'Possimus et ut voluptatem voluptas ea quae culpa.','1993-05-11 02:10:34',NULL,NULL),(38,38,79,'Ut laborum voluptates eos aspernatur voluptatem impedit porro.','1977-05-08 02:54:06',NULL,NULL),(39,83,60,'Ratione velit dolor nulla nisi cum.','1998-05-15 03:47:37','2020-03-08 12:22:09',NULL),(40,43,58,'Voluptatem non eum unde quia.','1983-09-20 03:43:47','1993-10-18 05:50:33',NULL),(41,94,53,'Ratione minima doloremque sit nihil.','1985-12-11 03:46:18','1993-08-21 12:04:33',NULL),(42,51,46,'Aspernatur numquam error similique consectetur natus fugiat.','1987-01-18 03:23:43',NULL,NULL),(43,98,74,'Nulla amet consequatur eos repellendus aut est quas.','1976-07-13 22:37:33','1975-02-15 20:13:05',NULL),(44,10,96,'Et occaecati nulla dolores modi suscipit magni quae modi.','1997-03-25 21:33:28',NULL,NULL),(45,31,39,'In ex velit ducimus eos animi eius.','1983-10-11 03:32:19',NULL,NULL),(46,8,57,'Aut voluptas laboriosam voluptas nulla nihil quam debitis architecto.','2013-10-18 17:16:44',NULL,NULL),(47,33,74,'Nihil molestias ipsum possimus in ullam.','1986-04-19 16:15:06',NULL,NULL),(48,7,93,'Inventore ad fuga sed delectus nihil dolorem.','1974-10-21 22:00:20','2014-07-29 14:14:13',NULL),(49,62,90,'Accusantium blanditiis magni beatae.','1986-08-22 13:03:41','1995-01-12 18:56:04',NULL),(50,54,96,'Quaerat harum iusto dignissimos maxime nihil.','2020-11-30 14:01:43','1977-05-09 04:57:58',NULL),(51,40,83,'Quod enim voluptas repellat corrupti.','1976-10-27 17:57:21',NULL,NULL),(52,43,41,'Vitae in molestias qui optio.','1972-11-07 10:18:49',NULL,NULL),(53,30,81,'Autem vitae earum ut voluptatem vel.','1980-10-20 23:00:29','2012-06-27 10:10:23',NULL),(54,19,12,'Totam suscipit est autem ex ab sed.','2017-03-21 22:26:45',NULL,NULL),(55,40,61,'Sequi asperiores impedit corporis sint iste enim et.','2006-11-24 06:49:10',NULL,NULL),(56,70,34,'Provident facere quo aut qui fuga velit omnis qui.','1982-03-12 14:53:45','1981-08-04 00:24:19',NULL),(57,14,20,'Enim rem ea et voluptate expedita iusto.','1989-11-09 08:04:27',NULL,NULL),(58,79,11,'Cumque autem perspiciatis aut velit adipisci.','2008-12-07 02:00:36','1982-04-02 20:19:09',NULL),(59,93,89,'Et harum nihil maiores enim asperiores debitis.','2008-04-07 11:53:43',NULL,NULL),(60,6,24,'Voluptatem consequatur maxime qui aut vel deleniti velit.','1978-11-06 08:49:02',NULL,NULL),(61,27,13,'Officiis eius fugiat sit accusantium et.','1980-09-05 10:08:12',NULL,NULL),(62,80,59,'Ipsum ut est sed eaque dolorem consequatur facere voluptatem.','1972-08-27 04:35:53',NULL,NULL),(63,87,87,'Architecto adipisci autem molestiae tempore quia voluptas qui.','2006-11-28 13:59:01',NULL,NULL),(64,51,49,'Repellendus aut vel inventore accusamus pariatur enim ullam.','2005-12-07 11:55:49',NULL,NULL),(65,77,5,'Corporis aperiam quae sit optio quis.','1990-08-25 22:43:15',NULL,NULL),(66,45,17,'Excepturi praesentium corrupti ut qui.','1993-03-26 15:05:54',NULL,NULL),(67,88,87,'Temporibus delectus qui delectus rerum quae quam.','1982-09-30 06:33:17',NULL,NULL),(68,57,17,'Adipisci exercitationem dolores delectus nihil.','1976-06-29 16:49:31',NULL,NULL),(69,68,75,'Ab eligendi et est expedita.','1998-01-03 12:47:06',NULL,NULL),(70,29,8,'Occaecati autem ab est ad sed in.','2013-09-02 11:08:39',NULL,NULL),(71,36,98,'Tenetur eius ut corporis rerum dolor modi.','1973-11-26 18:13:56',NULL,NULL),(72,41,49,'Explicabo hic dolor non officiis provident.','1982-11-23 17:11:15',NULL,NULL),(73,17,20,'Atque qui optio in.','1989-03-18 03:59:37','2021-01-06 14:45:13',NULL),(74,59,10,'Rem alias quia minima saepe.','1984-09-28 10:52:00','1996-02-05 00:54:55',NULL),(75,8,65,'Iure dolorem neque at numquam voluptas eius.','2011-01-12 01:22:45',NULL,NULL),(76,33,35,'Accusantium doloribus id in sint eveniet laudantium ad.','1976-12-02 04:27:01','1990-05-01 20:12:47',NULL),(77,78,13,'Sint sit voluptatem dolore quos ea aliquid esse.','2003-05-10 04:13:10','1992-02-25 04:42:11',NULL),(78,94,65,'Tempora et assumenda quaerat.','2010-12-13 18:17:25',NULL,NULL),(79,100,45,'Esse autem aut dolor molestias commodi alias.','2003-11-11 02:06:32',NULL,NULL),(80,13,76,'Eos voluptas magnam nam doloribus sequi.','2010-01-04 10:00:25',NULL,NULL),(81,49,58,'Delectus similique odio aspernatur officiis alias ut quaerat.','1999-01-30 17:38:01','1971-05-16 23:19:18',NULL),(82,92,36,'Et est est est natus saepe unde.','1972-12-04 08:20:13','1987-11-27 18:37:02',NULL),(83,45,48,'Explicabo eligendi dolorem dolore expedita odio.','1992-08-13 06:42:58','2017-11-16 07:43:43',NULL),(84,53,12,'Ut iste dolorum perferendis voluptatibus rem.','2015-11-15 09:46:46',NULL,NULL),(85,22,82,'Dignissimos cum id veritatis quia non facere.','1980-11-08 21:05:43','1995-04-27 03:33:53',NULL),(86,19,58,'Ipsum similique expedita natus explicabo corrupti dolor.','2009-05-24 00:01:11',NULL,NULL),(87,79,60,'Officiis maxime asperiores exercitationem quam sapiente et.','2001-12-02 21:20:28','2000-01-10 19:47:03',NULL),(88,6,96,'Velit dolore et repellendus aperiam voluptatem iste enim.','1978-09-21 22:43:42','1988-03-19 13:42:30',NULL),(89,79,65,'Cupiditate atque aut consequuntur voluptates laudantium.','1971-06-01 05:39:14',NULL,NULL),(90,6,87,'Dolore voluptatem in doloribus.','1983-04-22 11:47:03','1995-08-24 19:32:13',NULL),(91,29,39,'Eligendi deleniti suscipit maxime libero quis consequuntur nobis quis.','1980-01-18 18:47:34','1978-08-07 23:42:32',NULL),(92,21,7,'Optio aut explicabo nobis maxime illo quo.','1970-11-03 06:48:09','2002-05-23 05:45:44',NULL),(93,52,14,'Sit quasi vero labore voluptate voluptas distinctio.','2003-06-09 05:09:12',NULL,NULL),(94,71,51,'Minima aut fuga reprehenderit omnis ut expedita nulla.','2009-02-03 00:43:26','1975-11-07 20:37:31',NULL),(95,58,84,'Iusto recusandae saepe dolorem sit itaque eum sapiente.','2010-08-18 02:00:20','1984-05-12 08:45:39',NULL),(96,26,7,'Modi itaque ab velit dicta.','2019-02-25 07:27:36','1980-06-15 19:44:20',NULL),(97,41,17,'Perspiciatis et recusandae ea laboriosam.','1977-03-24 16:12:09',NULL,NULL),(98,43,85,'Delectus in dicta voluptas rerum.','1992-10-10 03:23:27','1976-08-19 17:24:45',NULL),(99,65,96,'Quis vel ipsam est est aut.','2014-02-01 08:20:23','1993-11-09 21:53:56',NULL),(100,97,87,'Ut quisquam quod aut amet.','1990-04-15 02:38:54',NULL,NULL);
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
  PRIMARY KEY (`id`),
  KEY `fk_post_user1_idx` (`user_id`),
  KEY `fk_post_community1_idx` (`community_id`),
  KEY `fk_post_media1_idx` (`media_id`),
  KEY `fk_post_post1_idx` (`post_id`),
  CONSTRAINT `fk_post_community1` FOREIGN KEY (`community_id`) REFERENCES `community` (`id`),
  CONSTRAINT `fk_post_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_post_post1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  CONSTRAINT `fk_post_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,59,1,NULL,'Alias nostrum eius vel quia cupiditate quisquam voluptatem.',NULL,'1981-11-08 12:56:14'),(2,67,2,NULL,'Dignissimos pariatur consequatur repudiandae at temporibus repudiandae soluta.',NULL,'1970-07-26 06:46:07'),(3,73,3,NULL,'Sunt pariatur accusantium dignissimos.',NULL,'1982-05-09 14:34:18'),(4,70,4,NULL,'Nihil veritatis rerum ex voluptas error commodi inventore.',NULL,'1988-09-23 04:01:36'),(5,36,5,NULL,'Excepturi et recusandae est nostrum cumque voluptatem.',NULL,'1987-12-22 05:50:44'),(6,30,6,NULL,'Molestias quia nobis sit et dignissimos.',NULL,'1992-06-15 05:52:48'),(7,95,7,NULL,'Consequuntur voluptatibus optio blanditiis itaque aperiam et.',NULL,'2013-09-06 12:02:52'),(8,23,8,NULL,'Aut asperiores recusandae necessitatibus repellendus cum iste sequi.',NULL,'2003-06-12 09:34:28'),(9,67,9,NULL,'Et quis praesentium architecto dolor.',NULL,'2012-03-25 00:33:55'),(10,25,10,NULL,'Et est hic dolorem.',NULL,'1970-12-08 15:57:03'),(11,41,NULL,NULL,'Natus error id ex.',NULL,'2019-05-30 01:20:55'),(12,42,NULL,NULL,'Fugit eaque dolore accusantium veritatis.',NULL,'1971-02-11 22:51:02'),(13,33,NULL,NULL,'Quam est veritatis corporis eius amet et minima facere.',NULL,'1996-12-26 07:55:42'),(14,98,NULL,NULL,'Error nulla et qui.',NULL,'1991-08-26 09:07:22'),(15,20,NULL,NULL,'Modi praesentium neque qui dolor ut laborum labore.',NULL,'1998-02-21 00:23:59'),(16,54,NULL,NULL,'Eum sunt non temporibus.',NULL,'1987-03-24 21:44:12'),(17,94,NULL,NULL,'Saepe in corporis veritatis ea.',NULL,'1996-04-11 07:26:50'),(18,43,NULL,NULL,'Facilis consectetur non repellat soluta.',NULL,'1984-06-21 08:40:31'),(19,7,NULL,NULL,'Quaerat tempora eum amet aut fugit.',NULL,'1979-07-08 02:19:15'),(20,69,NULL,NULL,'Iusto sed voluptas similique sed exercitationem.',NULL,'1985-06-03 23:33:15'),(21,2,NULL,NULL,'Ipsam dolorem maiores consectetur sit sit.',NULL,'1999-03-01 06:59:52'),(22,9,NULL,NULL,'Eaque voluptatem totam facilis laborum.',NULL,'2004-02-01 08:12:11'),(23,85,NULL,NULL,'Est atque est eum necessitatibus a ab sapiente repudiandae.',NULL,'1984-10-06 11:47:29'),(24,25,NULL,NULL,'Quos at at magni voluptatem itaque ex voluptas.',NULL,'2010-07-19 11:04:28'),(25,90,NULL,NULL,'Voluptates suscipit laborum id incidunt dolorum impedit.',NULL,'2003-07-31 18:46:02'),(26,13,NULL,NULL,'Quod architecto consequatur qui in et vel.',NULL,'2005-08-28 14:50:02'),(27,12,NULL,NULL,'Illo laudantium laudantium eum id placeat temporibus.',NULL,'1980-01-09 03:02:31'),(28,60,NULL,NULL,'Voluptas qui est consequatur aperiam rem.',NULL,'1988-03-26 05:26:17'),(29,44,NULL,NULL,'Tempore debitis rerum qui ad numquam.',NULL,'1989-04-15 16:52:02'),(30,34,NULL,NULL,'Iste consequuntur veritatis et et similique omnis.',NULL,'2020-08-13 08:38:24'),(31,78,NULL,NULL,'Rerum error consequatur voluptatem.',NULL,'2010-05-31 19:50:13'),(32,2,NULL,NULL,'Reiciendis incidunt fuga est ut facere.',NULL,'2014-07-12 10:23:26'),(33,100,NULL,NULL,'Laudantium mollitia minima suscipit adipisci.',NULL,'1978-03-17 23:26:40'),(34,50,NULL,NULL,'Et maiores possimus porro maxime.',NULL,'1995-01-10 11:12:33'),(35,72,NULL,NULL,'Laudantium provident illum itaque quibusdam optio sint aut.',NULL,'2008-09-12 13:08:18'),(36,36,NULL,NULL,'Voluptatem fuga et cumque numquam fugiat quisquam.',NULL,'2006-03-22 05:15:19'),(37,80,NULL,NULL,'Doloremque blanditiis excepturi nulla consequatur rem maxime impedit voluptatem.',NULL,'1992-06-20 05:37:13'),(38,67,NULL,NULL,'Quo non reprehenderit ea.',NULL,'2007-01-08 05:20:46'),(39,58,NULL,NULL,'Velit odio at modi et.',NULL,'1991-11-19 16:02:35'),(40,46,NULL,NULL,'Quo ullam ipsam numquam eos ipsa rerum et.',NULL,'1983-09-23 17:19:49'),(41,91,NULL,NULL,'Doloremque minus nam voluptas consequatur.',NULL,'1983-09-24 22:37:19'),(42,98,NULL,NULL,'Placeat incidunt amet sed ut doloremque.',NULL,'1999-03-12 16:53:40'),(43,88,NULL,NULL,'Et dolorem neque ad ipsa dolorem odit quibusdam.',NULL,'1988-10-18 12:50:39'),(44,23,NULL,NULL,'Tenetur laborum non provident fugit numquam molestiae.',NULL,'1971-03-04 20:37:12'),(45,95,NULL,NULL,'Suscipit incidunt in non doloribus veritatis nulla ab est.',NULL,'2017-02-19 12:04:33'),(46,7,NULL,NULL,'Blanditiis doloremque qui aut doloribus voluptatem corrupti.',NULL,'2013-05-28 12:06:07'),(47,77,NULL,NULL,'Nostrum quia aut dolores non delectus expedita optio.',NULL,'2014-02-09 09:55:04'),(48,89,NULL,NULL,'Voluptatum laboriosam aut magni sit sint dignissimos sint.',NULL,'2001-04-10 16:27:47'),(49,50,NULL,NULL,'Quasi dolorum sint voluptatibus nisi beatae et.',NULL,'1988-10-21 18:09:05'),(50,83,NULL,NULL,'Cupiditate dicta eum consequatur sint reprehenderit ut.',NULL,'1975-03-17 06:12:45'),(51,57,NULL,NULL,'Harum suscipit perspiciatis quos accusantium enim.',NULL,'1996-07-06 23:46:58'),(52,51,NULL,NULL,'Ipsa consequuntur fuga eius aut autem et.',NULL,'2015-09-01 18:15:28'),(53,92,NULL,NULL,'Magni dolor eveniet consequuntur qui repudiandae.',NULL,'2017-06-17 18:33:25'),(54,42,NULL,NULL,'Nemo sed quae optio quia molestiae sint.',NULL,'2000-10-29 20:43:48'),(55,76,NULL,NULL,'Perspiciatis non rerum dicta explicabo cupiditate fugit labore.',NULL,'1974-10-17 18:44:27'),(56,81,NULL,NULL,'Eligendi quia dolores ea tempora ut.',NULL,'2000-06-20 04:51:37'),(57,54,NULL,NULL,'Error excepturi ea voluptate.',NULL,'2018-01-31 20:13:43'),(58,88,NULL,NULL,'Enim rerum quae rerum nemo qui voluptatum natus quas.',NULL,'1974-07-11 21:06:44'),(59,41,NULL,NULL,'In dolorem ad eius eos.',NULL,'1979-04-27 09:38:12'),(60,98,NULL,NULL,'Voluptas non error qui odit.',NULL,'2015-12-01 18:47:07'),(61,21,NULL,NULL,'Modi doloribus libero natus sunt quas.',NULL,'2018-03-26 15:24:39'),(62,19,NULL,NULL,'Eum sunt quos quia aut enim.',NULL,'2018-12-09 07:00:55'),(63,100,NULL,NULL,'Quidem et quaerat ab laboriosam.',NULL,'2013-11-13 07:04:39'),(64,21,NULL,NULL,'Aut porro libero cum maxime.',NULL,'1983-09-16 02:08:48'),(65,69,NULL,NULL,'Ullam qui et temporibus non.',NULL,'1970-03-12 10:00:17'),(66,71,NULL,NULL,'Molestiae deserunt quas aliquam voluptas debitis omnis.',NULL,'1991-05-24 01:18:07'),(67,56,NULL,NULL,'Sed totam et ut iusto.',NULL,'2014-11-28 20:29:18'),(68,48,NULL,NULL,'Fugit corporis fuga fugit omnis itaque.',NULL,'1970-01-11 00:10:22'),(69,37,NULL,NULL,'Nihil saepe tempore autem iure.',NULL,'1998-07-10 23:43:19'),(70,13,NULL,NULL,'Aut error debitis sed.',NULL,'1998-07-06 02:58:10'),(71,93,NULL,NULL,'Aliquid ea doloribus hic omnis a architecto.',NULL,'1987-10-03 18:28:20'),(72,28,NULL,NULL,'Quia ut iste ea voluptatem dignissimos.',NULL,'1997-08-31 06:43:49'),(73,10,NULL,NULL,'Facilis explicabo vero nemo cumque cupiditate.',NULL,'2007-07-10 16:38:37'),(74,81,NULL,NULL,'Placeat soluta minima cupiditate aspernatur id laboriosam et.',NULL,'2013-02-19 14:36:05'),(75,51,NULL,NULL,'Numquam quibusdam amet similique corrupti perferendis dolores nobis quis.',NULL,'1986-03-27 14:58:08'),(76,5,NULL,NULL,'Et fugit a mollitia maxime consequuntur itaque quaerat.',NULL,'1976-11-12 13:03:09'),(77,88,NULL,NULL,'Et magni doloremque assumenda ut.',NULL,'2019-10-16 03:11:59'),(78,27,NULL,NULL,'Perspiciatis sed eaque nisi asperiores tenetur laboriosam laborum.',NULL,'1980-08-24 10:58:49'),(79,93,NULL,NULL,'Amet quis numquam qui praesentium fugiat.',NULL,'2014-02-18 03:45:52'),(80,37,NULL,NULL,'Provident dolore temporibus nesciunt aut ut officia.',NULL,'2020-03-14 11:18:11'),(81,10,NULL,NULL,'Aut neque qui qui.',NULL,'2000-02-27 01:36:28'),(82,50,NULL,NULL,'Quia ex et similique et et et.',NULL,'1987-12-25 15:32:34'),(83,88,NULL,NULL,'Illum explicabo eligendi quae.',NULL,'2019-06-21 12:37:50'),(84,2,NULL,NULL,'Excepturi aut reiciendis quam impedit.',NULL,'1994-05-20 08:11:38'),(85,92,NULL,NULL,'Sit nostrum soluta sed minima possimus placeat aut.',NULL,'1995-10-09 17:00:21'),(86,64,NULL,NULL,'Aut in eligendi quasi explicabo eum occaecati.',NULL,'1995-01-28 18:02:55'),(87,83,NULL,NULL,'Qui quidem ut mollitia officiis dolores id.',NULL,'1988-02-29 21:10:45'),(88,46,NULL,NULL,'Quis maxime voluptatem odio qui eligendi rerum ut recusandae.',NULL,'1989-06-01 04:32:56'),(89,51,NULL,NULL,'Iusto qui praesentium voluptatum odio rem quae aut.',NULL,'2011-07-11 14:25:13'),(90,23,NULL,NULL,'Sunt quisquam ducimus deserunt.',NULL,'1985-06-13 11:49:46'),(91,43,NULL,NULL,'Ipsum earum corrupti doloremque est in voluptas qui quia.',NULL,'2006-06-08 23:33:01'),(92,72,NULL,NULL,'Ipsam libero ex debitis possimus illo illum.',NULL,'1983-02-06 17:15:06'),(93,42,NULL,NULL,'Aut molestias velit facilis velit voluptate quam neque et.',NULL,'1982-08-26 11:08:00'),(94,43,NULL,NULL,'Fuga occaecati ut eum et.',NULL,'2010-04-13 18:33:58'),(95,92,NULL,NULL,'Eaque natus et aut praesentium asperiores dolor.',NULL,'1991-04-29 20:14:52'),(96,10,NULL,NULL,'Dolore pariatur laborum qui sit perferendis porro qui.',NULL,'1984-06-19 18:58:03'),(97,13,NULL,NULL,'Ut molestiae commodi placeat ut.',NULL,'1973-12-21 00:49:08'),(98,47,NULL,NULL,'Cum qui eum vel delectus quasi.',NULL,'2004-06-20 15:41:21'),(99,57,NULL,NULL,'Quaerat eum velit autem minus sint consequuntur.',NULL,'1975-02-04 02:44:57'),(100,50,NULL,NULL,'Quae aliquid voluptates eius veritatis omnis iusto ut.',NULL,'1971-12-29 20:47:54');
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
INSERT INTO `profile` VALUES (1,'Talia','Quitzon','f','2009-08-17','26340 Lesch Summit'),(2,'Alayna','Auer','f','2010-07-21','627 Benedict Falls'),(3,'Shirley','Beahan','m','1994-02-11','93401 Herzog Light Suite 909'),(4,'Jennings','Considine','m','1978-10-03','135 Cristobal Cliffs'),(5,'Royal','Wintheiser','m','1973-12-02','6645 Mann Meadows Apt. 464'),(6,'Gordon','Ondricka','m','1999-04-24','221 Adriana Inlet'),(7,'Percival','Monahan','f','1977-09-02','065 Waelchi Lock'),(8,'Evert','Parker','f','1996-03-07','5305 Gerhold Locks Suite 670'),(9,'Oliver','McClure','m','2009-05-21','421 Konopelski Forest Suite 719'),(10,'Delbert','Lesch','m','1978-04-03','7763 Alexys Shore'),(11,'Desiree','Kemmer','f','2002-10-25','1984 Pollich Wells'),(12,'Ashtyn','Schoen','f','1973-04-24','86305 Dietrich Plains'),(13,'Ilene','Schmeler','m','2008-04-14','05805 Hulda Locks Apt. 529'),(14,'Damon','Rutherford','m','1996-08-31','2478 Rodriguez Turnpike Suite 517'),(15,'Molly','Jacobs','m','2013-04-29','848 Grady Plaza Apt. 322'),(16,'Pascale','Kutch','f','1980-06-07','328 Jenkins Walks'),(17,'Salvatore','Koss','f','1994-07-29','762 Sydnie Terrace'),(18,'Liliane','Pouros','m','2015-10-27','35696 Roob Neck Apt. 703'),(19,'Barbara','Prohaska','f','1979-05-13','91046 Jaqueline Rest Apt. 987'),(20,'Cedrick','Leffler','f','2008-07-07','7349 Yundt Key'),(21,'Franz','Goyette','f','1979-10-08','1213 Paula Loop'),(22,'Tyrel','Connelly','m','2001-07-02','20725 Russell Summit Suite 874'),(23,'Rebeka','Bashirian','m','2004-05-08','9037 Bergstrom Union'),(24,'Eden','Becker','f','2013-03-09','647 Gutkowski Estate Apt. 677'),(25,'Cleveland','Franecki','m','1988-10-02','4930 O\'Connell Garden'),(26,'Dashawn','Ferry','f','2010-12-31','8143 Pauline Roads Suite 963'),(27,'Grayce','Zulauf','f','2011-11-05','096 Emanuel Plain Apt. 451'),(28,'Marques','Batz','m','2019-01-25','66243 Botsford Grove'),(29,'Deven','Donnelly','f','1990-04-12','89759 Vandervort Ranch'),(30,'Abner','Spinka','m','2007-01-05','1719 Denesik Place'),(31,'Liliane','Gleichner','f','1982-06-03','17297 Lindgren Ville Apt. 903'),(32,'Callie','Haley','f','1992-05-05','20742 Lacy Junction'),(33,'Yvette','Lang','f','1985-02-20','4901 Kamille Grove Suite 086'),(34,'Victoria','Kozey','f','1979-08-30','796 Virgie Greens Apt. 689'),(35,'Noemy','Kub','f','1993-02-06','654 Ziemann Light Suite 691'),(36,'Gertrude','Bartoletti','m','1999-09-21','397 Sporer Crossroad'),(37,'Aric','Greenholt','f','2015-11-07','497 Powlowski Villages'),(38,'Madyson','O\'Connell','m','2001-05-08','94298 Bahringer Meadow Apt. 757'),(39,'Hershel','Wilkinson','m','2017-08-05','468 Weissnat Ford'),(40,'Otha','Emmerich','m','1976-03-21','9556 Alisa Ville'),(41,'Kelley','Prohaska','f','2008-12-10','622 Zachery Expressway Suite 255'),(42,'Jakob','Frami','m','1970-06-03','7065 Kailee Station Apt. 543'),(43,'Kobe','Pfannerstill','f','1987-10-25','07137 Harris Mews Suite 242'),(44,'Brigitte','Hauck','f','2011-08-25','932 Cronin Squares Suite 464'),(45,'Pansy','Beer','f','1994-10-02','23756 Reilly Drive Apt. 717'),(46,'Lavina','Reynolds','m','1982-06-05','370 Tess Fall Suite 167'),(47,'Everett','Schimmel','m','1981-04-02','515 Waters Rapids Apt. 206'),(48,'Godfrey','Keebler','f','2005-09-27','483 Balistreri Prairie Apt. 938'),(49,'Howell','Leuschke','m','1977-06-07','2527 Parisian Mountain Suite 512'),(50,'Elmo','Sauer','m','1973-07-22','536 Blanda Lane'),(51,'Tabitha','Botsford','f','2009-10-03','06243 Roxane Island Apt. 546'),(52,'Judd','Homenick','m','1988-07-05','84065 Turcotte Keys'),(53,'Matilde','Adams','m','2009-09-06','70369 Wilkinson Springs Apt. 516'),(54,'Leola','Jakubowski','f','2009-10-29','28777 Zieme Extensions Suite 410'),(55,'Ceasar','Roberts','m','1996-08-28','8158 Gerald Trail'),(56,'Ryan','Roberts','f','1990-02-19','5488 Ashlee Mill'),(57,'Remington','McLaughlin','f','1970-10-24','1906 Reynolds Vista Suite 477'),(58,'Kathleen','Bauch','f','2017-05-01','809 Upton Union'),(59,'Lukas','Douglas','f','1998-08-03','273 Raynor Villages Suite 566'),(60,'Sydni','Hickle','f','2021-03-14','34508 Zulauf Ports'),(61,'Bruce','Schroeder','m','1995-05-04','58655 Jacobson Pike'),(62,'Jedediah','Turner','f','2020-09-15','798 Murray Motorway'),(63,'Jodie','Ferry','f','1997-04-27','0174 Farrell Throughway'),(64,'Jaren','Abbott','f','1998-01-19','20714 Samson Locks Apt. 870'),(65,'Ivory','Borer','f','2006-05-17','3552 Little Parkways Suite 803'),(66,'Xzavier','Barton','f','1981-11-02','999 Shany Divide Apt. 752'),(67,'Daryl','Jerde','m','1986-09-23','88875 Lila Trail Suite 047'),(68,'Horace','Lockman','m','1995-11-20','5272 Stiedemann Turnpike'),(69,'Jadyn','Hackett','m','2004-07-21','22964 Derick Walks'),(70,'Bridget','Dickens','f','1997-01-10','0866 Greenholt Estates'),(71,'Madeline','Corkery','m','2018-10-21','4402 Chloe Plaza'),(72,'Kariane','Feest','f','1979-08-18','22260 Gregorio Shoals Apt. 467'),(73,'Camila','Lakin','m','2004-08-13','36549 Elnora Meadows Suite 490'),(74,'Litzy','Rau','m','2009-07-27','37048 Fabian Crossroad Suite 509'),(75,'Astrid','Haag','m','1977-08-17','19139 Leanne Tunnel Apt. 000'),(76,'Delia','Hartmann','f','2021-01-03','16018 Dee Road'),(77,'Dexter','Hodkiewicz','m','1986-04-02','64391 Ephraim Cliffs Suite 423'),(78,'Oliver','Konopelski','m','2014-07-30','36607 Olin Meadow Suite 997'),(79,'Elvie','Yundt','f','1995-11-07','8790 Mohamed Meadow'),(80,'Suzanne','Medhurst','m','1994-12-14','99224 Jovani Lake'),(81,'Ephraim','Kiehn','f','2006-08-09','45347 Maurice Hills Suite 971'),(82,'Vladimir','Bednar','f','2000-12-07','4724 Lynn Cape Suite 849'),(83,'Jayda','Pacocha','m','2002-01-24','4959 Russel Fall'),(84,'Jerry','Willms','f','2001-05-21','89114 Arch Parks'),(85,'Ofelia','Stehr','m','1985-04-20','7488 Nettie Point Suite 566'),(86,'Oswaldo','Hirthe','m','1999-05-04','222 Donnelly Port'),(87,'Vincent','Bogisich','f','1994-10-04','5232 Swaniawski Key Suite 645'),(88,'Hugh','Greenholt','f','1972-10-31','45167 Hermiston Pike'),(89,'Samara','Howell','f','1997-05-29','82802 Rebecca Court'),(90,'Marlee','Towne','m','2019-04-17','985 Rosemary Ways Suite 870'),(91,'Lafayette','Dooley','m','1971-07-02','792 Miracle Forges Suite 271'),(92,'Kaitlyn','Bailey','m','1996-02-09','7809 Ondricka Expressway Suite 516'),(93,'Rashawn','Hayes','m','2017-05-05','037 Jalon Village'),(94,'Alford','Lang','f','1974-09-04','701 Gerhard Point Suite 671'),(95,'Wilber','Wolff','m','2007-09-22','5956 Predovic Ridges'),(96,'Dahlia','Hermann','m','1970-12-17','80156 Nicholaus Pines'),(97,'Ralph','Hudson','m','1982-10-16','6262 Ludwig Rapids Apt. 998'),(98,'Melyna','Bogan','f','1982-04-02','38098 Huel Gateway'),(99,'Marielle','Vandervort','m','2016-01-13','431 Keely Throughway Suite 419'),(100,'Percy','Kutch','m','1993-04-18','44917 Auer Crossing Suite 939');
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
INSERT INTO `user` VALUES (1,'heaney.wyman@example.net',79944141844,'3a7a59681c6f4f4401e9f0db7e1a681f71a41665','1981-09-30 08:00:27',NULL),(2,'pacocha.sarai@example.com',79843749690,'b24f890586f9365c72c63ff2c25c909fe4dc4191','1976-01-21 01:58:06',NULL),(3,'giovani34@example.org',79741631081,'62ebffd0002f3ea77791edb243f927ef1915b83c','1979-10-01 12:38:48',NULL),(4,'toy.janiya@example.org',79864184711,'dd4d66d2ea5c29f4be847f01ee196d9f4063cd33','2006-09-13 12:28:47',NULL),(5,'lavern.schimmel@example.org',79827888342,'1e865f7e2ec9fdc0a5cb9b7038ea49cb06f73441','1989-12-31 14:02:23',NULL),(6,'jfritsch@example.org',79997169974,'0aa25c1e3f25ea40fbbbbff5a9a820acad85dfa1','2001-03-19 21:05:16',NULL),(7,'kiara.carter@example.org',79944484685,'c10f529443330d23741a5efe012eae68b88a29cc','1998-07-28 03:36:38',NULL),(8,'ervin25@example.net',79840198516,'00b4e41c484cb3ffd276c15f97f67ace2652cf75','2018-06-09 11:25:16',NULL),(9,'elissa.schmeler@example.org',79425061669,'8deec4c26eb90c1c271ae9d6af6f550f64da8ece','1970-05-31 12:15:29',NULL),(10,'chesley.jacobi@example.org',79116683272,'7eab62758918717640ddc680cc3b783b41e2326c','1982-11-30 22:57:37',NULL),(11,'penelope17@example.net',79183438524,'fc7dbbf9f53090ea991b3f339c118059eef12028','1997-11-23 22:40:18',NULL),(12,'qrunolfsdottir@example.net',79880530538,'81f73123a4ae389f3cc2e7bef35113044ec625de','1985-10-16 19:17:01',NULL),(13,'yroob@example.org',79242451381,'1a021d23303621e25e984be57eb28e3698c26ee7','2015-08-29 19:08:39',NULL),(14,'reece78@example.com',79719384082,'0204d970fd748806e98b6c070f70ff3616bf1946','2017-02-12 22:16:18',NULL),(15,'malika.dach@example.com',79073325558,'04d482247732b04226bcff3600127d5d3ba6f2ae','1995-10-11 18:55:15',NULL),(16,'gerardo.gorczany@example.com',79379991820,'3d1317fdd98ef16e3eb6cf7cca702491e3a60e08','1995-01-05 09:24:19',NULL),(17,'krista65@example.org',79104424108,'94a7fec2eec9c110cf20fb1d66380a0d7db3f272','1996-04-21 05:22:46',NULL),(18,'psatterfield@example.com',79215533082,'08130b1dd79d7f2c36ac033d6e36c956d4784080','1973-05-03 18:53:11',NULL),(19,'wlueilwitz@example.org',79732632850,'bdd8dd003ad0972cfede9832ca1a3d97b94f60d5','2019-11-18 23:39:22',NULL),(20,'felicita90@example.net',79241874615,'fd9e938a27c7ef9cfc45aa162a48301d2a140d5d','2014-01-02 02:57:19',NULL),(21,'dominic03@example.com',79348823308,'1c40059f02f3cda4215777b8fa3bd1f39c41afbf','1982-03-23 14:00:01',NULL),(22,'golda34@example.net',79543648940,'1404b41762d2afc73a6aa29b218a8e36a2e18719','2017-09-27 11:03:32',NULL),(23,'tspencer@example.net',79633816930,'bafe060a0f03d1ca2fb70e4eeacb1e5304976cfc','1971-08-24 18:43:59',NULL),(24,'macy60@example.net',79056427462,'183c59c343ef6ef1718732e03b6b6722709a7add','1975-07-21 05:02:05',NULL),(25,'marietta08@example.org',79082237982,'de94a7049732066a6c92d3773146db8fd146b021','1981-08-01 07:54:37',NULL),(26,'khalid.lemke@example.net',79931579096,'e0c0465580438a5531cd304f1e281160fc89a406','1995-06-08 22:24:10',NULL),(27,'lowe.kathryn@example.com',79015752703,'3998751ac811378a81c00750b0e15912efe648da','2009-10-09 04:49:35',NULL),(28,'satterfield.hannah@example.org',79767746799,'f55933767e58c902e0e5a21c17a8e5581717ec78','2000-04-13 06:43:34',NULL),(29,'zechariah.walker@example.org',79540784365,'df000b69453232fe758610aff784e3efc6c45190','1971-02-14 02:33:35',NULL),(30,'wuckert.elbert@example.org',79402857208,'7102f7bdff94f17d11f77a2722637c7bbd3216dd','1991-01-31 15:59:12',NULL),(31,'cletus.dooley@example.org',79900389339,'67567395cbc4ee72cfd75eb1cbfd892c7f345c35','2001-01-15 20:14:31',NULL),(32,'tara.breitenberg@example.net',79701603371,'9731a1769556f521486e07b18778e879bbaadafa','1979-01-23 18:57:39',NULL),(33,'bobbie07@example.com',79502963332,'1bb3dd70f307d08a7bb5d4898db31ef7092d6a06','2005-10-31 07:15:07',NULL),(34,'schuyler.cronin@example.net',79308935636,'f41646c3b48124bf31e5d08a6b9b137918f6aa57','1989-03-04 04:34:29',NULL),(35,'estel.leffler@example.org',79106541391,'e6b8efd2cdb891a36cb86f06c182d6c63744b3d0','2002-01-30 02:30:21',NULL),(36,'ajenkins@example.net',79310346338,'fecd40723af7015985dbd2218dad171eee682b98','1982-06-28 05:00:33',NULL),(37,'cstroman@example.net',79554608334,'93fefd884b76a01e519899f7718bd290be6e3c01','1987-07-06 08:42:35',NULL),(38,'runte.drew@example.net',79451580204,'e81200edd8550de1ab235976ed52c5dc76f7eb3d','2020-03-23 15:31:40',NULL),(39,'leffler.alphonso@example.net',79372273218,'d644acddedbb53106d178c074d487be1891fc5ae','2020-08-11 06:14:41',NULL),(40,'renee.kovacek@example.org',79092304968,'2745b45cd240c52f9f24b496fc2d343144c6eb8f','2011-08-02 04:00:02',NULL),(41,'bernita79@example.com',79371088676,'9683d2d6eb6e876fe8b7cea165b65252dc1cab73','1981-04-30 17:03:59',NULL),(42,'gzulauf@example.com',79817906051,'08d382a37ac65dc167828fe74e55f651c451076c','1991-03-27 19:39:31',NULL),(43,'jovanny.hills@example.org',79259276571,'286af3ad71adc8754d544f5c19b9302addc0b435','1982-07-31 15:35:36',NULL),(44,'keon.beahan@example.com',79641846667,'c172ab37bd8f02abc1c7eb5896d002c5dbc69b5e','2012-05-31 10:23:53',NULL),(45,'ihagenes@example.com',79673512828,'d5a60ef5d60647d0d85454c84f1093bf06ca731d','2018-01-13 13:43:07',NULL),(46,'liza22@example.net',79855079520,'c1b7a69ccd4fd8f4ae8676b769246131710d389f','2015-04-08 20:13:59',NULL),(47,'presley.koss@example.com',79884591078,'694d21e540abdac258b0970ff1e65b43538bc152','1971-12-09 08:09:56',NULL),(48,'luettgen.hollis@example.org',79093684029,'13c86f6ec735590ecde01e4eb3e0a0a2123f5e23','1996-09-09 17:33:41',NULL),(49,'feest.enrico@example.org',79177295612,'d1187ab2545ca5962269cced2e5fe667b2f5b382','2017-10-10 17:51:19',NULL),(50,'porn@example.net',79648276660,'99b7f38d992ec7482d724e24b1f629f32ab7eb83','1971-04-08 02:00:53',NULL),(51,'dixie.bauch@example.com',79183913562,'40b729ce1756d146929e4b02d0d9a6e0b82f4266','2010-01-16 18:28:40',NULL),(52,'vanessa.wisoky@example.org',79949832866,'63024ad585f2020241db3c25c7de4e700215c6ab','1990-10-22 16:15:41',NULL),(53,'santino.gutkowski@example.org',79095274044,'b2a8fc33700a469ec052e9da4905a84c14ec560c','1995-07-20 07:13:39',NULL),(54,'ena.kuhlman@example.com',79335382960,'dfefdcfae5a6ed67b0c2a0f3ddefdb57daa09630','1990-03-21 10:56:30',NULL),(55,'qblock@example.net',79510957837,'a70e2312479efc4e183c71abfd98ca815f57bd26','1977-09-08 14:47:03',NULL),(56,'rowe.lexie@example.org',79853552536,'3223590defff8c8b3f36b2475033b051a4b4c550','1995-07-06 17:46:18',NULL),(57,'enrique.greenfelder@example.org',79848632044,'7a0a04c59095a675f0561e366c40f52983f72b09','1988-01-01 15:16:25',NULL),(58,'theresia37@example.org',79862042145,'5a6114120fc6f272463569de80282341f3465884','2015-03-25 11:11:45',NULL),(59,'leffler.reyes@example.org',79425887396,'362e978d49bfb58fda76097eafd29d92a93b127a','1988-07-28 14:36:33',NULL),(60,'wilkinson.mario@example.com',79239872424,'dfad50c857364c740c1a9b34e8353d52ab40529f','2020-10-06 10:28:35',NULL),(61,'herminia61@example.org',79966266053,'7343888d128c06d23d9acb3dc98a055c23827ff4','1977-01-06 12:50:06',NULL),(62,'abdiel89@example.com',79035072365,'4813d27aef131387eb8196f25358eb81f9418ad7','1978-11-04 20:36:43',NULL),(63,'haylee.nolan@example.com',79983285014,'c6033a814b14d606a97ab61a6f8e3599c51a1772','2019-08-27 05:52:45',NULL),(64,'mark86@example.org',79596326826,'98efc9be368a472477b2a6bb5e7ce1453b47e7ea','1975-04-14 10:17:49',NULL),(65,'edwardo10@example.net',79313748440,'fd9e097bf6157da45fc38a52812afc09219a4605','1993-02-25 10:51:26',NULL),(66,'niko24@example.org',79714461308,'2ff2926ca3a161b241480f621fdb9277533aec2a','1991-04-12 03:39:38',NULL),(67,'balistreri.wilford@example.org',79135871755,'08abf4ed2ad57adf674cca6bb284b813db66b5d4','1984-05-04 11:20:32',NULL),(68,'zschuppe@example.org',79538815262,'d10d8992dc10d09d58e0559b3a4d231df02a3697','1978-08-11 18:53:07',NULL),(69,'magdalena.schamberger@example.org',79442857658,'3982658a16fa359295b452627a309289fd088c2f','2004-03-30 01:31:24',NULL),(70,'ypurdy@example.net',79452634481,'f8d7c12ca9b4e6968d4d958a36ccc27bffc99ae3','1971-06-19 01:50:23',NULL),(71,'krystel66@example.com',79100321560,'5f105a18c189f1626346727dcece34f49b9e747a','2004-10-01 04:48:35',NULL),(72,'harber.sonny@example.net',79823998520,'a46c5013dd240cf4f58744f6c169478519b97ec3','1988-11-27 16:14:44',NULL),(73,'carson.wunsch@example.com',79590305108,'e043fd36a841d2d3e33a143d69f127f81ecb501d','1994-07-08 10:54:45',NULL),(74,'eichmann.orval@example.org',79957890736,'dbfb80df675014f19606b7acc4e3a19cb70e70b7','1977-07-15 12:21:55',NULL),(75,'andy.bailey@example.org',79211421788,'b4ca0ad3191c8fb917b029f8cdc7be0e8f1243a7','2010-11-19 03:31:58',NULL),(76,'sgrant@example.net',79518478090,'76702dbdb2620cc0efb83b2b06d0155de42b5a9c','1972-03-27 03:57:19',NULL),(77,'kemmer.shannon@example.net',79267480968,'59474fe32fb346c8a27105b19c79d3ea9c79a424','1972-12-01 21:56:03',NULL),(78,'lkshlerin@example.net',79285864749,'ba9df83379103c7b7a97e49c9d5bc10190d99e6a','1984-08-23 01:53:37',NULL),(79,'judson.kuphal@example.com',79434896229,'ba4dd387b053e8d72275d1fe76b3dbeadc24cd84','1975-05-17 18:13:01',NULL),(80,'phills@example.org',79172203015,'5ac97d1ae5950f08f64535516f502ed94e9fe3e8','2018-05-26 13:15:58',NULL),(81,'leon.lynch@example.net',79787384573,'93061533885bce1e80a59129794247b2af7461a4','1971-02-02 14:47:34',NULL),(82,'raven19@example.org',79003289860,'426decd2f7a91dbe06804b9c7d21ed060000d1eb','2019-04-10 07:36:21',NULL),(83,'blakin@example.org',79447584291,'07d6fb3d59ad9638e2e88b851f3889ff3960d604','2010-08-24 00:36:54',NULL),(84,'ashley62@example.org',79445821303,'2638f519b6e2d6ed9c30839c0dd13e679a5ef0a0','1980-04-11 01:03:41',NULL),(85,'kathryn81@example.net',79321365813,'7c763e15cc09f74aedc8297396970db5dad7c1a7','2011-07-01 00:32:17',NULL),(86,'johnathan.smitham@example.com',79808335016,'c270b104f0d46e1faa1f35c1dbd5b050ba62ce56','2006-06-06 04:36:02',NULL),(87,'harber.chad@example.org',79198983722,'ae2faa8d4ae9e0f773830f33fa091ce904bdc2b8','1999-10-28 10:19:55',NULL),(88,'naomi46@example.net',79941142353,'40a21b282ff8aa4c07d542b60619a0633edd6241','2003-04-24 01:17:32',NULL),(89,'rebeka38@example.org',79302903262,'8ab0385e81aac562d45d47d4a927165deec24c49','1988-11-29 01:42:14',NULL),(90,'gkirlin@example.org',79848532274,'58c9985a34daeef55d583f95f8632f9eba130bef','1991-06-18 13:19:35',NULL),(91,'homenick.jewell@example.net',79299763746,'1ab0a47b5d53070cf1d01af4393746c9c7ce7182','1976-09-30 05:14:57',NULL),(92,'vaughn55@example.org',79106306215,'c77f3374e7d1687181135dd09976c1faa3bb6586','1985-04-09 15:06:39',NULL),(93,'raynor.idella@example.com',79742702749,'a1d6a689043e81ab8adfa88b9b5ce90ed348893e','1975-06-02 09:12:09',NULL),(94,'destany34@example.net',79597128021,'1c797e46a2facd2dfed5a42ca4797ca9cd81bbe9','2011-10-26 07:10:06',NULL),(95,'zjohns@example.com',79721427382,'c8fe8250a0546eba8e522fc4e5e0cd31c8e568e1','1977-12-04 05:58:33',NULL),(96,'dianna.west@example.net',79161710870,'cb20210f0dff2a8067b271fbd90629840d8164e1','2016-01-07 23:45:57',NULL),(97,'audreanne.koepp@example.com',79328866059,'34b5550d2cf03a57e3a434db9d57d08cbf1390c6','2020-01-19 08:55:17',NULL),(98,'hhuel@example.net',79301710233,'3714b465d8af63626c5f88d169bd01deb76ea3f9','2004-06-14 01:27:06',NULL),(99,'sarah.dare@example.com',79754948632,'b61da621172cc3437676e0754376b071e78f824c','2010-06-12 13:58:49',NULL),(100,'suzanne27@example.net',79708146614,'5da5cd0e179bd7acec6bca1bbeac1461d81a1e97','1979-07-18 23:53:56',NULL);
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
INSERT INTO `user_community` VALUES (1,11),(1,49),(2,3),(2,30),(2,57),(2,77),(3,16),(3,20),(3,26),(3,30),(3,31),(3,35),(3,37),(3,38),(3,47),(3,49),(3,57),(3,67),(3,83),(4,33),(4,43),(4,60),(4,82),(4,83),(4,95),(5,3),(5,6),(5,7),(5,24),(5,37),(5,38),(5,42),(5,72),(5,94),(6,21),(6,75),(7,48),(7,65),(7,75),(7,77),(7,95),(8,23),(8,44),(8,52),(8,53),(8,55),(8,88),(9,29),(9,61),(9,72),(10,25),(10,33),(10,40),(10,46),(10,92),(11,65),(11,79),(11,99),(12,27),(12,49),(13,12),(13,16),(13,27),(13,39),(13,43),(13,48),(13,52),(13,64),(13,72),(14,8),(14,13),(14,32),(14,43),(14,86),(14,89),(15,19),(15,80),(16,7),(16,34),(16,41),(16,52),(16,88),(17,99),(17,100),(18,6),(18,23),(18,42),(18,84),(19,27),(19,32),(19,33),(19,55),(19,60),(19,74),(19,75),(19,94),(20,8),(20,68);
/*!40000 ALTER TABLE `user_community` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-16 22:52:04
