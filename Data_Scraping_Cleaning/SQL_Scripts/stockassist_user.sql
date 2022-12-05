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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `usr_twitter_handle` varchar(100) NOT NULL,
  `usr_name` varchar(200) DEFAULT NULL,
  `usr_profile_image_url` varchar(200) DEFAULT NULL,
  `usr_description` varchar(255) DEFAULT NULL,
  `usr_followers_count` int DEFAULT NULL,
  `usr_following_count` int DEFAULT NULL,
  `usr_create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`usr_twitter_handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

INSERT INTO `user` VALUES ('akalenny39','Lenny','http://pbs.twimg.com/profile_images/1587684011874299904/yFIgkeUP_normal.jpg','We need a fair and transparent stock market free of corruption, manipulation and white collar crime. It is time for the ponzi “SYSTEM” to be overhauled.',441,848,'2009-07-11 05:58:29'),('angiepentinev','Angie Penaherrera Neves','http://pbs.twimg.com/profile_images/1502409832833429507/i7ONb42Z_normal.jpg','Realtor',28,147,'2010-09-03 21:47:39'),('Draggen75','dandillion','http://pbs.twimg.com/profile_images/1369873126809538565/83BPbHq6_normal.jpg','Happily married 4 great kids. Proud Navy Dad. Conservative Independent, I support our Constitution as was intended by our founding fathers. #MAGA',1403,4980,'2016-02-08 00:05:49'),('ES_SPY_SPX','ES-SPY-SPX','http://pbs.twimg.com/profile_images/1558873503373430786/IU7UY_6w_normal.jpg','#ES #SPY #SPX #Stocks Disclaimer: For entertainment purpose ONLY -- NO Trades! No Discord, Telegram, DMs, Algos etc.',96,155,'2022-06-24 00:56:59'),('GarryTakha','Garry Takha','http://pbs.twimg.com/profile_images/1590116340114792448/wmtlsFyj_normal.jpg','crypto, stocks',178,789,'2021-12-20 22:36:37'),('JamiesMcmolly','Jamies McMolly','http://pbs.twimg.com/profile_images/1484594370141696003/_ZAZRNuX_normal.jpg','The goal is to accumulate more Bitcoin. Trade #Bitcoin and #HODL profit from the next bull market',860,37,'2022-01-21 18:26:47'),('ktwj_fx','KT_FX','http://pbs.twimg.com/profile_images/1436926181836685321/FX-0xWzn_normal.jpg','Price Action Forex Trader',23,13,'2021-01-16 14:00:44'),('Mac_Sempai','マック - The Party Poison','http://pbs.twimg.com/profile_images/1525455764948664321/CtPOx8Hn_normal.jpg','Chaos(K-O-S)Child | Learning C# | Gaming, Anime & Manga | Grey Jedi | #MentalHealth | Interests in #Neuroscience #AI & #Gamedev | Chicks dig Giant Robots |',1347,4634,'2013-09-30 15:21:26'),('MACFinancial','MAC Financial','http://pbs.twimg.com/profile_images/575606315675873280/FbXUwQEK_normal.jpeg','Independent Financial Advisers. Helping you achieve your financial goals. Free initial consultation visit our website below.',6702,7372,'2012-10-18 12:28:29'),('MandyZ129','Mandy','http://pbs.twimg.com/profile_images/1597908651758452737/X1rSz9N6_normal.jpg','The greatest glory in living lies not in never falling, but in rising every time we fall.',61,66,'2022-10-10 15:30:53'),('mrscrypto411','Venus Trades','http://pbs.twimg.com/profile_images/1594420380348751872/9FcN1LJA_normal.jpg','CHARTS with a MACRO perspective | Entrepreneur - Real Estate/Designer/Fashion | Clairsentient | Balancer of Chaos ♥️ Boy Mom |',448,213,'2011-03-08 05:22:22'),('natlawreview','National Law Review','http://pbs.twimg.com/profile_images/1441111357386940417/onii3dei_normal.jpg','Each month over 2 million legal & business professionals read the National #Law Review. Breaking #news added hourly. Visit us at https://t.co/pVt5M0tYzR',39235,3737,'2009-07-10 20:29:37'),('pentossh','mariana ?','http://pbs.twimg.com/profile_images/1569717401570123778/r5hUArQC_normal.jpg','◉ᴏɴʟɪɴᴇ ᴄʀʏᴘᴛᴏ ᴍᴇɴᴛᴏʀ ◉ᴄʀʏᴘᴛᴏ ᴛʀᴀᴅᴇʀ \n◉?% ʀɪꜱᴋ ɪɴᴠᴇꜱᴛᴍᴇɴᴛꜱ ◉ᴄʀʏᴘᴛᴏ \n◉ᴘʀᴏғɪᴛꜱ ɢᴜᴀʀᴀɴᴛᴇᴇᴅ ◉ғɪɴᴀɴᴄɪᴀʟ ᴀssɪsᴛᴀɴᴛ ◉???% ᴘᴀʏᴏᴜᴛꜱ ◉ᴅᴍ ᴛᴏ ɢᴇᴛ ꜱᴛᴀʀᴛᴇᴅ?ɪɴᴠᴇꜱᴛᴏʀ',648,522,'2022-07-10 04:13:22'),('PhlipYearB','bCode','http://pbs.twimg.com/profile_images/1598751622297161733/jVHygzKA_normal.jpg','MBBS // Music Freak {FL GANG} // Crypto since May 21 // NFT since Nov 21 // TA',219,312,'2021-11-04 18:39:18'),('qouteweebz','qouteweebz','http://pbs.twimg.com/profile_images/1559976847009804288/Pnu1yDqo_normal.jpg','',10,31,'2022-03-05 13:58:54'),('Sjoerd_Kersten','Sjoerd','http://pbs.twimg.com/profile_images/1553761961933955074/i4Zap71l_normal.jpg','The universe always provides.\nYou get what you need, but don\'t always need what you get.',52,163,'2017-06-30 11:50:15'),('StocksAfterDark','StocksAfterDark','http://pbs.twimg.com/profile_images/1511140463386013698/cn1IlzLK_normal.jpg','Hybrid trader. All ideas are my opinions & NOT financial advice. I am NOT an alert service. You’re responsible for your own actions. \"The Power of One.”',985,7,'2022-03-23 19:44:03'),('streetgeniuss','Aditya Jadhav','http://pbs.twimg.com/profile_images/1582002786421866497/8pfnsR0c_normal.jpg','I bring value to the table in terms of Personal Finance, Financial Markets and other Dope Stuff | Hip-Hop | Love and Respect❤️',56,164,'2020-08-30 16:05:04'),('TheCryptoLark','Lark Davis','http://pbs.twimg.com/profile_images/1482889740223680514/jWHeNCpH_normal.png','#Bitcoin & #crypto investor, my mission: educating on wealth creation! Tweets not financial advice. Weekly investor report https://t.co/gxfO3CHU1v',1072485,275,'2009-04-10 22:06:54'),('Yeahsowhat2','The Constitution Matters','http://pbs.twimg.com/profile_images/906878100272644099/FORW_FHj_normal.jpg','',77,213,'2017-09-10 03:52:10');
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
