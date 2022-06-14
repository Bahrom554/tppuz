-- MySQL dump 10.13  Distrib 8.0.28, for macos12.2 (arm64)
--
-- Host: localhost    Database: ttpuzdb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `file_id` int unsigned NOT NULL,
  `target` int NOT NULL,
  `lang` int unsigned NOT NULL,
  `lang_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `banners_file_id_foreign` (`file_id`),
  KEY `banners_lang_foreign` (`lang`),
  CONSTRAINT `banners_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`),
  CONSTRAINT `banners_lang_foreign` FOREIGN KEY (`lang`) REFERENCES `lenguages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'epamen','#',1,1,78,5,2,'default','2022-06-10 20:17:44','2022-06-10 20:17:44'),(2,'epamen','#',1,1,80,5,2,'sdfsdfsdf','2022-06-10 20:18:48','2022-06-10 20:18:48'),(3,'epamen','#',1,1,81,5,2,'sdfsdfsdf','2022-06-10 20:19:15','2022-06-10 20:19:15'),(4,'epamen','#',1,1,82,5,2,'sdfsdfsdf','2022-06-10 20:19:16','2022-06-10 20:19:16'),(5,'epamen','#',1,1,83,5,2,'sdfsdfsdf','2022-06-10 20:19:17','2022-06-10 20:19:17'),(6,'epamen','#',1,1,84,5,2,'sdfsdfsdf','2022-06-10 20:19:17','2022-06-10 20:19:17'),(7,'epamen','#',1,1,86,5,2,'siuoiuoidfsdfsdf','2022-06-10 20:19:57','2022-06-10 20:19:57'),(8,'epamen','#',1,1,87,5,2,'siuoiuoidfsdfsdf','2022-06-10 20:19:58','2022-06-10 20:19:58'),(9,'epamen','#',1,1,88,5,2,'siuoiuoidfsdfsdf','2022-06-10 20:19:58','2022-06-10 20:19:58'),(10,'epamen','#',1,1,89,5,2,'siuoiuoidfsdfsdf','2022-06-10 20:19:59','2022-06-10 20:19:59'),(11,'epamen','#',1,1,90,5,2,'siuoiuoidfsdfsdf','2022-06-10 20:20:00','2022-06-10 20:20:00'),(12,'epamen','#',1,1,91,5,2,'siuoiuoidfsdfsdf','2022-06-10 20:20:38','2022-06-10 20:20:38'),(13,'epamen','#',1,1,92,5,2,'siuoiuoidfsdfsdf','2022-06-10 20:20:40','2022-06-10 20:20:40'),(14,'epamen','#',1,1,93,5,2,'siuoiuoidfsdfsdf','2022-06-10 20:20:41','2022-06-10 20:20:41'),(15,'epamen','#',1,1,94,5,2,'siuoiuoidfsdfsdf','2022-06-10 20:20:41','2022-06-10 20:20:41'),(16,'epamen','#',1,1,95,5,2,'dsdsdsdds','2022-06-10 20:24:05','2022-06-10 20:24:05'),(17,'epamen','#',1,1,96,5,2,'dsdsdsdds','2022-06-10 20:24:06','2022-06-10 20:24:06'),(18,'epamen','#',1,1,97,5,2,'dsdsdsdds','2022-06-10 20:24:07','2022-06-10 20:24:07'),(19,'epamen','#',1,1,98,5,2,'dsdsdsdds','2022-06-10 20:24:08','2022-06-10 20:24:08'),(20,'epamen','#',1,1,99,5,2,'dsdsdsdds','2022-06-10 20:24:09','2022-06-10 20:24:09'),(22,'epamen','#',1,1,101,5,2,'dsdsdsdds','2022-06-10 20:24:14','2022-06-10 20:24:14');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int unsigned DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int DEFAULT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `files_user_id_foreign` (`user_id`),
  CONSTRAINT `files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','2057553935.png','png','2057553935','2022/06/10/10/42','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/10/42',NULL,NULL,'2022-06-10 05:42:37','2022-06-10 05:42:37'),(2,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','23743982.png','png','23743982','2022/06/10/11/45','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/11/45',NULL,NULL,'2022-06-10 06:45:23','2022-06-10 06:45:23'),(3,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','2110968648.png','png','2110968648','2022/06/10/11/46','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/11/46',NULL,NULL,'2022-06-10 06:46:49','2022-06-10 06:46:49'),(4,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1677808692.png','png','1677808692','2022/06/10/11/54','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/11/54',NULL,NULL,'2022-06-10 06:54:44','2022-06-10 06:54:44'),(5,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','17093479.png','png','17093479','2022/06/10/11/54','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/11/54',NULL,NULL,'2022-06-10 06:54:48','2022-06-10 06:54:48'),(6,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','40395626.png','png','40395626','2022/06/10/11/55','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/11/55',NULL,NULL,'2022-06-10 06:55:09','2022-06-10 06:55:09'),(7,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','2098134547.png','png','2098134547','2022/06/10/11/57','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/11/57',NULL,NULL,'2022-06-10 06:57:45','2022-06-10 06:57:45'),(8,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','98266361.png','png','98266361','2022/06/10/11/58','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/11/58',NULL,NULL,'2022-06-10 06:58:05','2022-06-10 06:58:05'),(9,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1111734011.png','png','1111734011','2022/06/10/11/58','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/11/58',NULL,NULL,'2022-06-10 06:58:10','2022-06-10 06:58:10'),(10,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','232606131.png','png','232606131','2022/06/10/11/58','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/11/58',NULL,NULL,'2022-06-10 06:58:11','2022-06-10 06:58:11'),(11,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1676033074.png','png','1676033074','2022/06/10/12/09','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/09',NULL,NULL,'2022-06-10 07:09:11','2022-06-10 07:09:11'),(12,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1534091350.png','png','1534091350','2022/06/10/12/10','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/10',NULL,NULL,'2022-06-10 07:10:35','2022-06-10 07:10:35'),(13,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1715820121.png','png','1715820121','2022/06/10/12/10','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/10',NULL,NULL,'2022-06-10 07:10:36','2022-06-10 07:10:36'),(14,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','137560734.png','png','137560734','2022/06/10/12/10','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/10',NULL,NULL,'2022-06-10 07:10:36','2022-06-10 07:10:36'),(15,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','723778574.png','png','723778574','2022/06/10/12/21','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/21',NULL,NULL,'2022-06-10 07:21:01','2022-06-10 07:21:01'),(16,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','702000803.png','png','702000803','2022/06/10/12/22','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/22',NULL,NULL,'2022-06-10 07:22:51','2022-06-10 07:22:51'),(17,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1963742805.png','png','1963742805','2022/06/10/12/22','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/22',NULL,NULL,'2022-06-10 07:22:53','2022-06-10 07:22:53'),(18,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1756544277.png','png','1756544277','2022/06/10/12/22','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/22',NULL,NULL,'2022-06-10 07:22:54','2022-06-10 07:22:54'),(19,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1525133272.png','png','1525133272','2022/06/10/12/22','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/22',NULL,NULL,'2022-06-10 07:22:54','2022-06-10 07:22:54'),(20,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','51869096.png','png','51869096','2022/06/10/12/22','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/22',NULL,NULL,'2022-06-10 07:22:55','2022-06-10 07:22:55'),(21,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','70111555.png','png','70111555','2022/06/10/12/22','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/22',NULL,NULL,'2022-06-10 07:22:55','2022-06-10 07:22:55'),(22,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','150914560.png','png','150914560','2022/06/10/12/22','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/22',NULL,NULL,'2022-06-10 07:22:56','2022-06-10 07:22:56'),(23,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','542510708.png','png','542510708','2022/06/10/12/22','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/22',NULL,NULL,'2022-06-10 07:22:57','2022-06-10 07:22:57'),(24,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1296077779.png','png','1296077779','2022/06/10/12/22','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/22',NULL,NULL,'2022-06-10 07:22:57','2022-06-10 07:22:57'),(25,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','715891560.png','png','715891560','2022/06/10/12/22','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/22',NULL,NULL,'2022-06-10 07:22:58','2022-06-10 07:22:58'),(26,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','2001809545.png','png','2001809545','2022/06/10/12/22','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/22',NULL,NULL,'2022-06-10 07:22:58','2022-06-10 07:22:58'),(27,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','2023176047.png','png','2023176047','2022/06/10/12/22','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/22',NULL,NULL,'2022-06-10 07:22:59','2022-06-10 07:22:59'),(28,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1368048878.png','png','1368048878','2022/06/10/12/23','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/23',NULL,NULL,'2022-06-10 07:23:00','2022-06-10 07:23:00'),(29,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1859039093.png','png','1859039093','2022/06/10/12/24','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/24',NULL,NULL,'2022-06-10 07:24:06','2022-06-10 07:24:06'),(30,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','675643112.png','png','675643112','2022/06/10/12/24','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/24',NULL,NULL,'2022-06-10 07:24:07','2022-06-10 07:24:07'),(31,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','2087198751.png','png','2087198751','2022/06/10/12/24','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/24',NULL,NULL,'2022-06-10 07:24:07','2022-06-10 07:24:07'),(32,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','748698419.png','png','748698419','2022/06/10/12/24','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/24',NULL,NULL,'2022-06-10 07:24:08','2022-06-10 07:24:08'),(33,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','137830231.png','png','137830231','2022/06/10/12/24','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/24',NULL,NULL,'2022-06-10 07:24:08','2022-06-10 07:24:08'),(34,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','636346372.png','png','636346372','2022/06/10/12/24','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/24',NULL,NULL,'2022-06-10 07:24:09','2022-06-10 07:24:09'),(35,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1904328904.png','png','1904328904','2022/06/10/12/24','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/24',NULL,NULL,'2022-06-10 07:24:09','2022-06-10 07:24:09'),(36,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','618600460.png','png','618600460','2022/06/10/12/24','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/24',NULL,NULL,'2022-06-10 07:24:11','2022-06-10 07:24:11'),(38,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1280604338.png','png','1280604338','2022/06/10/12/28','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/28',NULL,NULL,'2022-06-10 07:28:27','2022-06-10 07:28:27'),(39,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1331518878.png','png','1331518878','2022/06/10/12/28','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/28',NULL,NULL,'2022-06-10 07:28:28','2022-06-10 07:28:28'),(41,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','46810761.png','png','46810761','2022/06/10/12/28','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/28',NULL,NULL,'2022-06-10 07:28:30','2022-06-10 07:28:30'),(42,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','2016739273.png','png','2016739273','2022/06/10/12/28','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/28',NULL,NULL,'2022-06-10 07:28:31','2022-06-10 07:28:31'),(43,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','678365055.png','png','678365055','2022/06/10/12/28','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/28',NULL,NULL,'2022-06-10 07:28:31','2022-06-10 07:28:31'),(44,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1287564763.png','png','1287564763','2022/06/10/12/30','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/30',NULL,NULL,'2022-06-10 07:30:03','2022-06-10 07:30:03'),(45,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1295512961.png','png','1295512961','2022/06/10/12/30','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/30',NULL,NULL,'2022-06-10 07:30:03','2022-06-10 07:30:03'),(46,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','139194422.png','png','139194422','2022/06/10/12/30','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/30',NULL,NULL,'2022-06-10 07:30:04','2022-06-10 07:30:04'),(47,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','231751364.png','png','231751364','2022/06/10/12/30','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/30',NULL,NULL,'2022-06-10 07:30:05','2022-06-10 07:30:05'),(48,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','2001579143.png','png','2001579143','2022/06/10/12/30','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/30',NULL,NULL,'2022-06-10 07:30:05','2022-06-10 07:30:05'),(49,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1453455861.png','png','1453455861','2022/06/10/12/30','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/30',NULL,NULL,'2022-06-10 07:30:06','2022-06-10 07:30:06'),(50,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','2064460913.png','png','2064460913','2022/06/10/12/30','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/30',NULL,NULL,'2022-06-10 07:30:06','2022-06-10 07:30:06'),(51,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1114418141.png','png','1114418141','2022/06/10/12/30','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/30',NULL,NULL,'2022-06-10 07:30:07','2022-06-10 07:30:07'),(52,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1520408932.png','png','1520408932','2022/06/10/12/30','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/30',NULL,NULL,'2022-06-10 07:30:08','2022-06-10 07:30:08'),(53,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','145804364.png','png','145804364','2022/06/10/12/31','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/31',NULL,NULL,'2022-06-10 07:31:06','2022-06-10 07:31:06'),(54,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','2038480565.png','png','2038480565','2022/06/10/12/32','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/32',NULL,NULL,'2022-06-10 07:32:17','2022-06-10 07:32:17'),(55,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1006579000.png','png','1006579000','2022/06/10/12/32','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/32',NULL,NULL,'2022-06-10 07:32:18','2022-06-10 07:32:18'),(56,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','2146640167.png','png','2146640167','2022/06/10/12/32','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/32',NULL,NULL,'2022-06-10 07:32:19','2022-06-10 07:32:19'),(57,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','977691735.png','png','977691735','2022/06/10/12/32','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/32',NULL,NULL,'2022-06-10 07:32:20','2022-06-10 07:32:20'),(58,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','319819458.png','png','319819458','2022/06/10/12/32','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/32',NULL,NULL,'2022-06-10 07:32:20','2022-06-10 07:32:20'),(59,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','434789107.png','png','434789107','2022/06/10/12/32','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/32',NULL,NULL,'2022-06-10 07:32:21','2022-06-10 07:32:21'),(60,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1516762016.png','png','1516762016','2022/06/10/12/32','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/32',NULL,NULL,'2022-06-10 07:32:21','2022-06-10 07:32:21'),(61,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1626861363.png','png','1626861363','2022/06/10/12/32','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/32',NULL,NULL,'2022-06-10 07:32:22','2022-06-10 07:32:22'),(62,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','667954506.png','png','667954506','2022/06/10/12/33','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/33',NULL,NULL,'2022-06-10 07:33:45','2022-06-10 07:33:45'),(63,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','860203777.png','png','860203777','2022/06/10/12/33','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/33',NULL,NULL,'2022-06-10 07:33:49','2022-06-10 07:33:49'),(64,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1473610933.png','png','1473610933','2022/06/10/12/33','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/33',NULL,NULL,'2022-06-10 07:33:50','2022-06-10 07:33:50'),(65,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1581150054.png','png','1581150054','2022/06/10/12/33','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/33',NULL,NULL,'2022-06-10 07:33:51','2022-06-10 07:33:51'),(66,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','2025142905.png','png','2025142905','2022/06/10/12/33','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/33',NULL,NULL,'2022-06-10 07:33:51','2022-06-10 07:33:51'),(67,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1695647743.png','png','1695647743','2022/06/10/12/36','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/12/36',NULL,NULL,'2022-06-10 07:36:35','2022-06-10 07:36:35'),(68,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','234873413.png','png','234873413','2022/06/10/13/31','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/13/31',NULL,NULL,'2022-06-10 08:31:50','2022-06-10 08:31:50'),(69,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','2099281246.png','png','2099281246','2022/06/10/13/31','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/10/13/31',NULL,NULL,'2022-06-10 08:31:53','2022-06-10 08:31:53'),(70,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','479783955.png','png','479783955','2022/06/11/00/03','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/00/03',NULL,NULL,'2022-06-10 19:03:34','2022-06-10 19:03:34'),(71,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1188213621.png','png','1188213621','2022/06/11/00/03','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/00/03',NULL,NULL,'2022-06-10 19:03:35','2022-06-10 19:03:35'),(72,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','934885937.png','png','934885937','2022/06/11/00/03','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/00/03',NULL,NULL,'2022-06-10 19:03:37','2022-06-10 19:03:37'),(75,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','2082254111.png','png','2082254111','2022/06/11/01/15','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/15',NULL,NULL,'2022-06-10 20:15:47','2022-06-10 20:15:47'),(76,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1090718005.png','png','1090718005','2022/06/11/01/16','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/16',NULL,NULL,'2022-06-10 20:16:40','2022-06-10 20:16:40'),(77,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','4856524.png','png','4856524','2022/06/11/01/16','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/16',NULL,NULL,'2022-06-10 20:16:53','2022-06-10 20:16:53'),(78,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1319033208.png','png','1319033208','2022/06/11/01/17','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/17',NULL,NULL,'2022-06-10 20:17:44','2022-06-10 20:17:44'),(79,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1735055869.png','png','1735055869','2022/06/11/01/18','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/18',NULL,NULL,'2022-06-10 20:18:25','2022-06-10 20:18:25'),(80,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1996066814.png','png','1996066814','2022/06/11/01/18','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/18',NULL,NULL,'2022-06-10 20:18:48','2022-06-10 20:18:48'),(81,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','444310300.png','png','444310300','2022/06/11/01/19','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/19',NULL,NULL,'2022-06-10 20:19:15','2022-06-10 20:19:15'),(82,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','974960144.png','png','974960144','2022/06/11/01/19','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/19',NULL,NULL,'2022-06-10 20:19:16','2022-06-10 20:19:16'),(83,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1720657229.png','png','1720657229','2022/06/11/01/19','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/19',NULL,NULL,'2022-06-10 20:19:17','2022-06-10 20:19:17'),(84,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','624202324.png','png','624202324','2022/06/11/01/19','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/19',NULL,NULL,'2022-06-10 20:19:17','2022-06-10 20:19:17'),(85,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','534943334.png','png','534943334','2022/06/11/01/19','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/19',NULL,NULL,'2022-06-10 20:19:48','2022-06-10 20:19:48'),(86,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1496195961.png','png','1496195961','2022/06/11/01/19','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/19',NULL,NULL,'2022-06-10 20:19:57','2022-06-10 20:19:57'),(87,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1878922777.png','png','1878922777','2022/06/11/01/19','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/19',NULL,NULL,'2022-06-10 20:19:58','2022-06-10 20:19:58'),(88,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1509991233.png','png','1509991233','2022/06/11/01/19','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/19',NULL,NULL,'2022-06-10 20:19:58','2022-06-10 20:19:58'),(89,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1692296483.png','png','1692296483','2022/06/11/01/19','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/19',NULL,NULL,'2022-06-10 20:19:59','2022-06-10 20:19:59'),(90,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1284291882.png','png','1284291882','2022/06/11/01/20','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/20',NULL,NULL,'2022-06-10 20:20:00','2022-06-10 20:20:00'),(91,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','906933382.png','png','906933382','2022/06/11/01/20','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/20',NULL,NULL,'2022-06-10 20:20:38','2022-06-10 20:20:38'),(92,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','2110570840.png','png','2110570840','2022/06/11/01/20','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/20',NULL,NULL,'2022-06-10 20:20:40','2022-06-10 20:20:40'),(93,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1703970816.png','png','1703970816','2022/06/11/01/20','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/20',NULL,NULL,'2022-06-10 20:20:41','2022-06-10 20:20:41'),(94,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','832301451.png','png','832301451','2022/06/11/01/20','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/20',NULL,NULL,'2022-06-10 20:20:41','2022-06-10 20:20:41'),(95,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1419646642.png','png','1419646642','2022/06/11/01/24','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/24',NULL,NULL,'2022-06-10 20:24:05','2022-06-10 20:24:05'),(96,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1862054430.png','png','1862054430','2022/06/11/01/24','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/24',NULL,NULL,'2022-06-10 20:24:06','2022-06-10 20:24:06'),(97,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1362102297.png','png','1362102297','2022/06/11/01/24','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/24',NULL,NULL,'2022-06-10 20:24:07','2022-06-10 20:24:07'),(98,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1401030809.png','png','1401030809','2022/06/11/01/24','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/24',NULL,NULL,'2022-06-10 20:24:08','2022-06-10 20:24:08'),(99,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','214158871.png','png','214158871','2022/06/11/01/24','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/24',NULL,NULL,'2022-06-10 20:24:09','2022-06-10 20:24:09'),(100,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1168571504.png','png','1168571504','2022/06/11/01/24','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/24',NULL,NULL,'2022-06-10 20:24:13','2022-06-10 20:24:13'),(101,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1857515246.png','png','1857515246','2022/06/11/01/24','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/01/24',NULL,NULL,'2022-06-10 20:24:14','2022-06-10 20:24:14'),(102,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1354519455.png','png','1354519455','2022/06/11/06/03','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/06/03',NULL,NULL,'2022-06-11 01:03:44','2022-06-11 01:03:44'),(103,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','972152890.png','png','972152890','2022/06/11/06/04','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/06/04',NULL,NULL,'2022-06-11 01:04:01','2022-06-11 01:04:01'),(104,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','168404882.png','png','168404882','2022/06/11/06/04','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/06/04',NULL,NULL,'2022-06-11 01:04:33','2022-06-11 01:04:33'),(105,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1836330721.png','png','1836330721','2022/06/11/06/05','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/06/05',NULL,NULL,'2022-06-11 01:05:25','2022-06-11 01:05:25'),(106,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','894477620.png','png','894477620','2022/06/11/06/05','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/06/05',NULL,NULL,'2022-06-11 01:05:29','2022-06-11 01:05:29'),(107,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','418010606.png','png','418010606','2022/06/11/06/05','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/06/05',NULL,NULL,'2022-06-11 01:05:49','2022-06-11 01:05:49'),(108,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1190449650.png','png','1190449650','2022/06/11/06/11','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/06/11',NULL,NULL,'2022-06-11 01:11:51','2022-06-11 01:11:51'),(109,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1545022376.png','png','1545022376','2022/06/11/08/36','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/08/36',NULL,NULL,'2022-06-11 03:36:38','2022-06-11 03:36:38'),(110,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1043170499.png','png','1043170499','2022/06/11/08/36','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/08/36',NULL,NULL,'2022-06-11 03:36:47','2022-06-11 03:36:47'),(111,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1599051441.png','png','1599051441','2022/06/11/10/10','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/10/10',NULL,NULL,'2022-06-11 05:10:01','2022-06-11 05:10:01'),(112,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1415054016.png','png','1415054016','2022/06/11/10/10','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/10/10',NULL,NULL,'2022-06-11 05:10:28','2022-06-11 05:10:28'),(113,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1163239465.png','png','1163239465','2022/06/11/10/10','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/11/10/10',NULL,NULL,'2022-06-11 05:10:52','2022-06-11 05:10:52'),(114,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1507339777.png','png','1507339777','2022/06/13/09/00','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/13/09/00',NULL,NULL,'2022-06-13 04:00:32','2022-06-13 04:00:32'),(115,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','956518158.png','png','956518158','2022/06/13/09/02','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/13/09/02',NULL,NULL,'2022-06-13 04:02:10','2022-06-13 04:02:10'),(118,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','5991775.png','png','5991775','2022/06/13/09/37','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/13/09/37',NULL,NULL,'2022-06-13 04:37:39','2022-06-13 04:37:39'),(123,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','223429006.png','png','223429006','2022/06/13/10/53','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/13/10/53',NULL,NULL,'2022-06-13 05:53:05','2022-06-13 05:53:05'),(124,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','446605515.png','png','446605515','2022/06/13/11/38','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/13/11/38',NULL,NULL,'2022-06-13 06:38:32','2022-06-13 06:38:32'),(125,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','407640690.png','png','407640690','2022/06/13/11/38','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/13/11/38',NULL,NULL,'2022-06-13 06:38:41','2022-06-13 06:38:41'),(126,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','1329233461.png','png','1329233461','2022/06/13/11/41','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/13/11/41',NULL,NULL,'2022-06-13 06:41:48','2022-06-13 06:41:48'),(127,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','397696944.png','png','397696944','2022/06/13/13/16','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/13/13/16',NULL,NULL,'2022-06-13 08:16:30','2022-06-13 08:16:30'),(128,'image_2022-06-04_17-43-32.png','image_2022-06-04_17-43-32.png','578767808.png','png','578767808','2022/06/13/13/16','http://localhost:8000',NULL,'/Users/istore/ttpuz/public/uploads/image/2022/06/13/13/16',NULL,NULL,'2022-06-13 08:16:33','2022-06-13 08:16:33');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histories`
