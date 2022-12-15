# Stock Market Prediction and Recommendation System

## Team Members: 
- Yash Pankhania (pankhania.y@northeastern.edu)
- Pavan Raval (raval.pa@northeastern.edu)

Github Repository URL: https://github.com/Draconian10/StockAssist

### A fully functional Stock Market database system which predicts stock prices and recommends stocks based on the business strategy to the users.

## Project Description
Investment platforms in recent times usually do not provide any stock recommendations using a valid business strategy. This can make the process of buying/selling stocks pretty puzzling for beginners. Our project plans to resolve this conundrum by predicting ticker prices and recommending valid stocks based on it to their users using a machine learning algorithm. The database system will consist of ticker symbols and its company details required for making an investment. It will also contain live and historical stock prices for these stocks in the OHLC format (Open-High-Low-Close). Further, we plan to generate visualizations of the stock data which will help the users validate the strategy and make decisions based on it. 

Our database system will store user details along with its portfolio. Based on their portfolio, the system will recommend whether the existing stocks in the portfolio need to be bought or sold as per the market situation. It will also suggest top stocks with the highest growth on a daily basis. Furthermore, it will provide the top gainer and top loser stocks of the day along with trending stocks which were being traded the most. All of these details will help the users make a prepared decision while trading in the stock market.  

## Strategy
We are planning to extract live and historical ticker prices and company information using Yahoo Finance API. This data will be cleaned and preprocessed so that it can be inserted into the database in a meaningful format. This price data will be available in the OHLC format and will be used to create multiple modules of the system. Additionally, we will be utilizing this data to train a machine learning algorithm which will predict stock prices and recommend buying/selling of stocks to the users.

## Implementation

We have scraped vital stock market data from multiple sources as follows:
### Twitter Scraping
We initially started by scraping Twitter using an easy-to-use library called Tweepy for accessing the Twitter API. Using Twitter API, we will extract data regarding stock market tweets and their users.
This data is stored into the Stock Assist database in the following tables:
- User
- Tweets
- Tweet Tags
- Tweet Mentions
- Master Twitter Directory

Refer: https://github.com/Draconian10/StockAssist/tree/main/Twitter_Scraping

### Data Scraping from CSV File
We fetched list of S&P 500 companies and inserted it into the CSV file from the following link:
https://en.wikipedia.org/wiki/List_of_S%26P_500_companies

### Data Scraping from Web Scraping
We perform web scraping for extracting data from HTML files using a Python library called Beautiful Soup. The HTML parser is used to connect to the website, and the parse tree is transformed into a structured Unicode string. Using Beautiful Soup, we extracted company data  from the following link:
https://www.marketbeat.com/types-of-stock/sp-500-stocks/

### Data Scraping using Yahoo Finance API
Yahoo Finance API is a Python library which helps us fetch and retrieve company's financial information along with their live as well as historical ticker prices data using its functionality. This information is being stored in our database in the OHLC (Open, High, Low, Close) format in the intervals of 1 day and 1 hour.

### Data Munging on CSV DataFrame
- We renamed multiple columns to remove black spaces for further processing
- Further, we split columns like 'Location' column into 'Headquarters' and 'City' columns for more authenticity because the exsiting column contained multi-valued attributes
- Finally, we dropped all the unwanted columns from the dataframe and replaced them with the newly created columns
 
### Data Munging on Web Scraping DataFrame
- First of all, we renamed columns to eliminate blank spaces from their column names
- Secondly, we split the 'Company' column into 'Symbol' and 'Company' columns for more authenticity
- Similarly, we split the 'Price' column into 'Price' and 'Price_Change_Percent' columns
- Then we dropped unwanted columns and replaced them with the new columns and data manipulation was performed on certain columns so that it can be properly inserted into the database

### Data Munging on API DataFrame
- The daily and hourly prices data extracted from the Yahoo Finance API had Date as their index
- This index was reset into the Date column so that it can be properly processed

