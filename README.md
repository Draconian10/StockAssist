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