--

DROP TABLE IF EXISTS `histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `histories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `file_id` int unsigned NOT NULL,
  `documents` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anons` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` int unsigned NOT NULL,
  `lang_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `histories_file_id_foreign` (`file_id`),
  KEY `histories_lang_foreign` (`lang`),
  CONSTRAINT `histories_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`),
  CONSTRAINT `histories_lang_foreign` FOREIGN KEY (`lang`) REFERENCES `lenguages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histories`
--

LOCK TABLES `histories` WRITE;
/*!40000 ALTER TABLE `histories` DISABLE KEYS */;
INSERT INTO `histories` VALUES (1,'epamen','sdffsdf','1',1,127,NULL,NULL,'siuoiuoidfsdfsdf',2,'sddfsfd',1,'2022-06-13 08:16:30','2022-06-13 08:16:30'),(2,'epamen','sdffsdf','1',1,128,NULL,NULL,'siuoiuoidfsdfsdf',2,'sddfsfd',1,'2022-06-13 08:16:33','2022-06-13 08:16:33');
/*!40000 ALTER TABLE `histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lenguages`
--

DROP TABLE IF EXISTS `lenguages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lenguages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lenguages`
--

LOCK TABLES `lenguages` WRITE;
/*!40000 ALTER TABLE `lenguages` DISABLE KEYS */;
INSERT INTO `lenguages` VALUES (1,'ing','2022-06-10 07:15:11','2022-06-10 07:15:15'),(2,'engliztili','2022-06-10 02:23:44','2022-06-10 02:23:44'),(3,'engliztili','2022-06-10 02:24:14','2022-06-10 02:24:14'),(4,'engliztili','2022-06-10 02:24:15','2022-06-10 02:24:15'),(5,'engliztili','2022-06-10 02:24:16','2022-06-10 02:24:16'),(6,'engliztili','2022-06-10 02:24:19','2022-06-10 02:24:19'),(7,'engliztili','2022-06-10 02:24:20','2022-06-10 02:24:20'),(8,'english','2022-06-11 01:57:02','2022-06-11 01:57:02');
/*!40000 ALTER TABLE `lenguages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_id` int unsigned DEFAULT NULL,
  `sort` int NOT NULL,
  `menu_item_parent_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  KEY `menu_items_menu_item_parent_id_foreign` (`menu_item_parent_id`),
  KEY `menu_items_file_id_foreign` (`file_id`),
  CONSTRAINT `menu_items_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  CONSTRAINT `menu_items_menu_item_parent_id_foreign` FOREIGN KEY (`menu_item_parent_id`) REFERENCES `menu_items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'wewewe','#',NULL,2,NULL,'2022-06-11 00:09:11','2022-06-11 00:09:11'),(2,1,'wewewe','#',NULL,2,NULL,'2022-06-11 00:15:16','2022-06-11 00:15:16'),(3,1,'wewewe','#',NULL,2,NULL,'2022-06-11 00:15:17','2022-06-11 00:15:17'),(4,1,'wewewe','#',NULL,2,NULL,'2022-06-11 00:15:17','2022-06-11 00:15:17'),(5,1,'wewewe','#',NULL,2,NULL,'2022-06-11 00:15:18','2022-06-11 00:15:18'),(6,1,'wewewe','#',NULL,2,NULL,'2022-06-11 00:15:18','2022-06-11 00:15:18'),(7,1,'wewewe','#',NULL,2,NULL,'2022-06-11 00:15:19','2022-06-11 00:15:19'),(8,1,'wewewe','#lll',NULL,2,NULL,'2022-06-11 00:15:19','2022-06-11 00:32:28'),(10,1,'wewewe','#',NULL,2,1,'2022-06-11 00:15:41','2022-06-11 00:15:41'),(11,28,'wewewe','#',NULL,2,1,'2022-06-13 07:22:23','2022-06-13 07:22:23'),(12,28,'wewewe','#',NULL,2,1,'2022-06-13 07:22:26','2022-06-13 07:22:26'),(13,28,'wewewe','#',NULL,2,1,'2022-06-13 07:22:27','2022-06-13 07:22:27'),(14,28,'wewewe','#',NULL,2,1,'2022-06-13 07:22:27','2022-06-13 07:22:27'),(15,28,'wewewe','#',NULL,2,1,'2022-06-13 07:22:28','2022-06-13 07:22:28'),(16,28,'wewewe','#',NULL,2,1,'2022-06-13 07:22:28','2022-06-13 07:22:28'),(17,28,'wewewe','#',NULL,2,1,'2022-06-13 07:22:29','2022-06-13 07:22:29'),(18,28,'wewewe','#',NULL,2,1,'2022-06-13 07:22:29','2022-06-13 07:22:29'),(19,28,'wewewe','#',NULL,2,1,'2022-06-13 07:22:30','2022-06-13 07:22:30'),(20,28,'wewewe','#',NULL,2,1,'2022-06-13 07:22:30','2022-06-13 07:22:30'),(21,28,'wewewe','#',NULL,2,1,'2022-06-13 07:22:31','2022-06-13 07:22:31'),(22,28,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:27','2022-06-13 07:26:27'),(23,28,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:27','2022-06-13 07:26:27'),(24,28,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:28','2022-06-13 07:26:28'),(25,28,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:28','2022-06-13 07:26:28'),(26,28,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:29','2022-06-13 07:26:29'),(27,28,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:29','2022-06-13 07:26:29'),(28,28,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:30','2022-06-13 07:26:30'),(29,28,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:30','2022-06-13 07:26:30'),(30,28,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:31','2022-06-13 07:26:31'),(31,28,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:31','2022-06-13 07:26:31'),(32,28,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:31','2022-06-13 07:26:31'),(33,1,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:38','2022-06-13 07:26:38'),(34,1,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:39','2022-06-13 07:26:39'),(35,1,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:39','2022-06-13 07:26:39'),(36,1,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:40','2022-06-13 07:26:40'),(37,1,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:40','2022-06-13 07:26:40'),(38,1,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:41','2022-06-13 07:26:41'),(39,1,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:41','2022-06-13 07:26:41'),(40,1,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:42','2022-06-13 07:26:42'),(41,1,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:42','2022-06-13 07:26:42'),(42,1,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:42','2022-06-13 07:26:42'),(43,1,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:43','2022-06-13 07:26:43'),(44,1,'wewewe','#',NULL,2,NULL,'2022-06-13 07:26:43','2022-06-13 07:26:43');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` int unsigned NOT NULL,
  `lang_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menus_lang_foreign` (`lang`),
  CONSTRAINT `menus_lang_foreign` FOREIGN KEY (`lang`) REFERENCES `lenguages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Hello','123',NULL,2,'default',1,'2022-06-10 05:01:11','2022-06-10 05:01:11'),(2,'HelloUpdated5','HelloUpdated2',NULL,2,'default',13,'2022-06-10 05:01:19','2022-06-10 08:23:00'),(3,'Hello','123',NULL,2,'default',13,'2022-06-10 05:29:38','2022-06-10 05:29:38'),(4,'Hello','123',NULL,2,'default',13,'2022-06-10 05:38:56','2022-06-10 05:38:56'),(5,'Hello','123',NULL,2,'default',13,'2022-06-10 05:38:58','2022-06-10 05:38:58'),(6,'Hello','123',NULL,2,'default',13,'2022-06-10 05:38:59','2022-06-10 05:38:59'),(7,'Hello','123',NULL,2,'default',13,'2022-06-10 20:58:46','2022-06-10 20:58:46'),(8,'Hello','123','lolo',2,'default',13,'2022-06-10 20:59:43','2022-06-10 20:59:43'),(10,'Hello','123',NULL,2,'default',13,'2022-06-10 20:59:54','2022-06-10 20:59:54'),(11,'Hello','123',NULL,2,'default',13,'2022-06-10 20:59:54','2022-06-10 20:59:54'),(12,'Hello','123','lolo',2,'asass',13,'2022-06-10 23:40:09','2022-06-10 23:40:09'),(13,'Hello','123','lolo',2,'asass',13,'2022-06-13 07:18:57','2022-06-13 07:18:57'),(14,'Hello','123','lolo',2,'asass',13,'2022-06-13 07:18:59','2022-06-13 07:18:59'),(15,'Hello','123','lolo',2,'asass',13,'2022-06-13 07:19:00','2022-06-13 07:19:00'),(16,'Hello','123','lolo',2,'asass',13,'2022-06-13 07:19:00','2022-06-13 07:19:00'),(17,'Hello','123','lolo',2,'asass',13,'2022-06-13 07:19:01','2022-06-13 07:19:01'),(18,'Hello','123','lolo',2,'asass',13,'2022-06-13 07:19:02','2022-06-13 07:19:02'),(19,'Hello','123','lolo',2,'asass',13,'2022-06-13 07:19:02','2022-06-13 07:19:02'),(20,'Hello','123','lolo',2,'asass',13,'2022-06-13 07:19:03','2022-06-13 07:19:03'),(21,'Hello','123','lolo',2,'asass',13,'2022-06-13 07:19:03','2022-06-13 07:19:03'),(22,'Hello','123','lolo',1,'asass',13,'2022-06-13 07:19:08','2022-06-13 07:19:08'),(23,'Hello','123','lolo',1,'asass',13,'2022-06-13 07:19:09','2022-06-13 07:19:09'),(24,'Hello','123','lolo',1,'asass',13,'2022-06-13 07:19:09','2022-06-13 07:19:09'),(25,'Hello','123','lolo',1,'asass',13,'2022-06-13 07:19:10','2022-06-13 07:19:10'),(26,'Hello','123','lolo',1,'asass',13,'2022-06-13 07:19:10','2022-06-13 07:19:10'),(27,'Hello','123','lolo',1,'asass',13,'2022-06-13 07:19:11','2022-06-13 07:19:11'),(28,'Hello','123','lolo',1,'asass',13,'2022-06-13 07:19:12','2022-06-13 07:19:12'),(29,'Hello','123','lolo',1,'asass',1,'2022-06-13 07:35:44','2022-06-13 07:35:44'),(30,'Hello','123','lolo',1,'asass',1,'2022-06-13 07:35:45','2022-06-13 07:35:45'),(31,'Hello','123','lolo',1,'asass',1,'2022-06-13 07:35:46','2022-06-13 07:35:46'),(32,'Hello','123','lolo',1,'asass',1,'2022-06-13 07:35:46','2022-06-13 07:35:46'),(33,'Hello','123','lolo',1,'asass',1,'2022-06-13 07:35:46','2022-06-13 07:35:46'),(34,'Hello','123','lolo',1,'asass',1,'2022-06-13 07:35:47','2022-06-13 07:35:47'),(35,'Hello','123','lolo',1,'asass',1,'2022-06-13 07:35:47','2022-06-13 07:35:47'),(36,'Hello','123','lolo',1,'asass',1,'2022-06-13 07:35:48','2022-06-13 07:35:48'),(37,'Hello','123','lolo',1,'asass',1,'2022-06-13 07:35:48','2022-06-13 07:35:48'),(38,'Hello','123','lolo',1,'asass',1,'2022-06-13 07:35:48','2022-06-13 07:35:48'),(39,'Hello','123','lolo',1,'asass',1,'2022-06-13 07:35:49','2022-06-13 07:35:49');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(8,'2022_06_05_061314_create_lenguages_table',1),(9,'2022_06_06_025348_create_files_table',1),(10,'2022_06_07_173047_create_settings_table',1),(11,'2022_06_07_173720_create_menus_table',1),(12,'2022_06_08_010042_create_menu_items_table',1),(13,'2022_06_08_012320_create_banners_table',1),(14,'2022_06_08_014440_create_posts_table',1),(15,'2022_06_08_015634_create_useful_links_table',1),(16,'2022_06_08_030321_create_thumbnails_table',1),(17,'2022_06_09_054324_create_regions_table',1),(22,'2022_06_10_052106_create_widgets_table',2),(23,'2022_06_10_052127_create_widget_items_table',2),(24,'2022_06_10_053500_create_histories_table',2),(25,'2022_06_10_054257_create_stations_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `client_id` int unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('5c393503e9a86987dedef440309c6c1273a87a71179047dc130bb0b5e455be7ba9b69fe68ee58476',1,2,NULL,'[]',0,'2022-06-13 08:14:45','2022-06-13 08:14:45','2023-06-13 13:14:45'),('93e7b2bcb21587ab355685c766fa53bf4ce38b494f6b6ec5aa3b5f3c40446caa236a569cce0246e2',1,2,NULL,'[]',0,'2022-06-11 01:40:21','2022-06-11 01:40:21','2023-06-11 06:40:21'),('943691d4fd701fa50718d31dc119c4fd83566e830b73be42c177bd28e771ef004efb5e553ca3b5eb',1,2,NULL,'[]',0,'2022-06-13 03:18:19','2022-06-13 03:18:19','2023-06-13 08:18:19');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` int unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','v7oYJxyJ41ACbjC7H8PmRZg9NlB19e2XB0MFT5D3','http://localhost',1,0,0,'2022-06-11 01:38:43','2022-06-11 01:38:43'),(2,NULL,'Laravel Password Grant Client','taTXzh5JS9NXwqeMJnFc3nXDIRjD2EyIiyIPZN0g','http://localhost',0,1,0,'2022-06-11 01:38:43','2022-06-11 01:38:43'),(3,NULL,'Laravel Personal Access Client','EykybHPZUCwJZLBcwDGZU3551PmLx2xa2Ypkj07C','http://localhost',1,0,0,'2022-06-11 01:38:58','2022-06-11 01:38:58'),(4,NULL,'Laravel Password Grant Client','btYqkugHgXMSGghRIjJG7nq0y1LS12ykDxiOOXYS','http://localhost',0,1,0,'2022-06-11 01:38:58','2022-06-11 01:38:58');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2022-06-11 01:38:43','2022-06-11 01:38:43'),(2,3,'2022-06-11 01:38:58','2022-06-11 01:38:58');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` VALUES ('10636d6c454ff5bf8ad27bbf89dce525259c3adc2bf898e3441bba5a452f476f5a31da5a917a6c6a','5c393503e9a86987dedef440309c6c1273a87a71179047dc130bb0b5e455be7ba9b69fe68ee58476',0,'2023-06-13 13:14:45'),('5b137acab63d661b9a101707dd1fe1f4fc9b811b03d6f55a4a82b185bec50a3b1952965300399407','943691d4fd701fa50718d31dc119c4fd83566e830b73be42c177bd28e771ef004efb5e553ca3b5eb',0,'2023-06-13 08:18:19'),('9d20972174f00ce1e566f52a0ca462a2c9cafe8045fdd12ce1f7a7e0139b2717038f6242ae45f215','93e7b2bcb21587ab355685c766fa53bf4ce38b494f6b6ec5aa3b5f3c40446caa236a569cce0246e2',0,'2023-06-11 06:40:21');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `top` int NOT NULL,
  `popular` int NOT NULL,
  `type` int NOT NULL,
  `lang` int unsigned NOT NULL,
  `lang_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `file_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_file_id_foreign` (`file_id`),
  KEY `posts_lang_foreign` (`lang`),
  CONSTRAINT `posts_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`),
  CONSTRAINT `posts_lang_foreign` FOREIGN KEY (`lang`) REFERENCES `lenguages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (10,'epamen','1','#','sdffsdf',2,3,1,2,'siuoiuoidfsdfsdf',1,NULL,'2022-06-13 05:52:41','2022-06-13 05:52:41'),(11,'o\'zgarseryozy','o\'zgar','o\'zgar','o\'zgar',1,3,1,1,'xcvxxcvxvx',1,123,'2022-06-13 05:53:05','2022-06-13 06:37:16'),(12,'o\'zgarseryozy','o\'zgar','o\'zgar','o\'zgar',1,3,1,1,'xcvxxcvxvx',1,NULL,'2022-06-13 06:38:15','2022-06-13 06:38:32'),(13,'o\'zgarseryozy','o\'zgar','o\'zgar','o\'zgar',1,3,1,1,'xcvxxcvxvx',1,126,'2022-06-13 06:41:39','2022-06-13 06:41:48');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,'Fargona','2022-06-11 02:31:45','2022-06-11 02:31:45');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_id` int unsigned DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alies` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` int unsigned NOT NULL,
  `sort` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `settings_file_id_foreign` (`file_id`),
  KEY `settings_lang_foreign` (`lang`),
  CONSTRAINT `settings_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`),
  CONSTRAINT `settings_lang_foreign` FOREIGN KEY (`lang`) REFERENCES `lenguages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'epamen',1,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 06:46:49','2022-06-10 06:46:49'),(3,'epamen',1,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 06:54:44','2022-06-10 06:54:44'),(4,'epamen',1,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 06:54:48','2022-06-10 06:54:48'),(6,'epamen',1,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 06:55:09','2022-06-10 06:55:09'),(7,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 06:57:45','2022-06-10 06:57:45'),(8,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 06:58:05','2022-06-10 06:58:05'),(9,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 06:58:10','2022-06-10 06:58:10'),(10,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 06:58:11','2022-06-10 06:58:11'),(11,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:27:30','2022-06-10 07:27:30'),(12,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:27:31','2022-06-10 07:27:31'),(13,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:28:21','2022-06-10 07:28:21'),(14,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:28:22','2022-06-10 07:28:22'),(15,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:28:27','2022-06-10 07:28:27'),(16,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:28:28','2022-06-10 07:28:28'),(17,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:28:29','2022-06-10 07:28:29'),(18,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:28:30','2022-06-10 07:28:30'),(19,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:28:31','2022-06-10 07:28:31'),(20,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:28:31','2022-06-10 07:28:31'),(21,'epamen',62,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:33:45','2022-06-10 07:33:45'),(22,'epamen',63,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:33:49','2022-06-10 07:33:49'),(23,'epamen',64,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:33:50','2022-06-10 07:33:50'),(24,'epamen',65,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:33:51','2022-06-10 07:33:51'),(25,'epamen',66,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:33:51','2022-06-10 07:33:51'),(26,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:33:54','2022-06-10 07:33:54'),(27,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:33:58','2022-06-10 07:33:58'),(28,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:34:07','2022-06-10 07:34:07'),(29,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:34:07','2022-06-10 07:34:07'),(30,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:34:08','2022-06-10 07:34:08'),(31,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:34:09','2022-06-10 07:34:09'),(32,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:34:10','2022-06-10 07:34:10'),(33,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:34:40','2022-06-10 07:34:40'),(34,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:34:43','2022-06-10 07:34:43'),(35,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:34:43','2022-06-10 07:34:43'),(36,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:34:44','2022-06-10 07:34:44'),(37,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:34:45','2022-06-10 07:34:45'),(38,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:34:45','2022-06-10 07:34:45'),(39,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:34:46','2022-06-10 07:34:46'),(40,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:34:47','2022-06-10 07:34:47'),(41,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:34:50','2022-06-10 07:34:50'),(42,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 07:34:51','2022-06-10 07:34:51'),(43,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,0,'2022-06-10 07:35:53','2022-06-10 07:35:53'),(44,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,0,'2022-06-10 07:35:55','2022-06-10 07:35:55'),(45,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,0,'2022-06-10 07:35:55','2022-06-10 07:35:55'),(46,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,0,'2022-06-10 07:35:56','2022-06-10 07:35:56'),(47,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,0,'2022-06-10 07:35:57','2022-06-10 07:35:57'),(48,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,0,'2022-06-10 07:35:57','2022-06-10 07:35:57'),(49,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,0,'2022-06-10 07:35:58','2022-06-10 07:35:58'),(50,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,0,'2022-06-10 07:35:58','2022-06-10 07:35:58'),(51,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,0,'2022-06-10 07:35:59','2022-06-10 07:35:59'),(52,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,0,'2022-06-10 07:35:59','2022-06-10 07:35:59'),(53,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,0,'2022-06-10 07:36:28','2022-06-10 07:36:28'),(54,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,0,'2022-06-10 07:36:29','2022-06-10 07:36:29'),(55,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,0,'2022-06-10 07:36:29','2022-06-10 07:36:29'),(56,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,0,'2022-06-10 07:36:30','2022-06-10 07:36:30'),(58,'epamen',NULL,'yanan','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 08:23:58','2022-06-10 08:23:58'),(59,'HelloUpdated5',68,'dsdsd','#','asdasd','sdfsdfsdf',2,2,1,'2022-06-10 08:31:50','2022-06-10 09:09:51');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stations`
--

DROP TABLE IF EXISTS `stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_id` int unsigned DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_id` int unsigned NOT NULL,
  `lang` int unsigned NOT NULL,
  `lang_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stations_region_id_foreign` (`region_id`),
  KEY `stations_file_id_foreign` (`file_id`),
  KEY `stations_lang_foreign` (`lang`),
  CONSTRAINT `stations_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`),
  CONSTRAINT `stations_lang_foreign` FOREIGN KEY (`lang`) REFERENCES `lenguages` (`id`),
  CONSTRAINT `stations_region_id_foreign` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stations`
--

LOCK TABLES `stations` WRITE;
/*!40000 ALTER TABLE `stations` DISABLE KEYS */;
/*!40000 ALTER TABLE `stations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thumbnails`
--

DROP TABLE IF EXISTS `thumbnails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thumbnails` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `w` int NOT NULL,
  `h` int NOT NULL,
  `q` int NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thumbnails`
