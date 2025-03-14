-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 52.79.188.126    Database: bookdb
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `JWTToken`
--

DROP TABLE IF EXISTS `JWTToken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JWTToken` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `accessToken` text NOT NULL,
  `issuedAt` datetime NOT NULL,
  `refreshToken` text NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JWTToken`
--

LOCK TABLES `JWTToken` WRITE;
/*!40000 ALTER TABLE `JWTToken` DISABLE KEYS */;
/*!40000 ALTER TABLE `JWTToken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Signature`
--

DROP TABLE IF EXISTS `Signature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Signature` (
  `signKey` varbinary(255) NOT NULL,
  `createAt` date DEFAULT NULL,
  PRIMARY KEY (`signKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Signature`
--

LOCK TABLES `Signature` WRITE;
/*!40000 ALTER TABLE `Signature` DISABLE KEYS */;
INSERT INTO `Signature` VALUES (_binary '�W��Ŕp�X]_��{V���UX\�\�6�','2025-03-14');
/*!40000 ALTER TABLE `Signature` ENABLE KEYS */;
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
-- Table structure for table `questions_bigdata_SEQ`
--

DROP TABLE IF EXISTS `questions_bigdata_SEQ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions_bigdata_SEQ` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_bigdata_SEQ`
--

LOCK TABLES `questions_bigdata_SEQ` WRITE;
/*!40000 ALTER TABLE `questions_bigdata_SEQ` DISABLE KEYS */;
INSERT INTO `questions_bigdata_SEQ` VALUES (1);
/*!40000 ALTER TABLE `questions_bigdata_SEQ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions_info_security`
--

DROP TABLE IF EXISTS `questions_info_security`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions_info_security` (
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
-- Dumping data for table `questions_info_security`
--

LOCK TABLES `questions_info_security` WRITE;
/*!40000 ALTER TABLE `questions_info_security` DISABLE KEYS */;
/*!40000 ALTER TABLE `questions_info_security` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions_info_security_SEQ`
--

DROP TABLE IF EXISTS `questions_info_security_SEQ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions_info_security_SEQ` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_info_security_SEQ`
--

LOCK TABLES `questions_info_security_SEQ` WRITE;
/*!40000 ALTER TABLE `questions_info_security_SEQ` DISABLE KEYS */;
INSERT INTO `questions_info_security_SEQ` VALUES (1);
/*!40000 ALTER TABLE `questions_info_security_SEQ` ENABLE KEYS */;
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
-- Table structure for table `questions_sqld_SEQ`
--

DROP TABLE IF EXISTS `questions_sqld_SEQ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions_sqld_SEQ` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions_sqld_SEQ`
--

LOCK TABLES `questions_sqld_SEQ` WRITE;
/*!40000 ALTER TABLE `questions_sqld_SEQ` DISABLE KEYS */;
INSERT INTO `questions_sqld_SEQ` VALUES (1);
/*!40000 ALTER TABLE `questions_sqld_SEQ` ENABLE KEYS */;
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
-- Table structure for table `summary_bigdata_SEQ`
--

DROP TABLE IF EXISTS `summary_bigdata_SEQ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summary_bigdata_SEQ` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summary_bigdata_SEQ`
--

