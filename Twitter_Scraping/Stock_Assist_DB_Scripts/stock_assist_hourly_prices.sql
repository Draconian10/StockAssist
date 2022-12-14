-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: stock_assist
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
  `hp_date` datetime DEFAULT NULL,
  `hp_ticker` varchar(10) DEFAULT NULL,
  `hp_adj_close` float DEFAULT NULL,
  `hp_close` float DEFAULT NULL,
  `hp_high` float DEFAULT NULL,
  `hp_low` float DEFAULT NULL,
  `hp_open` float DEFAULT NULL,
  `hp_volume` bigint DEFAULT NULL,
  PRIMARY KEY (`hp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hourly_prices`
--

LOCK TABLES `hourly_prices` WRITE;
INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (81,'2022-11-10 09:30:00','AAPL',143.45,143.45,143.7,140.4,141.24,31213223);
INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (82,'2022-11-10 09:30:00','MSFT',238.41,238.41,240.29,235,235.43,11699993);
INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (83,'2022-11-10 10:30:00','AAPL',143.09,143.09,143.51,142.15,143.46,11128737);
INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (84,'2022-11-10 10:30:00','MSFT',238.65,238.65,239.04,237.32,238.39,4147068);
INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (85,'2022-11-10 11:30:00','AAPL',143.23,143.23,143.65,142.74,143.1,8561508);
INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (86,'2022-11-10 11:30:00','MSFT',240.02,240.02,240.75,238.67,238.67,3770500);
INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (87,'2022-11-10 12:30:00','AAPL',143.62,143.62,143.73,142.72,143.22,7640515);
INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (88,'2022-11-10 12:30:00','MSFT',239.513,239.513,240.19,238.917,240.005,3006228);
INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (89,'2022-11-10 13:30:00','AAPL',144.182,144.182,144.23,143.38,143.63,7917979);
INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (90,'2022-11-10 13:30:00','MSFT',239.34,239.34,239.88,238.66,239.54,2332955);
INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (91,'2022-11-10 14:30:00','AAPL',145.16,145.16,145.17,144,144.185,10462443);
INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (92,'2022-11-10 14:30:00','MSFT',240.64,240.64,240.675,238.74,239.34,3215926);
INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (93,'2022-11-10 15:30:00','AAPL',146.83,146.83,146.87,145.05,145.155,18655523);
INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (94,'2022-11-10 15:30:00','MSFT',243.1,243.1,243.33,240.45,240.65,6833205);
INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (95,'2022-11-10 16:00:00','AAPL',146.87,146.87,146.87,146.87,146.87,0);
INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (96,'2022-11-10 16:00:00','MSFT',242.98,242.98,242.98,242.98,242.98,0);
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-12 17:44:41
