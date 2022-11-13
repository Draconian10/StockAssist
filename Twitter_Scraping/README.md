# Stock Market Prediction and Recommendation System

## Team Members: 
- Yash Pankhania (pankhania.y@northeastern.edu)
- Pavan Raval (raval.pa@northeastern.edu)

Github Repository URL: https://github.com/Draconian10/StockAssist

## Summary:
### A fully functional Stock Market database system which predicts stock prices and recommends stocks based on the business strategy to the users.

## Twitter Scraping
We have used a Python library called Tweepy to access the Twitter API and fetch tweets and user data. This data is further stored into MySQL database.

Refer: https://github.com/Draconian10/StockAssist/blob/main/Twitter_Scraping/Twitter_Bot.ipynb

Further, we have created our own database tables in relation to stock market as follows:
- Ticker_Master
- Ticker_Details
- Company_Master
- Daily_Prices
- Hourly_Prices

You can find their respective DDL and DML scripts at the following link:
https://github.com/Draconian10/StockAssist/tree/main/Twitter_Scraping/Stock_Assist_DB_Scripts

## Conceptual Model

![WhatsApp Image 2022-11-12 at 5 11 44 PM](https://user-images.githubusercontent.com/23314479/201498083-9ac3b6d6-a57e-4e8c-ae34-1c91f2e451e3.jpeg)

## Physical Model Queries

### What user posted this tweet?

#### SQL: 
    SELECT u.usr_twitter_handle FROM tweets t, user u WHERE t.twe_twitter_handle = u.usr_twitter_handle AND t.twe_tweet_id = '1591035495957794817';

#### Relational Algebra Expression: 
    πu.usr_twitter_handle
        σt.twe_twitter_handle = u.usr_twitter_handle AND t.twe_tweet_id = "1591035495957794817"
            (ρt tweets × ρu user)

### When did the user post this tweet?

#### SQL: 
    SELECT t.twe_created_at FROM tweets t, user u WHERE t.twe_twitter_handle = u.usr_twitter_handle AND t.twe_tweet_id = '1591035495957794817';

#### Relational Algebra Expression: 
    π t.twe_created_at
        σ t.twe_twitter_handle = u.usr_twitter_handle AND t.twe_tweet_id = "1591035495957794817"
            (ρt tweets ×   ρu user)

### What tweets have this user posted in the past 24 hours?

#### SQL: 
    SELECT t.twe_twitter_handle, t.twe_tweet_id, t.twe_tweet_text FROM tweets t WHERE t.twe_twitter_handle = 'StocksAfterDark' AND t.twe_created_at BETWEEN DATE_SUB(curdate(), INTERVAL 1 DAY) AND curdate();

#### Relational Algebra Expression: 
    πt.twe_twitter_handle, t.twe_tweet_id, t.twe_tweet_text
        σt.twe_twitter_handle = "StocksAfterDark" AND ("11-NOV-2022" <= t.twe_created_at AND t.twe_created_at <= "12-NOV-2022")
            ρt tweets

### How many tweets have this user posted in the past 24 hours?

#### SQL: 
    SELECT COUNT(t.twe_tweet_id) AS Total_Tweets FROM tweets t WHERE t.twe_twitter_handle = 'StocksAfterDark' AND t.twe_created_at BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 DAY) AND CURDATE();

#### Relational Algebra Expression: 
    π COUNT (twe_tweet_id) → total_tweets
        γ COUNT (twe_tweet_id)
            σt.twe_twitter_handle = "StocksAfterDark" AND ("11-NOV-2022" <= t .         twe_created_at AND t.twe_created_at <= "12-NOV-2022")
                ρt tweets

### What keywords/ hashtags are popular?     

#### SQL: 
    SELECT tt.twt_tags, COUNT(tt.twt_tags) AS TAG_COUNT FROM tweet_tags tt GROUP BY tt.twt_tags ORDER BY COUNT(tt.twt_tags) DESC;
    
#### Relational Algebra Expression: 

    τ COUNT (twt_tags) ↓
        π tt.twt_tags, COUNT (twt_tags) → tag_count
            γ twt_tags, COUNT (twt_tags)
                ρ tt tweet_tags
    
### What tweets are popular?
    
#### SQL: 
    SELECT t.twe_twitter_handle, t.twe_tweet_text, t.twe_retweet_count FROM tweets t ORDER BY t.twe_retweet_count DESC;
    
#### Relational Algebra Expression: 
    τ t.twe_retweet_count ↓
        π t.twe_twitter_handle, t.twe_tweet_text, t.twe_retweet_count
            ρt tweets

## Use Case Scenarios

### Which is the highest paying dividend company?

#### SQL: 
    SELECT cm.cm_short_name, MAX(td.td_dividend_rate) FROM ticker_details td, company_master cm WHERE td.td_ticker = cm.cm_symbol GROUP BY cm.cm_short_name ORDER BY MAX(td.td_dividend_rate) DESC LIMIT 1;
    
#### Relational Algebra Expression: 


