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
-- Table structure for table `company_location`
--

DROP TABLE IF EXISTS `company_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `company_location` (
  `cl_city` varchar(100) NOT NULL,
  `cl_state` varchar(2) NOT NULL,
  PRIMARY KEY (`cl_city`,`cl_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_location`
--

LOCK TABLES `company_location` WRITE;
/*!40000 ALTER TABLE `company_location` DISABLE KEYS */;
INSERT INTO `company_location` VALUES ('Akron','OH'),('Allentown','PA'),('Ann Arbor','MI'),('Arlington','TX'),('Arlington','VA'),('Armonk','NY'),('Ashburn','VA'),('Atlanta','GA'),('Auburn Hills','MI'),('Austin','MN'),('Austin','TX'),('Baltimore','MD'),('Battle Creek','MI'),('Beaverton','OR'),('Bellevue','WA'),('Benton Harbor','MI'),('Bentonville','AR'),('Berwyn','PA'),('Bethesda','MD'),('Beverly Hills','CA'),('Birmingham','AL'),('Bloomfield','CT'),('Boca Raton','FL'),('Boise','ID'),('Bolingbrook','IL'),('Boston','MA'),('Brentwood','TN'),('Brooklyn','NY'),('Buffalo','NY'),('Burlington','MA'),('Burlington','NC'),('Calhoun','GA'),('Cambridge','MA'),('Camden','NJ'),('Canonsburg','PA'),('Chandler','AZ'),('Charlotte','NC'),('Chesapeake','VA'),('Chicago','IL'),('Cincinnati','OH'),('Cleveland','OH'),('Columbus','GA'),('Columbus','IN'),('Columbus','OH'),('Conshohocken','PA'),('Corning','NY'),('Covington','LA'),('Cupertino','CA'),('Dallas','TX'),('Danvers','MA'),('Davidson','NC'),('Daytona Beach','FL'),('Dearborn','MI'),('Deerfield','IL'),('Denver','CO'),('Des Moines','IA'),('Detroit','MI'),('Downers Grove','IL'),('Dublin','CA'),('Dublin','OH'),('Durham','NC'),('Eden Prairie','MN'),('Englewood','CO'),('Everett','WA'),('Ewing','NJ'),('Exton','PA'),('Fairfield','OH'),('Fort Worth','TX'),('Foster City','CA'),('Framingham','MA'),('Franklin Lakes','NJ'),('Fremont','CA'),('Germantown','TN'),('Glendale','CA'),('Glenview','IL'),('Goodlettsville','TN'),('Greensboro','NC'),('Greenwich','CT'),('Hartford','CT'),('Hercules','CA'),('Hershey','PA'),('Highlands Ranch','CO'),('Houston','TX'),('Hunt Valley','MD'),('Indianapolis','IN'),('Irvine','CA'),('Irving','TX'),('Issaquah','WA'),('Jackson','MI'),('Jacksonville','FL'),('Jericho','NY'),('Jersey City','NJ'),('Kalamazoo','MI'),('Kansas City','MO'),('Kenilworth','NJ'),('Kenosha','WI'),('King of Prussia','PA'),('Kingsport','TN'),('Kirkland','WA'),('Lake Forest','IL'),('Lake Success','NY'),('Las Vegas','NV'),('Lincolnshire','IL'),('Livonia','MI'),('Long Beach','CA'),('Los Gatos','CA'),('Louisville','KY'),('Lowell','AR'),('Madison','WI'),('Marlborough','MA'),('Mayfield','OH'),('McKinney','TX'),('McLean','VA'),('Melville','NY'),('Memphis','TN'),('Menlo Park','CA'),('Mentor','OH'),('Merrillville','IN'),('Miami','FL'),('Midland','MI'),('Midland','TX'),('Milford','MA'),('Milwaukee','WI'),('Minneapolis','MN'),('Minnetonka','MN'),('Monett','MO'),('Mountain View','CA'),('Nashville','TN'),('New Britain','CT'),('New Brunswick','NJ'),('New Orleans','LA'),('New York','NY'),('Newark','NJ'),('Newport Beach','CA'),('Newport News','VA'),('Newtown','PA'),('North Bethesda','MD'),('North Chicago','IL'),('North Reading','MA'),('Northbrook','IL'),('Norwalk','CT'),('Oakland','CA'),('Oklahoma City','OK'),('Omaha','NE'),('Orlando','FL'),('Orrville','OH'),('Parsippany','NJ'),('Pasadena','CA'),('Pawtucket','RI'),('Philadelphia','PA'),('Phoenix','AZ'),('Pittsburgh','PA'),('Plano','TX'),('Providence','RI'),('Purchase','NY'),('Radnor','PA'),('Raleigh','NC'),('Redmond','WA'),('Redwood City','CA'),('Reno','NV'),('Reston','VA'),('Richfield','MN'),('Richmond','VA'),('Riverwoods','IL'),('Rochester','NY'),('Rolling Meadows','IL'),('Roseland','NJ'),('Rosemead','CA'),('Rye Brook','NY'),('Saint Louis','MO'),('Saint Paul','MN'),('Saint Petersburg','FL'),('Salt Lake City','UT'),('San Antonio','TX'),('San Diego','CA'),('San Francisco','CA'),('San Jose','CA'),('San Mateo','CA'),('San Rafael','CA'),('San Ramon','CA'),('Santa Clara','CA'),('Santa Monica','CA'),('Sarasota','FL'),('Seattle','WA'),('Secaucus','NJ'),('Somerset','NJ'),('Springdale','AR'),('Springfield','MA'),('Springfield','MO'),('Stamford','CT'),('Sunnyvale','CA'),('Tarrytown','NY'),('Teaneck','NJ'),('Tempe','AZ'),('Thomasville','NC'),('Thousand Oaks','CA'),('Toledo','OH'),('Tulsa','OK'),('Vernon Hills','IL'),('Victor','NY'),('Wallingford','CT'),('Waltham','MA'),('Warsaw','IN'),('Washington','DC'),('Waukesha','WI'),('Westbrook','ME'),('Westlake','TX'),('Westminster','CO'),('Wilmington','DE'),('Wilmington','MA'),('Winona','MN'),('Woonsocket','RI');
/*!40000 ALTER TABLE `company_location` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-13 15:36:12
