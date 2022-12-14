# Stock Market Prediction and Recommendation System

## Team Members: 
- Yash Pankhania (pankhania.y@northeastern.edu)
- Pavan Raval (raval.pa@northeastern.edu)

Github Repository URL: https://github.com/Draconian10/StockAssist

## Summary:
### A fully functional Stock Market database system which predicts stock prices and recommends stocks based on the business strategy to the users.

## Data Normalization
Normalization is a database design strategy that lowers data redundancy by eliminating undesirable traits like Insertion, Update, and Deletion anomalies. The purpose of Normalisation in SQL is to eliminate redundant (repetitive) data and ensure data is stored logically.
Normalization has been performed upon the Stock Assist database and their respective SQL scripts have been stored at the following link:
https://github.com/Draconian10/StockAssist/tree/main/Data_Normalization/SQL_Scripts

## Database Normal Forms
### 1NF (First Normal Form)
This is the 'basic' level of normalization which ensures there are no repeating entries in a group. The requirements to satisfy the 1NF are as follows:
- Each table needs to contain a primary key, minimal set of attributes which can
uniquely identify a record
- The values in each and every columns of the table need to be atomic (Multi-valued attributes are not allowed)
- No repeating groups (No two column can contain similar data inside the same table)

#### Conversion to 1NF
1. Eliminate all the repeating groups to make sure that each cell has a single value
2. Identify the Primary key uniquely for each attribute if not already present
3. Identify all the Dependencies found inside the table structure

### 2NF (Second Normal Form)
This level of normalization makes sure that that the table does not any repeating groups as well as partial key dependencies. The requirements to satisfy the 2NF are as follows:
- All requirements for the 1NF must be met
- Redundant data all over the table needs to be transferred to a separate table (The resulting tables need to be related to eachother using a foreign key)

#### Conversion to 2NF
1. Write each key component along with the original composite key
2. Assign Corresponding Dependent Attributes which are dependent on others

### 3NF (Third Normal Form)
This level of normalization makes sure that the table contains no repeating groups, no partial functional dependencies, and no transitive functional dependencies. The requirements to satisfy the 2NF are as follows:
- All requirements for 2nd NF must be met
- Eliminate transitive dependencies (Eliminate all the fields that do not directly depend upon the primary key)

#### Conversion to 3NF
1. Identify each new determinant for every transitive dependency
2. Identify the dependent attributes using the determinants determined in Step 1
3. Eliminate the Dependent Attributes from Transitive Dependencies