### Data Cleaning on CSV DataFrame
- 'Founded' column was formatted to only included data in the YEAR format
- Then we checked for duplicate entries and NULL values in the DataFrame
- The final generated DataFrame was used to generate a bar plot which displayed number of securities per sector
- Finally, this DataFrame is inserted into the Ticker Master table
 
### Data Cleaning on Web Scraping DataFrame
- We checked the shape of the DataFrame along with the number of unique and duplicates
- We found certain duplicate entries in the scraped data which were further removed for increased accuracy
- The column 'PE_Ratio' contained the text 'N/A' where they did not have any data which was replaced with None
- Then we checked for NULL values in the DataFrame and displayed them
- Since it was not feasible to drop the rows with NULL values, we kept them as it is and used this DataFrame to insert its data into Company Details Table

### Data Cleaning on API DataFrame
- We checked for duplicated, unique and NULL values inside the DataFrame
- Since the data was authentic, we created a line graph using Daily Prices to display Daily Low Prices for Apple
- In the same way, we created a scatterplot to compare Daily High and Close Prices for Tesla
- Using Hourly Prices, we generated a line graph to plot Hourly Low Prices for Amazon and a KDE plot to graph the Comparison of Hourly Open and Close Prices of Microsoft
- In the end, this data is inserted into their respective Daily Prices and Hourly Prices Table

### Data Normalization
Data Normalization is the process of restructuring the logical data model of a database to eliminate redundancy, organize data efficiently and reduce the potential for data anamolies.
Here, we verified the table structure for normalization and modified the structure if the table does not conform to 3NF.

### Database Normal Forms

#### First Normal Form
The requirements to satisfy the 1st NF are as follows:
- Each table has a primary key: minimal set of attributes which can uniquely identify a record.
- The values in each column of a table are atomic (No multi-value attributes allowed).
- There are no repeating groups: two columns do not store similar information in the same table.

#### Second Normal Form
The requirements to satisfy the 2nd NF are as follows:
- All requirements for 1st NF must be met.
- Redundant data across multiple rows of a table must be moved to a separate table.
- The resulting tables must be related to each other by use of foreign key.

#### Third Normal Form
The requirements to satisfy the 3rd NF are as follows:
- All requirements for 2nd NF must be met.
- Eliminate fields that do not depend on the primary key.
- That is, any field that is dependent not only on the primary key but also on another field must be moved to another table.

## Tables Structure

### Create Table Scripts

### Ticker Master
CREATE TABLE `ticker_master` (
  `tck_symbol` varchar(10) NOT NULL,
  `tck_security` varchar(255) NOT NULL,
  `tck_sub_industry` varchar(255) DEFAULT NULL,
  `tck_city` varchar(100) DEFAULT NULL,
  `tck_year_founded` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`tck_symbol`,`tck_security`));

