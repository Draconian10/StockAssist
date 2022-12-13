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
-- Table structure for table `master_twitter_directory`
--

DROP TABLE IF EXISTS `master_twitter_directory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `master_twitter_directory` (
  `tbl_id` bigint NOT NULL,
  `tbl_twitter_handle` varchar(100) DEFAULT NULL,
  `tbl_name` varchar(255) DEFAULT NULL,
  `tbl_profile_pic_url` varchar(255) DEFAULT NULL,
  `tbl_desc` varchar(255) DEFAULT NULL,
  `tbl_followers` int DEFAULT NULL,
  `tbl_following` int DEFAULT NULL,
  `tbl_user_created_at` datetime DEFAULT NULL,
  `tbl_text` varchar(255) DEFAULT NULL,
  `tbl_tags` varchar(255) DEFAULT NULL,
  `tbl_tweet_time` datetime DEFAULT NULL,
  `tbl_mentions` varchar(255) DEFAULT NULL,
  `tbl_retweet_count` int DEFAULT NULL,
  PRIMARY KEY (`tbl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `master_twitter_directory`
--

LOCK TABLES `master_twitter_directory` WRITE;
/*!40000 ALTER TABLE `master_twitter_directory` DISABLE KEYS */;
INSERT INTO `master_twitter_directory` VALUES (1597954440899661824,'StocksAfterDark','StocksAfterDark','http://pbs.twimg.com/profile_images/1511140463386013698/cn1IlzLK_normal.jpg','Hybrid trader. All ideas are my opinions & NOT financial advice. I am NOT an alert service. You’re responsible for your own actions. \"The Power of One.”',985,7,'2022-03-23 19:44:03','$SPY #SPY $MSFT #MSFT $AAPL #AAPL $AMZN #AMZN $QQQ #QQQ GamePlan https://t.co/E3gfWUDBxO','stocks,finance,quote,SPY,MSFT,AAPL,AMZN,QQQ,SPY,MSFT,AAPL,AMZN,QQQ,SPY,MSFT,AAPL,AMZN,QQQ','2022-11-30 14:03:21','POTUS,StocksAfterDark',1),(1597955933631819776,'Yeahsowhat2','The Constitution Matters','http://pbs.twimg.com/profile_images/906878100272644099/FORW_FHj_normal.jpg','',77,213,'2017-09-10 03:52:10','RT @StocksAfterDark: $SPY #SPY $MSFT #MSFT $AAPL #AAPL $AMZN #AMZN $QQQ #QQQ GamePlan https://t.co/E3gfWUDBxO','stocks,finance,quote,SPY,MSFT,AAPL,AMZN,QQQ,SPY,MSFT,AAPL,AMZN,QQQ','2022-11-30 14:09:17','POTUS,StocksAfterDark',1),(1597993184810110978,'StocksAfterDark','StocksAfterDark','http://pbs.twimg.com/profile_images/1511140463386013698/cn1IlzLK_normal.jpg','Hybrid trader. All ideas are my opinions & NOT financial advice. I am NOT an alert service. You’re responsible for your own actions. \"The Power of One.”',985,7,'2022-03-23 19:44:03','Jerome Powell Strategy $SPY #SPY $MSFT #MSFT $AAPL #AAPL $AMZN #AMZN $QQQ #QQQ https://t.co/nYIblXv5cY','stocks,finance,quote,SPY,MSFT,AAPL,AMZN,QQQ','2022-11-30 16:37:19','POTUS',0),(1597999022828290048,'mrscrypto411','Venus Trades','http://pbs.twimg.com/profile_images/1594420380348751872/9FcN1LJA_normal.jpg','CHARTS with a MACRO perspective | Entrepreneur - Real Estate/Designer/Fashion | Clairsentient | Balancer of Chaos ♥️ Boy Mom |',448,213,'2011-03-08 05:22:22','Jerome Powell speeches are 100x more influential then @POTUS speeches. \n\nSo much power this 1 man holds. \n\n#stocks https://t.co/Hy0nBGsrX5','stocks','2022-11-30 17:00:31','POTUS',0),(1598000196226531329,'MACFinancial','MAC Financial','http://pbs.twimg.com/profile_images/575606315675873280/FbXUwQEK_normal.jpeg','Independent Financial Advisers. Helping you achieve your financial goals. Free initial consultation visit our website below.',6702,7372,'2012-10-18 12:28:29','Like or RT: It\'s about time to see your financial situation in a clear light. #finance #quote https://t.co/KjLmHgsBaN','stocks,finance,quote','2022-11-30 17:05:10','POTUS',0),(1599102073210949633,'Draggen75','dandillion','http://pbs.twimg.com/profile_images/1369873126809538565/83BPbHq6_normal.jpg','Happily married 4 great kids. Proud Navy Dad. Conservative Independent, I support our Constitution as was intended by our founding fathers. #MAGA',1403,4980,'2016-02-08 00:05:49','RT @TheCryptoLark: Amazon lost  ONE TRILLION dollars ?\n\n#amazon #stockmarket #stocks #crypto #volatility https://t.co/TquyOWpbRs','amazon,stockmarket,stocks,crypto,volatility,NSE,SGX,StockMarket,amazon,stockmarket,stocks,crypto,volatility,amazon,stockmarket,stocks,crypto,volatility,amazon,stockmarket,stocks,crypto,volatility,amazon,stockmarket,stocks,crypto,volatility','2022-12-03 18:03:38','TheCryptoLark,TheCryptoLark,TheCryptoLark,TheCryptoLark',6),(1599102212789018624,'Sjoerd_Kersten','Sjoerd','http://pbs.twimg.com/profile_images/1553761961933955074/i4Zap71l_normal.jpg','The universe always provides.\nYou get what you need, but don\'t always need what you get.',52,163,'2017-06-30 11:50:15','RT @TheCryptoLark: Amazon lost  ONE TRILLION dollars ?\n\n#amazon #stockmarket #stocks #crypto #volatility https://t.co/TquyOWpbRs','amazon,stockmarket,stocks,crypto,volatility,NSE,SGX,StockMarket,amazon,stockmarket,stocks,crypto,volatility,amazon,stockmarket,stocks,crypto,volatility,amazon,stockmarket,stocks,crypto,volatility','2022-12-03 18:04:12','TheCryptoLark,TheCryptoLark,TheCryptoLark',6),(1599102268074168320,'MandyZ129','Mandy','http://pbs.twimg.com/profile_images/1597908651758452737/X1rSz9N6_normal.jpg','The greatest glory in living lies not in never falling, but in rising every time we fall.',61,66,'2022-10-10 15:30:53','RT @TheCryptoLark: Amazon lost  ONE TRILLION dollars ?\n\n#amazon #stockmarket #stocks #crypto #volatility https://t.co/TquyOWpbRs','amazon,stockmarket,stocks,crypto,volatility,NSE,SGX,StockMarket,amazon,stockmarket,stocks,crypto,volatility,amazon,stockmarket,stocks,crypto,volatility','2022-12-03 18:04:25','TheCryptoLark,TheCryptoLark',6),(1599102633565859840,'GarryTakha','Garry Takha','http://pbs.twimg.com/profile_images/1590116340114792448/wmtlsFyj_normal.jpg','crypto, stocks',178,789,'2021-12-20 22:36:37','RT @TheCryptoLark: Amazon lost  ONE TRILLION dollars ?\n\n#amazon #stockmarket #stocks #crypto #volatility https://t.co/TquyOWpbRs','amazon,stockmarket,stocks,crypto,volatility,NSE,SGX,StockMarket,amazon,stockmarket,stocks,crypto,volatility','2022-12-03 18:05:52','TheCryptoLark',6),(1599102918548160512,'streetgeniuss','Aditya Jadhav','http://pbs.twimg.com/profile_images/1582002786421866497/8pfnsR0c_normal.jpg','I bring value to the table in terms of Personal Finance, Financial Markets and other Dope Stuff | Hip-Hop | Love and Respect❤️',56,164,'2020-08-30 16:05:04','\"Wisdom with Warren\"\nLetters to Shareholders for Year 1982\n#NSE #SGX #StockMarket https://t.co/2EVMEoDVxO','amazon,stockmarket,stocks,crypto,volatility,NSE,SGX,StockMarket','2022-12-03 18:07:00','',0),(1599106117480628225,'JamiesMcmolly','Jamies McMolly','http://pbs.twimg.com/profile_images/1484594370141696003/_ZAZRNuX_normal.jpg','The goal is to accumulate more Bitcoin. Trade #Bitcoin and #HODL profit from the next bull market',860,37,'2022-01-21 18:26:47','Amazon lost  ONE TRILLION dollars ?\n\n#amazon #stockmarket #stocks #crypto #volatility https://t.co/BDNY7SwVhU','amazon,stockmarket,stocks,crypto,volatility','2022-12-03 18:19:43','',0),(1600589500320600064,'TheNext5Move','TheNextMove','http://pbs.twimg.com/profile_images/1436337735762001921/BELZoTgS_normal.jpg','#TheNext5Move #WhatisYourNextMove\n\nPowered by  Slogantagsz Digital Assets Creator.',431,3867,'2020-01-18 10:30:34','#StockMarket \n#stocks \n#ChoppySessions Ahead\n#USA #India #UK \n#UkraineRussianWar impacts #World  economy. https://t.co/NsUMSU67FR','nifty,niftybank,stockmarket,futures,options,lahoredapawa,StockMarket,Islamabad,IndianCricketTeam,StockMarket,stocks,ChoppySessions,USA,India,UK,UkraineRussianWar,World','2022-12-07 20:34:09','MahamAneelaN',0),(1600589925363105799,'KaramRasheed6','Karam Rasheed','http://pbs.twimg.com/profile_images/1585964985792036866/y1fpWRJO_normal.jpg','',87,258,'2021-10-06 08:30:37','RT @MahamAneelaN: Dirty Harry #lahoredapawa India by 5 #StockMarket #Islamabad Mir Hamza #IndianCricketTeam https://t.co/R2DOJsWR1M','nifty,niftybank,stockmarket,futures,options,lahoredapawa,StockMarket,Islamabad,IndianCricketTeam','2022-12-07 20:35:50','MahamAneelaN',5),(1600589930496815104,'batraanu','Anu','http://pbs.twimg.com/profile_images/1576512030038667265/CnytGZb__normal.jpg','Chartered Accountant || Investor || Stock market enthusiast and learner || Elliott waves',35,193,'2012-07-26 17:33:57','Nifty probable EW analysis based on price action today:\n#nifty #niftybank #stockmarket #futures #options https://t.co/d8QGMpkrxZ','nifty,niftybank,stockmarket,futures,options','2022-12-07 20:35:51','',0),(1600591193477419024,'CryptoBcl','-\\-','http://pbs.twimg.com/profile_images/1381575871883010055/UP-UkhMg_normal.jpg','#Crypto #stocks #politics 2016?? Independent.',3478,876,'2020-04-15 06:57:33','#MoneyLaundering #BankFraud ? $SI SURE LOOKS THAT WAY…. Toast ?#Stocks $MSTR $COIN https://t.co/jN6UBdBTu3… https://t.co/7rDPO1IApS','nifty,niftybank,stockmarket,futures,options,lahoredapawa,StockMarket,Islamabad,IndianCricketTeam,StockMarket,stocks,ChoppySessions,USA,India,UK,UkraineRussianWar,World,MoneyLaundering,BankFraud','2022-12-07 20:40:52','MahamAneelaN',0);
/*!40000 ALTER TABLE `master_twitter_directory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-13 15:36:13