LOCK TABLES `summary_bigdata_SEQ` WRITE;
/*!40000 ALTER TABLE `summary_bigdata_SEQ` DISABLE KEYS */;
INSERT INTO `summary_bigdata_SEQ` VALUES (1);
/*!40000 ALTER TABLE `summary_bigdata_SEQ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summary_info_security`
--

DROP TABLE IF EXISTS `summary_info_security`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summary_info_security` (
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
-- Dumping data for table `summary_info_security`
--

LOCK TABLES `summary_info_security` WRITE;
/*!40000 ALTER TABLE `summary_info_security` DISABLE KEYS */;
INSERT INTO `summary_info_security` VALUES (1,NULL,NULL,NULL,'정보보안 개요','정보보안의 정의',NULL,NULL),(2,NULL,NULL,NULL,'정보보안 개요','정보보안의 목표 (기밀성, 무결성, 가용성)',NULL,NULL),(3,NULL,NULL,NULL,'정보보안 개요','정보보안의 필요성',NULL,NULL),(4,NULL,NULL,NULL,'정보보안 개요','정보보안 위협과 대응',NULL,NULL),(5,NULL,NULL,NULL,'정보보안 개요','정보통신망법',NULL,NULL),(6,NULL,NULL,NULL,'정보보안 개요','개인정보 보호법',NULL,NULL),(7,NULL,NULL,NULL,'정보보안 개요','전자서명법',NULL,NULL),(8,NULL,NULL,NULL,'정보보안 개요','저작권법',NULL,NULL),(9,NULL,NULL,NULL,'정보보안 개요','컴퓨터 범죄 및 대응',NULL,NULL),(10,NULL,NULL,NULL,'보안 기술','대칭키 암호',NULL,NULL),(11,NULL,NULL,NULL,'보안 기술','비대칭키 암호',NULL,NULL),(12,NULL,NULL,NULL,'보안 기술','해시 함수',NULL,NULL),(13,NULL,NULL,NULL,'보안 기술','디지털 서명',NULL,NULL),(14,NULL,NULL,NULL,'보안 기술','전자 인증',NULL,NULL),(15,NULL,NULL,NULL,'보안 기술','방화벽',NULL,NULL),(16,NULL,NULL,NULL,'보안 기술','침입 탐지 및 방지 시스템 (IDS/IPS)',NULL,NULL),(17,NULL,NULL,NULL,'보안 기술','VPN',NULL,NULL),(18,NULL,NULL,NULL,'보안 기술','무선 보안',NULL,NULL),(19,NULL,NULL,NULL,'보안 기술','네트워크 공격 기법과 대응',NULL,NULL),(20,NULL,NULL,NULL,'보안 기술','운영체제 보안',NULL,NULL),(21,NULL,NULL,NULL,'보안 기술','취약점 분석 및 패치',NULL,NULL),(22,NULL,NULL,NULL,'보안 기술','악성코드 분석 및 대응',NULL,NULL),(23,NULL,NULL,NULL,'보안 기술','보안 프로그래밍',NULL,NULL),(24,NULL,NULL,NULL,'보안 관리','보안 정책 수립',NULL,NULL),(25,NULL,NULL,NULL,'보안 관리','보안 조직 및 역할',NULL,NULL),(26,NULL,NULL,NULL,'보안 관리','보안 감사',NULL,NULL),(27,NULL,NULL,NULL,'보안 관리','침해 대응 및 포렌식',NULL,NULL),(28,NULL,NULL,NULL,'보안 관리','ISO 27001',NULL,NULL),(29,NULL,NULL,NULL,'보안 관리','ISMS-P',NULL,NULL),(30,NULL,NULL,NULL,'보안 관리','CC(Common Criteria)',NULL,NULL),(31,NULL,NULL,NULL,'보안 관리','PIMS',NULL,NULL);
/*!40000 ALTER TABLE `summary_info_security` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summary_info_security_SEQ`
--

DROP TABLE IF EXISTS `summary_info_security_SEQ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summary_info_security_SEQ` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summary_info_security_SEQ`
--

LOCK TABLES `summary_info_security_SEQ` WRITE;
/*!40000 ALTER TABLE `summary_info_security_SEQ` DISABLE KEYS */;
INSERT INTO `summary_info_security_SEQ` VALUES (1);
/*!40000 ALTER TABLE `summary_info_security_SEQ` ENABLE KEYS */;
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
INSERT INTO `summary_sqld` VALUES (1,NULL,NULL,NULL,'데이터 모델링의 이해','데이터모델의 이해',NULL,NULL),(2,NULL,NULL,NULL,'데이터 모델링의 이해','엔터티',NULL,NULL),(3,NULL,NULL,NULL,'데이터 모델링의 이해','속성',NULL,NULL),(4,NULL,NULL,NULL,'데이터 모델링의 이해','관계',NULL,NULL),(5,NULL,NULL,NULL,'데이터 모델링의 이해','식별자',NULL,NULL),(6,NULL,NULL,NULL,'데이터 모델링의 이해','정규화',NULL,NULL),(7,NULL,NULL,NULL,'데이터 모델링의 이해','관계와 조인의 이해',NULL,NULL),(8,NULL,NULL,NULL,'데이터 모델링의 이해','모델이 표현하는 트랜잭션의 이해',NULL,NULL),(9,NULL,NULL,NULL,'데이터 모델링의 이해','Null 속성의 이해',NULL,NULL),(10,NULL,NULL,NULL,'데이터 모델링의 이해','본질식별자 vs 인조식별자',NULL,NULL),(11,NULL,NULL,NULL,'SQL 기본 및 활용','관계형 데이터베이스 개요',NULL,NULL),(12,NULL,NULL,NULL,'SQL 기본 및 활용','SELECT 문',NULL,NULL),(13,NULL,NULL,NULL,'SQL 기본 및 활용','함수',NULL,NULL),(14,NULL,NULL,NULL,'SQL 기본 및 활용','WHERE 절',NULL,NULL),(15,NULL,NULL,NULL,'SQL 기본 및 활용','GROUP BY, HAVING 절',NULL,NULL),(16,NULL,NULL,NULL,'SQL 기본 및 활용','ORDER BY 절',NULL,NULL),(17,NULL,NULL,NULL,'SQL 기본 및 활용','조인',NULL,NULL),(18,NULL,NULL,NULL,'SQL 기본 및 활용','표준 조인',NULL,NULL),(19,NULL,NULL,NULL,'SQL 기본 및 활용','서브쿼리',NULL,NULL),(20,NULL,NULL,NULL,'SQL 기본 및 활용','집합 연산자',NULL,NULL),(21,NULL,NULL,NULL,'SQL 기본 및 활용','그룹 함수',NULL,NULL),(22,NULL,NULL,NULL,'SQL 기본 및 활용','윈도우 함수',NULL,NULL),(23,NULL,NULL,NULL,'SQL 기본 및 활용','Top N 쿼리',NULL,NULL),(24,NULL,NULL,NULL,'SQL 기본 및 활용','계층형 질의와 셀프 조인',NULL,NULL),(25,NULL,NULL,NULL,'SQL 기본 및 활용','PIVOT 절과 UNPIVOT절',NULL,NULL),(26,NULL,NULL,NULL,'SQL 기본 및 활용','정규 표현식',NULL,NULL),(27,NULL,NULL,NULL,'SQL 기본 및 활용','DML',NULL,NULL),(28,NULL,NULL,NULL,'SQL 기본 및 활용','TCL',NULL,NULL),(29,NULL,NULL,NULL,'SQL 기본 및 활용','DDL',NULL,NULL),(30,NULL,NULL,NULL,'SQL 기본 및 활용','DCL',NULL,NULL);
/*!40000 ALTER TABLE `summary_sqld` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `summary_sqld_SEQ`
--

DROP TABLE IF EXISTS `summary_sqld_SEQ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `summary_sqld_SEQ` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `summary_sqld_SEQ`
--

LOCK TABLES `summary_sqld_SEQ` WRITE;
/*!40000 ALTER TABLE `summary_sqld_SEQ` DISABLE KEYS */;
INSERT INTO `summary_sqld_SEQ` VALUES (1);
/*!40000 ALTER TABLE `summary_sqld_SEQ` ENABLE KEYS */;
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

-- Dump completed on 2025-03-14 16:33:27
