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

Finally, the column tck_sector is removed from the Ticker Master table in order to remove transitive dependency. The resulting Ticker Master table is as follows:

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
Transitive dependency is eliminated from the Company Master table by creating a new table called Company Location. Company Location consists of cl_city and cl_state where cl_city is the primary key.

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
