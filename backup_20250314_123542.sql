-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: bookdb
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Current Database: `bookdb`
--

/*!40000 DROP DATABASE IF EXISTS `bookdb`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `bookdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `bookdb`;

--
-- Table structure for table `jwttoken`
--

DROP TABLE IF EXISTS `jwttoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jwttoken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `accessToken` text NOT NULL,
  `issuedAt` datetime NOT NULL,
  `refreshToken` text NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jwttoken`
--

LOCK TABLES `jwttoken` WRITE;
/*!40000 ALTER TABLE `jwttoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `jwttoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persistent_logins`
--

DROP TABLE IF EXISTS `persistent_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persistent_logins`
--

LOCK TABLES `persistent_logins` WRITE;
/*!40000 ALTER TABLE `persistent_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `persistent_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions_bigdata`
--

DROP TABLE IF EXISTS `questions_bigdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions_bigdata` (
  `id` int NOT NULL,
  `lastModified` datetime(6) DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `questions` json DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_bigdata`
--

LOCK TABLES `questions_bigdata` WRITE;
/*!40000 ALTER TABLE `questions_bigdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `questions_bigdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions_bigdata_seq`
--

DROP TABLE IF EXISTS `questions_bigdata_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions_bigdata_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_bigdata_seq`
--

LOCK TABLES `questions_bigdata_seq` WRITE;
/*!40000 ALTER TABLE `questions_bigdata_seq` DISABLE KEYS */;
INSERT INTO `questions_bigdata_seq` VALUES (1);
/*!40000 ALTER TABLE `questions_bigdata_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions_sqld`
--

DROP TABLE IF EXISTS `questions_sqld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions_sqld` (
  `id` int NOT NULL,
  `lastModified` datetime(6) DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `questions` json DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_sqld`
--

LOCK TABLES `questions_sqld` WRITE;
/*!40000 ALTER TABLE `questions_sqld` DISABLE KEYS */;
/*!40000 ALTER TABLE `questions_sqld` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions_sqld_seq`
--

DROP TABLE IF EXISTS `questions_sqld_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions_sqld_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_sqld_seq`
--

LOCK TABLES `questions_sqld_seq` WRITE;
/*!40000 ALTER TABLE `questions_sqld_seq` DISABLE KEYS */;
INSERT INTO `questions_sqld_seq` VALUES (1);
/*!40000 ALTER TABLE `questions_sqld_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signature`
--

DROP TABLE IF EXISTS `signature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signature` (
  `signKey` varbinary(255) NOT NULL,
  `createAt` date DEFAULT NULL,
  PRIMARY KEY (`signKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signature`
--

LOCK TABLES `signature` WRITE;
/*!40000 ALTER TABLE `signature` DISABLE KEYS */;
INSERT INTO `signature` VALUES (_binary '©j\ö\íÿ»\ÑqÔ¶=b¿¬F%;p\ßù¥\Ç]\ÙJ','2025-03-14');
/*!40000 ALTER TABLE `signature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summary_bigdata`
--

DROP TABLE IF EXISTS `summary_bigdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summary_bigdata` (
  `id` int NOT NULL,
  `lastModified` datetime(6) DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `sheets` json DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summary_bigdata`
--

LOCK TABLES `summary_bigdata` WRITE;
/*!40000 ALTER TABLE `summary_bigdata` DISABLE KEYS */;
INSERT INTO `summary_bigdata` VALUES (1,NULL,NULL,NULL,'ë¹ë°ì´í° ì´í´','ë¹ë°ì´í°ì ì ì',NULL,NULL),(2,NULL,NULL,NULL,'ë¹ë°ì´í° ì´í´','ë¹ë°ì´í°ì í¹ì§',NULL,NULL),(3,NULL,NULL,NULL,'ë¹ë°ì´í° ì´í´','ë¹ë°ì´í°ì ê°ì¹ì ìí¥',NULL,NULL),(4,NULL,NULL,NULL,'ë¹ë°ì´í° ì´í´','ë¹ë°ì´í°ì íì©',NULL,NULL),(5,NULL,NULL,NULL,'ë¹ë°ì´í° ì´í´','ë¹ë°ì´í° ìì§',NULL,NULL),(6,NULL,NULL,NULL,'ë¹ë°ì´í° ì´í´','ë¹ë°ì´í° ì ì¥',NULL,NULL),(7,NULL,NULL,NULL,'ë¹ë°ì´í° ì´í´','ë¹ë°ì´í° ì²ë¦¬',NULL,NULL),(8,NULL,NULL,NULL,'ë¹ë°ì´í° ì´í´','ë¹ë°ì´í° ë¶ì',NULL,NULL),(9,NULL,NULL,NULL,'ë¹ë°ì´í° ì´í´','ë¹ë°ì´í° ìê°í',NULL,NULL),(10,NULL,NULL,NULL,'ë°ì´í° ë¶ì','ê¸°ì íµê³',NULL,NULL),(11,NULL,NULL,NULL,'ë°ì´í° ë¶ì','ì¶ë¡ íµê³',NULL,NULL),(12,NULL,NULL,NULL,'ë°ì´í° ë¶ì','íë¥ ë¶í¬',NULL,NULL),(13,NULL,NULL,NULL,'ë°ì´í° ë¶ì','ê°ì¤ê²ì ',NULL,NULL),(14,NULL,NULL,NULL,'ë°ì´í° ë¶ì','ì§ëíìµ',NULL,NULL),(15,NULL,NULL,NULL,'ë°ì´í° ë¶ì','ë¹ì§ëíìµ',NULL,NULL),(16,NULL,NULL,NULL,'ë°ì´í° ë¶ì','ê°ííìµ',NULL,NULL),(17,NULL,NULL,NULL,'ë°ì´í° ë¶ì','ë¥ë¬ë',NULL,NULL),(18,NULL,NULL,NULL,'ë°ì´í° ì²ë¦¬','ê²°ì¸¡ì¹ ì²ë¦¬',NULL,NULL),(19,NULL,NULL,NULL,'ë°ì´í° ì²ë¦¬','ì´ìì¹ ì²ë¦¬',NULL,NULL),(20,NULL,NULL,NULL,'ë°ì´í° ì²ë¦¬','ì ê·í',NULL,NULL),(21,NULL,NULL,NULL,'ë°ì´í° ì²ë¦¬','íì¤í',NULL,NULL),(22,NULL,NULL,NULL,'ë°ì´í° ì²ë¦¬','ë°ì´í° ë³í',NULL,NULL),(23,NULL,NULL,NULL,'ë°ì´í° ì²ë¦¬','í¼ì² ìì§ëì´ë§',NULL,NULL),(24,NULL,NULL,NULL,'ë°ì´í° ì²ë¦¬','ì°¨ì ì¶ì',NULL,NULL),(25,NULL,NULL,NULL,'ë°ì´í° ì²ë¦¬','ë°ì´í° íµí©',NULL,NULL);
/*!40000 ALTER TABLE `summary_bigdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summary_bigdata_seq`
--

DROP TABLE IF EXISTS `summary_bigdata_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summary_bigdata_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summary_bigdata_seq`
--

LOCK TABLES `summary_bigdata_seq` WRITE;
/*!40000 ALTER TABLE `summary_bigdata_seq` DISABLE KEYS */;
INSERT INTO `summary_bigdata_seq` VALUES (1);
/*!40000 ALTER TABLE `summary_bigdata_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summary_sqld`
--

DROP TABLE IF EXISTS `summary_sqld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summary_sqld` (
  `id` int NOT NULL,
  `lastModified` datetime(6) DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `sheets` json DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summary_sqld`
--

LOCK TABLES `summary_sqld` WRITE;
/*!40000 ALTER TABLE `summary_sqld` DISABLE KEYS */;
INSERT INTO `summary_sqld` VALUES (1,'2025-03-14 03:29:22.318000','{\"topic\": \"ë°ì´í°ëª¨ë¸ì ì´í´\", \"subject\": \"ë°ì´í° ëª¨ë¸ë§ì ì´í´\", \"version\": \"1.0\", \"lastModified\": \"2025-03-14T03:29:22.318Z\"}','[{\"id\": \"1741922807160-vanryjjcz\", \"name\": \"ìí¸ 1\", \"content\": [{\"x\": \"0%\", \"y\": \"0%\", \"id\": \"title-section-1741922807160\", \"type\": \"layout-area\", \"label\": \"íì§\", \"style\": \"title\", \"width\": \"98%\", \"height\": \"95%\", \"position\": {\"x\": 12, \"y\": 8.33}, \"template\": {\"type\": \"íì§\", \"title\": \"ë°ì´í° ëª¨ë¸ë§ì ì´í´\", \"author\": \"ì ì°ê· \", \"subtitle\": \"ê°ë¡ \"}}]}, {\"id\": \"1741922807623-jylb073cb\", \"name\": \"ìí¸ 2\", \"content\": [{\"x\": \"0%\", \"y\": \"0%\", \"id\": \"toc-section-1741922807623\", \"type\": \"layout-area\", \"label\": \"CONTENTS\", \"style\": \"toc\", \"width\": \"98%\", \"height\": \"95%\", \"position\": {\"x\": 12, \"y\": 8.33}, \"template\": {\"type\": \"ëª©ì°¨\", \"items\": [{\"id\": \"1\", \"text\": \"ëª¨ë¸ë§ì ê°ë\", \"number\": \"01\"}, {\"id\": \"2\", \"text\": \"ëª¨ë¸ë§ì í¹ì§\", \"number\": \"02\"}, {\"id\": \"3\", \"text\": \"ë°ì´í° ëª¨ë¸ë§ 3ê°ì§ ê´ì \", \"number\": \"03\"}, {\"id\": \"4\", \"text\": \"ë°ì´í° ëª¨ë¸ë§ ì ìì \", \"number\": \"04\"}, {\"id\": \"1741922842820\", \"text\": \"ë°ì´í° ëª¨ë¸ë§ 3ê°ì§ ìì\", \"number\": \"05\"}, {\"id\": \"1741922843900\", \"text\": \"ë°ì´í° ëª¨ë¸ë§ 3ë¨ê³\", \"number\": \"06\"}, {\"id\": \"1741922844613\", \"text\": \"ì¤í¤ë§ì 3ë¨ê³ êµ¬ì¡°\", \"number\": \"07\"}, {\"id\": \"1741922845267\", \"text\": \"ë°ì´í° ëª¨ë¸ì íê¸°ë²(ERD : Entity Relationship Diagram)\", \"number\": \"08\"}, {\"id\": \"1741922845888\", \"text\": \"ERD ìì± ì ì°¨ (6ë¨ê³) \", \"number\": \"09\"}]}}]}, {\"id\": \"1741922807911-5nuc24a1m\", \"name\": \"ìí¸ 3\", \"content\": [{\"x\": \"0%\", \"y\": \"0%\", \"id\": \"content-section-1741922807911\", \"type\": \"layout-area\", \"label\": \"TITLE\", \"style\": \"content\", \"width\": \"98%\", \"height\": \"95%\", \"position\": {\"x\": 12, \"y\": 8.33}, \"template\": {\"type\": \"ë´ì©\", \"items\": [{\"id\": \"1741922807911\", \"word\": \"ëª¨ë¸ë§ì ê°ë\", \"images\": [], \"showImages\": true, \"description\": \"íì¤ ì¸ê³ì ë¹ì¦ëì¤ íë¡ì¸ì¤ì ë°ì´í° ìêµ¬ ì¬í­ì ì¶ìì ì´ê³  êµ¬ì¡°íë ííë¡ íí\\në°ì´í°ë² ì´ì¤ êµ¬ì¡°ì ê´ê³ë¥¼ ì ìíë©° ì ì¥, ì¡°ì, ê´ë¦¬ ë°©ë² ëªííê² ì ì\"}, {\"id\": \"1741922868961\", \"word\": \"ëª¨ë¸ë§ì í¹ì§\", \"images\": [], \"showWord\": true, \"showImages\": true, \"description\": \"ë¨ìí(Simplification)\\n- íì¤ì ë¨ìííì¬ íµì¬ ììì ì§ì¤íê³  ë¶íìí ì¸ë¶ ì¬í­ì ì ê±°\\n- ë¨ìíë¥¼ íµí´ ë³µì¡í íì¤ ì¸ê³ë¥¼ ì´í´íê³  íííê¸° ì¬ìì§ \\n\\nì¶ìí(Abstraction)\\n- íì¤ì¸ê³ë¥¼ ì¼ì í íìì ë§ì¶ì´ ê°ëµíê² ëëµì ì¼ë¡ íííë ê³¼ì \\n- ë¤ìí íìì ì¼ì í ììì¸ íê¸°ë²ì ë°ë¼ íí\\n\\nëªíí(Clarity)\\n- ëìì ëí ì ë§¤ëª¨í¸í¨ì ìµëí ì ê±°íê³  ì ííê² íìì ê¸°ì íë ê³¼ì \\n- ëªííë¥¼ íµí´ ëª¨ë¸ì ì´í´íë ì´ë¤ì ìì¬ìíµì ìíí í¨\", \"showDescription\": true}, {\"id\": \"1741922870149\", \"word\": \"ë°ì´í° ëª¨ë¸ë§ 3ê°ì§ ê´ì \", \"images\": [], \"showWord\": true, \"showImages\": true, \"description\": \"ë°ì´í° ê´ì \\n    - ë°ì´í°ê° ì´ë»ê² ì ì¥ëê³ , ì ê·¼ëê³ , ê´ë¦¬ëëì§ë¥¼ ì ìíë ë¨ê³\\níë¡ì¸ì¤ ê´ì \\n    - ìì¤íì´ ì´ë¤ ììì ìííë©°, ì´ë¬í ììë¤ì´ ì´ë»ê² ì¡°ì§ëê³  ì¡°ì ëëì§ë¥¼ ì ìíë ë¨ê³ \\n    - ë°ì´í°ê° ìì¤í ë´ìì ì´ë»ê² íë¥´ê³  ë³íëëì§ì ëí íì¸ \\në°ì´í°ì íë¡ì¸ì¤ ê´ì \\n    - ë°ì´í° ê´ì ê³¼ íë¡ì¸ì¤ ê´ì ì ê²°í©íì¬ ìì¤íì ì ë°ì ì¸ ëìì ì´í´íë ë¨ê³ \\n    - í¹ì  íë¡ì¸ì¤ê° ì´ë¤ ë°ì´í°ë¥¼ ì¬ì©íëì§, ë°ì´í°ê° ì´ë»ê² ìì±ëê³  ë³ê²½ëëì§ë¥¼ ëªííê² ì ì\", \"showDescription\": true}, {\"id\": \"1741922871405\", \"word\": \"ë°ì´í° ëª¨ë¸ë§ ì ìì \", \"images\": [], \"showWord\": true, \"showImages\": true, \"description\": \"ì¤ë³µ(Duplication)\\n    - í íì´ë¸ ëë ì¬ë¬ íì´ë¸ì ê°ì ì ë³´ë¥¼ ì ì¥íì§ ìëë¡ ì¤ê³\\në¹ì ì°ì±(Inflexibility)\\n    - ì¬ìí ìë¬´ ë³íì ëí´ìë ì¦ì ëª¨ë¸ ë³ê²½ì´ ëì§ ìëë¡ ì£¼ì\\n    - ë°ì´í° ì ìë¥¼ íë¡ì¸ì¤ì ë¶ë¦¬\\në¹ì¼ê´ì±(Inconsistency)\\n    - ë°ì´í°ë² ì´ì¤ ë´ì ì ë³´ê° ëª¨ìëê±°ë ìë°ë ë´ì©ì ê°ë ìíë¥¼ ìë¯¸ \\n    - ë°ì´í°ê° ìí¸ì°ê´ ê´ê³ë¥¼ ëªíí ì ì \\n    - ë°ì´í° íì§ ê´ë¦¬ íì \\n    - ë°ì´í°ì ì¤ë³µì´ ìëë¼ë ë¹ì¼ê´ì±ì ë°ìí  ì ìì\", \"showDescription\": true}, {\"id\": \"1741922872541\", \"word\": \"ë°ì´í° ëª¨ë¸ë§ 3ê°ì§ ìì\", \"images\": [], \"showWord\": true, \"showImages\": true, \"description\": \"- ëì(Entity) : ìë¬´ê° ê´ë¦¬íê³ ì íë ëì(ê°ì²´) \\n- ìì±(Attribute) : ëìë¤ì´ ê°ë ìì±(íëì í¹ì§ì¼ë¡ ì ìë  ì ìë ê²) \\n- ê´ê³(Relationship) : ëìë¤ ê°ì ê´ê³ \\n\", \"showDescription\": true}, {\"id\": \"1741922873410\", \"word\": \"ë°ì´í° ëª¨ë¸ë§ 3ë¨ê³\", \"images\": [], \"showWord\": true, \"showImages\": true, \"description\": \"ê°ëì  ëª¨ë¸ë§\\n    - ìë¬´ ì¤ì¬ì ì´ê³  í¬ê´ì (ì ì¬ì )ì¸ ìì¤ì ëª¨ë¸ë§ \\n    - \\\"ì¶ìí ìì¤ì´ ê°ì¥ ëì\\\"  \\n    - ìë¬´ë¥¼ ë¶ì ë¤ ìë¬´ì íµì¬ ìí°í°(Entity)ë¥¼ ì¶ì¶íë ë¨ê³ \\n    - ëì¶ë íµì¬ ìí°í°(Entity)ë¤ê³¼ì ê´ê³ë¤ì íííê¸° ìí´ ERD ìì±\\n\\në¼ë¦¬ì  ëª¨ë¸ë§\\n    - ê°ëì  ëª¨ë¸ë§ì ê²°ê³¼ë¥¼ í ëë¡ ì¸ë¶ìì±, ìë³ì, ê´ê³ ë±ì íííë ë¨ê³ \\n    - ë°ì´í° êµ¬ì¡°ë¥¼ ì ìíê¸° ëë¬¸ì ë¹ì·í ìë¬´ë íë¡ì í¸ìì ëì¼í ííì ë°ì´í° ì¬ì© ì ì¬ì¬ì© ê°ë¥ \\n    - ëì¼í ë¼ë¦¬ì  ëª¨ë¸ì ì¬ì©íë ê²½ì° ì¿¼ë¦¬ë ì¬ì¬ì© ê°ë¥ \\n    - ë°ì´í° ì ê·í ìí \\n    - ì¬ì¬ì©ì±ì´ ëì ë¼ë¦¬ì  ëª¨ë¸ì ì ì§ë³´ìê° ì©ì´í´ì§ \\n\\në¬¼ë¦¬ì  ëª¨ë¸ë§\\n    - ë¼ë¦¬ ëª¨ë¸ë§ì´ ëëë©´ ì´ë¥¼ ì§ì  ë¬¼ë¦¬ì ì¼ë¡ ìì±íë ê³¼ì  \\n    - ë°ì´í°ë² ì´ì¤ ì±ë¥, ëì¤í¬ ì ì¥êµ¬ì¡°, íëì¨ì´ì ë³´ìì±, ê°ì©ì± ë±ì ê³ ë ¤ \\n    - ê°ì¥ êµ¬ì²´ì ì¸ ë°ì´í° ëª¨ë¸ë§ \\n    - \\\"ì¶ìí ìì¤ì ê°ì¥ ë®ì(ê°ì¥ êµ¬ì²´ì ì¸ ëª¨ë¸ë§ì´ë¯ë¡) \\\"\", \"showDescription\": true}, {\"id\": \"1741922874091\", \"word\": \"ì¤í¤ë§ì 3ë¨ê³ êµ¬ì¡°\", \"images\": [], \"showWord\": true, \"showImages\": true, \"description\": \"ì¤í¤ë§ : ë°ì´í°ë² ì´ì¤ì êµ¬ì¡°ì ì ì½ ì¡°ê±´ì ê´í ì ë°ì ì¸ ëªì¸ë¥¼ ê¸°ì í ë©íë°ì´í°ì ì§í© \\n- ì¸ë¶, ê°ë, ë´ë¶ ì¤í¤ë§ë¡ ë¶ë¦¬ \\n- ì¬ì©ìì ê´ì ê³¼ ì¤ì  ì¤ê³ë ë¬¼ë¦¬ì ì¸ ë°©ìì ë¶ë¦¬íê¸° ìí´ ê³ ìë¨ \\n\\nì¸ë¶ ì¤í¤ë§\\n    - ì¬ì©ìê° ë³´ë ê´ì ìì ë°ì´í°ë² ì´ì¤ ì¤í¤ë§ë¥¼ ì ì \\n    - ì¬ì©ìë ìì© íë¡ê·¸ë¨ì´ íìí ë°ì´í°ë¥¼ ì ì(View : ì¬ì©ìê° ì ê·¼íë ëì) \\n\\nê°ë ì¤í¤ë§\\n    - ì¬ì©ì ê´ì ì ë°ì´í°ë² ì´ì¤ ì¤í¤ë§ë¥¼ íµí©íì¬ ë°ì´í°ë² ì´ì¤ì ì ì²´ ë¼ë¦¬ì  êµ¬ì¡°ë¥¼ ì ì \\n    - ì ì²´ ë°ì´í°ë² ì´ì¤ì ê°ì²´, ìì±, ê´ê³, ë°ì´í° íì ë±ì ì ì \\n\\në´ë¶ ì¤í¤ë§\\n    - ë°ì´í°ê° ë¬¼ë¦¬ì ì¼ë¡ ì´ë»ê² ì ì¥ëëì§ë¥¼ ì ì \\n    - ë°ì´í°ì ì ì¥ êµ¬ì¡°, ì»¬ë¼, ì¸ë±ì¤ ë±ì ì ìí¨ \\n\\n** 3ë¨ê³ ì¤í¤ë§ì ëë¦½ì± \\n- ëë¦½ì± : ë¬¼ë¦¬ì , ë¼ë¦¬ì  êµ¬ì¡°ë¥¼ ë³ê²½íëë¼ë ì¬ì©ìê° ì¬ì©íë ìì© íë¡ê·¸ë¨ì ìí¥ì ì£¼ì§ ë§ìì¼ í¨ \\n1) ë¼ë¦¬ì  ëë¦½ì± : ë¼ë¦¬ì  ë°ì´í° êµ¬ì¡°ê° ë³ê²½ëì´ë(ê°ë ì¤í¤ë§ ë³ê²½) ìì© íë¡ê·¸ë¨ì ìí¥ì ì£¼ì§ ìë í¹ì± \\n2) ë¬¼ë¦¬ì  ëë¦½ì± : ë¬¼ë¦¬ì  êµ¬ì¡°ê° ë³ê²½ëì´ë(ë´ë¶ ì¤í¤ë§ ë³ê²½) ê°ë/ì¸ë¶ ì¤í¤ë§ì ìí¥ì ì£¼ì§ ìë í¹ì±\", \"showDescription\": true}, {\"id\": \"1741922874762\", \"word\": \"ë°ì´í° ëª¨ë¸ì íê¸°ë²(ERD : Entity Relationship Diagram)\", \"images\": [], \"showWord\": true, \"showImages\": true, \"description\": \" - ìí°í°(Entity)ì ìí°í° ê°ì ê´ê³(Relationship)ë¥¼ ìê°ì ì¼ë¡ ííí ë¤ì´ì´ê·¸ë¨ \\n - 1976 ë í¼í° ì²¸(Peter Chen)ì´ ë§ë  íê¸°ë², ë°ì´í° ëª¨ë¸ë§ íì¤ì¼ë¡ ì¬ì©\", \"showDescription\": true}, {\"id\": \"1741922954676\", \"word\": \"ERD ìì± ì ì°¨ (6ë¨ê³) \", \"images\": [], \"showWord\": true, \"showImages\": true, \"description\": \"â  ìí°í°ë¥¼ ëì¶í í ê·¸ë¦°ë¤ \\nâ¡ ìí°í° ë°°ì¹ \\nâ¢ ìí°í° ê°ì ê´ê³ë¥¼ ì¤ì  \\nâ£ ê´ê³ëªì ìì  \\nâ¤ ê´ê³ì ì°¸ì¬ë ê¸°ì  \\nâ¥ ê´ê³ì íì ì¬ë¶ë¥¼ íì¸\", \"showDescription\": true}]}}]}]','\"ë°ì´í° ëª¨ë¸ë§ì ì´í´\"','\"ë°ì´í°ëª¨ë¸ì ì´í´\"',NULL,NULL),(2,NULL,NULL,NULL,'ë°ì´í° ëª¨ë¸ë§ì ì´í´','ìí°í°',NULL,NULL),(3,NULL,NULL,NULL,'ë°ì´í° ëª¨ë¸ë§ì ì´í´','ìì±',NULL,NULL),(4,NULL,NULL,NULL,'ë°ì´í° ëª¨ë¸ë§ì ì´í´','ê´ê³',NULL,NULL),(5,NULL,NULL,NULL,'ë°ì´í° ëª¨ë¸ë§ì ì´í´','ìë³ì',NULL,NULL),(6,NULL,NULL,NULL,'ë°ì´í° ëª¨ë¸ë§ì ì´í´','ì ê·í',NULL,NULL),(7,NULL,NULL,NULL,'ë°ì´í° ëª¨ë¸ë§ì ì´í´','ê´ê³ì ì¡°ì¸ì ì´í´',NULL,NULL),(8,NULL,NULL,NULL,'ë°ì´í° ëª¨ë¸ë§ì ì´í´','ëª¨ë¸ì´ íííë í¸ëì­ìì ì´í´',NULL,NULL),(9,NULL,NULL,NULL,'ë°ì´í° ëª¨ë¸ë§ì ì´í´','Null ìì±ì ì´í´',NULL,NULL),(10,NULL,NULL,NULL,'ë°ì´í° ëª¨ë¸ë§ì ì´í´','ë³¸ì§ìë³ì vs ì¸ì¡°ìë³ì',NULL,NULL),(11,NULL,NULL,NULL,'SQL ê¸°ë³¸ ë° íì©','ê´ê³í ë°ì´í°ë² ì´ì¤ ê°ì',NULL,NULL),(12,NULL,NULL,NULL,'SQL ê¸°ë³¸ ë° íì©','SELECT ë¬¸',NULL,NULL),(13,NULL,NULL,NULL,'SQL ê¸°ë³¸ ë° íì©','í¨ì',NULL,NULL),(14,NULL,NULL,NULL,'SQL ê¸°ë³¸ ë° íì©','WHERE ì ',NULL,NULL),(15,NULL,NULL,NULL,'SQL ê¸°ë³¸ ë° íì©','GROUP BY, HAVING ì ',NULL,NULL),(16,NULL,NULL,NULL,'SQL ê¸°ë³¸ ë° íì©','ORDER BY ì ',NULL,NULL),(17,NULL,NULL,NULL,'SQL ê¸°ë³¸ ë° íì©','ì¡°ì¸',NULL,NULL),(18,NULL,NULL,NULL,'SQL ê¸°ë³¸ ë° íì©','íì¤ ì¡°ì¸',NULL,NULL),(19,NULL,NULL,NULL,'SQL ê¸°ë³¸ ë° íì©','ìë¸ì¿¼ë¦¬',NULL,NULL),(20,NULL,NULL,NULL,'SQL ê¸°ë³¸ ë° íì©','ì§í© ì°ì°ì',NULL,NULL),(21,NULL,NULL,NULL,'SQL ê¸°ë³¸ ë° íì©','ê·¸ë£¹ í¨ì',NULL,NULL),(22,NULL,NULL,NULL,'SQL ê¸°ë³¸ ë° íì©','ìëì° í¨ì',NULL,NULL),(23,NULL,NULL,NULL,'SQL ê¸°ë³¸ ë° íì©','Top N ì¿¼ë¦¬',NULL,NULL),(24,NULL,NULL,NULL,'SQL ê¸°ë³¸ ë° íì©','ê³ì¸µí ì§ìì ìí ì¡°ì¸',NULL,NULL),(25,NULL,NULL,NULL,'SQL ê¸°ë³¸ ë° íì©','PIVOT ì ê³¼ UNPIVOTì ',NULL,NULL),(26,NULL,NULL,NULL,'SQL ê¸°ë³¸ ë° íì©','ì ê· ííì',NULL,NULL),(27,NULL,NULL,NULL,'SQL ê¸°ë³¸ ë° íì©','DML',NULL,NULL),(28,NULL,NULL,NULL,'SQL ê¸°ë³¸ ë° íì©','TCL',NULL,NULL),(29,NULL,NULL,NULL,'SQL ê¸°ë³¸ ë° íì©','DDL',NULL,NULL),(30,NULL,NULL,NULL,'SQL ê¸°ë³¸ ë° íì©','DCL',NULL,NULL);
/*!40000 ALTER TABLE `summary_sqld` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summary_sqld_seq`
--

DROP TABLE IF EXISTS `summary_sqld_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summary_sqld_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summary_sqld_seq`
--

LOCK TABLES `summary_sqld_seq` WRITE;
/*!40000 ALTER TABLE `summary_sqld_seq` DISABLE KEYS */;
INSERT INTO `summary_sqld_seq` VALUES (1);
/*!40000 ALTER TABLE `summary_sqld_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `calendarApi` varchar(255) DEFAULT NULL,
  `calendarId` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `providerId` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin',NULL,NULL,NULL,'$2a$10$ksvieaheuqABABut2Tc67.l7.QPugyPuJqWVGb.AaFeryL6.L25K6',NULL,NULL,NULL,'ROLE_ADMIN'),('user',NULL,NULL,NULL,'$2a$10$ksvieaheuqABABut2Tc67.l7.QPugyPuJqWVGb.AaFeryL6.L25K6',NULL,NULL,NULL,'ROLE_USER');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bookdb'
--

--
-- Dumping routines for database 'bookdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-14 12:35:42
