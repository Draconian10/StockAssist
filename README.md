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

## Conceptual Model
![Stock_Market drawio(2)](https://user-images.githubusercontent.com/23314479/207480136-c54e884e-b33c-4d5a-885c-37ece58edbe3.png)

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

## Use Cases

### What is the profit of GOOGLE in last 1 year?

#### SQL:
        SELECT tck_symbol, cm_short_name, cm_gross_profit from Company_master cm INNER JOIN ticker_master tck ON cm.cm_symbol = tck.tck_symbol WHERE tck.tck_symbol ='GOOGL';
![image](https://user-images.githubusercontent.com/23314479/207746229-74c80355-1570-4bd9-b427-45627cc044ac.png)

### What are the companies having the net income above 200 billion dollars?
#### SQL:
    SELECT cm.cm_short_name, td_total_revenue FROM Ticker_details td INNER JOIN Company_Master cm ON td.td_ticker = cm.cm_symbol WHERE td.td_total_revenue >= 200000000000 ORDER BY td_total_revenue;
![image](https://user-images.githubusercontent.com/23314479/207746315-a3e8d687-5af5-4932-8728-bd2bbc1eb09f.png)

### Which sector does Tesla comes under?
#### SQL:
    SELECT cm.cm_short_name, ti.ti_sector from Ticker_Master t, Company_Master cm, ticker_industry ti where
    t.tck_symbol = cm.cm_symbol and ti_sub_industry = tck_sub_industry and cm.cm_symbol = 'TSLA';
![image](https://user-images.githubusercontent.com/23314479/207746810-5e65ed35-4c0f-4dfd-b1f5-5d04b65c1120.png)

### What is the net annual revenue of Netflix?
#### SQL:
    SELECT cm_short_name, td.td_total_revenue FROM Ticker_Details td INNER JOIN Company_Master cm ON
    td.td_ticker = cm.cm_symbol WHERE cm_symbol='NFLX';
![image](https://user-images.githubusercontent.com/23314479/207746552-fdd82865-c7d8-4d41-a209-9cace4451028.png)

### What is the 52 week low of Apple?
#### SQL:
    SELECT cm.cm_short_name, td.td_52_week_low from Ticker_Details td INNER JOIN Company_Master cm ON
    td.td_ticker = cm.cm_symbol WHERE cm_symbol ='AAPL';
![image](https://user-images.githubusercontent.com/23314479/207746599-844aefcb-86c3-4826-9b38-bb865af81597.png)

### What is the highest daily close for Microsoft?
#### SQL:
    SELECT cm_symbol, dp_close FROM Daily_Prices dp INNER JOIN Company_Master cm ON dp.dp_ticker = cm.cm_symbol 
    WHERE cm.cm_symbol = 'MSFT' ORDER BY dp_close DESC LIMIT 1;
![image](https://user-images.githubusercontent.com/23314479/207746890-0c8cab62-b709-4ef1-b159-863b9b5059d4.png)

### What is the net annual revenue of Tesla?
#### SQL:
    SELECT cm_short_name, td.td_total_revenue FROM Ticker_Details td INNER JOIN Company_Master cm
    ON td.td_ticker = cm.cm_symbol WHERE cm_symbol='TSLA';
![image](https://user-images.githubusercontent.com/23314479/207746987-b459c560-582b-4cde-bb6e-59b7e1da6de2.png)

### Which sector does Apple Inc. comes under?
#### SQL:
    SELECT cm.cm_short_name, ti.ti_sector from Ticker_Master t, Company_Master cm, ticker_industry ti where
    t.tck_symbol = cm.cm_symbol and ti_sub_industry = tck_sub_industry and cm.cm_symbol = 'AAPL';
![image](https://user-images.githubusercontent.com/23314479/207747056-99b2a227-bb07-47e0-834e-97f1f05ddcbd.png)

### Which is the highest paying dividend company?
#### SQL:    
    SELECT cm.cm_short_name, td.td_dividend_rate from Ticker_Details td INNER JOIN Company_Master
    cm ON td.td_ticker = cm.cm_symbol ORDER BY td.td_dividend_rate DESC LIMIT 1;
![image](https://user-images.githubusercontent.com/23314479/207747130-c8a889c6-b564-4e25-8507-033cc6f65578.png)

### What are the top losers stocks of the day?
#### SQL:
    select dp_ticker, dp_date, (dp_close-dp_open) price_change from daily_prices
    where dp_date = '2022-12-02' order by price_change limit 5;
![image](https://user-images.githubusercontent.com/23314479/207748517-6bec1f7a-fdb2-4ffe-b342-22dc41bf1060.png)

## Views

### What is the market cap of any particular stock?

#### SQL:
    create or replace view cmp_market_cap as select cm.cm_symbol cmc_symbol, cm.cm_short_name cmc_company_name, cd.cmd_market_cap cmc_market_cap from company_details cd, company_master cm where cd.cmd_symbol = cm.cm_symbol;
![image](https://user-images.githubusercontent.com/23314479/207749409-86293019-003a-4235-a5cc-8f11b93d050e.png)
    
    
### Which companies have high operating cash flow?

#### SQL:
    create or replace view cmp_cash_flow as select td.tck_symbol ccf_symbol, cm.cm_short_name ccf_company_name, cm.cm_cash_flow ccf_cash_flow from company_master cm, ticker_master td where td.tck_symbol = cm.cm_symbol order by cm.cm_cash_flow desc;
![image](https://user-images.githubusercontent.com/23314479/207749531-27073149-0aa6-4276-a49b-d86e8def953f.png)
    
    
### What was the change in price of the stock over time?

#### SQL:
    create or replace view amzn_stock_price_change as select dp_ticker aspc_ticker, ((select dp_close from daily_prices where dp_ticker = 'AMZN' and dp_date = (select max(dp_date) from daily_prices where dp_ticker = 'AMZN')) - (select dp_close from daily_prices where dp_ticker = 'AMZN' and dp_date = (select min(dp_date) from daily_prices where dp_ticker = 'AMZN'))) aspc_price_change from daily_prices where dp_ticker = 'AMZN' group by dp_ticker;
![image](https://user-images.githubusercontent.com/23314479/207749585-b43f3f8b-41d6-4127-821c-a050c0b9a552.png)
    

### What was the daily return of the stock on average?

#### SQL:
    create or replace view tck_daily_returns as select dp_ticker tdr_ticker, dp_date tdr_date, (dp_close-dp_open) tdr_daily_return from daily_prices order by dp_ticker, dp_date;
![image](https://user-images.githubusercontent.com/23314479/207749670-18a10c25-db08-4d9e-affd-a2075d8e6bdb.png)
    

### What was the moving average of the various stocks?

#### SQL:
    create or replace view tck_moving_avg as select hp_ticker tma_ticker, hp_date tma_date, (sum(hp_close)/count(hp_close)) tma_mov_avg from hourly_prices;
![image](https://user-images.githubusercontent.com/23314479/207749858-e15b35e9-561a-4666-b889-482edd4af7ea.png)
    

### Which are the highest dividend paying stocks?

#### SQL:
    create or replace view high_dividend_stocks as select tm.tck_symbol, tm.tck_security, td.td_dividend_rate from ticker_details td, ticker_master tm where td.td_ticker = tm.tck_symbol order by td.td_dividend_rate desc limit 5;
![image](https://user-images.githubusercontent.com/23314479/207749927-64d7a6d6-ad86-4fb8-a453-d07875c9875a.png)
    
    
### How much value do we put at risk by investing in a particular stock?

#### SQL:
    create or replace view msft_risk_reward_ratio as select dp1.dp_ticker, (((dp2.dp_close - dp1.dp_close)*dp1.dp_volume)/(dp1.dp_close * dp1.dp_volume)) risk_reward from daily_prices dp1, daily_prices dp2 where dp1.dp_date = dp2.dp_date + 1 and dp1.dp_ticker = 'MSFT' and dp2.dp_ticker = 'MSFT' group by dp1.dp_ticker, dp2.dp_ticker;
![image](https://user-images.githubusercontent.com/23314479/207749970-998cef56-22bd-4b0e-abc6-4175634c3d1c.png)
    
    
### Which stocks achieved the 52 week high within the last week?

#### SQL:
    create or replace view last_52_week_high_stocks as select tck_symbol lwhs_ticker, tck_security lwhs_security_name, td_52_week_high lwhs_52_week_high from ticker_details, ticker_master where tck_symbol = td_ticker order by td_52_week_high desc limit 5;
![image](https://user-images.githubusercontent.com/23314479/207750033-abe09750-46f1-4062-802c-3e62e26d5b9d.png)
    
    
### Which are the highest performing stocks in the Technology sector for the day?

#### SQL:
    create or replace view high_performance_tech_stocks as select tck_symbol hpts_symbol, tck_security hpts_security_name, ti_sector hpts_sector, dp_close hpts_close_price from ticker_master, daily_prices, ticker_industry where tck_symbol = dp_ticker and ti_sub_industry = tck_sub_industry and ti_sector = 'Information Technology' and dp_date = (select max(dp_date) from daily_prices) order by dp_close desc;
![image](https://user-images.githubusercontent.com/23314479/207750139-a205165c-23e2-4d87-bfcd-f4770e092424.png)
    

### What is the annual net income of a given company?

#### SQL:
    create or replace view company_net_income as select td.td_ticker cni_ticker, cm.cm_short_name cni_company_name, td.td_total_revenue cni_net_income from ticker_details td, company_master cm where td.td_ticker = cm.cm_symbol order by cni_net_income desc;
![image](https://user-images.githubusercontent.com/23314479/207750213-4a320e00-0bd2-4a37-83bc-4ccef8fdd369.png)
    

### what is the 52 week low of any particular stock?

#### SQL:
    create or replace view tck_52_week_low_stocks as SELECT cm.cm_short_name twls_company_name, td.td_52_week_low twls_52_week_low from Ticker_Details td, Company_Master cm where td.td_ticker = cm.cm_symbol order by td.td_52_week_low desc;
![image](https://user-images.githubusercontent.com/23314479/207750283-7e6b58b8-129c-4790-b278-d30c2ced0aaf.png)
    

### What is the net annual revenue of Netflix?

#### SQL:
    create or replace view nflx_net_revenue as SELECT cm_short_name nnr_short_name, td.td_total_revenue nnr_annual_revenue FROM Ticker_Details td, Company_Master cm where td.td_ticker = cm.cm_symbol and cm_symbol='NFLX';
![image](https://user-images.githubusercontent.com/23314479/207750372-51e928e5-8b39-4088-9913-b2941cc1d58d.png)
    

### List the companies based on their sector.

#### SQL:
    create or replace view company_sector as SELECT tck_security, t.ti_sector from Ticker_industry t, ticker_master tck where t.ti_sub_industry = tck_sub_industry order by ti_sector;
![image](https://user-images.githubusercontent.com/23314479/207750434-1cee2bb0-5ccc-4d4b-af2a-70aaeb3f3353.png)
    
    
### What is the lowest daily close for Microsoft?

#### SQL:
    create or replace view msft_lowest_daily_close as select dp_ticker mldc_ticker, dp_close mldc_close from daily_prices where dp_ticker = 'MSFT' and dp_close = (select min(dp_close) from daily_prices where dp_ticker = 'MSFT');
![image](https://user-images.githubusercontent.com/23314479/207750502-4e661247-51be-4fe1-ac45-2ea7ee9117af.png)
    
    
## What are the companies having the net income above 200 billion dollars?

#### SQL:
    create or replace view cmp_inc_over_two_billion as SELECT cm.cm_short_name ciotb_company_name, td_total_revenue ciotb_income FROM Ticker_details td, Company_Master cm where td.td_ticker = cm.cm_symbol and td.td_total_revenue >= 200000000000 ORDER BY td_total_revenue;
![image](https://user-images.githubusercontent.com/23314479/207750542-73cc37b1-93f1-4eb4-a9d1-766cf9de7a74.png)
    
    
### What is the profit of GOOGLE in last 1 year?

#### SQL:
    create or replace view googl_gross_profit as SELECT tck_symbol ggp_symbol, cm_short_name ggp_company_name, cm_gross_profit ggp_gross_profit from Company_master cm, ticker_master tck where cm.cm_symbol = tck.tck_symbol and tck.tck_symbol ='GOOGL';
![image](https://user-images.githubusercontent.com/23314479/207750582-669d786c-cb94-4813-9f19-38c92968e667.png)
