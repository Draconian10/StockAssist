-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: stockassist
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `hourly_prices`
--

DROP TABLE IF EXISTS `hourly_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hourly_prices` (
  `hp_id` int NOT NULL AUTO_INCREMENT,
  `hp_date` datetime NOT NULL,
  `hp_ticker` varchar(10) NOT NULL,
  `hp_adj_close` float DEFAULT NULL,
  `hp_close` float DEFAULT NULL,
  `hp_high` float DEFAULT NULL,
  `hp_low` float DEFAULT NULL,
  `hp_open` float DEFAULT NULL,
  `hp_volume` bigint DEFAULT NULL,
  PRIMARY KEY (`hp_id`,`hp_date`,`hp_ticker`)
) ENGINE=InnoDB AUTO_INCREMENT=433 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hourly_prices`
--

LOCK TABLES `hourly_prices` WRITE;
/*!40000 ALTER TABLE `hourly_prices` DISABLE KEYS */;
INSERT INTO `hourly_prices` VALUES (413,'2022-12-14 09:30:00','AAPL',146,146,146.655,145.07,145.35,9784672),(414,'2022-12-14 09:30:00','AMZN',93.1499,93.1499,93.3799,92.28,92.502,11490960),(415,'2022-12-14 09:30:00','MSFT',260.86,260.86,261,256.92,257.13,5069260),(416,'2022-12-14 09:30:00','TSLA',158.259,158.259,161.62,157.34,159.25,37342162),(417,'2022-12-14 10:30:00','AAPL',146.075,146.075,146.385,145.58,146.01,8606074),(418,'2022-12-14 10:30:00','AMZN',93.1199,93.1199,93.4581,92.6616,93.1401,7977290),(419,'2022-12-14 10:30:00','MSFT',261.67,261.67,261.7,260.05,260.85,3770425),(420,'2022-12-14 10:30:00','TSLA',156.81,156.81,158.32,155.88,158.28,22320603),(421,'2022-12-14 11:30:00','AAPL',145.5,145.5,146.23,145.42,146.07,4660299),(422,'2022-12-14 11:30:00','AMZN',92.51,92.51,93.32,92.43,93.1,4952528),(423,'2022-12-14 11:30:00','MSFT',261.06,261.06,262.588,260.78,261.66,2815694),(424,'2022-12-14 11:30:00','TSLA',158.964,158.964,160.21,156.68,156.79,16645955),(425,'2022-12-14 12:30:00','AAPL',145.34,145.34,145.6,145.26,145.501,1779627),(426,'2022-12-14 12:30:00','AMZN',92.24,92.24,92.6,92.0904,92.51,2325125),(427,'2022-12-14 12:30:00','MSFT',261.2,261.2,261.42,260.399,261.05,1205605),(428,'2022-12-14 12:30:00','TSLA',159.54,159.54,160.05,158.95,158.96,6119349),(429,'2022-12-14 12:59:35','AAPL',145.36,145.36,145.36,145.36,145.36,0),(430,'2022-12-14 12:59:35','AMZN',92.17,92.17,92.17,92.17,92.17,0),(431,'2022-12-14 12:59:35','MSFT',260.968,260.968,260.968,260.968,260.968,0),(432,'2022-12-14 12:59:35','TSLA',159.486,159.486,159.486,159.486,159.486,0);
/*!40000 ALTER TABLE `hourly_prices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-14 13:47:27
