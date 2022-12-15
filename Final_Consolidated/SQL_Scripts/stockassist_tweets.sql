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

LOCK TABLES `tweets` WRITE;
/*!40000 ALTER TABLE `tweets` DISABLE KEYS */;
INSERT INTO `tweets` VALUES (1597954440899661824,'StocksAfterDark','$SPY #SPY $MSFT #MSFT $AAPL #AAPL $AMZN #AMZN $QQQ #QQQ GamePlan https://t.co/E3gfWUDBxO','http://pbs.twimg.com/profile_images/1511140463386013698/cn1IlzLK_normal.jpg','2022-11-30 14:03:21',1),(1597955933631819776,'Yeahsowhat2','RT @StocksAfterDark: $SPY #SPY $MSFT #MSFT $AAPL #AAPL $AMZN #AMZN $QQQ #QQQ GamePlan https://t.co/E3gfWUDBxO','http://pbs.twimg.com/profile_images/906878100272644099/FORW_FHj_normal.jpg','2022-11-30 14:09:17',1),(1597993184810110978,'StocksAfterDark','Jerome Powell Strategy $SPY #SPY $MSFT #MSFT $AAPL #AAPL $AMZN #AMZN $QQQ #QQQ https://t.co/nYIblXv5cY','http://pbs.twimg.com/profile_images/1511140463386013698/cn1IlzLK_normal.jpg','2022-11-30 16:37:19',0),(1597999022828290048,'mrscrypto411','Jerome Powell speeches are 100x more influential then @POTUS speeches. \n\nSo much power this 1 man holds. \n\n#stocks https://t.co/Hy0nBGsrX5','http://pbs.twimg.com/profile_images/1594420380348751872/9FcN1LJA_normal.jpg','2022-11-30 17:00:31',0),(1598000196226531329,'MACFinancial','Like or RT: It\'s about time to see your financial situation in a clear light. #finance #quote https://t.co/KjLmHgsBaN','http://pbs.twimg.com/profile_images/575606315675873280/FbXUwQEK_normal.jpeg','2022-11-30 17:05:10',0),(1598526278440669184,'StocksAfterDark','$SPY #SPY $MSFT #MSFT $AAPL #AAPL $AMZN #AMZN $QQQ #QQQ Market Overview https://t.co/uBWOcM7VRr','http://pbs.twimg.com/profile_images/1511140463386013698/cn1IlzLK_normal.jpg','2022-12-02 03:55:38',0),(1598676558943846407,'StocksAfterDark','Game Plan $SPY #SPY $MSFT #MSFT $AAPL #AAPL $AMZN #AMZN $QQQ #QQQ https://t.co/gWGOp61wyo','http://pbs.twimg.com/profile_images/1511140463386013698/cn1IlzLK_normal.jpg','2022-12-02 13:52:48',0),(1598712048640221185,'PhlipYearB','Just my TA view on CryptoSavy\'s #AMZN and #BTC \nNFA‼️‼️\nDare to be different\nI could be wrong 100 percent ?‍♂️ https://t.co/vYa6jlI8uR','http://pbs.twimg.com/profile_images/1598751622297161733/jVHygzKA_normal.jpg','2022-12-02 16:13:49',0),(1598957030617776129,'ktwj_fx','After\n\n#AAPL\n\nPrice bouncing off bullish POI at 141.43. https://t.co/VIXBumRVPu','http://pbs.twimg.com/profile_images/1436926181836685321/FX-0xWzn_normal.jpg','2022-12-03 08:27:17',0),(1599045072213118978,'akalenny39','Not a bad month! #AMC $APE #AAPL #twitterfiles #Competition #vegan I love going to the movies. #love $amc https://t.co/7Z8bQ3ORdH','http://pbs.twimg.com/profile_images/1587684011874299904/yFIgkeUP_normal.jpg','2022-12-03 14:17:08',2),(1599077403581566976,'ES_SPY_SPX','$QQQ\n\nDaily\n\nStill below SMA 200\n\n#ES_F #SPY #SPX\n$ES_F $SPY $SPX\n#QQQ #AAPL #TSLA https://t.co/HLALzzjKK1','http://pbs.twimg.com/profile_images/1558873503373430786/IU7UY_6w_normal.jpg','2022-12-03 16:25:37',0),(1599077655705317376,'ES_SPY_SPX','$IWM\n\nClosed above SMA 200\n\n#ES_F #SPY #SPX\n$ES_F $SPY $SPX\n#QQQ #AAPL #TSLA\n#DJI #IWM https://t.co/XZ39P4Ku6x','http://pbs.twimg.com/profile_images/1558873503373430786/IU7UY_6w_normal.jpg','2022-12-03 16:26:37',0),(1599093648964325376,'StocksAfterDark','Game Plan Strategies / Levels / SAD Pivot OH MY! $SPY #SPY $MSFT #MSFT $AAPL #AAPL $AMZN #AMZN $QQQ #QQQ https://t.co/Pkkti0LWXW','http://pbs.twimg.com/profile_images/1511140463386013698/cn1IlzLK_normal.jpg','2022-12-03 17:30:10',1),(1599101258379444230,'TheCryptoLark','Amazon lost  ONE TRILLION dollars ?\n\n#amazon #stockmarket #stocks #crypto #volatility https://t.co/TquyOWpbRs','http://pbs.twimg.com/profile_images/1482889740223680514/jWHeNCpH_normal.png','2022-12-03 18:00:24',6),(1599101328659451904,'qouteweebz','RT @Grewal988: #NiftyBank and #nifty50 and #StockMarket and #stocks aise chale toh maza ajaye???? Gear✅✅ https://t.co/SKRAJ8hbJE','http://pbs.twimg.com/profile_images/1559976847009804288/Pnu1yDqo_normal.jpg','2022-12-03 18:00:41',11),(1599101622520778753,'pentossh','RT @TheCryptoLark: Amazon lost  ONE TRILLION dollars ?\n\n#amazon #stockmarket #stocks #crypto #volatility https://t.co/TquyOWpbRs','http://pbs.twimg.com/profile_images/1569717401570123778/r5hUArQC_normal.jpg','2022-12-03 18:01:51',6),(1599102073210949633,'Draggen75','RT @TheCryptoLark: Amazon lost  ONE TRILLION dollars ?\n\n#amazon #stockmarket #stocks #crypto #volatility https://t.co/TquyOWpbRs','http://pbs.twimg.com/profile_images/1369873126809538565/83BPbHq6_normal.jpg','2022-12-03 18:03:38',6),(1599102212789018624,'Sjoerd_Kersten','RT @TheCryptoLark: Amazon lost  ONE TRILLION dollars ?\n\n#amazon #stockmarket #stocks #crypto #volatility https://t.co/TquyOWpbRs','http://pbs.twimg.com/profile_images/1553761961933955074/i4Zap71l_normal.jpg','2022-12-03 18:04:12',6),(1599102268074168320,'MandyZ129','RT @TheCryptoLark: Amazon lost  ONE TRILLION dollars ?\n\n#amazon #stockmarket #stocks #crypto #volatility https://t.co/TquyOWpbRs','http://pbs.twimg.com/profile_images/1597908651758452737/X1rSz9N6_normal.jpg','2022-12-03 18:04:25',6),(1599102633565859840,'GarryTakha','RT @TheCryptoLark: Amazon lost  ONE TRILLION dollars ?\n\n#amazon #stockmarket #stocks #crypto #volatility https://t.co/TquyOWpbRs','http://pbs.twimg.com/profile_images/1590116340114792448/wmtlsFyj_normal.jpg','2022-12-03 18:05:52',6),(1599102918548160512,'streetgeniuss','\"Wisdom with Warren\"\nLetters to Shareholders for Year 1982\n#NSE #SGX #StockMarket https://t.co/2EVMEoDVxO','http://pbs.twimg.com/profile_images/1582002786421866497/8pfnsR0c_normal.jpg','2022-12-03 18:07:00',0),(1599103206562332672,'natlawreview','\"A Guide to #LawFirm #Finance Management\"  #LawFirms #Lawyers #LegalNews @JeremyNobile https://t.co/1c5ubCpmrH https://t.co/ZUQxciTedR','http://pbs.twimg.com/profile_images/1441111357386940417/onii3dei_normal.jpg','2022-12-03 18:08:09',0),(1599104438001487872,'Mac_Sempai','RT @workswithjames: #finance Read the following spectacular saying https://t.co/RTVUguCegi','http://pbs.twimg.com/profile_images/1525455764948664321/CtPOx8Hn_normal.jpg','2022-12-03 18:13:02',1),(1599104779287937026,'angiepentinev','See how down payment assistance programs work. #finance #smartmoney  https://t.co/jK8UrQCp1v https://t.co/vzVN8PjaZJ','http://pbs.twimg.com/profile_images/1502409832833429507/i7ONb42Z_normal.jpg','2022-12-03 18:14:23',0),(1599106117480628225,'JamiesMcmolly','Amazon lost  ONE TRILLION dollars ?\n\n#amazon #stockmarket #stocks #crypto #volatility https://t.co/BDNY7SwVhU','http://pbs.twimg.com/profile_images/1484594370141696003/_ZAZRNuX_normal.jpg','2022-12-03 18:19:43',0),(1600518199019200512,'lxnbdopve13411','#AMZN plans to take over Twitter advertising at a rate of $100 million per year https://t.co/Xumz4wY3vH','http://pbs.twimg.com/profile_images/1578118390547349505/EVgNSEkp_normal.jpg','2022-12-07 15:50:49',0),(1600520193465368586,'MonicaJ52458093','#AMZN \nIsn\'t the stocktrading at mouth watering valuations https://t.co/GQmWSOLJsW','http://pbs.twimg.com/profile_images/1576782550915510274/yCQOiK_x_normal.jpg','2022-12-07 15:58:45',0),(1600520549138153472,'WendyJo56010455','Amazing, AmpRSI alerts definetely work on  It just trgered on #AMZN falling into OS zone.\n\n#harmonictrader https://t.co/6CkZq4yQ34','http://pbs.twimg.com/profile_images/1576782568166461440/ugan4iVi_normal.jpg','2022-12-07 16:00:09',0),(1600521492143525888,'otlyechjj56251','$AMZN #AMZN range watch this bounce here for this run up to retest the previous chop zone https://t.co/Oe1nsoh39x','http://pbs.twimg.com/profile_images/1576782676631199745/6XzSwLey_normal.jpg','2022-12-07 16:03:54',0),(1600524980478943235,'rsvpsbjxz26159','#AMZN plans to take over Twitter advertising at a rate of $100 million per year https://t.co/FoIEDp04xW','http://pbs.twimg.com/profile_images/1579422125332779010/_IInuNm5_normal.jpg','2022-12-07 16:17:46',0),(1600527475997831168,'sydwvcsou52932','#AMZN is down 19% after hours with the most recent earnings report https://t.co/oKoig9CcxX','http://pbs.twimg.com/profile_images/1579897827429580800/OXWpbk6n_normal.jpg','2022-12-07 16:27:41',0),(1600527645779034112,'ujzcbpnok58999','Amazing, AmpRSI alerts definetely work on  It just trgered on #AMZN falling into OS zone.\n\n#harmonictrader https://t.co/ZSUP1MO62r','http://pbs.twimg.com/profile_images/1579898969865523208/ndvvSnx4_normal.jpg','2022-12-07 16:28:21',0),(1600528883803201537,'gggusbjjr77496','My Amazon stock buy limit orders: $81 and $68. #AMZN https://t.co/TA1PLnk2Ny','http://pbs.twimg.com/profile_images/1579911845632163840/9R09apHM_normal.png','2022-12-07 16:33:16',0),(1600531796474712065,'cfromhertz','$AMZN #AMZN \n\nheavy put activity today on Dec 23 expiry, multiple strikes\n\ndownside levels to watch https://t.co/5M7UdKbQHA','http://pbs.twimg.com/profile_images/1088570898012090374/s1LnJoO-_normal.jpg','2022-12-07 16:44:51',4),(1600533517489741824,'PaulWong689','RT @cfromhertz: $AMZN #AMZN \n\nheavy put activity today on Dec 23 expiry, multiple strikes\n\ndownside levels to watch https://t.co/5M7UdKbQHA','http://pbs.twimg.com/profile_images/1291957924739219468/4TsGUx04_normal.jpg','2022-12-07 16:51:41',4),(1600535614494998528,'AbelKayKay','#AAPL lowkey bearish... Revenues expected to go down and costs up with the move from China to India https://t.co/LoAkRdep53','http://pbs.twimg.com/profile_images/624148028052668416/tLnA5IPB_normal.jpg','2022-12-07 17:00:01',0),(1600537707138236418,'goddzzzilla','RT @cfromhertz: $AMZN #AMZN \n\nheavy put activity today on Dec 23 expiry, multiple strikes\n\ndownside levels to watch https://t.co/5M7UdKbQHA','http://pbs.twimg.com/profile_images/1566617254862770178/SHb5Ryyb_normal.jpg','2022-12-07 17:08:20',4),(1600542101975879680,'FLiPTek81','$AMZN #AMZN @TTomTerrific1 this was is a bit safer than the aapl play https://t.co/oUgGowrBn8','http://pbs.twimg.com/profile_images/1513350260193697792/9tgewWuJ_normal.jpg','2022-12-07 17:25:48',0),(1600542754706444290,'seandanzig','RT @cfromhertz: $AMZN #AMZN \n\nheavy put activity today on Dec 23 expiry, multiple strikes\n\ndownside levels to watch https://t.co/5M7UdKbQHA','http://pbs.twimg.com/profile_images/1473484608666697729/3Z3MExEy_normal.jpg','2022-12-07 17:28:24',4),(1600546348490801152,'trendscrawl','AMZN Monthly Log Scale #AMZN #stocks https://t.co/tT93utgNxi','http://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png','2022-12-07 17:42:40',0),(1600548228231204864,'KAnantrao','#AAPL is it time to swtich back to the fruit called Apple. https://t.co/BFxdlhIu2t','http://pbs.twimg.com/profile_images/1501089917530943489/B5nnHnxy_normal.jpg','2022-12-07 17:50:09',0),(1600548804721360924,'FLiPTek81','$AAPL #AAPL we planted the seeds just waiting for the higher low to grow https://t.co/RIFjUZ0tTp','http://pbs.twimg.com/profile_images/1513350260193697792/9tgewWuJ_normal.jpg','2022-12-07 17:52:26',0),(1600549155780411425,'SungFlungPoo','RT @StocksAfterDark: Game Plan $SPY #SPY $MSFT #MSFT $AAPL #AAPL $AMZN #AMZN $QQQ #QQQ https://t.co/I8yFiqcIti','http://pbs.twimg.com/profile_images/1565100782403321857/oqO1yy1H_normal.jpg','2022-12-07 17:53:50',3),(1600550677448921088,'InvestingAngles','#AAPL candles were right! I hope you listened.\n$AAPL \n\nhttps://t.co/FguYrAYEvq https://t.co/OJxXHakpxl https://t.co/YhWSVSQZ9v','http://pbs.twimg.com/profile_images/1386058198507933696/26_aw34a_normal.jpg','2022-12-07 17:59:52',1),(1600562257498443776,'MC_OptionTrades','$AMZN - 3 Reasons Why this AMZN Credit Put Spread is a Good Opportunity for $1.18  #AMZN https://t.co/m737MZlkGu https://t.co/0folgbQSBF','http://pbs.twimg.com/profile_images/1141427676546314242/LvbS1YW8_normal.jpg','2022-12-07 18:45:53',0),(1600562780452421632,'the_AVTrade_ICT','As long as #AAPL holding it, ES not going down https://t.co/sMSneTfGFp','http://pbs.twimg.com/profile_images/1557581687629938688/2ZrgmXQm_normal.jpg','2022-12-07 18:47:58',0),(1600568489018011648,'InvestingAngles','RT @InvestingAngles: #AAPL 2-day candles look dangerous, signal a continued move downwards. \n$AAPL https://t.co/3dz5MaKXfi','http://pbs.twimg.com/profile_images/1386058198507933696/26_aw34a_normal.jpg','2022-12-07 19:10:39',1),(1600568846452146189,'xqmkogyzo13456','#AAPL is it time to swtich back to the fruit called Apple. https://t.co/XjtdMZPfnz','http://pbs.twimg.com/profile_images/1580335100079886336/c0IjtXNE_normal.jpg','2022-12-07 19:12:04',0),(1600568882602852371,'mtiymmdxa48452','#AAPL  chart doesn\'t look good.\nCurrent price :$147.81\nTarget: $125 area https://t.co/wZucirOCjy','http://pbs.twimg.com/profile_images/1580335277012287488/UZkEsl_Y_normal.jpg','2022-12-07 19:12:13',0),(1600568933270044676,'fotctcuvh15543','#AAPL dragging the market today. As long as it holding, I don’t think market will tank https://t.co/uGyvxYgjGt','http://pbs.twimg.com/profile_images/1580335655791509505/sf_5ulT__normal.jpg','2022-12-07 19:12:25',0),(1600569090472558609,'nugkuuvxh27155','up 37% on #aapl swings\nentered my projected sell zone\nheld all cons tho-chasing $6 gap fill https://t.co/IcAzsSSrf6','http://pbs.twimg.com/profile_images/1580336077969444865/L6Dt5rR5_normal.jpg','2022-12-07 19:13:02',0),(1600569574952697856,'ooifjtnuy84384','Remember when  roasted #apple CEO Tim Cook over #AAPL use of slave labor. https://t.co/pnhwFGKCHt','http://pbs.twimg.com/profile_images/1580337308611510272/8Bjux1y3_normal.jpg','2022-12-07 19:14:58',0),(1600569706498375691,'kptdxwnnr34285','$AAPL #AAPL we planted the seeds just waiting for the hher low to grow https://t.co/IBXVY2N6H7','http://pbs.twimg.com/profile_images/1580337841497931777/KRVyap4H_normal.jpg','2022-12-07 19:15:29',0),(1600572931834265615,'My_online_card','#us500 $spx 4hour\n#amzn #aapl #msft $msft $aapl $amzn #meta $meta https://t.co/abfYNllzKl','http://pbs.twimg.com/profile_images/1369792934984482823/Gihk14KQ_normal.jpg','2022-12-07 19:28:18',0),(1600573352069955586,'Jaketh_bull','Could this be Apple prepping themselves to break into #crytpo in the near future? #AAPL $AAPL https://t.co/zUFseFYzce','http://pbs.twimg.com/profile_images/1577748332893683715/_pcGWJpD_normal.jpg','2022-12-07 19:29:59',0),(1600574626169503751,'ProTrader_Vini','$AAPL Swing: 17 Feb $150 Calls @ $5.45\nStop below $134\n\n#AAPL #SwingTrading https://t.co/qdZcEgBTi6','http://pbs.twimg.com/profile_images/1016144205951877120/zqDwli7B_normal.jpg','2022-12-07 19:35:02',0),(1600585986077073408,'tlbcbtkdx22144','#AAPL is it time to swtich back to the fruit called Apple. https://t.co/irKzsNXZFl','http://pbs.twimg.com/profile_images/1576782681995870208/LRa_22zL_normal.jpg','2022-12-07 20:20:11',0),(1600586490689589256,'plcvmhgkh79701','#AAPL dragging the market today. As long as it holding, I don’t think market will tank https://t.co/7IYL6iXGHf','http://pbs.twimg.com/profile_images/1576782717995343875/V1cF3siI_normal.jpg','2022-12-07 20:22:11',0),(1600586701126176777,'iinrkqlnl61563','up 37% on #aapl swings\nentered my projected sell zone\nheld all cons tho-chasing $6 gap fill https://t.co/8Z904Kv6Yg','http://pbs.twimg.com/profile_images/1576782668175491072/Oz5xlpmG_normal.jpg','2022-12-07 20:23:01',0),(1600587561394896896,'ybqpolaqi45954','$AAPL #AAPL we planted the seeds just waiting for the hher low to grow https://t.co/llTYNBBDMV','http://pbs.twimg.com/profile_images/1576782692099702784/PZQwsD5S_normal.jpg','2022-12-07 20:26:26',0),(1600589500320600064,'TheNext5Move','#StockMarket \n#stocks \n#ChoppySessions Ahead\n#USA #India #UK \n#UkraineRussianWar impacts #World  economy. https://t.co/NsUMSU67FR','http://pbs.twimg.com/profile_images/1436337735762001921/BELZoTgS_normal.jpg','2022-12-07 20:34:09',0),(1600589925363105799,'KaramRasheed6','RT @MahamAneelaN: Dirty Harry #lahoredapawa India by 5 #StockMarket #Islamabad Mir Hamza #IndianCricketTeam https://t.co/R2DOJsWR1M','http://pbs.twimg.com/profile_images/1585964985792036866/y1fpWRJO_normal.jpg','2022-12-07 20:35:50',5),(1600589930496815104,'batraanu','Nifty probable EW analysis based on price action today:\n#nifty #niftybank #stockmarket #futures #options https://t.co/d8QGMpkrxZ','http://pbs.twimg.com/profile_images/1576512030038667265/CnytGZb__normal.jpg','2022-12-07 20:35:51',0),(1600591193477419024,'CryptoBcl','#MoneyLaundering #BankFraud ? $SI SURE LOOKS THAT WAY…. Toast ?#Stocks $MSTR $COIN https://t.co/jN6UBdBTu3… https://t.co/7rDPO1IApS','http://pbs.twimg.com/profile_images/1381575871883010055/UP-UkhMg_normal.jpg','2022-12-07 20:40:52',0),(1602651638816452608,'Zsuirad_Nezrok','#AMZN one year after.... ? https://t.co/ifhhR0fJjX','http://pbs.twimg.com/profile_images/1424610531562999809/3Dgvtsm4_normal.jpg','2022-12-13 13:08:21',1),(1602676039662149634,'noemotiontrade','Woke up and Bezos got me paid #amzn $amzn https://t.co/XNIf4g9OMa','http://pbs.twimg.com/profile_images/1598830064728055808/9kQVf49u_normal.jpg','2022-12-13 14:45:18',0),(1602763315868205056,'nwocryptomoney','RT @Zsuirad_Nezrok: #AMZN one year after.... ? https://t.co/ifhhR0fJjX','http://pbs.twimg.com/profile_images/1538682333087531008/yLyMJc0q_normal.jpg','2022-12-13 20:32:07',1),(1602892274534387712,'Gambiste1','RT @StocksAfterDark: Market Overview - Retweet / Like\n\n$SPY #SPY $MSFT #MSFT $AAPL #AAPL $AMZN #AMZN $QQQ #QQQ https://t.co/2t1FVKCWuR','http://pbs.twimg.com/profile_images/1495032261594464256/IknQq7Uy_normal.jpg','2022-12-14 05:04:33',6),(1602979787865292801,'Gambiste1','RT @ever__learning: $AAPL #AAPL ? price action ? https://t.co/i3HuHTprqI','http://pbs.twimg.com/profile_images/1495032261594464256/IknQq7Uy_normal.jpg','2022-12-14 10:52:18',1),(1603059672092913664,'EmperorRedWolf','#AAPL SHORT TARGET HIT 140$\n\nSTILL STRUGGLING TO BREAK RESISTANCE #Apple $AAPL https://t.co/IRnPTcPliJ https://t.co/sSZRkT0hd9','http://pbs.twimg.com/profile_images/1574058131852001280/WL88U1xA_normal.jpg','2022-12-14 16:09:43',0),(1603075953466695682,'PriorConsults','What’s next for fintech in 2023? deVere CEO @nigeljgreen explains https://t.co/GyGsdRCm4F #fintech #finance https://t.co/anz3FyzzIh','http://pbs.twimg.com/profile_images/1602616976274243585/gyxgaMAO_normal.jpg','2022-12-14 17:14:25',1),(1603076121549066240,'fintechandmore','SEDG Stock Alert: SolarEdge Gets Boost From Barclays Upgrade | https://t.co/04njRW1Xxv | #investment #stocks https://t.co/rX0Hucb0tw','http://pbs.twimg.com/profile_images/1364146813654155266/-VC9UGJG_normal.jpg','2022-12-14 17:15:05',0),(1603081929389395968,'Stock_Market_Pr','European #stocks lower on caution ahead of Fed meeting; Tui slumps - Yahoo Finance https://t.co/oSPyGIhFhg https://t.co/4QQibbcxhb','http://pbs.twimg.com/profile_images/1089979474823790598/SBXMPXJt_normal.jpg','2022-12-14 17:38:10',0),(1603081951900233728,'Stock_Market_Pr','Here\'s Why Investors Should Retain A. O. Smith (AOS) #stocks - Nasdaq $NDAQ https://t.co/R2PwYBQS7q https://t.co/uQgPHYrxRI','http://pbs.twimg.com/profile_images/1089979474823790598/SBXMPXJt_normal.jpg','2022-12-14 17:38:15',0),(1603081962214031360,'Stock_Market_Pr','UK #stocks close down ahead of Fed decision - Reuters https://t.co/Nyb4Pk60Rw https://t.co/wg4t6vBipe','http://pbs.twimg.com/profile_images/1089979474823790598/SBXMPXJt_normal.jpg','2022-12-14 17:38:18',0),(1603082395275649027,'fintechandmore','5 Investments You Can’t Go Wrong With | https://t.co/s0yrEZARBw | #stocks https://t.co/KQpZpq3LiP','http://pbs.twimg.com/profile_images/1364146813654155266/-VC9UGJG_normal.jpg','2022-12-14 17:40:01',0),(1603082567108165632,'RamakrishnaCS','RT @WealthEnrich: Buy #stocks of what you consume/use !!\n#StockMarketindia #investing #WAFwd https://t.co/yESoU0ESAq','http://pbs.twimg.com/profile_images/1569298922522431490/2KBIVfHv_normal.jpg','2022-12-14 17:40:42',32),(1603083007086452737,'TwitBotReferee','?1 hour, 48 minutes #StockMarket https://t.co/2uPilI0V1C','http://pbs.twimg.com/profile_images/1564390689827393543/GIGNBNEh_normal.jpg','2022-12-14 17:42:27',0),(1603083032969490432,'harrie007','Few Stocks given Squeeze Breakout on #BollingerBands. #StockMarket https://t.co/EybdOfSXah','http://pbs.twimg.com/profile_images/1458110141300031492/UULtPbqV_normal.jpg','2022-12-14 17:42:33',0),(1603083387409162240,'SteadyGainz_','How to play FOMC \n\n$SPY $SPX #STOCKS #FOMC #OptionsTrading https://t.co/PiottIYFlr','http://pbs.twimg.com/profile_images/1545162191925542917/7b6aCzgP_normal.jpg','2022-12-14 17:43:58',0),(1603083658650439680,'fintechandmore','3 Top Mining Stocks in Canada to Buy in December 2022 | https://t.co/mEq5qfn3mR | #stocks https://t.co/LukYeKCMYa','http://pbs.twimg.com/profile_images/1364146813654155266/-VC9UGJG_normal.jpg','2022-12-14 17:45:02',0),(1603085322090582016,'BulITrades','Market as of now, basically flat/ consolidating waiting for FOMC ??  #stockmarket $SPY $NVDA $TSLA $QQQ $SPX $VIX https://t.co/A6pXBLh4ut','http://pbs.twimg.com/profile_images/1484933822177292303/fgDnaQC5_normal.png','2022-12-14 17:51:39',0),(1603085737049886725,'longsonofgoku','Need FOMC plays???\n\nhttps://t.co/hgAQQhP2yK\n\n#FOMC #options #optionstrading #stocks #trading #daytrader https://t.co/nx4YJYvtxB','http://pbs.twimg.com/profile_images/1421663492499595265/TxhVsNhL_normal.jpg','2022-12-14 17:53:18',0),(1603085921850630145,'investorsaware','Missed Out on Canadian Energy #stocks? My Best Dividend Stock\nto Buy and Hold\nhttps://t.co/YSqSmcjvv3 https://t.co/upkbcLgCOq','http://pbs.twimg.com/profile_images/1554507791854870530/PN7xIgAi_normal.jpg','2022-12-14 17:54:02',0),(1603085929652318214,'Stock_Market_Pr','New Strong Sell #stocks for December 14th - Nasdaq $NDAQ https://t.co/AVbdfW2b4K https://t.co/2NilVpaPsa','http://pbs.twimg.com/profile_images/1089979474823790598/SBXMPXJt_normal.jpg','2022-12-14 17:54:04',0),(1603086327964205059,'MalikIdrees922','Proud to be member \n@CMShehbaz\n@MIshaqDar50\n#چور_ہٹاؤ_ملک_بچاؤ\n#StockMarket \n#Islamabad\n#11thhour https://t.co/ipHHDptdDs','http://pbs.twimg.com/profile_images/1182245956483473408/1F3kjFAj_normal.jpg','2022-12-14 17:55:39',0),(1603087188442644481,'RTTNews','Canadian Market Up Slightly In Cautious Trade https://t.co/ygSwG3yYoC #stocks #trading #rttnews https://t.co/FqIeM3i8he','http://pbs.twimg.com/profile_images/642223146532122624/d_6LyTrJ_normal.jpg','2022-12-14 17:59:04',0);
/*!40000 ALTER TABLE `tweets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-14 13:47:25