![image](https://user-images.githubusercontent.com/23314479/207473415-9a75b4d6-3843-441a-9bea-a156abf4b512.png)

### Ticker Details
CREATE TABLE `ticker_details` (
  `td_ticker` varchar(10) NOT NULL,
  `td_current_price` float DEFAULT NULL,
  `td_dividend_rate` float DEFAULT NULL,
  `td_market_cap` bigint DEFAULT NULL,
  `td_52_week_high` int DEFAULT NULL,
  `td_52_week_low` int DEFAULT NULL,
  `td_ebidta` bigint DEFAULT NULL,
  `td_total_revenue` bigint DEFAULT NULL,
  `td_peg_ratio` float DEFAULT NULL,
  PRIMARY KEY (`td_ticker`));

![image](https://user-images.githubusercontent.com/23314479/207473758-28fc79f7-b56e-49db-908e-d3ea269f0cec.png)
  
### Ticker Industry
CREATE TABLE `ticker_industry` (
  `ti_sub_industry` varchar(100) NOT NULL,
  `ti_sector` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ti_sub_industry`));

![image](https://user-images.githubusercontent.com/23314479/207473061-da6c8d4f-6c8e-4d65-97f5-fa731a568955.png)
  
### Company Master
CREATE TABLE `company_master` (
  `cm_symbol` varchar(10) NOT NULL,
  `cm_short_name` varchar(255) NOT NULL,
  `cm_fulltime_employees` int DEFAULT NULL,
  `cm_website` varchar(255) DEFAULT NULL,
  `cm_city` varchar(100) DEFAULT NULL,
  `cm_cash_flow` bigint DEFAULT NULL,
  `cm_gross_profit` bigint DEFAULT NULL,
  PRIMARY KEY (`cm_symbol`,`cm_short_name`));

![image](https://user-images.githubusercontent.com/23314479/207475265-96aeb61e-ae73-45b4-a9f1-8b1d60a1e875.png)

### Company Details
CREATE TABLE `company_details` (
  `cmd_symbol` varchar(10) NOT NULL,
  `cmd_price` float DEFAULT NULL,
  `cmd_price_change_percent` varchar(50) DEFAULT NULL,
  `cmd_pe_ratio` varchar(10) DEFAULT NULL,
  `cmd_market_cap` varchar(50) DEFAULT NULL,
  `cmd_volume` varchar(50) DEFAULT NULL,
  `cmd_avg_volume` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cmd_symbol`));

![image](https://user-images.githubusercontent.com/23314479/207475589-57241f22-bde9-4c21-a3d1-16d2f39bb861.png)
 
### Company Location
CREATE TABLE `company_location` (
  `cl_city` varchar(100) NOT NULL,
  `cl_state` varchar(2) NOT NULL,
  PRIMARY KEY (`cl_city`,`cl_state`));

![image](https://user-images.githubusercontent.com/23314479/207475033-8d4539e4-09cc-41c8-af2f-5005555041af.png)

### Daily Prices
CREATE TABLE `daily_prices` (
  `dp_id` int NOT NULL AUTO_INCREMENT,
  `dp_date` date NOT NULL,
  `dp_ticker` varchar(10) NOT NULL,
  `dp_adj_close` float DEFAULT NULL,
  `dp_close` float DEFAULT NULL,
  `dp_high` float DEFAULT NULL,
  `dp_low` float DEFAULT NULL,
  `dp_open` float DEFAULT NULL,
  `dp_volume` bigint DEFAULT NULL,
  PRIMARY KEY (`dp_id`,`dp_date`,`dp_ticker`))

![image](https://user-images.githubusercontent.com/23314479/207476141-91629f6a-9b41-4a85-ac32-924e033f75a2.png)
  
### Hourly Prices
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
  PRIMARY KEY (`hp_id`,`hp_date`,`hp_ticker`))

![image](https://user-images.githubusercontent.com/23314479/207478605-617da5ca-1f01-4a90-8cf7-98cdd5b70fd0.png)

### Insert Scripts

### Ticker Master
        INSERT INTO `ticker_master` (`tck_symbol`, `tck_security`, `tck_sub_industry`, `tck_city`, `tck_year_founded`) VALUES ('A','Agilent Technologies','Health Care Equipment',' California','1999');
        INSERT INTO `ticker_master` (`tck_symbol`, `tck_security`, `tck_sub_industry`, `tck_city`, `tck_year_founded`) VALUES ('AAL','American Airlines Group','Airlines',' Texas','1934');
        INSERT INTO `ticker_master` (`tck_symbol`, `tck_security`, `tck_sub_industry`, `tck_city`, `tck_year_founded`) VALUES ('AAP','Advance Auto Parts','Automotive Retail',' North Carolina','1932');
        INSERT INTO `ticker_master` (`tck_symbol`, `tck_security`, `tck_sub_industry`, `tck_city`, `tck_year_founded`) VALUES ('AAPL','Apple Inc.','Technology Hardware, Storage & Peripherals',' California','1977');
        INSERT INTO `ticker_master` (`tck_symbol`, `tck_security`, `tck_sub_industry`, `tck_city`, `tck_year_founded`) VALUES ('ABBV','AbbVie','Pharmaceuticals',' Illinois','2013');
        INSERT INTO `ticker_master` (`tck_symbol`, `tck_security`, `tck_sub_industry`, `tck_city`, `tck_year_founded`) VALUES ('ABC','AmerisourceBergen','Health Care Distributors',' Pennsylvania','1985');
        INSERT INTO `ticker_master` (`tck_symbol`, `tck_security`, `tck_sub_industry`, `tck_city`, `tck_year_founded`) VALUES ('ABMD','Abiomed','Health Care Equipment',' Massachusetts','1981');
        INSERT INTO `ticker_master` (`tck_symbol`, `tck_security`, `tck_sub_industry`, `tck_city`, `tck_year_founded`) VALUES ('ABT','Abbott','Health Care Equipment',' Illinois','1888');
        INSERT INTO `ticker_master` (`tck_symbol`, `tck_security`, `tck_sub_industry`, `tck_city`, `tck_year_founded`) VALUES ('ACGL','Arch Capital Group','Reinsurance',' Bermuda','1995');
        INSERT INTO `ticker_master` (`tck_symbol`, `tck_security`, `tck_sub_industry`, `tck_city`, `tck_year_founded`) VALUES ('ACN','Accenture','IT Consulting & Other Services',' Ireland','1989');

### Ticker Details
        INSERT INTO `ticker_details` (`td_ticker`, `td_current_price`, `td_dividend_rate`, `td_market_cap`, `td_52_week_high`, `td_52_week_low`, `td_ebidta`, `td_total_revenue`, `td_peg_ratio`) VALUES ('A',155.67,0.84,47012495360,163,113,1922000000,6658999808,2.34);
        INSERT INTO `ticker_details` (`td_ticker`, `td_current_price`, `td_dividend_rate`, `td_market_cap`, `td_52_week_high`, `td_52_week_low`, `td_ebidta`, `td_total_revenue`, `td_peg_ratio`) VALUES ('AAL',13.97,NULL,9045770240,21,12,2400000000,45210001408,0.53);
        INSERT INTO `ticker_details` (`td_ticker`, `td_current_price`, `td_dividend_rate`, `td_market_cap`, `td_52_week_high`, `td_52_week_low`, `td_ebidta`, `td_total_revenue`, `td_peg_ratio`) VALUES ('AAP',153.03,6,9542215680,245,145,1059585024,11057840128,1.3);
        INSERT INTO `ticker_details` (`td_ticker`, `td_current_price`, `td_dividend_rate`, `td_market_cap`, `td_52_week_high`, `td_52_week_low`, `td_ebidta`, `td_total_revenue`, `td_peg_ratio`) VALUES ('AAPL',147.81,0.92,2425029918720,183,129,129556996096,387541991424,2.52);
        INSERT INTO `ticker_details` (`td_ticker`, `td_current_price`, `td_dividend_rate`, `td_market_cap`, `td_52_week_high`, `td_52_week_low`, `td_ebidta`, `td_total_revenue`, `td_peg_ratio`) VALUES ('ABC',173.99,1.84,36213059584,175,118,3580100096,236325273600,1.42);
        INSERT INTO `ticker_details` (`td_ticker`, `td_current_price`, `td_dividend_rate`, `td_market_cap`, `td_52_week_high`, `td_52_week_low`, `td_ebidta`, `td_total_revenue`, `td_peg_ratio`) VALUES ('ABMD',377.2,NULL,17161657344,382,220,279260992,1056316992,3.08);
        INSERT INTO `ticker_details` (`td_ticker`, `td_current_price`, `td_dividend_rate`, `td_market_cap`, `td_52_week_high`, `td_52_week_low`, `td_ebidta`, `td_total_revenue`, `td_peg_ratio`) VALUES ('ABT',108.09,1.88,191134466048,143,93,13121000448,45029998592,2.24);
        INSERT INTO `ticker_details` (`td_ticker`, `td_current_price`, `td_dividend_rate`, `td_market_cap`, `td_52_week_high`, `td_52_week_low`, `td_ebidta`, `td_total_revenue`, `td_peg_ratio`) VALUES ('ACGL',60.6,NULL,23399720960,61,41,1279622016,8855909376,0.71);
        INSERT INTO `ticker_details` (`td_ticker`, `td_current_price`, `td_dividend_rate`, `td_market_cap`, `td_52_week_high`, `td_52_week_low`, `td_ebidta`, `td_total_revenue`, `td_peg_ratio`) VALUES ('ACN',300.13,4.48,189834919936,417,243,10405497856,61594304512,2.03);
        INSERT INTO `ticker_details` (`td_ticker`, `td_current_price`, `td_dividend_rate`, `td_market_cap`, `td_52_week_high`, `td_52_week_low`, `td_ebidta`, `td_total_revenue`, `td_peg_ratio`) VALUES ('ADBE',341.53,NULL,162499969024,675,275,6728000000,17191000064,1.77);
        
### Ticker Industry
        INSERT INTO `ticker_industry` (`ti_sub_industry`, `ti_sector`) VALUES ('Advertising','Communication Services');
        INSERT INTO `ticker_industry` (`ti_sub_industry`, `ti_sector`) VALUES ('Aerospace & Defense','Industrials');
        INSERT INTO `ticker_industry` (`ti_sub_industry`, `ti_sector`) VALUES ('Agricultural & Farm Machinery','Industrials');
        INSERT INTO `ticker_industry` (`ti_sub_industry`, `ti_sector`) VALUES ('Agricultural Products','Consumer Staples');
        INSERT INTO `ticker_industry` (`ti_sub_industry`, `ti_sector`) VALUES ('Air Freight & Logistics','Industrials');
        INSERT INTO `ticker_industry` (`ti_sub_industry`, `ti_sector`) VALUES ('Airlines','Industrials');
        INSERT INTO `ticker_industry` (`ti_sub_industry`, `ti_sector`) VALUES ('Alternative Carriers','Communication Services');
        INSERT INTO `ticker_industry` (`ti_sub_industry`, `ti_sector`) VALUES ('Apparel Retail','Consumer Discretionary');
        INSERT INTO `ticker_industry` (`ti_sub_industry`, `ti_sector`) VALUES ('Apparel, Accessories & Luxury Goods','Consumer Discretionary');
        INSERT INTO `ticker_industry` (`ti_sub_industry`, `ti_sector`) VALUES ('Application Software','Information Technology');
        
### Company Master
        INSERT INTO `company_master` (`cm_symbol`, `cm_short_name`, `cm_fulltime_employees`, `cm_website`, `cm_city`, `cm_cash_flow`, `cm_gross_profit`) VALUES ('A','Agilent Technologies, Inc.',18000,'https://www.agilent.com','Santa Clara',1312000000,3722000000);
        INSERT INTO `company_master` (`cm_symbol`, `cm_short_name`, `cm_fulltime_employees`, `cm_website`, `cm_city`, `cm_cash_flow`, `cm_gross_profit`) VALUES ('AAL','American Airlines Group, Inc.',129700,'https://www.aa.com','Fort Worth',1131000064,1934000000);
        INSERT INTO `company_master` (`cm_symbol`, `cm_short_name`, `cm_fulltime_employees`, `cm_website`, `cm_city`, `cm_cash_flow`, `cm_gross_profit`) VALUES ('AAP','Advance Auto Parts Inc.',41000,'https://www.advanceautoparts.com','Raleigh',670419968,4931356000);
        INSERT INTO `company_master` (`cm_symbol`, `cm_short_name`, `cm_fulltime_employees`, `cm_website`, `cm_city`, `cm_cash_flow`, `cm_gross_profit`) VALUES ('AAPL','Apple Inc.',164000,'https://www.apple.com','Cupertino',122151002112,170782000000);
        INSERT INTO `company_master` (`cm_symbol`, `cm_short_name`, `cm_fulltime_employees`, `cm_website`, `cm_city`, `cm_cash_flow`, `cm_gross_profit`) VALUES ('ABC','AmerisourceBergen Corporation',39000,'https://www.amerisourcebergen.com','Conshohocken',2703088128,8334565000);
        INSERT INTO `company_master` (`cm_symbol`, `cm_short_name`, `cm_fulltime_employees`, `cm_website`, `cm_city`, `cm_cash_flow`, `cm_gross_profit`) VALUES ('ABMD','ABIOMED, Inc.',2003,'https://www.abiomed.com','Danvers',250983008,843595000);
        INSERT INTO `company_master` (`cm_symbol`, `cm_short_name`, `cm_fulltime_employees`, `cm_website`, `cm_city`, `cm_cash_flow`, `cm_gross_profit`) VALUES ('ABT','Abbott Laboratories',113000,'https://www.abbott.com','North Chicago',10321999872,25009000000);
        INSERT INTO `company_master` (`cm_symbol`, `cm_short_name`, `cm_fulltime_employees`, `cm_website`, `cm_city`, `cm_cash_flow`, `cm_gross_profit`) VALUES ('ADBE','Adobe Inc.',25988,'https://www.adobe.com','San Jose',7578999808,13920000000);
        INSERT INTO `company_master` (`cm_symbol`, `cm_short_name`, `cm_fulltime_employees`, `cm_website`, `cm_city`, `cm_cash_flow`, `cm_gross_profit`) VALUES ('ADI','Analog Devices, Inc.',24450,'https://www.analog.com','Wilmington',4475402240,7803870000);
        INSERT INTO `company_master` (`cm_symbol`, `cm_short_name`, `cm_fulltime_employees`, `cm_website`, `cm_city`, `cm_cash_flow`, `cm_gross_profit`) VALUES ('ADM','Archer-Daniels-Midland Company',39218,'https://www.adm.com','Chicago',4089999872,5987000000);
        
### Company Details
        INSERT INTO `company_details` (`cmd_symbol`, `cmd_price`, `cmd_price_change_percent`, `cmd_pe_ratio`, `cmd_market_cap`, `cmd_volume`, `cmd_avg_volume`) VALUES ('A',157.24,'-0.3%','37.71','46.55 billion','11,045','1.73 million');
        INSERT INTO `company_details` (`cmd_symbol`, `cmd_price`, `cmd_price_change_percent`, `cmd_pe_ratio`, `cmd_market_cap`, `cmd_volume`, `cmd_avg_volume`) VALUES ('AAL',13.42,'-0.3%',NULL,'8.72 billion','687,561','36.03 million');
        INSERT INTO `company_details` (`cmd_symbol`, `cmd_price`, `cmd_price_change_percent`, `cmd_pe_ratio`, `cmd_market_cap`, `cmd_volume`, `cmd_avg_volume`) VALUES ('AAP',144.66,'-0.7%','18.59','8.70 billion','32,411','874,529');
        INSERT INTO `company_details` (`cmd_symbol`, `cmd_price`, `cmd_price_change_percent`, `cmd_pe_ratio`, `cmd_market_cap`, `cmd_volume`, `cmd_avg_volume`) VALUES ('ABBV',165.8,'+0.6%','22.14','293.21 billion','72,584','6.54 million');
        INSERT INTO `company_details` (`cmd_symbol`, `cmd_price`, `cmd_price_change_percent`, `cmd_pe_ratio`, `cmd_market_cap`, `cmd_volume`, `cmd_avg_volume`) VALUES ('ABC',165.61,'+0.4%','20.60','34.06 billion','12,931','1.31 million');
        INSERT INTO `company_details` (`cmd_symbol`, `cmd_price`, `cmd_price_change_percent`, `cmd_pe_ratio`, `cmd_market_cap`, `cmd_volume`, `cmd_avg_volume`) VALUES ('ABMD',380.37,'+0.0%','65.36','17.15 billion','18,222','508,513');
        INSERT INTO `company_details` (`cmd_symbol`, `cmd_price`, `cmd_price_change_percent`, `cmd_pe_ratio`, `cmd_market_cap`, `cmd_volume`, `cmd_avg_volume`) VALUES ('ABT',112.41,'+0.8%','25.37','196.00 billion','69,379','5.59 million');
        INSERT INTO `company_details` (`cmd_symbol`, `cmd_price`, `cmd_price_change_percent`, `cmd_pe_ratio`, `cmd_market_cap`, `cmd_volume`, `cmd_avg_volume`) VALUES ('ACN',295.2,'-0.1%','27.56','186.15 billion','39,927','2.32 million');
        INSERT INTO `company_details` (`cmd_symbol`, `cmd_price`, `cmd_price_change_percent`, `cmd_pe_ratio`, `cmd_market_cap`, `cmd_volume`, `cmd_avg_volume`) VALUES ('ADBE',342.33,'0.0%','33.76','159.15 billion','68,877','3.56 million');
        INSERT INTO `company_details` (`cmd_symbol`, `cmd_price`, `cmd_price_change_percent`, `cmd_pe_ratio`, `cmd_market_cap`, `cmd_volume`, `cmd_avg_volume`) VALUES ('ADI',174.86,'-0.4%','33.12','89.06 billion','30,217','3.66 million');
        
### Company Location
        INSERT INTO `company_location` (`cl_city`, `cl_state`) VALUES ('Akron','OH');
        INSERT INTO `company_location` (`cl_city`, `cl_state`) VALUES ('Allentown','PA');
        INSERT INTO `company_location` (`cl_city`, `cl_state`) VALUES ('Ann Arbor','MI');
        INSERT INTO `company_location` (`cl_city`, `cl_state`) VALUES ('Arlington','TX');
        INSERT INTO `company_location` (`cl_city`, `cl_state`) VALUES ('Arlington','VA');
        INSERT INTO `company_location` (`cl_city`, `cl_state`) VALUES ('Armonk','NY');
        INSERT INTO `company_location` (`cl_city`, `cl_state`) VALUES ('Ashburn','VA');
        INSERT INTO `company_location` (`cl_city`, `cl_state`) VALUES ('Atlanta','GA');
        INSERT INTO `company_location` (`cl_city`, `cl_state`) VALUES ('Auburn Hills','MI');
        INSERT INTO `company_location` (`cl_city`, `cl_state`) VALUES ('Austin','MN');
        
### Daily Prices
        INSERT INTO `daily_prices` (`dp_id`, `dp_date`, `dp_ticker`, `dp_adj_close`, `dp_close`, `dp_high`, `dp_low`, `dp_open`, `dp_volume`) VALUES (12932,'2022-01-14','AAPL',172.071,173.07,173.78,171.09,171.34,80440800);
        INSERT INTO `daily_prices` (`dp_id`, `dp_date`, `dp_ticker`, `dp_adj_close`, `dp_close`, `dp_high`, `dp_low`, `dp_open`, `dp_volume`) VALUES (12933,'2022-01-14','AMZN',162.138,162.138,162.25,159.801,160.15,45974000);
        INSERT INTO `daily_prices` (`dp_id`, `dp_date`, `dp_ticker`, `dp_adj_close`, `dp_close`, `dp_high`, `dp_low`, `dp_open`, `dp_volume`) VALUES (12934,'2022-01-14','MSFT',307.32,310.2,310.82,303.75,304.25,39846400);
        INSERT INTO `daily_prices` (`dp_id`, `dp_date`, `dp_ticker`, `dp_adj_close`, `dp_close`, `dp_high`, `dp_low`, `dp_open`, `dp_volume`) VALUES (12935,'2022-01-14','TSLA',349.87,349.87,350.667,337.793,339.96,72924300);
        INSERT INTO `daily_prices` (`dp_id`, `dp_date`, `dp_ticker`, `dp_adj_close`, `dp_close`, `dp_high`, `dp_low`, `dp_open`, `dp_volume`) VALUES (12936,'2022-01-18','AAPL',168.82,169.8,172.54,169.41,171.51,90956700);
        INSERT INTO `daily_prices` (`dp_id`, `dp_date`, `dp_ticker`, `dp_adj_close`, `dp_close`, `dp_high`, `dp_low`, `dp_open`, `dp_volume`) VALUES (12937,'2022-01-18','AMZN',158.917,158.917,159.734,157.665,159.105,67292000);
        INSERT INTO `daily_prices` (`dp_id`, `dp_date`, `dp_ticker`, `dp_adj_close`, `dp_close`, `dp_high`, `dp_low`, `dp_open`, `dp_volume`) VALUES (12938,'2022-01-18','MSFT',299.84,302.65,309.8,301.74,304.07,42333200);
        INSERT INTO `daily_prices` (`dp_id`, `dp_date`, `dp_ticker`, `dp_adj_close`, `dp_close`, `dp_high`, `dp_low`, `dp_open`, `dp_volume`) VALUES (12939,'2022-01-18','TSLA',343.503,343.503,356.93,338.687,342.203,66743400);
        INSERT INTO `daily_prices` (`dp_id`, `dp_date`, `dp_ticker`, `dp_adj_close`, `dp_close`, `dp_high`, `dp_low`, `dp_open`, `dp_volume`) VALUES (12940,'2022-01-19','AAPL',165.271,166.23,171.08,165.94,170,94815000);
        INSERT INTO `daily_prices` (`dp_id`, `dp_date`, `dp_ticker`, `dp_adj_close`, `dp_close`, `dp_high`, `dp_low`, `dp_open`, `dp_volume`) VALUES (12941,'2022-01-19','AMZN',156.299,156.299,159.25,156.25,158.762,53242000);
        
### Hourly Prices
        INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (413,'2022-12-14 09:30:00','AAPL',146,146,146.655,145.07,145.35,9784672);
        INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (414,'2022-12-14 09:30:00','AMZN',93.1499,93.1499,93.3799,92.28,92.502,11490960);
        INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (415,'2022-12-14 09:30:00','MSFT',260.86,260.86,261,256.92,257.13,5069260);
        INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (416,'2022-12-14 09:30:00','TSLA',158.259,158.259,161.62,157.34,159.25,37342162);
        INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (417,'2022-12-14 10:30:00','AAPL',146.075,146.075,146.385,145.58,146.01,8606074);
        INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (418,'2022-12-14 10:30:00','AMZN',93.1199,93.1199,93.4581,92.6616,93.1401,7977290);
        INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (419,'2022-12-14 10:30:00','MSFT',261.67,261.67,261.7,260.05,260.85,3770425);
        INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (420,'2022-12-14 10:30:00','TSLA',156.81,156.81,158.32,155.88,158.28,22320603);
        INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (421,'2022-12-14 11:30:00','AAPL',145.5,145.5,146.23,145.42,146.07,4660299);
        INSERT INTO `hourly_prices` (`hp_id`, `hp_date`, `hp_ticker`, `hp_adj_close`, `hp_close`, `hp_high`, `hp_low`, `hp_open`, `hp_volume`) VALUES (422,'2022-12-14 11:30:00','AMZN',92.51,92.51,93.32,92.43,93.1,4952528);
        
### Delete Script (If Required)
        delete from ticker_master where tck_symbol is not null;
        DELETE FROM TICKER_DETAILS WHERE td_ticker is not null;
        delete from ticker_industry where ti_sub_industry is not null;
        delete from company_master where cm_symbol is not null;
        delete from company_details where cmd_symbol is not null;
        delete from company_location where cl_city is not null;
        delete from hourly_prices where hp_id is not null;
        delete from daily_prices where dp_id is not null;
