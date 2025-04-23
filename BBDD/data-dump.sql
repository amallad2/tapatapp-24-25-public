-- MySQL dump 10.13  Distrib 8.0.41, for Linux (x86_64)
--
-- Host: localhost    Database: tapatappdam1
-- ------------------------------------------------------
-- Server version	8.0.41-0ubuntu0.24.04.1

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
-- Table structure for table `Child`
--

DROP TABLE IF EXISTS `Child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Child` (
  `id` int NOT NULL AUTO_INCREMENT,
  `child_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_as_cs NOT NULL,
  `sleep_average` int NOT NULL,
  `treatment_id` int NOT NULL,
  `time` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `treatment_id` (`treatment_id`),
  CONSTRAINT `Child_ibfk_1` FOREIGN KEY (`treatment_id`) REFERENCES `Treatment` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Child`
--

LOCK TABLES `Child` WRITE;
/*!40000 ALTER TABLE `Child` DISABLE KEYS */;
INSERT INTO `Child` VALUES (1,'Carol Child',8,1,6),(2,'Jaco Child',10,2,6);
/*!40000 ALTER TABLE `Child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RelationUserChild`
--

DROP TABLE IF EXISTS `RelationUserChild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RelationUserChild` (
  `user_id` int NOT NULL,
  `child_id` int NOT NULL,
  `rol_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`child_id`,`rol_id`),
  KEY `user_id` (`user_id`),
  KEY `child_id` (`child_id`),
  KEY `rol_id` (`rol_id`),
  CONSTRAINT `RelationUserChild_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `RelationUserChild_ibfk_2` FOREIGN KEY (`child_id`) REFERENCES `Child` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `RelationUserChild_ibfk_3` FOREIGN KEY (`rol_id`) REFERENCES `Rol` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RelationUserChild`
--

LOCK TABLES `RelationUserChild` WRITE;
/*!40000 ALTER TABLE `RelationUserChild` DISABLE KEYS */;
INSERT INTO `RelationUserChild` VALUES (1,1,1),(1,1,2),(2,2,1),(2,2,2);
/*!40000 ALTER TABLE `RelationUserChild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rol`
--

DROP TABLE IF EXISTS `Rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rol` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_rol` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_as_cs NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rol`
--

LOCK TABLES `Rol` WRITE;
/*!40000 ALTER TABLE `Rol` DISABLE KEYS */;
INSERT INTO `Rol` VALUES (1,'Admin'),(2,'Tutor Mare Pare'),(3,'Cuidador'),(4,'Seguiment');
/*!40000 ALTER TABLE `Rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Status`
--

DROP TABLE IF EXISTS `Status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_as_cs NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Status`
--

LOCK TABLES `Status` WRITE;
/*!40000 ALTER TABLE `Status` DISABLE KEYS */;
INSERT INTO `Status` VALUES (1,'sleep'),(2,'awake'),(3,'yes_eyepatch'),(4,'no_eyepatch');
/*!40000 ALTER TABLE `Status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tap`
--

DROP TABLE IF EXISTS `Tap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tap` (
  `id` int NOT NULL AUTO_INCREMENT,
  `child_id` int NOT NULL,
  `status_id` int NOT NULL,
  `user_id` int NOT NULL,
  `init` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `status_id` (`status_id`),
  KEY `child_id` (`child_id`),
  KEY `Tap_ibfk_3` (`user_id`),
  CONSTRAINT `Tap_ibfk_1` FOREIGN KEY (`status_id`) REFERENCES `Status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Tap_ibfk_2` FOREIGN KEY (`child_id`) REFERENCES `Child` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Tap_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tap`
--

LOCK TABLES `Tap` WRITE;
/*!40000 ALTER TABLE `Tap` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Treatment`
--

DROP TABLE IF EXISTS `Treatment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Treatment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_as_cs NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Treatment`
--

LOCK TABLES `Treatment` WRITE;
/*!40000 ALTER TABLE `Treatment` DISABLE KEYS */;
INSERT INTO `Treatment` VALUES (1,'Hour'),(2,'percentage');
/*!40000 ALTER TABLE `Treatment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `User` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_as_cs NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_as_cs NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_eo_0900_as_cs NOT NULL,
  `token` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,'mare','827ccb0eea8a706c4c34a16891f84e7b','prova@gmail.com',NULL),(2,'pare','827ccb0eea8a706c4c34a16891f84e7b','prova2@gmail.com',NULL),(3,'a','a','a',NULL);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-23 12:34:01
