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
INSERT INTO `signature` VALUES (_binary '.���5�\�\�\"�������\�#g\�v �\�-\�/�','2025-03-13');
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
INSERT INTO `summary_bigdata` VALUES (1,NULL,NULL,NULL,'빅데이터 이해','빅데이터의 정의',NULL,NULL),(2,NULL,NULL,NULL,'빅데이터 이해','빅데이터의 특징',NULL,NULL),(3,NULL,NULL,NULL,'빅데이터 이해','빅데이터의 가치와 영향',NULL,NULL),(4,NULL,NULL,NULL,'빅데이터 이해','빅데이터의 활용',NULL,NULL),(5,NULL,NULL,NULL,'빅데이터 이해','빅데이터 수집',NULL,NULL),(6,NULL,NULL,NULL,'빅데이터 이해','빅데이터 저장',NULL,NULL),(7,NULL,NULL,NULL,'빅데이터 이해','빅데이터 처리',NULL,NULL),(8,NULL,NULL,NULL,'빅데이터 이해','빅데이터 분석',NULL,NULL),(9,NULL,NULL,NULL,'빅데이터 이해','빅데이터 시각화',NULL,NULL),(10,NULL,NULL,NULL,'데이터 분석','기술통계',NULL,NULL),(11,NULL,NULL,NULL,'데이터 분석','추론통계',NULL,NULL),(12,NULL,NULL,NULL,'데이터 분석','확률분포',NULL,NULL),(13,NULL,NULL,NULL,'데이터 분석','가설검정',NULL,NULL),(14,NULL,NULL,NULL,'데이터 분석','지도학습',NULL,NULL),(15,NULL,NULL,NULL,'데이터 분석','비지도학습',NULL,NULL),(16,NULL,NULL,NULL,'데이터 분석','강화학습',NULL,NULL),(17,NULL,NULL,NULL,'데이터 분석','딥러닝',NULL,NULL),(18,NULL,NULL,NULL,'데이터 처리','결측치 처리',NULL,NULL),(19,NULL,NULL,NULL,'데이터 처리','이상치 처리',NULL,NULL),(20,NULL,NULL,NULL,'데이터 처리','정규화',NULL,NULL),(21,NULL,NULL,NULL,'데이터 처리','표준화',NULL,NULL),(22,NULL,NULL,NULL,'데이터 처리','데이터 변환',NULL,NULL),(23,NULL,NULL,NULL,'데이터 처리','피처 엔지니어링',NULL,NULL),(24,NULL,NULL,NULL,'데이터 처리','차원 축소',NULL,NULL),(25,NULL,NULL,NULL,'데이터 처리','데이터 통합',NULL,NULL);
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
INSERT INTO `summary_sqld` VALUES (1,'2025-03-13 00:03:40.945000','{\"topic\": \"데이터모델의 이해\", \"subject\": \"데이터 모델링의 이해\", \"version\": \"1.0\", \"lastModified\": \"2025-03-13T00:03:40.945Z\"}','[{\"id\": \"1741824210932-q4dlhjui0\", \"name\": \"시트 1\", \"content\": [{\"x\": \"0%\", \"y\": \"0%\", \"id\": \"title-section-1741824210932\", \"type\": \"layout-area\", \"label\": \"표지\", \"style\": \"title\", \"width\": \"98%\", \"height\": \"95%\", \"position\": {\"x\": 15.55, \"y\": 8.33}, \"template\": {\"type\": \"표지\", \"title\": \"a\", \"author\": \"a\", \"subtitle\": \"a\"}}]}, {\"id\": \"1741824211185-gf8bjr8x1\", \"name\": \"시트 2\", \"content\": [{\"x\": \"0%\", \"y\": \"0%\", \"id\": \"toc-section-1741824211185\", \"type\": \"layout-area\", \"label\": \"CONTENTS\", \"style\": \"toc\", \"width\": \"98%\", \"height\": \"95%\", \"position\": {\"x\": 15.55, \"y\": 8.33}, \"template\": {\"type\": \"목차\", \"items\": [{\"id\": \"1\", \"text\": \"a\", \"number\": \"01\"}, {\"id\": \"2\", \"text\": \"a\", \"number\": \"02\"}, {\"id\": \"3\", \"text\": \"a\", \"number\": \"03\"}, {\"id\": \"4\", \"text\": \"a\", \"number\": \"04\"}]}}]}, {\"id\": \"1741824211416-yfzyzjmcm\", \"name\": \"시트 3\", \"content\": [{\"x\": \"0%\", \"y\": \"0%\", \"id\": \"content-section-1741824211416\", \"type\": \"layout-area\", \"label\": \"TITLE\", \"style\": \"content\", \"width\": \"98%\", \"height\": \"95%\", \"position\": {\"x\": 15.55, \"y\": 8.33}, \"template\": {\"type\": \"내용\", \"items\": [{\"id\": \"1741824211416\", \"word\": \"a\", \"images\": [], \"showImages\": true, \"description\": \"a\"}]}}]}]','\"데이터 모델링의 이해\"','\"데이터모델의 이해\"',NULL,NULL),(2,NULL,NULL,NULL,'데이터 모델링의 이해','엔터티',NULL,NULL),(3,NULL,NULL,NULL,'데이터 모델링의 이해','속성',NULL,NULL),(4,NULL,NULL,NULL,'데이터 모델링의 이해','관계',NULL,NULL),(5,NULL,NULL,NULL,'데이터 모델링의 이해','식별자',NULL,NULL),(6,NULL,NULL,NULL,'데이터 모델링의 이해','정규화',NULL,NULL),(7,NULL,NULL,NULL,'데이터 모델링의 이해','관계와 조인의 이해',NULL,NULL),(8,NULL,NULL,NULL,'데이터 모델링의 이해','모델이 표현하는 트랜잭션의 이해',NULL,NULL),(9,NULL,NULL,NULL,'데이터 모델링의 이해','Null 속성의 이해',NULL,NULL),(10,NULL,NULL,NULL,'데이터 모델링의 이해','본질식별자 vs 인조식별자',NULL,NULL),(11,NULL,NULL,NULL,'SQL 기본 및 활용','관계형 데이터베이스 개요',NULL,NULL),(12,NULL,NULL,NULL,'SQL 기본 및 활용','SELECT 문',NULL,NULL),(13,NULL,NULL,NULL,'SQL 기본 및 활용','함수',NULL,NULL),(14,NULL,NULL,NULL,'SQL 기본 및 활용','WHERE 절',NULL,NULL),(15,NULL,NULL,NULL,'SQL 기본 및 활용','GROUP BY, HAVING 절',NULL,NULL),(16,NULL,NULL,NULL,'SQL 기본 및 활용','ORDER BY 절',NULL,NULL),(17,NULL,NULL,NULL,'SQL 기본 및 활용','조인',NULL,NULL),(18,NULL,NULL,NULL,'SQL 기본 및 활용','표준 조인',NULL,NULL),(19,NULL,NULL,NULL,'SQL 기본 및 활용','서브쿼리',NULL,NULL),(20,NULL,NULL,NULL,'SQL 기본 및 활용','집합 연산자',NULL,NULL),(21,NULL,NULL,NULL,'SQL 기본 및 활용','그룹 함수',NULL,NULL),(22,NULL,NULL,NULL,'SQL 기본 및 활용','윈도우 함수',NULL,NULL),(23,NULL,NULL,NULL,'SQL 기본 및 활용','Top N 쿼리',NULL,NULL),(24,NULL,NULL,NULL,'SQL 기본 및 활용','계층형 질의와 셀프 조인',NULL,NULL),(25,NULL,NULL,NULL,'SQL 기본 및 활용','PIVOT 절과 UNPIVOT절',NULL,NULL),(26,NULL,NULL,NULL,'SQL 기본 및 활용','정규 표현식',NULL,NULL),(27,NULL,NULL,NULL,'SQL 기본 및 활용','DML',NULL,NULL),(28,NULL,NULL,NULL,'SQL 기본 및 활용','TCL',NULL,NULL),(29,NULL,NULL,NULL,'SQL 기본 및 활용','DDL',NULL,NULL),(30,NULL,NULL,NULL,'SQL 기본 및 활용','DCL',NULL,NULL);
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

-- Dump completed on 2025-03-13  9:03:53
