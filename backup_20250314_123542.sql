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
INSERT INTO `signature` VALUES (_binary '�j\�\�����\�qԶ=�b��F%;p\���\�]\�J','2025-03-14');
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
INSERT INTO `summary_sqld` VALUES (1,'2025-03-14 03:29:22.318000','{\"topic\": \"데이터모델의 이해\", \"subject\": \"데이터 모델링의 이해\", \"version\": \"1.0\", \"lastModified\": \"2025-03-14T03:29:22.318Z\"}','[{\"id\": \"1741922807160-vanryjjcz\", \"name\": \"시트 1\", \"content\": [{\"x\": \"0%\", \"y\": \"0%\", \"id\": \"title-section-1741922807160\", \"type\": \"layout-area\", \"label\": \"표지\", \"style\": \"title\", \"width\": \"98%\", \"height\": \"95%\", \"position\": {\"x\": 12, \"y\": 8.33}, \"template\": {\"type\": \"표지\", \"title\": \"데이터 모델링의 이해\", \"author\": \"정우균\", \"subtitle\": \"개론\"}}]}, {\"id\": \"1741922807623-jylb073cb\", \"name\": \"시트 2\", \"content\": [{\"x\": \"0%\", \"y\": \"0%\", \"id\": \"toc-section-1741922807623\", \"type\": \"layout-area\", \"label\": \"CONTENTS\", \"style\": \"toc\", \"width\": \"98%\", \"height\": \"95%\", \"position\": {\"x\": 12, \"y\": 8.33}, \"template\": {\"type\": \"목차\", \"items\": [{\"id\": \"1\", \"text\": \"모델링의 개념\", \"number\": \"01\"}, {\"id\": \"2\", \"text\": \"모델링의 특징\", \"number\": \"02\"}, {\"id\": \"3\", \"text\": \"데이터 모델링 3가지 관점\", \"number\": \"03\"}, {\"id\": \"4\", \"text\": \"데이터 모델링 유의점\", \"number\": \"04\"}, {\"id\": \"1741922842820\", \"text\": \"데이터 모델링 3가지 요소\", \"number\": \"05\"}, {\"id\": \"1741922843900\", \"text\": \"데이터 모델링 3단계\", \"number\": \"06\"}, {\"id\": \"1741922844613\", \"text\": \"스키마의 3단계 구조\", \"number\": \"07\"}, {\"id\": \"1741922845267\", \"text\": \"데이터 모델의 표기법(ERD : Entity Relationship Diagram)\", \"number\": \"08\"}, {\"id\": \"1741922845888\", \"text\": \"ERD 작성 절차 (6단계) \", \"number\": \"09\"}]}}]}, {\"id\": \"1741922807911-5nuc24a1m\", \"name\": \"시트 3\", \"content\": [{\"x\": \"0%\", \"y\": \"0%\", \"id\": \"content-section-1741922807911\", \"type\": \"layout-area\", \"label\": \"TITLE\", \"style\": \"content\", \"width\": \"98%\", \"height\": \"95%\", \"position\": {\"x\": 12, \"y\": 8.33}, \"template\": {\"type\": \"내용\", \"items\": [{\"id\": \"1741922807911\", \"word\": \"모델링의 개념\", \"images\": [], \"showImages\": true, \"description\": \"현실 세계의 비즈니스 프로세스와 데이터 요구 사항을 추상적이고 구조화된 형태로 표현\\n데이터베이스 구조와 관계를 정의하며 저장, 조작, 관리 방법 명확하게 정의\"}, {\"id\": \"1741922868961\", \"word\": \"모델링의 특징\", \"images\": [], \"showWord\": true, \"showImages\": true, \"description\": \"단순화(Simplification)\\n- 현실을 단순화하여 핵심 요소에 집중하고 불필요한 세부 사항을 제거\\n- 단순화를 통해 복잡한 현실 세계를 이해하고 표현하기 쉬워짐 \\n\\n추상화(Abstraction)\\n- 현실세계를 일정한 형식에 맞추어 간략하게 대략적으로 표현하는 과정\\n- 다양한 현상을 일정한 양식인 표기법에 따라 표현\\n\\n명확화(Clarity)\\n- 대상에 대한 애매모호함을 최대한 제거하고 정확하게 현상을 기술하는 과정\\n- 명확화를 통해 모델을 이해하는 이들의 의사소통을 원활히 함\", \"showDescription\": true}, {\"id\": \"1741922870149\", \"word\": \"데이터 모델링 3가지 관점\", \"images\": [], \"showWord\": true, \"showImages\": true, \"description\": \"데이터 관점\\n    - 데이터가 어떻게 저장되고, 접근되고, 관리되는지를 정의하는 단계\\n프로세스 관점\\n    - 시스템이 어떤 작업을 수행하며, 이러한 작업들이 어떻게 조직되고 조정되는지를 정의하는 단계 \\n    - 데이터가 시스템 내에서 어떻게 흐르고 변환되는지에 대한 확인 \\n데이터와 프로세스 관점\\n    - 데이터 관점과 프로세스 관점을 결합하여 시스템의 전반적인 동작을 이해하는 단계 \\n    - 특정 프로세스가 어떤 데이터를 사용하는지, 데이터가 어떻게 생성되고 변경되는지를 명확하게 정의\", \"showDescription\": true}, {\"id\": \"1741922871405\", \"word\": \"데이터 모델링 유의점\", \"images\": [], \"showWord\": true, \"showImages\": true, \"description\": \"중복(Duplication)\\n    - 한 테이블 또는 여러 테이블에 같은 정보를 저장하지 않도록 설계\\n비유연성(Inflexibility)\\n    - 사소한 업무 변화에 대해서도 잦은 모델 변경이 되지 않도록 주의\\n    - 데이터 정의를 프로세스와 분리\\n비일관성(Inconsistency)\\n    - 데이터베이스 내의 정보가 모순되거나 상반된 내용을 갖는 상태를 의미 \\n    - 데이터간 상호연관 관계를 명확히 정의 \\n    - 데이터 품질 관리 필요 \\n    - 데이터의 중복이 없더라도 비일관성은 발생할 수 있음\", \"showDescription\": true}, {\"id\": \"1741922872541\", \"word\": \"데이터 모델링 3가지 요소\", \"images\": [], \"showWord\": true, \"showImages\": true, \"description\": \"- 대상(Entity) : 업무가 관리하고자 하는 대상(객체) \\n- 속성(Attribute) : 대상들이 갖는 속성(하나의 특징으로 정의될 수 있는 것) \\n- 관계(Relationship) : 대상들 간의 관계 \\n\", \"showDescription\": true}, {\"id\": \"1741922873410\", \"word\": \"데이터 모델링 3단계\", \"images\": [], \"showWord\": true, \"showImages\": true, \"description\": \"개념적 모델링\\n    - 업무 중심적이고 포괄적(전사적)인 수준의 모델링 \\n    - \\\"추상화 수준이 가장 높음\\\"  \\n    - 업무를 분석 뒤 업무의 핵심 엔터티(Entity)를 추출하는 단계 \\n    - 도출된 핵심 엔터티(Entity)들과의 관계들을 표현하기 위해 ERD 작성\\n\\n논리적 모델링\\n    - 개념적 모델링의 결과를 토대로 세부속성, 식별자, 관계 등을 표현하는 단계 \\n    - 데이터 구조를 정의하기 때문에 비슷한 업무나 프로젝트에서 동일한 형태의 데이터 사용 시 재사용 가능 \\n    - 동일한 논리적 모델을 사용하는 경우 쿼리도 재사용 가능 \\n    - 데이터 정규화 수행 \\n    - 재사용성이 높은 논리적 모델은 유지보수가 용이해짐 \\n\\n물리적 모델링\\n    - 논리 모델링이 끝나면 이를 직접 물리적으로 생성하는 과정 \\n    - 데이터베이스 성능, 디스크 저장구조, 하드웨어의 보안성, 가용성 등을 고려 \\n    - 가장 구체적인 데이터 모델링 \\n    - \\\"추상화 수준은 가장 낮음(가장 구체적인 모델링이므로) \\\"\", \"showDescription\": true}, {\"id\": \"1741922874091\", \"word\": \"스키마의 3단계 구조\", \"images\": [], \"showWord\": true, \"showImages\": true, \"description\": \"스키마 : 데이터베이스의 구조와 제약 조건에 관한 전반적인 명세를 기술한 메타데이터의 집합 \\n- 외부, 개념, 내부 스키마로 분리 \\n- 사용자의 관점과 실제 설계된 물리적인 방식을 분리하기 위해 고안됨 \\n\\n외부 스키마\\n    - 사용자가 보는 관점에서 데이터베이스 스키마를 정의 \\n    - 사용자나 응용 프로그램이 필요한 데이터를 정의(View : 사용자가 접근하는 대상) \\n\\n개념 스키마\\n    - 사용자 관점의 데이터베이스 스키마를 통합하여 데이터베이스의 전체 논리적 구조를 정의 \\n    - 전체 데이터베이스의 개체, 속성, 관계, 데이터 타입 등을 정의 \\n\\n내부 스키마\\n    - 데이터가 물리적으로 어떻게 저장되는지를 정의 \\n    - 데이터의 저장 구조, 컬럼, 인덱스 등을 정의함 \\n\\n** 3단계 스키마의 독립성 \\n- 독립성 : 물리적, 논리적 구조를 변경하더라도 사용자가 사용하는 응용 프로그램에 영향을 주지 말아야 함 \\n1) 논리적 독립성 : 논리적 데이터 구조가 변경되어도(개념 스키마 변경) 응용 프로그램에 영향을 주지 않는 특성 \\n2) 물리적 독립성 : 물리적 구조가 변경되어도(내부 스키마 변경) 개념/외부 스키마에 영향을 주지 않는 특성\", \"showDescription\": true}, {\"id\": \"1741922874762\", \"word\": \"데이터 모델의 표기법(ERD : Entity Relationship Diagram)\", \"images\": [], \"showWord\": true, \"showImages\": true, \"description\": \" - 엔터티(Entity)와 엔터티 간의 관계(Relationship)를 시각적으로 표현한 다이어그램 \\n - 1976 년 피터 첸(Peter Chen)이 만든 표기법, 데이터 모델링 표준으로 사용\", \"showDescription\": true}, {\"id\": \"1741922954676\", \"word\": \"ERD 작성 절차 (6단계) \", \"images\": [], \"showWord\": true, \"showImages\": true, \"description\": \"① 엔터티를 도출한 후 그린다 \\n② 엔터티 배치 \\n③ 엔터티 간의 관계를 설정 \\n④ 관계명을 서술 \\n⑤ 관계의 참여도 기술 \\n⑥ 관계의 필수 여부를 확인\", \"showDescription\": true}]}}]}]','\"데이터 모델링의 이해\"','\"데이터모델의 이해\"',NULL,NULL),(2,NULL,NULL,NULL,'데이터 모델링의 이해','엔터티',NULL,NULL),(3,NULL,NULL,NULL,'데이터 모델링의 이해','속성',NULL,NULL),(4,NULL,NULL,NULL,'데이터 모델링의 이해','관계',NULL,NULL),(5,NULL,NULL,NULL,'데이터 모델링의 이해','식별자',NULL,NULL),(6,NULL,NULL,NULL,'데이터 모델링의 이해','정규화',NULL,NULL),(7,NULL,NULL,NULL,'데이터 모델링의 이해','관계와 조인의 이해',NULL,NULL),(8,NULL,NULL,NULL,'데이터 모델링의 이해','모델이 표현하는 트랜잭션의 이해',NULL,NULL),(9,NULL,NULL,NULL,'데이터 모델링의 이해','Null 속성의 이해',NULL,NULL),(10,NULL,NULL,NULL,'데이터 모델링의 이해','본질식별자 vs 인조식별자',NULL,NULL),(11,NULL,NULL,NULL,'SQL 기본 및 활용','관계형 데이터베이스 개요',NULL,NULL),(12,NULL,NULL,NULL,'SQL 기본 및 활용','SELECT 문',NULL,NULL),(13,NULL,NULL,NULL,'SQL 기본 및 활용','함수',NULL,NULL),(14,NULL,NULL,NULL,'SQL 기본 및 활용','WHERE 절',NULL,NULL),(15,NULL,NULL,NULL,'SQL 기본 및 활용','GROUP BY, HAVING 절',NULL,NULL),(16,NULL,NULL,NULL,'SQL 기본 및 활용','ORDER BY 절',NULL,NULL),(17,NULL,NULL,NULL,'SQL 기본 및 활용','조인',NULL,NULL),(18,NULL,NULL,NULL,'SQL 기본 및 활용','표준 조인',NULL,NULL),(19,NULL,NULL,NULL,'SQL 기본 및 활용','서브쿼리',NULL,NULL),(20,NULL,NULL,NULL,'SQL 기본 및 활용','집합 연산자',NULL,NULL),(21,NULL,NULL,NULL,'SQL 기본 및 활용','그룹 함수',NULL,NULL),(22,NULL,NULL,NULL,'SQL 기본 및 활용','윈도우 함수',NULL,NULL),(23,NULL,NULL,NULL,'SQL 기본 및 활용','Top N 쿼리',NULL,NULL),(24,NULL,NULL,NULL,'SQL 기본 및 활용','계층형 질의와 셀프 조인',NULL,NULL),(25,NULL,NULL,NULL,'SQL 기본 및 활용','PIVOT 절과 UNPIVOT절',NULL,NULL),(26,NULL,NULL,NULL,'SQL 기본 및 활용','정규 표현식',NULL,NULL),(27,NULL,NULL,NULL,'SQL 기본 및 활용','DML',NULL,NULL),(28,NULL,NULL,NULL,'SQL 기본 및 활용','TCL',NULL,NULL),(29,NULL,NULL,NULL,'SQL 기본 및 활용','DDL',NULL,NULL),(30,NULL,NULL,NULL,'SQL 기본 및 활용','DCL',NULL,NULL);
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