--

LOCK TABLES `thumbnails` WRITE;
/*!40000 ALTER TABLE `thumbnails` DISABLE KEYS */;
/*!40000 ALTER TABLE `thumbnails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useful_links`
--

DROP TABLE IF EXISTS `useful_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `useful_links` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name_uz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_oz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `file_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `useful_links_file_id_foreign` (`file_id`),
  CONSTRAINT `useful_links_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useful_links`
--

LOCK TABLES `useful_links` WRITE;
/*!40000 ALTER TABLE `useful_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `useful_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Bahrom','Wewewe@gmail.com',NULL,'$2y$10$cEJpmFg0Y.Eyn7UyAWAm7udNruSmkOR1F3Au6BaakU8VYs3qjvx42',NULL,'2022-06-11 01:33:00','2022-06-11 01:33:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widget_items`
--

DROP TABLE IF EXISTS `widget_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widget_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_id` int unsigned DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `parent_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `widget_items_file_id_foreign` (`file_id`),
  KEY `widget_items_parent_id_foreign` (`parent_id`),
  CONSTRAINT `widget_items_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`),
  CONSTRAINT `widget_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `widgets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widget_items`
--

LOCK TABLES `widget_items` WRITE;
/*!40000 ALTER TABLE `widget_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `widget_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` int unsigned NOT NULL,
  `lang_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `widgets_lang_foreign` (`lang`),
  CONSTRAINT `widgets_lang_foreign` FOREIGN KEY (`lang`) REFERENCES `lenguages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-14 13:52:31
