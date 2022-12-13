-- Use Case Scenarios

-- What is the market cap of any particular stock?

-- SQL:
    select cm.cm_symbol, cm.cm_short_name, cd.cmd_market_cap from company_details cd, company_master cm where cd.cmd_symbol = cm.cm_symbol and cm.cm_symbol = 'AMZN';

-- Which companies have high operating cash flow?

-- SQL:
    select td.tck_symbol, cm.cm_short_name, cm.cm_cash_flow from company_master cm, ticker_master td where td.tck_symbol = cm.cm_symbol order by cm_cash_flow desc;

-- What was the change in price of the stock over time?

-- SQL:
    select dp_ticker, ((select dp_close from daily_prices where dp_ticker = 'AMZN' and dp_date = (select max(dp_date) from daily_prices where dp_ticker = 'AMZN')) - (select dp_close from daily_prices where dp_ticker = 'AMZN' and dp_date = (select min(dp_date) from daily_prices where dp_ticker = 'AMZN'))) price_change from daily_prices where dp_ticker = 'AMZN' group by dp_ticker;

-- What was the daily return of the stock on average?

-- SQL:
    select dp_ticker, dp_date, (dp_close-dp_open) daily_return from daily_prices where dp_ticker = 'TSLA';

-- What was the moving average of the various stocks?

-- SQL:
    select hp_ticker, hp_date, (sum(hp_close)/count(hp_close)) moving_average from hourly_prices where hp_ticker = 'AMZN';

-- Which are the highest dividend paying stocks?

-- SQL:
    select tm.tck_symbol, tm.tck_security, td.td_dividend_rate from ticker_details td, ticker_master tm where td.td_ticker = tm.tck_symbol order by td.td_dividend_rate desc limit 5;

-- What was the correlation between different stocks' closing prices?

-- SQL:
    select hp_ticker, hp_date, hp_close from hourly_prices where date(hp_date) = curdate();

-- What was the relation between different stocks' daily returns?

-- SQL:
    select dp_ticker, dp_date, (dp_close-dp_open) daily_return from daily_prices;

-- How much value do we put at risk by investing in a particular stock?

-- SQL:
    select dp1.dp_ticker, (((dp2.dp_close - dp1.dp_close)*dp1.dp_volume)/(dp1.dp_close * dp1.dp_volume)) risk_reward from daily_prices dp1, daily_prices dp2 where dp1.dp_date = dp2.dp_date + 1 and dp1.dp_ticker = 'MSFT' and dp2.dp_ticker = 'MSFT' group by dp1.dp_ticker, dp2.dp_ticker;

-- What are the top gainers stocks of the day?

-- SQL:
    select dp_ticker, dp_date, (dp_close-dp_open) gain from daily_prices where dp_date = curdate() order by gain desc limit 5;

-- What are the top losers stocks of the day?

-- SQL:
    select dp_ticker, dp_date, (dp_close-dp_open) price_change from daily_prices where dp_date = curdate() order by price_change limit 5;

-- Which are the highest bought stocks for the day?

-- SQL:
    select dp_ticker, dp_volume from daily_prices where dp_date = curdate() and dp_volume = (select max(dp_volume) from daily_prices where dp_date = curdate());

-- What is the 52 week low for a particular stock?

-- SQL:
    select td_ticker, td_52_week_high from ticker_details where td_ticker = 'ADBE';

-- Which stocks achieved the 52 week high within the last week?

-- SQL:
    select td_ticker, td_52_week_high from ticker_details, ticker_master where tck_symbol = td_ticker order by td_52_week_high desc limit 5;

-- Which are the highest performing stocks in the Technology sector for the day?

-- SQL:
    select tck_symbol, tck_security, tck_sector, dp_close from ticker_master, daily_prices where tck_symbol = dp_ticker and tck_sector = 'Information Technology' and dp_date = curdate() order by dp_close desc;

-- Which are the highest sold stocks for the day?

-- SQL:
    select dp_ticker, dp_volume from daily_prices where dp_date = curdate() order by dp_volume desc;

-- What is the price earning ratio for the given stock?

-- SQL:
    select cmd_symbol, cmd_company_name, cmd_pe_ratio from company_details where cmd_symbol = 'AMD';

-- What is the annual net income of a given company?

-- SQL:
    select td.td_ticker, cm.cm_short_name, td.td_total_revenue from ticker_details td, company_master cm where td.td_ticker = cm.cm_symbol;

-- what is the 52 week low of Apple?

-- SQL:
    SELECT cm.cm_short_name, td.td_52_week_low from Ticker_Details td INNER JOIN Company_Master cm ON td.td_ticker = cm.cm_symbol WHERE cm_symbol ='AAPL';

-- what is the PEG ratio of of MICROSOFT?

-- SQL:
    SELECT td_ticker, td_peg_ratio FROM ticker_details WHERE td_ticker = 'MSFT';

-- What is the net annual revenue of Netflix?

-- SQL:
    SELECT cm_short_name, td.td_total_revenue FROM Ticker_Details td INNER JOIN Company_Master cm ON td.td_ticker = cm.cm_symbol WHERE cm_symbol='NFLX';

-- Which month has the highest opening price for TESLA?

-- SQL:
    SELECT MONTHNAME(STR_TO_DATE(month(dp_date), '%m')) MONTH FROM Daily_Prices WHERE dp_ticker = 'MSFT' ORDER BY dp_open DESC LIMIT 1;

-- Which sector does Tesla comes under?

-- SQL:
    SELECT cm.cm_short_name, t.tck_sector from Ticker_Master t INNER JOIN Company_Master cm ON t.tck_symbol = cm.cm_symbol WHERE cm.cm_symbol = 'TSLA';

-- What is the lowest daily close for Microsoft?

-- SQL:
    select dp_ticker, dp_close from daily_prices where dp_ticker = 'MSFT' and dp_close = (select min(dp_close) from daily_prices where dp_ticker = 'MSFT');

-- What is the stock volume traded at 02:00 to 3:00 for TESLA?

-- SQL:
    SELECT hp_ticker, hp_volume FROM Hourly_Prices WHERE time(hp_date) BETWEEN '14:30' AND '15:30' AND hp_ticker = 'TSLA';

-- What are the companies listed in Financials sector?

-- SQL:
    SELECT tck_symbol, cm.cm_short_name FROM TICKER_MASTER tck, company_master cm WHERE tck.tck_symbol = cm.cm_symbol and tck_sector = 'Financials';

-- What are the companies having the net income above 200 billion dollars?

-- SQL:
    SELECT cm.cm_short_name, td_total_revenue FROM Ticker_details td INNER JOIN Company_Master cm ON td.td_ticker = cm.cm_symbol WHERE td.td_total_revenue >= 200000000000 ORDER BY td_total_revenue;

-- What is the profit of GOOGLE in last 1 year?

-- SQL:
    SELECT tck_symbol, cm_short_name, cm_gross_profit from Company_master cm INNER JOIN ticker_master tck ON cm.cm_symbol = tck.tck_symbol WHERE tck.tck_symbol ='GOOGL';