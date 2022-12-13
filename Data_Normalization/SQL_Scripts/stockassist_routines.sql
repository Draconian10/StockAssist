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
-- Temporary view structure for view `company_sector`
--

DROP TABLE IF EXISTS `company_sector`;
/*!50001 DROP VIEW IF EXISTS `company_sector`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `company_sector` AS SELECT 
 1 AS `tck_security`,
 1 AS `ti_sector`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `msft_lowest_daily_close`
--

DROP TABLE IF EXISTS `msft_lowest_daily_close`;
/*!50001 DROP VIEW IF EXISTS `msft_lowest_daily_close`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `msft_lowest_daily_close` AS SELECT 
 1 AS `mldc_ticker`,
 1 AS `mldc_close`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `high_performance_tech_stocks`
--

DROP TABLE IF EXISTS `high_performance_tech_stocks`;
/*!50001 DROP VIEW IF EXISTS `high_performance_tech_stocks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `high_performance_tech_stocks` AS SELECT 
 1 AS `hpts_symbol`,
 1 AS `hpts_security_name`,
 1 AS `hpts_sector`,
 1 AS `hpts_close_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `last_52_week_high_stocks`
--

DROP TABLE IF EXISTS `last_52_week_high_stocks`;
/*!50001 DROP VIEW IF EXISTS `last_52_week_high_stocks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `last_52_week_high_stocks` AS SELECT 
 1 AS `lwhs_ticker`,
 1 AS `lwhs_security_name`,
 1 AS `lwhs_52_week_high`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cmp_inc_over_two_billion`
--

DROP TABLE IF EXISTS `cmp_inc_over_two_billion`;
/*!50001 DROP VIEW IF EXISTS `cmp_inc_over_two_billion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cmp_inc_over_two_billion` AS SELECT 
 1 AS `ciotb_company_name`,
 1 AS `ciotb_income`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tck_moving_avg`
--

DROP TABLE IF EXISTS `tck_moving_avg`;
/*!50001 DROP VIEW IF EXISTS `tck_moving_avg`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tck_moving_avg` AS SELECT 
 1 AS `tma_ticker`,
 1 AS `tma_date`,
 1 AS `tma_mov_avg`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `nflx_net_revenue`
--

DROP TABLE IF EXISTS `nflx_net_revenue`;
/*!50001 DROP VIEW IF EXISTS `nflx_net_revenue`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `nflx_net_revenue` AS SELECT 
 1 AS `nnr_short_name`,
 1 AS `nnr_annual_revenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `amzn_stock_price_change`
--

DROP TABLE IF EXISTS `amzn_stock_price_change`;
/*!50001 DROP VIEW IF EXISTS `amzn_stock_price_change`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `amzn_stock_price_change` AS SELECT 
 1 AS `aspc_ticker`,
 1 AS `aspc_price_change`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tck_daily_returns`
--

DROP TABLE IF EXISTS `tck_daily_returns`;
/*!50001 DROP VIEW IF EXISTS `tck_daily_returns`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tck_daily_returns` AS SELECT 
 1 AS `tdr_ticker`,
 1 AS `tdr_date`,
 1 AS `tdr_daily_return`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `trending_stocks`
--

DROP TABLE IF EXISTS `trending_stocks`;
/*!50001 DROP VIEW IF EXISTS `trending_stocks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `trending_stocks` AS SELECT 
 1 AS `tck_symbol`,
 1 AS `tck_security`,
 1 AS `tck_count`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `tck_52_week_low_stocks`
--

DROP TABLE IF EXISTS `tck_52_week_low_stocks`;
/*!50001 DROP VIEW IF EXISTS `tck_52_week_low_stocks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `tck_52_week_low_stocks` AS SELECT 
 1 AS `twls_company_name`,
 1 AS `twls_52_week_low`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `msft_risk_reward_ratio`
--

DROP TABLE IF EXISTS `msft_risk_reward_ratio`;
/*!50001 DROP VIEW IF EXISTS `msft_risk_reward_ratio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `msft_risk_reward_ratio` AS SELECT 
 1 AS `dp_ticker`,
 1 AS `risk_reward`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cmp_market_cap`
--

DROP TABLE IF EXISTS `cmp_market_cap`;
/*!50001 DROP VIEW IF EXISTS `cmp_market_cap`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cmp_market_cap` AS SELECT 
 1 AS `cmc_symbol`,
 1 AS `cmc_company_name`,
 1 AS `cmc_market_cap`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `cmp_cash_flow`
--

DROP TABLE IF EXISTS `cmp_cash_flow`;
/*!50001 DROP VIEW IF EXISTS `cmp_cash_flow`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cmp_cash_flow` AS SELECT 
 1 AS `ccf_symbol`,
 1 AS `ccf_company_name`,
 1 AS `ccf_cash_flow`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `company_net_income`
--

DROP TABLE IF EXISTS `company_net_income`;
/*!50001 DROP VIEW IF EXISTS `company_net_income`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `company_net_income` AS SELECT 
 1 AS `cni_ticker`,
 1 AS `cni_company_name`,
 1 AS `cni_net_income`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `high_dividend_stocks`
--

DROP TABLE IF EXISTS `high_dividend_stocks`;
/*!50001 DROP VIEW IF EXISTS `high_dividend_stocks`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `high_dividend_stocks` AS SELECT 
 1 AS `tck_symbol`,
 1 AS `tck_security`,
 1 AS `td_dividend_rate`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `googl_gross_profit`
--

DROP TABLE IF EXISTS `googl_gross_profit`;
/*!50001 DROP VIEW IF EXISTS `googl_gross_profit`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `googl_gross_profit` AS SELECT 
 1 AS `ggp_symbol`,
 1 AS `ggp_company_name`,
 1 AS `ggp_gross_profit`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `company_sector`
--

/*!50001 DROP VIEW IF EXISTS `company_sector`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `company_sector` AS select `tck`.`tck_security` AS `tck_security`,`t`.`ti_sector` AS `ti_sector` from (`ticker_industry` `t` join `ticker_master` `tck`) where (`t`.`ti_sub_industry` = `tck`.`tck_sub_industry`) order by `t`.`ti_sector` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `msft_lowest_daily_close`
--

/*!50001 DROP VIEW IF EXISTS `msft_lowest_daily_close`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `msft_lowest_daily_close` AS select `daily_prices`.`dp_ticker` AS `mldc_ticker`,`daily_prices`.`dp_close` AS `mldc_close` from `daily_prices` where ((`daily_prices`.`dp_ticker` = 'MSFT') and (`daily_prices`.`dp_close` = (select min(`daily_prices`.`dp_close`) from `daily_prices` where (`daily_prices`.`dp_ticker` = 'MSFT')))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `high_performance_tech_stocks`
--

/*!50001 DROP VIEW IF EXISTS `high_performance_tech_stocks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `high_performance_tech_stocks` AS select `ticker_master`.`tck_symbol` AS `hpts_symbol`,`ticker_master`.`tck_security` AS `hpts_security_name`,`ticker_industry`.`ti_sector` AS `hpts_sector`,`daily_prices`.`dp_close` AS `hpts_close_price` from ((`ticker_master` join `daily_prices`) join `ticker_industry`) where ((`ticker_master`.`tck_symbol` = `daily_prices`.`dp_ticker`) and (`ticker_industry`.`ti_sub_industry` = `ticker_master`.`tck_sub_industry`) and (`ticker_industry`.`ti_sector` = 'Information Technology') and (`daily_prices`.`dp_date` = (select max(`daily_prices`.`dp_date`) from `daily_prices`))) order by `daily_prices`.`dp_close` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `last_52_week_high_stocks`
--

/*!50001 DROP VIEW IF EXISTS `last_52_week_high_stocks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `last_52_week_high_stocks` AS select `ticker_master`.`tck_symbol` AS `lwhs_ticker`,`ticker_master`.`tck_security` AS `lwhs_security_name`,`ticker_details`.`td_52_week_high` AS `lwhs_52_week_high` from (`ticker_details` join `ticker_master`) where (`ticker_master`.`tck_symbol` = `ticker_details`.`td_ticker`) order by `ticker_details`.`td_52_week_high` desc limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cmp_inc_over_two_billion`
--

/*!50001 DROP VIEW IF EXISTS `cmp_inc_over_two_billion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cmp_inc_over_two_billion` AS select `cm`.`cm_short_name` AS `ciotb_company_name`,`td`.`td_total_revenue` AS `ciotb_income` from (`ticker_details` `td` join `company_master` `cm`) where ((`td`.`td_ticker` = `cm`.`cm_symbol`) and (`td`.`td_total_revenue` >= 200000000000)) order by `td`.`td_total_revenue` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tck_moving_avg`
--

/*!50001 DROP VIEW IF EXISTS `tck_moving_avg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tck_moving_avg` AS select `hourly_prices`.`hp_ticker` AS `tma_ticker`,`hourly_prices`.`hp_date` AS `tma_date`,(sum(`hourly_prices`.`hp_close`) / count(`hourly_prices`.`hp_close`)) AS `tma_mov_avg` from `hourly_prices` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `nflx_net_revenue`
--

/*!50001 DROP VIEW IF EXISTS `nflx_net_revenue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `nflx_net_revenue` AS select `cm`.`cm_short_name` AS `nnr_short_name`,`td`.`td_total_revenue` AS `nnr_annual_revenue` from (`ticker_details` `td` join `company_master` `cm`) where ((`td`.`td_ticker` = `cm`.`cm_symbol`) and (`cm`.`cm_symbol` = 'NFLX')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `amzn_stock_price_change`
--

/*!50001 DROP VIEW IF EXISTS `amzn_stock_price_change`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `amzn_stock_price_change` AS select `daily_prices`.`dp_ticker` AS `aspc_ticker`,((select `daily_prices`.`dp_close` from `daily_prices` where ((`daily_prices`.`dp_ticker` = 'AMZN') and (`daily_prices`.`dp_date` = (select max(`daily_prices`.`dp_date`) from `daily_prices` where (`daily_prices`.`dp_ticker` = 'AMZN'))))) - (select `daily_prices`.`dp_close` from `daily_prices` where ((`daily_prices`.`dp_ticker` = 'AMZN') and (`daily_prices`.`dp_date` = (select min(`daily_prices`.`dp_date`) from `daily_prices` where (`daily_prices`.`dp_ticker` = 'AMZN')))))) AS `aspc_price_change` from `daily_prices` where (`daily_prices`.`dp_ticker` = 'AMZN') group by `daily_prices`.`dp_ticker` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tck_daily_returns`
--

/*!50001 DROP VIEW IF EXISTS `tck_daily_returns`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tck_daily_returns` AS select `daily_prices`.`dp_ticker` AS `tdr_ticker`,`daily_prices`.`dp_date` AS `tdr_date`,(`daily_prices`.`dp_close` - `daily_prices`.`dp_open`) AS `tdr_daily_return` from `daily_prices` order by `daily_prices`.`dp_ticker`,`daily_prices`.`dp_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `trending_stocks`
--

/*!50001 DROP VIEW IF EXISTS `trending_stocks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `trending_stocks` AS select `t`.`tck_symbol` AS `tck_symbol`,`t`.`tck_security` AS `tck_security`,count(`tt`.`twt_tags`) AS `tck_count` from (`ticker_master` `t` join `tweet_tags` `tt`) where (`t`.`tck_symbol` = `tt`.`twt_tags`) group by `t`.`tck_symbol`,`t`.`tck_security` order by count(`tt`.`twt_tags`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `tck_52_week_low_stocks`
--

/*!50001 DROP VIEW IF EXISTS `tck_52_week_low_stocks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `tck_52_week_low_stocks` AS select `cm`.`cm_short_name` AS `twls_company_name`,`td`.`td_52_week_low` AS `twls_52_week_low` from (`ticker_details` `td` join `company_master` `cm`) where (`td`.`td_ticker` = `cm`.`cm_symbol`) order by `td`.`td_52_week_low` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `msft_risk_reward_ratio`
--

/*!50001 DROP VIEW IF EXISTS `msft_risk_reward_ratio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `msft_risk_reward_ratio` AS select `dp1`.`dp_ticker` AS `dp_ticker`,(((`dp2`.`dp_close` - `dp1`.`dp_close`) * `dp1`.`dp_volume`) / (`dp1`.`dp_close` * `dp1`.`dp_volume`)) AS `risk_reward` from (`daily_prices` `dp1` join `daily_prices` `dp2`) where ((`dp1`.`dp_date` = (`dp2`.`dp_date` + 1)) and (`dp1`.`dp_ticker` = 'MSFT') and (`dp2`.`dp_ticker` = 'MSFT')) group by `dp1`.`dp_ticker`,`dp2`.`dp_ticker` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cmp_market_cap`
--

/*!50001 DROP VIEW IF EXISTS `cmp_market_cap`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cmp_market_cap` AS select `cm`.`cm_symbol` AS `cmc_symbol`,`cm`.`cm_short_name` AS `cmc_company_name`,`cd`.`cmd_market_cap` AS `cmc_market_cap` from (`company_details` `cd` join `company_master` `cm`) where (`cd`.`cmd_symbol` = `cm`.`cm_symbol`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cmp_cash_flow`
--

/*!50001 DROP VIEW IF EXISTS `cmp_cash_flow`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cmp_cash_flow` AS select `td`.`tck_symbol` AS `ccf_symbol`,`cm`.`cm_short_name` AS `ccf_company_name`,`cm`.`cm_cash_flow` AS `ccf_cash_flow` from (`company_master` `cm` join `ticker_master` `td`) where (`td`.`tck_symbol` = `cm`.`cm_symbol`) order by `cm`.`cm_cash_flow` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `company_net_income`
--

/*!50001 DROP VIEW IF EXISTS `company_net_income`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `company_net_income` AS select `td`.`td_ticker` AS `cni_ticker`,`cm`.`cm_short_name` AS `cni_company_name`,`td`.`td_total_revenue` AS `cni_net_income` from (`ticker_details` `td` join `company_master` `cm`) where (`td`.`td_ticker` = `cm`.`cm_symbol`) order by `td`.`td_total_revenue` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `high_dividend_stocks`
--

/*!50001 DROP VIEW IF EXISTS `high_dividend_stocks`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `high_dividend_stocks` AS select `tm`.`tck_symbol` AS `tck_symbol`,`tm`.`tck_security` AS `tck_security`,`td`.`td_dividend_rate` AS `td_dividend_rate` from (`ticker_details` `td` join `ticker_master` `tm`) where (`td`.`td_ticker` = `tm`.`tck_symbol`) order by `td`.`td_dividend_rate` desc limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `googl_gross_profit`
--

/*!50001 DROP VIEW IF EXISTS `googl_gross_profit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `googl_gross_profit` AS select `tck`.`tck_symbol` AS `ggp_symbol`,`cm`.`cm_short_name` AS `ggp_company_name`,`cm`.`cm_gross_profit` AS `ggp_gross_profit` from (`company_master` `cm` join `ticker_master` `tck`) where ((`cm`.`cm_symbol` = `tck`.`tck_symbol`) and (`tck`.`tck_symbol` = 'GOOGL')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-13 15:36:14