## Conceptual Model
![Stock_Market drawio(2)](https://user-images.githubusercontent.com/23314479/207480136-c54e884e-b33c-4d5a-885c-37ece58edbe3.png)


## Data Normalization in Stock Assist Database
Normalization has been performed upon the following tables in the Stock Assist Database:
- Ticker Master
- Ticker Details
- Company Master
- Company Details
- Daily Prices
- Hourly Prices

### Ticker Master
![image](https://user-images.githubusercontent.com/23314479/207473320-32a75951-8700-4752-b70b-208f7bf4001b.png)

#### First Normal Form: Ticker Master satisfies 1NF Requirements
- Ticker Master table can be indentified by the primary key (tck_symbol, tck_security)
- No multi-valued attributes are present
- No repeating groups

#### Second Normal Form: Ticker Master satisfies 2NF Requirements
- All requirements of 1NF are being met
- No calculated data present
- No partial dependency of any columns on the primary key

#### Third Normal Form: Ticker Master does not satisfy 3NF Requirements
- All requirements of 2NF are being met
- However, ticker master contains transitive dependency on the columns - tck_sector and tck_sub_industry

#### Removing Transitive Dependency
Transitive dependency is eliminated from the Ticker Master table by creating a new table called Ticker Industry. Ticker Industry consists of ti_sector and ti_sub_industry where ti_sub_industry is the primary key.

![image](https://user-images.githubusercontent.com/23314479/207473061-da6c8d4f-6c8e-4d65-97f5-fa731a568955.png)

Finally, the column tck_sector is removed from the Ticker Master table in order to remove transitive dependency. The tck_sub_industry is a foreign key which references to the ti_sub_industry column in the Ticker Industry table. The resulting Ticker Master table is as follows:

![image](https://user-images.githubusercontent.com/23314479/207473415-9a75b4d6-3843-441a-9bea-a156abf4b512.png)

### Ticker Details
![image](https://user-images.githubusercontent.com/23314479/207473758-28fc79f7-b56e-49db-908e-d3ea269f0cec.png)

#### First Normal Form: Ticker Details satisfies 1NF Requirements
- Ticker Details table can be indentified by the primary key (td_ticker)
- No multi-valued attributes are present
- No repeating groups

#### Second Normal Form: Ticker Details satisfies 2NF Requirements
- All requirements of 1NF are being met
- No calculated data present
- No partial dependency of any columns on the primary key

#### Third Normal Form: Ticker Details satisfies 3NF Requirements
- All requirements of 2NF are being met
- No transitive dependency present

### Company Master
![image](https://user-images.githubusercontent.com/23314479/207474600-6f0b9b08-6401-4bdf-8948-002532210d99.png)

#### First Normal Form: Company Master satisfies 1NF Requirements
- Ticker Details table can be indentified by the primary key (cm_symbol, cm_short_name)
- No multi-valued attributes are present
- No repeating groups

#### Second Normal Form: Company Master satisfies 2NF Requirements
- All requirements of 1NF are being met
- No calculated data present
- No partial dependency of any columns on the primary key

#### Third Normal Form: Company Master does not satisfy 3NF Requirements
- All requirements of 2NF are being met
- However, company master contains transitive dependency on the columns - cm_city and cm_state

#### Removing Transitive Dependency
Transitive dependency is eliminated from the Company Master table by creating a new table called Company Location. The cm_city is a foreign key which references to the cl_city column in the Company Location table. Company Location consists of cl_city and cl_state where cl_city is the primary key.

![image](https://user-images.githubusercontent.com/23314479/207475033-8d4539e4-09cc-41c8-af2f-5005555041af.png)

Finally, the column cm_state is removed from the Company Master table in order to remove transitive dependency. The resulting Company Master table is as follows:

![image](https://user-images.githubusercontent.com/23314479/207475265-96aeb61e-ae73-45b4-a9f1-8b1d60a1e875.png)

### Company Details
![image](https://user-images.githubusercontent.com/23314479/207475589-57241f22-bde9-4c21-a3d1-16d2f39bb861.png)

#### First Normal Form: Company Details satisfies 1NF Requirements
- Company Details table can be indentified by the primary key (cmd_symbol)
- No multi-valued attributes are present
- No repeating groups

#### Second Normal Form: Company Details satisfies 2NF Requirements
- All requirements of 1NF are being met
- No calculated data present
- No partial dependency of any columns on the primary key

#### Third Normal Form: Company Details satisfies 3NF Requirements
- All requirements of 2NF are being met
- No transitive dependency present

### Daily Prices
![image](https://user-images.githubusercontent.com/23314479/207476141-91629f6a-9b41-4a85-ac32-924e033f75a2.png)

#### First Normal Form: Daily Prices satisfies 1NF Requirements
- Daily Prices table can be indentified by the primary key (dp_id)
- No multi-valued attributes are present
- No repeating groups

#### Second Normal Form: Daily Prices satisfies 2NF Requirements
- All requirements of 1NF are being met
- No calculated data present
- No partial dependency of any columns on the primary key

#### Third Normal Form: Daily Prices does not satisfy 3NF Requirements
- All requirements of 2NF are being met
- However, daily prices contains transitive dependency on the columns - dp_date and dp_ticker since the combination of dp_date and dp_ticker can uniquely identify the whole row.

#### Removing Transitive Dependency
Transitive dependency is eliminated from the Daily Prices table by creating a composite key of dp_id, dp_date and dp_ticker.

### Hourly Prices
![image](https://user-images.githubusercontent.com/23314479/207478605-617da5ca-1f01-4a90-8cf7-98cdd5b70fd0.png)

#### First Normal Form: Hourly Prices satisfies 1NF Requirements
- Hourly Prices table can be indentified by the primary key (hp_id)
- No multi-valued attributes are present
- No repeating groups

#### Second Normal Form: Hourly Prices satisfies 2NF Requirements
- All requirements of 1NF are being met
- No calculated data present
- No partial dependency of any columns on the primary key

#### Third Normal Form: Hourly Prices does not satisfy 3NF Requirements
- All requirements of 2NF are being met
- However, hourly prices contains transitive dependency on the columns - hp_date and hp_ticker since the combination of hp_date and hp_ticker can uniquely identify the whole row.

#### Removing Transitive Dependency
Transitive dependency is eliminated from the Hourly Prices table by creating a composite key of hp_id, hp_date and hp_ticker.

## Create Views for Use Case Scenarios

### What is the market cap of any particular stock?

#### SQL:
    create or replace view cmp_market_cap as select cm.cm_symbol cmc_symbol, cm.cm_short_name cmc_company_name, cd.cmd_market_cap cmc_market_cap from company_details cd, company_master cm where cd.cmd_symbol = cm.cm_symbol;
    
### Which companies have high operating cash flow?

#### SQL:
    create or replace view cmp_cash_flow as select td.tck_symbol ccf_symbol, cm.cm_short_name ccf_company_name, cm.cm_cash_flow ccf_cash_flow from company_master cm, ticker_master td where td.tck_symbol = cm.cm_symbol order by cm.cm_cash_flow desc;
    
### What was the change in price of the stock over time?

#### SQL:
    create or replace view amzn_stock_price_change as select dp_ticker aspc_ticker, ((select dp_close from daily_prices where dp_ticker = 'AMZN' and dp_date = (select max(dp_date) from daily_prices where dp_ticker = 'AMZN')) - (select dp_close from daily_prices where dp_ticker = 'AMZN' and dp_date = (select min(dp_date) from daily_prices where dp_ticker = 'AMZN'))) aspc_price_change from daily_prices where dp_ticker = 'AMZN' group by dp_ticker;

### What was the daily return of the stock on average?

#### SQL:
    create or replace view tck_daily_returns as select dp_ticker tdr_ticker, dp_date tdr_date, (dp_close-dp_open) tdr_daily_return from daily_prices order by dp_ticker, dp_date;

### What was the moving average of the various stocks?

#### SQL:
    create or replace view tck_moving_avg as select hp_ticker tma_ticker, hp_date tma_date, (sum(hp_close)/count(hp_close)) tma_mov_avg from hourly_prices;

### Which are the highest dividend paying stocks?

#### SQL:
    create or replace view high_dividend_stocks as select tm.tck_symbol, tm.tck_security, td.td_dividend_rate from ticker_details td, ticker_master tm where td.td_ticker = tm.tck_symbol order by td.td_dividend_rate desc limit 5;
    
### How much value do we put at risk by investing in a particular stock?

#### SQL:
    create or replace view msft_risk_reward_ratio as select dp1.dp_ticker, (((dp2.dp_close - dp1.dp_close)*dp1.dp_volume)/(dp1.dp_close * dp1.dp_volume)) risk_reward from daily_prices dp1, daily_prices dp2 where dp1.dp_date = dp2.dp_date + 1 and dp1.dp_ticker = 'MSFT' and dp2.dp_ticker = 'MSFT' group by dp1.dp_ticker, dp2.dp_ticker;
    
### Which stocks achieved the 52 week high within the last week?

#### SQL:
    create or replace view last_52_week_high_stocks as select tck_symbol lwhs_ticker, tck_security lwhs_security_name, td_52_week_high lwhs_52_week_high from ticker_details, ticker_master where tck_symbol = td_ticker order by td_52_week_high desc limit 5;
    
### Which are the highest performing stocks in the Technology sector for the day?

#### SQL:
    create or replace view high_performance_tech_stocks as select tck_symbol hpts_symbol, tck_security hpts_security_name, ti_sector hpts_sector, dp_close hpts_close_price from ticker_master, daily_prices, ticker_industry where tck_symbol = dp_ticker and ti_sub_industry = tck_sub_industry and ti_sector = 'Information Technology' and dp_date = (select max(dp_date) from daily_prices) order by dp_close desc;

### What is the annual net income of a given company?

#### SQL:
    create or replace view company_net_income as select td.td_ticker cni_ticker, cm.cm_short_name cni_company_name, td.td_total_revenue cni_net_income from ticker_details td, company_master cm where td.td_ticker = cm.cm_symbol order by cni_net_income desc;

### what is the 52 week low of any particular stock?

#### SQL:
    create or replace view tck_52_week_low_stocks as SELECT cm.cm_short_name twls_company_name, td.td_52_week_low twls_52_week_low from Ticker_Details td, Company_Master cm where td.td_ticker = cm.cm_symbol order by td.td_52_week_low desc;

### What is the net annual revenue of Netflix?

#### SQL:
    create or replace view nflx_net_revenue as SELECT cm_short_name nnr_short_name, td.td_total_revenue nnr_annual_revenue FROM Ticker_Details td, Company_Master cm where td.td_ticker = cm.cm_symbol and cm_symbol='NFLX';

### List the companies based on their sector.

#### SQL:
    create or replace view company_sector as SELECT tck_security, t.ti_sector from Ticker_industry t, ticker_master tck where t.ti_sub_industry = tck_sub_industry order by ti_sector;
    
### What is the lowest daily close for Microsoft?

#### SQL:
    create or replace view msft_lowest_daily_close as select dp_ticker mldc_ticker, dp_close mldc_close from daily_prices where dp_ticker = 'MSFT' and dp_close = (select min(dp_close) from daily_prices where dp_ticker = 'MSFT');
    
## What are the companies having the net income above 200 billion dollars?

#### SQL:
    create or replace view cmp_inc_over_two_billion as SELECT cm.cm_short_name ciotb_company_name, td_total_revenue ciotb_income FROM Ticker_details td, Company_Master cm where td.td_ticker = cm.cm_symbol and td.td_total_revenue >= 200000000000 ORDER BY td_total_revenue;
    
### What is the profit of GOOGLE in last 1 year?

#### SQL:
    create or replace view googl_gross_profit as SELECT tck_symbol ggp_symbol, cm_short_name ggp_company_name, cm_gross_profit ggp_gross_profit from Company_master cm, ticker_master tck where cm.cm_symbol = tck.tck_symbol and tck.tck_symbol ='GOOGL';
