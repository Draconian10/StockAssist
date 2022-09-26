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
