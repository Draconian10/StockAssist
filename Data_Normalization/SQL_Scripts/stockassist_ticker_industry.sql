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
-- Table structure for table `ticker_industry`
--

DROP TABLE IF EXISTS `ticker_industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticker_industry` (
  `ti_sub_industry` varchar(100) NOT NULL,
  `ti_sector` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ti_sub_industry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticker_industry`
--

LOCK TABLES `ticker_industry` WRITE;
/*!40000 ALTER TABLE `ticker_industry` DISABLE KEYS */;
INSERT INTO `ticker_industry` VALUES ('Advertising','Communication Services'),('Aerospace & Defense','Industrials'),('Agricultural & Farm Machinery','Industrials'),('Agricultural Products','Consumer Staples'),('Air Freight & Logistics','Industrials'),('Airlines','Industrials'),('Alternative Carriers','Communication Services'),('Apparel Retail','Consumer Discretionary'),('Apparel, Accessories & Luxury Goods','Consumer Discretionary'),('Application Software','Information Technology'),('Asset Management & Custody Banks','Financials'),('Auto Parts & Equipment','Consumer Discretionary'),('Automobile Manufacturers','Consumer Discretionary'),('Automotive Retail','Consumer Discretionary'),('Biotechnology','Health Care'),('Brewers','Consumer Staples'),('Broadcasting','Communication Services'),('Building Products','Industrials'),('Cable & Satellite','Communication Services'),('Casinos & Gaming','Consumer Discretionary'),('Commodity Chemicals','Materials'),('Communications Equipment','Information Technology'),('Computer & Electronics Retail','Consumer Discretionary'),('Construction & Engineering','Industrials'),('Construction Machinery & Heavy Trucks','Industrials'),('Construction Materials','Materials'),('Consumer Electronics','Consumer Discretionary'),('Consumer Finance','Financials'),('Copper','Materials'),('Data Processing & Outsourced Services','Information Technology'),('Distillers & Vintners','Consumer Staples'),('Distributors','Consumer Discretionary'),('Diversified Banks','Financials'),('Diversified Chemicals','Materials'),('Diversified Support Services','Industrials'),('Drug Retail','Consumer Staples'),('Electric Utilities','Utilities'),('Electrical Components & Equipment','Industrials'),('Electronic Components','Information Technology'),('Electronic Equipment & Instruments','Information Technology'),('Electronic Manufacturing Services','Information Technology'),('Environmental & Facilities Services','Industrials'),('Fertilizers & Agricultural Chemicals','Materials'),('Financial Exchanges & Data','Financials'),('Food Distributors','Consumer Staples'),('Food Retail','Consumer Staples'),('Gas Utilities','Utilities'),('General Merchandise Stores','Consumer Discretionary'),('Gold','Materials'),('Health Care Distributors','Health Care'),('Health Care Equipment','Health Care'),('Health Care Facilities','Health Care'),('Health Care REITs','Real Estate'),('Health Care Services','Health Care'),('Health Care Supplies','Health Care'),('Home Furnishings','Consumer Discretionary'),('Home Improvement Retail','Consumer Discretionary'),('Homebuilding','Consumer Discretionary'),('Hotel & Resort REITs','Real Estate'),('Hotels, Resorts & Cruise Lines','Consumer Discretionary'),('Household Appliances','Consumer Discretionary'),('Household Products','Consumer Staples'),('Housewares & Specialties','Consumer Discretionary'),('Human Resource & Employment Services','Industrials'),('Hypermarkets & Super Centers','Consumer Staples'),('Independent Power Producers & Energy Traders','Utilities'),('Industrial Conglomerates','Industrials'),('Industrial Gases','Materials'),('Industrial Machinery','Industrials'),('Industrial REITs','Real Estate'),('Insurance Brokers','Financials'),('Integrated Oil & Gas','Energy'),('Integrated Telecommunication Services','Communication Services'),('Interactive Home Entertainment','Communication Services'),('Interactive Media & Services','Communication Services'),('Internet & Direct Marketing Retail','Consumer Discretionary'),('Internet Services & Infrastructure','Information Technology'),('Investment Banking & Brokerage','Financials'),('IT Consulting & Other Services','Information Technology'),('Leisure Products','Consumer Discretionary'),('Life & Health Insurance','Financials'),('Life Sciences Tools & Services','Health Care'),('Managed Health Care','Health Care'),('Metal & Glass Containers','Materials'),('Movies & Entertainment','Communication Services'),('Multi-line Insurance','Financials'),('Multi-Sector Holdings','Financials'),('Multi-Utilities','Utilities'),('Office REITs','Real Estate'),('Oil & Gas Equipment & Services','Energy'),('Oil & Gas Exploration & Production','Energy'),('Oil & Gas Refining & Marketing','Energy'),('Oil & Gas Storage & Transportation','Energy'),('Packaged Foods & Meats','Consumer Staples'),('Paper Packaging','Materials'),('Personal Products','Consumer Staples'),('Pharmaceuticals','Health Care'),('Property & Casualty Insurance','Financials'),('Publishing','Communication Services'),('Railroads','Industrials'),('Real Estate Services','Real Estate'),('Regional Banks','Financials'),('Reinsurance','Financials'),('Research & Consulting Services','Industrials'),('Residential REITs','Real Estate'),('Restaurants','Consumer Discretionary'),('Retail REITs','Real Estate'),('Semiconductor Equipment','Information Technology'),('Semiconductors','Information Technology'),('Soft Drinks','Consumer Staples'),('Specialized REITs','Real Estate'),('Specialty Chemicals','Materials'),('Specialty Stores','Consumer Discretionary'),('Steel','Materials'),('Systems Software','Information Technology'),('Technology Distributors','Information Technology'),('Technology Hardware, Storage & Peripherals','Information Technology'),('Tobacco','Consumer Staples'),('Trading Companies & Distributors','Industrials'),('Trucking','Industrials'),('Water Utilities','Utilities'),('Wireless Telecommunication Services','Communication Services');
/*!40000 ALTER TABLE `ticker_industry` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-13 15:36:11
