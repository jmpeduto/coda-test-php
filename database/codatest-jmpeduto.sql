-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: codatest
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `firstname` char(50)  NOT NULL,
  `lastname` char(50)  NOT NULL,
  `email` char(100)  NOT NULL,
  `phone` char(50)  NOT NULL,
  `photo` text  NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8  COMMENT='client list';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'juan m','peduto','jmpeduto@gmail.com','1156265175','my_photo','2022-01-07 21:53:21','2022-01-10 10:40:56',0),(2,'sadasd','asdasd','asdasd','55555','sdsfdgg','2022-01-08 19:29:22','2022-01-10 10:40:51',0),(3,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-08 21:39:31','2022-01-08 18:39:31',0),(4,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-08 21:39:38','2022-01-08 18:39:38',0),(5,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-08 22:11:39','2022-01-08 19:11:39',0),(6,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-08 22:11:39','2022-01-08 19:11:39',0),(7,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-08 22:11:40','2022-01-08 19:11:40',0),(8,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-08 22:11:40','2022-01-10 10:41:13',1),(9,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-08 22:11:41','2022-01-08 19:11:41',0),(10,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-08 22:11:42','2022-01-08 19:11:42',0),(11,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-07 22:11:42','2022-01-08 19:14:39',0),(12,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-07 22:11:43','2022-01-08 19:14:34',0),(13,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-07 22:11:44','2022-01-08 19:14:31',0),(14,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-06 22:11:44','2022-01-08 19:14:23',0),(15,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-06 22:11:45','2022-01-08 19:14:16',0),(16,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-06 22:11:45','2022-01-08 19:14:02',0),(17,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-06 22:11:45','2022-01-08 19:13:56',0),(18,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-05 22:11:46','2022-01-08 19:13:52',0),(19,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-05 22:11:46','2022-01-08 19:13:49',0),(20,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-05 22:11:47','2022-01-08 19:13:42',0),(21,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-04 22:11:47','2022-01-08 19:13:36',0),(22,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-04 22:11:48','2022-01-08 19:13:30',0),(23,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-04 22:11:48','2022-01-08 19:13:30',0),(24,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-04 22:11:48','2022-01-08 19:13:30',0),(25,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-03 22:11:48','2022-01-09 00:24:28',0),(26,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-01 22:11:48','2022-01-09 00:25:31',0),(27,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-01 22:11:48','2022-01-09 00:25:19',0),(28,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-01 22:11:48','2022-01-09 00:24:46',0),(29,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-01 22:11:48','2022-01-09 00:24:50',0),(30,'pedro','rosales','pedrorosales@mail','12345678','photo_url','2022-01-10 13:41:23','2022-01-10 10:41:23',0);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mia_active`
--

DROP TABLE IF EXISTS `mia_active`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `mia_active` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `token` text,
  `status` int NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mia_active`
--

LOCK TABLES `mia_active` WRITE;
/*!40000 ALTER TABLE `mia_active` DISABLE KEYS */;
/*!40000 ALTER TABLE `mia_active` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mia_item_role`
--

DROP TABLE IF EXISTS `mia_item_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `mia_item_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `item_id` bigint DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `type` int NOT NULL DEFAULT '0',
  `permission_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mia_item_role`
--

LOCK TABLES `mia_item_role` WRITE;
/*!40000 ALTER TABLE `mia_item_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `mia_item_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mia_log`
--

DROP TABLE IF EXISTS `mia_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `mia_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `type_id` int NOT NULL DEFAULT '0',
  `item_id` bigint NOT NULL DEFAULT '0',
  `data` text,
  `caption` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mia_log`
--

LOCK TABLES `mia_log` WRITE;
/*!40000 ALTER TABLE `mia_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `mia_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mia_permission`
--

DROP TABLE IF EXISTS `mia_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `mia_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(70) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mia_permission`
--

LOCK TABLES `mia_permission` WRITE;
/*!40000 ALTER TABLE `mia_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `mia_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mia_recovery`
--

DROP TABLE IF EXISTS `mia_recovery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `mia_recovery` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `token` text,
  `status` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mia_recovery`
--

LOCK TABLES `mia_recovery` WRITE;
/*!40000 ALTER TABLE `mia_recovery` DISABLE KEYS */;
/*!40000 ALTER TABLE `mia_recovery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mia_role`
--

DROP TABLE IF EXISTS `mia_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `mia_role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `parent_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mia_role`
--

LOCK TABLES `mia_role` WRITE;
/*!40000 ALTER TABLE `mia_role` DISABLE KEYS */;
INSERT INTO `mia_role` VALUES (1,'Admin',NULL),(2,'Editor',NULL);
/*!40000 ALTER TABLE `mia_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mia_role_access`
--

DROP TABLE IF EXISTS `mia_role_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `mia_role_access` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `type` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mia_role_access`
--

LOCK TABLES `mia_role_access` WRITE;
/*!40000 ALTER TABLE `mia_role_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `mia_role_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mia_user`
--

DROP TABLE IF EXISTS `mia_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `mia_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `photo` text,
  `phone` varchar(50) DEFAULT NULL,
  `facebook_id` varchar(100) DEFAULT NULL,
  `role` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted` int NOT NULL DEFAULT '0',
  `password` varchar(200) DEFAULT NULL,
  `status` int DEFAULT '0',
  `is_notification` int NOT NULL DEFAULT '0',
  `caption` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mia_user`
--

LOCK TABLES `mia_user` WRITE;
/*!40000 ALTER TABLE `mia_user` DISABLE KEYS */;
INSERT INTO `mia_user` VALUES (1,'empty','','matias@agencycoda.com','','',NULL,1,'2021-07-27 12:32:21','2021-07-27 12:32:21',0,'$2y$10$giSRwmR8uCrRLRupj8GYT.riEOH1GdF7xfGpn7kM9OjAc1DZ0Trgy',0,0,NULL),(2,'empty','','jmpeduto@gmail.com','','',NULL,2,'2021-07-27 12:32:21','2021-07-27 12:32:21',0,'$2y$10$giSRwmR8uCrRLRupj8GYT.riEOH1GdF7xfGpn7kM9OjAc1DZ0Trgy',0,0,NULL);
/*!40000 ALTER TABLE `mia_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `client_id` bigint DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `caption` text,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `project_user_idx` (`user_id`),
  KEY `project_client` (`client_id`),
  CONSTRAINT `project_client` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`),
  CONSTRAINT `project_user` FOREIGN KEY (`user_id`) REFERENCES `mia_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,1,NULL,'project 1\r\n','the first project','2022-01-08 18:52:09','2022-01-08 19:04:35',0),(2,2,NULL,'project 2','the second project','2022-01-10 10:43:55',NULL,0);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'codatest'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-10 11:10:57
