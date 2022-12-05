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
-- Table structure for table `tweets`
--

DROP TABLE IF EXISTS `tweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tweets` (
  `twe_tweet_id` bigint NOT NULL,
  `twe_twitter_handle` varchar(100) DEFAULT NULL,
  `twe_tweet_text` varchar(255) DEFAULT NULL,
  `twe_profile_image_url` varchar(200) DEFAULT NULL,
  `twe_created_at` datetime DEFAULT NULL,
  `twe_retweet_count` int DEFAULT NULL,
  PRIMARY KEY (`twe_tweet_id`),
  KEY `Tweets_fk1` (`twe_twitter_handle`),
  CONSTRAINT `Tweets_fk1` FOREIGN KEY (`twe_twitter_handle`) REFERENCES `user` (`usr_twitter_handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweets`
--

INSERT INTO `tweets` VALUES (1597954440899661824,'StocksAfterDark','$SPY #SPY $MSFT #MSFT $AAPL #AAPL $AMZN #AMZN $QQQ #QQQ GamePlan https://t.co/E3gfWUDBxO','http://pbs.twimg.com/profile_images/1511140463386013698/cn1IlzLK_normal.jpg','2022-11-30 14:03:21',1),(1597955933631819776,'Yeahsowhat2','RT @StocksAfterDark: $SPY #SPY $MSFT #MSFT $AAPL #AAPL $AMZN #AMZN $QQQ #QQQ GamePlan https://t.co/E3gfWUDBxO','http://pbs.twimg.com/profile_images/906878100272644099/FORW_FHj_normal.jpg','2022-11-30 14:09:17',1),(1597993184810110978,'StocksAfterDark','Jerome Powell Strategy $SPY #SPY $MSFT #MSFT $AAPL #AAPL $AMZN #AMZN $QQQ #QQQ https://t.co/nYIblXv5cY','http://pbs.twimg.com/profile_images/1511140463386013698/cn1IlzLK_normal.jpg','2022-11-30 16:37:19',0),(1597999022828290048,'mrscrypto411','Jerome Powell speeches are 100x more influential then @POTUS speeches. \n\nSo much power this 1 man holds. \n\n#stocks https://t.co/Hy0nBGsrX5','http://pbs.twimg.com/profile_images/1594420380348751872/9FcN1LJA_normal.jpg','2022-11-30 17:00:31',0),(1598000196226531329,'MACFinancial','Like or RT: It\'s about time to see your financial situation in a clear light. #finance #quote https://t.co/KjLmHgsBaN','http://pbs.twimg.com/profile_images/575606315675873280/FbXUwQEK_normal.jpeg','2022-11-30 17:05:10',0),(1598526278440669184,'StocksAfterDark','$SPY #SPY $MSFT #MSFT $AAPL #AAPL $AMZN #AMZN $QQQ #QQQ Market Overview https://t.co/uBWOcM7VRr','http://pbs.twimg.com/profile_images/1511140463386013698/cn1IlzLK_normal.jpg','2022-12-02 03:55:38',0),(1598676558943846407,'StocksAfterDark','Game Plan $SPY #SPY $MSFT #MSFT $AAPL #AAPL $AMZN #AMZN $QQQ #QQQ https://t.co/gWGOp61wyo','http://pbs.twimg.com/profile_images/1511140463386013698/cn1IlzLK_normal.jpg','2022-12-02 13:52:48',0),(1598712048640221185,'PhlipYearB','Just my TA view on CryptoSavy\'s #AMZN and #BTC \nNFA‼️‼️\nDare to be different\nI could be wrong 100 percent ?‍♂️ https://t.co/vYa6jlI8uR','http://pbs.twimg.com/profile_images/1598751622297161733/jVHygzKA_normal.jpg','2022-12-02 16:13:49',0),(1598957030617776129,'ktwj_fx','After\n\n#AAPL\n\nPrice bouncing off bullish POI at 141.43. https://t.co/VIXBumRVPu','http://pbs.twimg.com/profile_images/1436926181836685321/FX-0xWzn_normal.jpg','2022-12-03 08:27:17',0),(1599045072213118978,'akalenny39','Not a bad month! #AMC $APE #AAPL #twitterfiles #Competition #vegan I love going to the movies. #love $amc https://t.co/7Z8bQ3ORdH','http://pbs.twimg.com/profile_images/1587684011874299904/yFIgkeUP_normal.jpg','2022-12-03 14:17:08',2),(1599077403581566976,'ES_SPY_SPX','$QQQ\n\nDaily\n\nStill below SMA 200\n\n#ES_F #SPY #SPX\n$ES_F $SPY $SPX\n#QQQ #AAPL #TSLA https://t.co/HLALzzjKK1','http://pbs.twimg.com/profile_images/1558873503373430786/IU7UY_6w_normal.jpg','2022-12-03 16:25:37',0),(1599077655705317376,'ES_SPY_SPX','$IWM\n\nClosed above SMA 200\n\n#ES_F #SPY #SPX\n$ES_F $SPY $SPX\n#QQQ #AAPL #TSLA\n#DJI #IWM https://t.co/XZ39P4Ku6x','http://pbs.twimg.com/profile_images/1558873503373430786/IU7UY_6w_normal.jpg','2022-12-03 16:26:37',0),(1599093648964325376,'StocksAfterDark','Game Plan Strategies / Levels / SAD Pivot OH MY! $SPY #SPY $MSFT #MSFT $AAPL #AAPL $AMZN #AMZN $QQQ #QQQ https://t.co/Pkkti0LWXW','http://pbs.twimg.com/profile_images/1511140463386013698/cn1IlzLK_normal.jpg','2022-12-03 17:30:10',1),(1599101258379444230,'TheCryptoLark','Amazon lost  ONE TRILLION dollars ?\n\n#amazon #stockmarket #stocks #crypto #volatility https://t.co/TquyOWpbRs','http://pbs.twimg.com/profile_images/1482889740223680514/jWHeNCpH_normal.png','2022-12-03 18:00:24',6),(1599101328659451904,'qouteweebz','RT @Grewal988: #NiftyBank and #nifty50 and #StockMarket and #stocks aise chale toh maza ajaye???? Gear✅✅ https://t.co/SKRAJ8hbJE','http://pbs.twimg.com/profile_images/1559976847009804288/Pnu1yDqo_normal.jpg','2022-12-03 18:00:41',11),(1599101622520778753,'pentossh','RT @TheCryptoLark: Amazon lost  ONE TRILLION dollars ?\n\n#amazon #stockmarket #stocks #crypto #volatility https://t.co/TquyOWpbRs','http://pbs.twimg.com/profile_images/1569717401570123778/r5hUArQC_normal.jpg','2022-12-03 18:01:51',6),(1599102073210949633,'Draggen75','RT @TheCryptoLark: Amazon lost  ONE TRILLION dollars ?\n\n#amazon #stockmarket #stocks #crypto #volatility https://t.co/TquyOWpbRs','http://pbs.twimg.com/profile_images/1369873126809538565/83BPbHq6_normal.jpg','2022-12-03 18:03:38',6),(1599102212789018624,'Sjoerd_Kersten','RT @TheCryptoLark: Amazon lost  ONE TRILLION dollars ?\n\n#amazon #stockmarket #stocks #crypto #volatility https://t.co/TquyOWpbRs','http://pbs.twimg.com/profile_images/1553761961933955074/i4Zap71l_normal.jpg','2022-12-03 18:04:12',6),(1599102268074168320,'MandyZ129','RT @TheCryptoLark: Amazon lost  ONE TRILLION dollars ?\n\n#amazon #stockmarket #stocks #crypto #volatility https://t.co/TquyOWpbRs','http://pbs.twimg.com/profile_images/1597908651758452737/X1rSz9N6_normal.jpg','2022-12-03 18:04:25',6),(1599102633565859840,'GarryTakha','RT @TheCryptoLark: Amazon lost  ONE TRILLION dollars ?\n\n#amazon #stockmarket #stocks #crypto #volatility https://t.co/TquyOWpbRs','http://pbs.twimg.com/profile_images/1590116340114792448/wmtlsFyj_normal.jpg','2022-12-03 18:05:52',6),(1599102918548160512,'streetgeniuss','\"Wisdom with Warren\"\nLetters to Shareholders for Year 1982\n#NSE #SGX #StockMarket https://t.co/2EVMEoDVxO','http://pbs.twimg.com/profile_images/1582002786421866497/8pfnsR0c_normal.jpg','2022-12-03 18:07:00',0),(1599103206562332672,'natlawreview','\"A Guide to #LawFirm #Finance Management\"  #LawFirms #Lawyers #LegalNews @JeremyNobile https://t.co/1c5ubCpmrH https://t.co/ZUQxciTedR','http://pbs.twimg.com/profile_images/1441111357386940417/onii3dei_normal.jpg','2022-12-03 18:08:09',0),(1599104438001487872,'Mac_Sempai','RT @workswithjames: #finance Read the following spectacular saying https://t.co/RTVUguCegi','http://pbs.twimg.com/profile_images/1525455764948664321/CtPOx8Hn_normal.jpg','2022-12-03 18:13:02',1),(1599104779287937026,'angiepentinev','See how down payment assistance programs work. #finance #smartmoney  https://t.co/jK8UrQCp1v https://t.co/vzVN8PjaZJ','http://pbs.twimg.com/profile_images/1502409832833429507/i7ONb42Z_normal.jpg','2022-12-03 18:14:23',0),(1599106117480628225,'JamiesMcmolly','Amazon lost  ONE TRILLION dollars ?\n\n#amazon #stockmarket #stocks #crypto #volatility https://t.co/BDNY7SwVhU','http://pbs.twimg.com/profile_images/1484594370141696003/_ZAZRNuX_normal.jpg','2022-12-03 18:19:43',0);
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
