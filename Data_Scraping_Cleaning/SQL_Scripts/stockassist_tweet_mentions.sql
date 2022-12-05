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
-- Table structure for table `tweet_mentions`
--

DROP TABLE IF EXISTS `tweet_mentions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tweet_mentions` (
  `twm_id` int NOT NULL AUTO_INCREMENT,
  `twm_tweet_id` bigint NOT NULL,
  `twm_source_user` varchar(100) DEFAULT NULL,
  `twm_target_user` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`twm_id`),
  KEY `Tweet_Mentions_fk1` (`twm_tweet_id`),
  CONSTRAINT `Tweet_Mentions_fk1` FOREIGN KEY (`twm_tweet_id`) REFERENCES `tweets` (`twe_tweet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=949 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweet_mentions`
--

INSERT INTO `tweet_mentions` VALUES (808,1597999022828290048,'mrscrypto411','POTUS'),(809,1598000196226531329,'MACFinancial','POTUS'),(810,1597993184810110978,'StocksAfterDark','POTUS'),(811,1597955933631819776,'Yeahsowhat2','POTUS'),(812,1597955933631819776,'Yeahsowhat2','StocksAfterDark'),(813,1597954440899661824,'StocksAfterDark','POTUS'),(814,1597954440899661824,'StocksAfterDark','StocksAfterDark'),(815,1597993184810110978,'StocksAfterDark','POTUS'),(816,1597993184810110978,'StocksAfterDark','StocksAfterDark'),(817,1597955933631819776,'Yeahsowhat2','POTUS'),(818,1597955933631819776,'Yeahsowhat2','StocksAfterDark'),(819,1597955933631819776,'Yeahsowhat2','StocksAfterDark'),(820,1597954440899661824,'StocksAfterDark','POTUS'),(821,1597954440899661824,'StocksAfterDark','StocksAfterDark'),(822,1597954440899661824,'StocksAfterDark','StocksAfterDark'),(823,1599102633565859840,'GarryTakha','TheCryptoLark'),(824,1599102268074168320,'MandyZ129','TheCryptoLark'),(825,1599102268074168320,'MandyZ129','TheCryptoLark'),(826,1599102212789018624,'Sjoerd_Kersten','TheCryptoLark'),(827,1599102212789018624,'Sjoerd_Kersten','TheCryptoLark'),(828,1599102212789018624,'Sjoerd_Kersten','TheCryptoLark'),(829,1599102073210949633,'Draggen75','TheCryptoLark'),(830,1599102073210949633,'Draggen75','TheCryptoLark'),(831,1599102073210949633,'Draggen75','TheCryptoLark'),(832,1599102073210949633,'Draggen75','TheCryptoLark'),(833,1599101622520778753,'pentossh','TheCryptoLark'),(834,1599101622520778753,'pentossh','TheCryptoLark'),(835,1599101622520778753,'pentossh','TheCryptoLark'),(836,1599101622520778753,'pentossh','TheCryptoLark'),(837,1599101622520778753,'pentossh','TheCryptoLark'),(838,1599101328659451904,'qouteweebz','TheCryptoLark'),(839,1599101328659451904,'qouteweebz','TheCryptoLark'),(840,1599101328659451904,'qouteweebz','TheCryptoLark'),(841,1599101328659451904,'qouteweebz','TheCryptoLark'),(842,1599101328659451904,'qouteweebz','TheCryptoLark'),(843,1599101328659451904,'qouteweebz','Grewal988'),(844,1599101258379444230,'TheCryptoLark','TheCryptoLark'),(845,1599101258379444230,'TheCryptoLark','TheCryptoLark'),(846,1599101258379444230,'TheCryptoLark','TheCryptoLark'),(847,1599101258379444230,'TheCryptoLark','TheCryptoLark'),(848,1599101258379444230,'TheCryptoLark','TheCryptoLark'),(849,1599101258379444230,'TheCryptoLark','Grewal988'),(850,1599106117480628225,'JamiesMcmolly','TheCryptoLark'),(851,1599106117480628225,'JamiesMcmolly','TheCryptoLark'),(852,1599106117480628225,'JamiesMcmolly','TheCryptoLark'),(853,1599106117480628225,'JamiesMcmolly','TheCryptoLark'),(854,1599106117480628225,'JamiesMcmolly','TheCryptoLark'),(855,1599106117480628225,'JamiesMcmolly','Grewal988'),(856,1599104779287937026,'angiepentinev','TheCryptoLark'),(857,1599104779287937026,'angiepentinev','TheCryptoLark'),(858,1599104779287937026,'angiepentinev','TheCryptoLark'),(859,1599104779287937026,'angiepentinev','TheCryptoLark'),(860,1599104779287937026,'angiepentinev','TheCryptoLark'),(861,1599104779287937026,'angiepentinev','Grewal988'),(862,1599104438001487872,'Mac_Sempai','TheCryptoLark'),(863,1599104438001487872,'Mac_Sempai','TheCryptoLark'),(864,1599104438001487872,'Mac_Sempai','TheCryptoLark'),(865,1599104438001487872,'Mac_Sempai','TheCryptoLark'),(866,1599104438001487872,'Mac_Sempai','TheCryptoLark'),(867,1599104438001487872,'Mac_Sempai','Grewal988'),(868,1599104438001487872,'Mac_Sempai','workswithjames'),(869,1599103206562332672,'natlawreview','TheCryptoLark'),(870,1599103206562332672,'natlawreview','TheCryptoLark'),(871,1599103206562332672,'natlawreview','TheCryptoLark'),(872,1599103206562332672,'natlawreview','TheCryptoLark'),(873,1599103206562332672,'natlawreview','TheCryptoLark'),(874,1599103206562332672,'natlawreview','Grewal988'),(875,1599103206562332672,'natlawreview','workswithjames'),(876,1599103206562332672,'natlawreview','JeremyNobile'),(877,1599093648964325376,'StocksAfterDark','TheCryptoLark'),(878,1599093648964325376,'StocksAfterDark','TheCryptoLark'),(879,1599093648964325376,'StocksAfterDark','TheCryptoLark'),(880,1599093648964325376,'StocksAfterDark','TheCryptoLark'),(881,1599093648964325376,'StocksAfterDark','TheCryptoLark'),(882,1599093648964325376,'StocksAfterDark','Grewal988'),(883,1599093648964325376,'StocksAfterDark','workswithjames'),(884,1599093648964325376,'StocksAfterDark','JeremyNobile'),(885,1599077655705317376,'ES_SPY_SPX','TheCryptoLark'),(886,1599077655705317376,'ES_SPY_SPX','TheCryptoLark'),(887,1599077655705317376,'ES_SPY_SPX','TheCryptoLark'),(888,1599077655705317376,'ES_SPY_SPX','TheCryptoLark'),(889,1599077655705317376,'ES_SPY_SPX','TheCryptoLark'),(890,1599077655705317376,'ES_SPY_SPX','Grewal988'),(891,1599077655705317376,'ES_SPY_SPX','workswithjames'),(892,1599077655705317376,'ES_SPY_SPX','JeremyNobile'),(893,1599077403581566976,'ES_SPY_SPX','TheCryptoLark'),(894,1599077403581566976,'ES_SPY_SPX','TheCryptoLark'),(895,1599077403581566976,'ES_SPY_SPX','TheCryptoLark'),(896,1599077403581566976,'ES_SPY_SPX','TheCryptoLark'),(897,1599077403581566976,'ES_SPY_SPX','TheCryptoLark'),(898,1599077403581566976,'ES_SPY_SPX','Grewal988'),(899,1599077403581566976,'ES_SPY_SPX','workswithjames'),(900,1599077403581566976,'ES_SPY_SPX','JeremyNobile'),(901,1599045072213118978,'akalenny39','TheCryptoLark'),(902,1599045072213118978,'akalenny39','TheCryptoLark'),(903,1599045072213118978,'akalenny39','TheCryptoLark'),(904,1599045072213118978,'akalenny39','TheCryptoLark'),(905,1599045072213118978,'akalenny39','TheCryptoLark'),(906,1599045072213118978,'akalenny39','Grewal988'),(907,1599045072213118978,'akalenny39','workswithjames'),(908,1599045072213118978,'akalenny39','JeremyNobile'),(909,1598957030617776129,'ktwj_fx','TheCryptoLark'),(910,1598957030617776129,'ktwj_fx','TheCryptoLark'),(911,1598957030617776129,'ktwj_fx','TheCryptoLark'),(912,1598957030617776129,'ktwj_fx','TheCryptoLark'),(913,1598957030617776129,'ktwj_fx','TheCryptoLark'),(914,1598957030617776129,'ktwj_fx','Grewal988'),(915,1598957030617776129,'ktwj_fx','workswithjames'),(916,1598957030617776129,'ktwj_fx','JeremyNobile'),(917,1599093648964325376,'StocksAfterDark','TheCryptoLark'),(918,1599093648964325376,'StocksAfterDark','TheCryptoLark'),(919,1599093648964325376,'StocksAfterDark','TheCryptoLark'),(920,1599093648964325376,'StocksAfterDark','TheCryptoLark'),(921,1599093648964325376,'StocksAfterDark','TheCryptoLark'),(922,1599093648964325376,'StocksAfterDark','Grewal988'),(923,1599093648964325376,'StocksAfterDark','workswithjames'),(924,1599093648964325376,'StocksAfterDark','JeremyNobile'),(925,1598712048640221185,'PhlipYearB','TheCryptoLark'),(926,1598712048640221185,'PhlipYearB','TheCryptoLark'),(927,1598712048640221185,'PhlipYearB','TheCryptoLark'),(928,1598712048640221185,'PhlipYearB','TheCryptoLark'),(929,1598712048640221185,'PhlipYearB','TheCryptoLark'),(930,1598712048640221185,'PhlipYearB','Grewal988'),(931,1598712048640221185,'PhlipYearB','workswithjames'),(932,1598712048640221185,'PhlipYearB','JeremyNobile'),(933,1598676558943846407,'StocksAfterDark','TheCryptoLark'),(934,1598676558943846407,'StocksAfterDark','TheCryptoLark'),(935,1598676558943846407,'StocksAfterDark','TheCryptoLark'),(936,1598676558943846407,'StocksAfterDark','TheCryptoLark'),(937,1598676558943846407,'StocksAfterDark','TheCryptoLark'),(938,1598676558943846407,'StocksAfterDark','Grewal988'),(939,1598676558943846407,'StocksAfterDark','workswithjames'),(940,1598676558943846407,'StocksAfterDark','JeremyNobile'),(941,1598526278440669184,'StocksAfterDark','TheCryptoLark'),(942,1598526278440669184,'StocksAfterDark','TheCryptoLark'),(943,1598526278440669184,'StocksAfterDark','TheCryptoLark'),(944,1598526278440669184,'StocksAfterDark','TheCryptoLark'),(945,1598526278440669184,'StocksAfterDark','TheCryptoLark'),(946,1598526278440669184,'StocksAfterDark','Grewal988'),(947,1598526278440669184,'StocksAfterDark','workswithjames'),(948,1598526278440669184,'StocksAfterDark','JeremyNobile');
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
