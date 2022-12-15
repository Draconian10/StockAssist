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
-- Table structure for table `ticker_master`
--

DROP TABLE IF EXISTS `ticker_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticker_master` (
  `tck_symbol` varchar(10) NOT NULL,
  `tck_security` varchar(255) NOT NULL,
  `tck_sub_industry` varchar(255) DEFAULT NULL,
  `tck_city` varchar(100) DEFAULT NULL,
  `tck_year_founded` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`tck_symbol`,`tck_security`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticker_master`
--

LOCK TABLES `ticker_master` WRITE;
/*!40000 ALTER TABLE `ticker_master` DISABLE KEYS */;
INSERT INTO `ticker_master` VALUES ('A','Agilent Technologies','Health Care Equipment',' California','1999'),('AAL','American Airlines Group','Airlines',' Texas','1934'),('AAP','Advance Auto Parts','Automotive Retail',' North Carolina','1932'),('AAPL','Apple Inc.','Technology Hardware, Storage & Peripherals',' California','1977'),('ABBV','AbbVie','Pharmaceuticals',' Illinois','2013'),('ABC','AmerisourceBergen','Health Care Distributors',' Pennsylvania','1985'),('ABMD','Abiomed','Health Care Equipment',' Massachusetts','1981'),('ABT','Abbott','Health Care Equipment',' Illinois','1888'),('ACGL','Arch Capital Group','Reinsurance',' Bermuda','1995'),('ACN','Accenture','IT Consulting & Other Services',' Ireland','1989'),('ADBE','Adobe Inc.','Application Software',' California','1982'),('ADI','Analog Devices','Semiconductors',' Massachusetts','1965'),('ADM','ADM','Agricultural Products',' Illinois','1902'),('ADP','ADP','Data Processing & Outsourced Services',' New Jersey','1949'),('ADSK','Autodesk','Application Software',' California','1982'),('AEE','Ameren','Multi-Utilities',' Missouri','1902'),('AEP','American Electric Power','Electric Utilities',' Ohio','1906'),('AES','AES Corporation','Independent Power Producers & Energy Traders',' Virginia','1981'),('AFL','Aflac','Life & Health Insurance',' Georgia','1955'),('AIG','American International Group','Property & Casualty Insurance',' New York','1919'),('AIZ','Assurant','Multi-line Insurance',' New York','1892'),('AJG','Arthur J. Gallagher & Co.','Insurance Brokers',' Illinois','1927'),('AKAM','Akamai','Internet Services & Infrastructure',' Massachusetts','1998'),('ALB','Albemarle Corporation','Specialty Chemicals',' North Carolina','1994'),('ALGN','Align Technology','Health Care Supplies',' Arizona','1997'),('ALK','Alaska Air Group','Airlines',' Washington','1985'),('ALL','Allstate','Property & Casualty Insurance',' Illinois','1931'),('ALLE','Allegion','Building Products',' New York','1908'),('AMAT','Applied Materials','Semiconductor Equipment',' California','1967'),('AMCR','Amcor','Paper Packaging',' Bristol, United Kingdom','2019'),('AMD','AMD','Semiconductors',' California','1969'),('AME','Ametek','Electrical Components & Equipment',' Pennsylvania','1930'),('AMGN','Amgen','Biotechnology',' California','1980'),('AMP','Ameriprise Financial','Asset Management & Custody Banks',' Minnesota','1894'),('AMT','American Tower','Specialized REITs',' Massachusetts','1995'),('AMZN','Amazon','Internet & Direct Marketing Retail',' Washington','1994'),('ANET','Arista Networks','Communications Equipment',' California','2004'),('ANSS','Ansys','Application Software',' Pennsylvania','1969'),('AON','Aon','Insurance Brokers',' UK','1982'),('AOS','A. O. Smith','Building Products',' Wisconsin','1916'),('APA','APA Corporation','Oil & Gas Exploration & Production',' Texas','1954'),('APD','Air Products and Chemicals','Industrial Gases',' Pennsylvania','1940'),('APH','Amphenol','Electronic Components',' Connecticut','1932'),('APTV','Aptiv','Auto Parts & Equipment',' Ireland','1994'),('ARE','Alexandria Real Estate Equities','Office REITs',' California','1994'),('ATO','Atmos Energy','Gas Utilities',' Texas','1906'),('ATVI','Activision Blizzard','Interactive Home Entertainment',' California','2008'),('AVB','AvalonBay Communities','Residential REITs',' Virginia','1978'),('AVGO','Broadcom Inc.','Semiconductors',' California','1961'),('AVY','Avery Dennison','Paper Packaging',' California','1990'),('AWK','American Water Works','Water Utilities',' New Jersey','1886'),('AXP','American Express','Consumer Finance',' New York','1850'),('AZO','AutoZone','Specialty Stores',' Tennessee','1979'),('BA','Boeing','Aerospace & Defense',' Illinois','1916'),('BAC','Bank of America','Diversified Banks',' North Carolina','1998'),('BALL','Ball Corporation','Metal & Glass Containers',' Colorado','1880'),('BAX','Baxter International','Health Care Equipment',' Illinois','1931'),('BBWI','Bath & Body Works, Inc.','Specialty Stores',' Ohio','1963'),('BBY','Best Buy','Computer & Electronics Retail',' Minnesota','1966'),('BDX','Becton Dickinson','Health Care Equipment',' New Jersey','1897'),('BEN','Franklin Templeton','Asset Management & Custody Banks',' California','1947'),('BF.B','Brown–Forman','Distillers & Vintners',' Kentucky','1870'),('BIIB','Biogen','Biotechnology',' Massachusetts','1978'),('BIO','Bio-Rad','Life Sciences Tools & Services',' California','1952'),('BK','BNY Mellon','Asset Management & Custody Banks',' New York','1784'),('BKNG','Booking Holdings','Internet & Direct Marketing Retail',' Connecticut','1996'),('BKR','Baker Hughes','Oil & Gas Equipment & Services',' Texas','2017'),('BLK','BlackRock','Asset Management & Custody Banks',' New York','1988'),('BMY','Bristol Myers Squibb','Health Care Distributors',' New York','1989'),('BR','Broadridge Financial Solutions','Data Processing & Outsourced Services',' New York','1962'),('BRK.B','Berkshire Hathaway','Multi-Sector Holdings',' Nebraska','1839'),('BRO','Brown & Brown','Insurance Brokers',' Florida','1939'),('BSX','Boston Scientific','Health Care Equipment',' Massachusetts','1979'),('BWA','BorgWarner','Auto Parts & Equipment',' Michigan','1880'),('BXP','Boston Properties','Office REITs',' Massachusetts','1970'),('C','Citigroup','Diversified Banks',' New York','1998'),('CAG','Conagra Brands','Packaged Foods & Meats',' Illinois','1919'),('CAH','Cardinal Health','Health Care Distributors',' Ohio','1971'),('CARR','Carrier Global','Building Products',' Florida','2020'),('CAT','Caterpillar Inc.','Construction Machinery & Heavy Trucks',' Texas','1925'),('CB','Chubb Limited','Property & Casualty Insurance',' Switzerland','1985'),('CBOE','Cboe Global Markets','Financial Exchanges & Data',' Illinois','1973'),('CBRE','CBRE Group','Real Estate Services',' Texas','1906'),('CCI','Crown Castle','Specialized REITs',' Texas','1994'),('CCL','Carnival','Hotels, Resorts & Cruise Lines',' Florida','1972'),('CDAY','Ceridian','Application Software',' Minnesota','1992'),('CDNS','Cadence Design Systems','Application Software',' California','1988'),('CDW','CDW','Technology Distributors',' Illinois','1984'),('CE','Celanese','Specialty Chemicals',' Texas','1918'),('CEG','Constellation Energy','Multi-Utilities',' Maryland','1999'),('CF','CF Industries','Fertilizers & Agricultural Chemicals',' Illinois','1946'),('CFG','Citizens Financial Group','Regional Banks',' Rhode Island','1828'),('CHD','Church & Dwight','Household Products',' New Jersey','1847'),('CHRW','C.H. Robinson','Air Freight & Logistics',' Minnesota','1905'),('CHTR','Charter Communications','Cable & Satellite',' Connecticut','1993'),('CI','Cigna','Managed Health Care',' Connecticut','1982'),('CINF','Cincinnati Financial','Property & Casualty Insurance',' Ohio','1950'),('CL','Colgate-Palmolive','Household Products',' New York','1806'),('CLX','Clorox','Household Products',' California','1913'),('CMA','Comerica','Diversified Banks',' Texas','1849'),('CMCSA','Comcast','Cable & Satellite',' Pennsylvania','1963'),('CME','CME Group','Financial Exchanges & Data',' Illinois','1848'),('CMG','Chipotle Mexican Grill','Restaurants',' California','1993'),('CMI','Cummins','Industrial Machinery',' Indiana','1919'),('CMS','CMS Energy','Multi-Utilities',' Michigan','1886'),('CNC','Centene Corporation','Managed Health Care',' Missouri','1984'),('CNP','CenterPoint Energy','Multi-Utilities',' Texas','1882'),('COF','Capital One','Consumer Finance',' Virginia','1994'),('COO','CooperCompanies','Health Care Supplies',' California','1958'),('COP','ConocoPhillips','Oil & Gas Exploration & Production',' Texas','2002'),('COST','Costco','Hypermarkets & Super Centers',' Washington','1976'),('CPB','Campbell Soup Company','Packaged Foods & Meats',' New Jersey','1869'),('CPRT','Copart','Diversified Support Services',' Texas','1982'),('CPT','Camden Property Trust','Residential REITs',' Texas','1981'),('CRL','Charles River Laboratories','Life Sciences Tools & Services',' Massachusetts','1947'),('CRM','Salesforce','Application Software',' California','1999'),('CSCO','Cisco','Communications Equipment',' California','1984'),('CSGP','CoStar Group','Research & Consulting Services',' D.C.','1987'),('CSX','CSX','Railroads',' Florida','1980'),('CTAS','Cintas','Diversified Support Services',' Ohio','1929'),('CTLT','Catalent','Pharmaceuticals',' New Jersey','2007'),('CTRA','Coterra','Oil & Gas Exploration & Production',' Texas','2021'),('CTSH','Cognizant','IT Consulting & Other Services',' New Jersey','1994'),('CTVA','Corteva','Fertilizers & Agricultural Chemicals',' Indiana','2019'),('CVS','CVS Health','Health Care Services',' Rhode Island','1996'),('CVX','Chevron Corporation','Integrated Oil & Gas',' California','1879'),('CZR','Caesars Entertainment','Casinos & Gaming',' Nevada','1973'),('D','Dominion Energy','Electric Utilities',' Virginia','1983'),('DAL','Delta Air Lines','Airlines',' Georgia','1929'),('DD','DuPont','Specialty Chemicals',' Delaware','2017'),('DE','John Deere','Agricultural & Farm Machinery',' Illinois','1837'),('DFS','Discover Financial','Consumer Finance',' Illinois','1985'),('DG','Dollar General','General Merchandise Stores',' Tennessee','1939'),('DGX','Quest Diagnostics','Health Care Services',' New Jersey','1967'),('DHI','D.R. Horton','Homebuilding',' Texas','1978'),('DHR','Danaher Corporation','Health Care Equipment',' D.C.','1969'),('DIS','Disney','Movies & Entertainment',' California','1923'),('DISH','Dish Network','Cable & Satellite',' Colorado','1980'),('DLR','Digital Realty','Specialized REITs',' Texas','2004'),('DLTR','Dollar Tree','General Merchandise Stores',' Virginia','1986'),('DOV','Dover Corporation','Industrial Machinery',' Illinois','1955'),('DOW','Dow Inc.','Commodity Chemicals',' Michigan','2019'),('DPZ','Domino\'s','Restaurants',' Michigan','1960'),('DRI','Darden Restaurants','Restaurants',' Florida','1938'),('DTE','DTE Energy','Multi-Utilities',' Michigan','1995'),('DUK','Duke Energy','Electric Utilities',' North Carolina','1904'),('DVA','DaVita Inc.','Health Care Facilities',' Colorado','1979'),('DVN','Devon Energy','Oil & Gas Exploration & Production',' Oklahoma','1971'),('DXC','DXC Technology','IT Consulting & Other Services',' Virginia','2017'),('DXCM','Dexcom','Health Care Equipment',' California','1999'),('EA','Electronic Arts','Interactive Home Entertainment',' California','1982'),('EBAY','eBay','Internet & Direct Marketing Retail',' California','1995'),('ECL','Ecolab','Specialty Chemicals',' Minnesota','1923'),('ED','Consolidated Edison','Electric Utilities',' New York','1823'),('EFX','Equifax','Research & Consulting Services',' Georgia','1899'),('EIX','Edison International','Electric Utilities',' California','1886'),('EL','The Estée Lauder Companies','Personal Products',' New York','1946'),('ELV','Elevance Health','Managed Health Care',' Indiana','2014'),('EMN','Eastman Chemical Company','Diversified Chemicals',' Tennessee','1920'),('EMR','Emerson Electric','Electrical Components & Equipment',' Missouri','1890'),('ENPH','Enphase','Electronic Components',' California','2006'),('EOG','EOG Resources','Oil & Gas Exploration & Production',' Texas','1999'),('EPAM','EPAM Systems','IT Consulting & Other Services',' Pennsylvania','1993'),('EQIX','Equinix','Specialized REITs',' California','1998'),('EQR','Equity Residential','Residential REITs',' Illinois','1969'),('EQT','EQT','Oil & Gas Exploration & Production',' Pennsylvania','1888'),('ES','Eversource','Multi-Utilities',' Connecticut','1966'),('ESS','Essex Property Trust','Residential REITs',' California','1971'),('ETN','Eaton Corporation','Electrical Components & Equipment',' Ireland','1911'),('ETR','Entergy','Electric Utilities',' Louisiana','1913'),('ETSY','Etsy','Internet & Direct Marketing Retail',' New York','2005'),('EVRG','Evergy','Electric Utilities',' Missouri','1909'),('EW','Edwards Lifesciences','Health Care Equipment',' California','1958'),('EXC','Exelon','Multi-Utilities',' Illinois','2000'),('EXPD','Expeditors International','Air Freight & Logistics',' Washington','1979'),('EXPE','Expedia Group','Internet & Direct Marketing Retail',' Washington','1996'),('EXR','Extra Space Storage','Specialized REITs',' Utah','1977'),('F','Ford Motor Company','Automobile Manufacturers',' Michigan','1903'),('FANG','Diamondback Energy','Oil & Gas Exploration & Production',' Texas','2007'),('FAST','Fastenal','Building Products',' Minnesota','1967'),('FBHS','Fortune Brands Home & Security','Building Products',' Illinois','2011'),('FCX','Freeport-McMoRan','Copper',' Arizona','1912'),('FDS','FactSet','Financial Exchanges & Data',' Connecticut','1978'),('FDX','FedEx','Air Freight & Logistics',' Tennessee','1971'),('FE','FirstEnergy','Electric Utilities',' Ohio','1997'),('FFIV','F5, Inc.','Communications Equipment',' Washington','1996'),('FIS','FIS','Data Processing & Outsourced Services',' Florida','1968'),('FISV','Fiserv','Data Processing & Outsourced Services',' Wisconsin','1984'),('FITB','Fifth Third Bank','Regional Banks',' Ohio','1858'),('FLT','Fleetcor','Data Processing & Outsourced Services',' Georgia','2000'),('FMC','FMC Corporation','Fertilizers & Agricultural Chemicals',' Pennsylvania','1883'),('FOX','Fox Corporation (Class B)','Movies & Entertainment',' New York','2019'),('FOXA','Fox Corporation (Class A)','Movies & Entertainment',' New York','2019'),('FRC','First Republic Bank','Regional Banks',' California','1985'),('FRT','Federal Realty','Retail REITs',' Maryland','1962'),('FTNT','Fortinet','Systems Software',' California','2000'),('FTV','Fortive','Industrial Machinery',' Washington','2016'),('GD','General Dynamics','Aerospace & Defense',' Virginia','1899'),('GE','General Electric','Industrial Conglomerates',' Massachusetts','1892'),('GEN','Gen Digital Inc.','Application Software',' Arizona','1982'),('GILD','Gilead Sciences','Biotechnology',' California','1987'),('GIS','General Mills','Packaged Foods & Meats',' Minnesota','1856'),('GL','Globe Life','Life & Health Insurance',' Texas','1900'),('GLW','Corning Inc.','Electronic Components',' New York','1851'),('GM','General Motors','Automobile Manufacturers',' Michigan','1908'),('GNRC','Generac','Electrical Components & Equipment',' Wisconsin','1959'),('GOOG','Alphabet Inc. (Class C)','Interactive Media & Services',' California','1998'),('GOOGL','Alphabet Inc. (Class A)','Interactive Media & Services',' California','1998'),('GPC','Genuine Parts Company','Specialty Stores',' Georgia','1925'),('GPN','Global Payments','Data Processing & Outsourced Services',' Georgia','2000'),('GRMN','Garmin','Consumer Electronics',' Switzerland','1989'),('GS','Goldman Sachs','Investment Banking & Brokerage',' New York','1869'),('GWW','W. W. Grainger','Industrial Machinery',' Illinois','1927'),('HAL','Halliburton','Oil & Gas Equipment & Services',' Texas','1919'),('HAS','Hasbro','Leisure Products',' Rhode Island','1923'),('HBAN','Huntington Bancshares','Regional Banks',' Ohio; Detroit, Michigan','1866'),('HCA','HCA Healthcare','Health Care Facilities',' Tennessee','1968'),('HD','The Home Depot','Home Improvement Retail',' Georgia','1978'),('HES','Hess Corporation','Integrated Oil & Gas',' New York','1919'),('HIG','Hartford (The)','Property & Casualty Insurance',' Connecticut','1810'),('HII','Huntington Ingalls Industries','Aerospace & Defense',' Virginia','2011'),('HLT','Hilton Worldwide','Hotels, Resorts & Cruise Lines',' Virginia','1919'),('HOLX','Hologic','Health Care Equipment',' Massachusetts','1985'),('HON','Honeywell','Industrial Conglomerates',' North Carolina','1906'),('HPE','Hewlett Packard Enterprise','Technology Hardware, Storage & Peripherals',' Texas','2015'),('HPQ','HP Inc.','Technology Hardware, Storage & Peripherals',' California','1939'),('HRL','Hormel Foods','Packaged Foods & Meats',' Minnesota','1891'),('HSIC','Henry Schein','Health Care Distributors',' New York','1932'),('HST','Host Hotels & Resorts','Hotel & Resort REITs',' Maryland','1993'),('HSY','Hershey\'s','Packaged Foods & Meats',' Pennsylvania','1894'),('HUM','Humana','Managed Health Care',' Kentucky','1961'),('HWM','Howmet Aerospace','Aerospace & Defense',' Pennsylvania','2016'),('IBM','IBM','IT Consulting & Other Services',' New York','1911'),('ICE','Intercontinental Exchange','Financial Exchanges & Data',' Georgia','2000'),('IDXX','Idexx Laboratories','Health Care Equipment',' Maine','1983'),('IEX','IDEX Corporation','Industrial Machinery',' Illinois','1988'),('IFF','International Flavors & Fragrances','Specialty Chemicals',' New York','1958'),('ILMN','Illumina','Life Sciences Tools & Services',' California','1998'),('INCY','Incyte','Biotechnology',' Delaware','1991'),('INTC','Intel','Semiconductors',' California','1968'),('INTU','Intuit','Application Software',' California','1983'),('INVH','Invitation Homes','Residential REITs',' Texas','2012'),('IP','International Paper','Paper Packaging',' Tennessee','1898'),('IPG','The Interpublic Group of Companies','Advertising',' New York','1961'),('IQV','IQVIA','Life Sciences Tools & Services',' North Carolina','1982'),('IR','Ingersoll Rand','Industrial Machinery',' North Carolina','1859'),('IRM','Iron Mountain','Specialized REITs',' Massachusetts','1951'),('ISRG','Intuitive Surgical','Health Care Equipment',' California','1995'),('IT','Gartner','IT Consulting & Other Services',' Connecticut','1979'),('ITW','Illinois Tool Works','Industrial Machinery',' Illinois','1912'),('IVZ','Invesco','Asset Management & Custody Banks',' Georgia','1935'),('J','Jacobs Solutions','Construction & Engineering',' Texas','1947'),('JBHT','J.B. Hunt','Trucking',' Arkansas','1961'),('JCI','Johnson Controls','Building Products',' Ireland','1885'),('JKHY','Jack Henry & Associates','Data Processing & Outsourced Services',' Missouri','1976'),('JNJ','Johnson & Johnson','Pharmaceuticals',' New Jersey','1886'),('JNPR','Juniper Networks','Communications Equipment',' California','1996'),('JPM','JPMorgan Chase','Diversified Banks',' New York','2000'),('K','Kellogg\'s','Packaged Foods & Meats',' Michigan','1906'),('KDP','Keurig Dr Pepper','Soft Drinks',' Massachusetts','1981'),('KEY','KeyCorp','Regional Banks',' Ohio','1825'),('KEYS','Keysight','Electronic Equipment & Instruments',' California','2014'),('KHC','Kraft Heinz','Packaged Foods & Meats',' Illinois; Pittsburgh, Pennsylvania','2015'),('KIM','Kimco Realty','Retail REITs',' New York','1958'),('KLAC','KLA Corporation','Semiconductor Equipment',' California','1975'),('KMB','Kimberly-Clark','Household Products',' Texas','1872'),('KMI','Kinder Morgan','Oil & Gas Storage & Transportation',' Texas','1997'),('KMX','CarMax','Automotive Retail',' Virginia','1993'),('KO','The Coca-Cola Company','Soft Drinks',' Georgia','1886'),('KR','Kroger','Food Retail',' Ohio','1883'),('L','Loews Corporation','Multi-line Insurance',' New York','1959'),('LDOS','Leidos','Diversified Support Services',' Virginia','1969'),('LEN','Lennar','Homebuilding',' Florida','1954'),('LH','LabCorp','Health Care Services',' North Carolina','1978'),('LHX','L3Harris','Aerospace & Defense',' Florida','2019'),('LIN','Linde plc','Industrial Gases',' United Kingdom','1879'),('LKQ','LKQ Corporation','Distributors',' Illinois','1998'),('LLY','Eli Lilly and Company','Pharmaceuticals',' Indiana','1876'),('LMT','Lockheed Martin','Aerospace & Defense',' Maryland','1995'),('LNC','Lincoln Financial','Multi-line Insurance',' Pennsylvania','1905'),('LNT','Alliant Energy','Electric Utilities',' Wisconsin','1917'),('LOW','Lowe\'s','Home Improvement Retail',' North Carolina','1904'),('LRCX','Lam Research','Semiconductor Equipment',' California','1980'),('LUMN','Lumen Technologies','Alternative Carriers',' Louisiana','1983'),('LUV','Southwest Airlines','Airlines',' Texas','1967'),('LVS','Las Vegas Sands','Casinos & Gaming',' Nevada','1988'),('LW','Lamb Weston','Packaged Foods & Meats',' Idaho','2016'),('LYB','LyondellBasell','Specialty Chemicals',' Netherlands','2007'),('LYV','Live Nation Entertainment','Movies & Entertainment',' California','2010'),('MA','Mastercard','Data Processing & Outsourced Services',' New York','1966'),('MAA','Mid-America Apartment Communities','Residential REITs',' Tennessee','1977'),('MAR','Marriott International','Hotels, Resorts & Cruise Lines',' Maryland','1927'),('MAS','Masco','Building Products',' Michigan','1929'),('MCD','McDonald\'s','Restaurants',' Illinois','1940'),('MCHP','Microchip Technology','Semiconductors',' Arizona','1989'),('MCK','McKesson','Health Care Distributors',' Texas','1833'),('MCO','Moody\'s Corporation','Financial Exchanges & Data',' New York','1909'),('MDLZ','Mondelez International','Packaged Foods & Meats',' Illinois','2012'),('MDT','Medtronic','Health Care Equipment',' Ireland','1949'),('MET','MetLife','Life & Health Insurance',' New York','1868'),('META','Meta Platforms','Interactive Media & Services',' California','2004'),('MGM','MGM Resorts','Casinos & Gaming',' Nevada','1986'),('MHK','Mohawk Industries','Home Furnishings',' Georgia','1878'),('MKC','McCormick & Company','Packaged Foods & Meats',' Maryland','1889'),('MKTX','MarketAxess','Financial Exchanges & Data',' New York','2000'),('MLM','Martin Marietta Materials','Construction Materials',' North Carolina','1993'),('MMC','Marsh McLennan','Insurance Brokers',' New York','1905'),('MMM','3M','Industrial Conglomerates',' Minnesota','1902'),('MNST','Monster Beverage','Soft Drinks',' California','2012'),('MO','Altria','Tobacco',' Virginia','1985'),('MOH','Molina Healthcare','Managed Health Care',' California','1980'),('MOS','The Mosaic Company','Fertilizers & Agricultural Chemicals',' Florida','2004'),('MPC','Marathon Petroleum','Oil & Gas Refining & Marketing',' Ohio','2009'),('MPWR','Monolithic Power Systems','Semiconductors',' Washington','1997'),('MRK','Merck & Co.','Pharmaceuticals',' New Jersey','1891'),('MRNA','Moderna','Biotechnology',' Massachusetts','2010'),('MRO','Marathon Oil','Oil & Gas Exploration & Production',' Texas','1887'),('MS','Morgan Stanley','Investment Banking & Brokerage',' New York','1935'),('MSCI','MSCI','Financial Exchanges & Data',' New York','1969'),('MSFT','Microsoft','Systems Software',' Washington','1975'),('MSI','Motorola Solutions','Communications Equipment',' Illinois','1928'),('MTB','M&T Bank','Regional Banks',' New York','1856'),('MTCH','Match Group','Interactive Media & Services',' Texas','1986'),('MTD','Mettler Toledo','Life Sciences Tools & Services',' Ohio','1945'),('MU','Micron Technology','Semiconductors',' Idaho','1978'),('NCLH','Norwegian Cruise Line Holdings','Hotels, Resorts & Cruise Lines',' Florida','2011'),('NDAQ','Nasdaq, Inc.','Financial Exchanges & Data',' New York','1971'),('NDSN','Nordson Corporation','Industrial Machinery',' Ohio','1935'),('NEE','NextEra Energy','Multi-Utilities',' Florida','1984'),('NEM','Newmont','Gold',' Colorado','1921'),('NFLX','Netflix','Movies & Entertainment',' California','1997'),('NI','NiSource','Multi-Utilities',' Indiana','1912'),('NKE','Nike, Inc.','Apparel, Accessories & Luxury Goods',' Oregon','1964'),('NOC','Northrop Grumman','Aerospace & Defense',' Virginia','1994'),('NOW','ServiceNow','Systems Software',' California','2003'),('NRG','NRG Energy','Independent Power Producers & Energy Traders',' Texas','1992'),('NSC','Norfolk Southern Railway','Railroads',' Virginia','1881'),('NTAP','NetApp','Technology Hardware, Storage & Peripherals',' California','1992'),('NTRS','Northern Trust','Asset Management & Custody Banks',' Illinois','1889'),('NUE','Nucor','Steel',' North Carolina','1940'),('NVDA','Nvidia','Semiconductors',' California','1993'),('NVR','NVR, Inc.','Homebuilding',' Virginia','1980'),('NWL','Newell Brands','Housewares & Specialties',' Georgia','1903'),('NWS','News Corp (Class B)','Publishing',' New York','2013'),('NWSA','News Corp (Class A)','Publishing',' New York','2013'),('NXPI','NXP Semiconductors','Semiconductors',' Netherlands','1953'),('O','Realty Income','Retail REITs',' California','1969'),('ODFL','Old Dominion','Trucking',' North Carolina','1934'),('OGN','Organon & Co.','Pharmaceuticals',' New Jersey','2021'),('OKE','ONEOK','Oil & Gas Storage & Transportation',' Oklahoma','1906'),('OMC','Omnicom Group','Advertising',' New York','1986'),('ON','ON Semiconductor','Semiconductors',' Arizona','1999'),('ORCL','Oracle Corporation','Application Software',' Texas','1977'),('ORLY','O\'Reilly Auto Parts','Specialty Stores',' Missouri','1957'),('OTIS','Otis Worldwide','Industrial Machinery',' Connecticut','2020'),('OXY','Occidental Petroleum','Oil & Gas Exploration & Production',' Texas','1920'),('PARA','Paramount Global','Movies & Entertainment',' New York','2019'),('PAYC','Paycom','Application Software',' Oklahoma','1998'),('PAYX','Paychex','Data Processing & Outsourced Services',' New York','1971'),('PCAR','Paccar','Construction Machinery & Heavy Trucks',' Washington','1905'),('PCG','PG&E Corporation','Multi-Utilities',' California','1905'),('PEAK','Healthpeak','Health Care REITs',' California','1985'),('PEG','Public Service Enterprise Group','Electric Utilities',' New Jersey','1903'),('PEP','PepsiCo','Soft Drinks',' New York','1898'),('PFE','Pfizer','Pharmaceuticals',' New York','1849'),('PFG','Principal Financial Group','Life & Health Insurance',' Iowa','1879'),('PG','Procter & Gamble','Personal Products',' Ohio','1837'),('PGR','Progressive Corporation','Property & Casualty Insurance',' Ohio','1937'),('PH','Parker Hannifin','Industrial Machinery',' Ohio','1917'),('PHM','PulteGroup','Homebuilding',' Georgia','1956'),('PKG','Packaging Corporation of America','Paper Packaging',' Illinois','1959'),('PKI','PerkinElmer','Health Care Equipment',' Massachusetts','1937'),('PLD','Prologis','Industrial REITs',' California','1983'),('PM','Philip Morris International','Tobacco',' New York','2008'),('PNC','PNC Financial Services','Regional Banks',' Pennsylvania','1845'),('PNR','Pentair','Industrial Machinery',' United Kingdom','1966'),('PNW','Pinnacle West','Multi-Utilities',' Arizona','1985'),('POOL','Pool Corporation','Distributors',' Louisiana','1993'),('PPG','PPG Industries','Specialty Chemicals',' Pennsylvania','1883'),('PPL','PPL Corporation','Electric Utilities',' Pennsylvania','1920'),('PRU','Prudential Financial','Life & Health Insurance',' New Jersey','1875'),('PSA','Public Storage','Specialized REITs',' California','1972'),('PSX','Phillips 66','Oil & Gas Refining & Marketing',' Texas','2012'),('PTC','PTC','Application Software',' Massachusetts','1985'),('PWR','Quanta Services','Construction & Engineering',' Texas','1997'),('PXD','Pioneer Natural Resources','Oil & Gas Exploration & Production',' Texas','1997'),('PYPL','PayPal','Data Processing & Outsourced Services',' California','1998'),('QCOM','Qualcomm','Semiconductors',' California','1985'),('QRVO','Qorvo','Semiconductors',' North Carolina','2015'),('RCL','Royal Caribbean Group','Hotels, Resorts & Cruise Lines',' Florida','1997'),('RE','Everest Re','Reinsurance',' Bermuda','1973'),('REG','Regency Centers','Retail REITs',' Florida','1963'),('REGN','Regeneron','Biotechnology',' New York','1988'),('RF','Regions Financial Corporation','Regional Banks',' Alabama','1971'),('RHI','Robert Half','Human Resource & Employment Services',' California','1948'),('RJF','Raymond James','Investment Banking & Brokerage',' Florida','1962'),('RL','Ralph Lauren Corporation','Apparel, Accessories & Luxury Goods',' New York','1967'),('RMD','ResMed','Health Care Equipment',' California','1989'),('ROK','Rockwell Automation','Electrical Components & Equipment',' Wisconsin','1903'),('ROL','Rollins, Inc.','Environmental & Facilities Services',' Georgia','1948'),('ROP','Roper Technologies','Electronic Equipment & Instruments',' Florida','1981'),('ROST','Ross Stores','Apparel Retail',' California','1982'),('RSG','Republic Services','Environmental & Facilities Services',' Arizona','1998'),('RTX','Raytheon Technologies','Aerospace & Defense',' Massachusetts','1922'),('SBAC','SBA Communications','Specialized REITs',' Florida','1989'),('SBNY','Signature Bank','Regional Banks',' New York','2001'),('SBUX','Starbucks','Restaurants',' Washington','1971'),('SCHW','Charles Schwab Corporation','Investment Banking & Brokerage',' Texas','1971'),('SEDG','SolarEdge','Semiconductor Equipment',' Israel','2006'),('SEE','Sealed Air','Paper Packaging',' North Carolina','1960'),('SHW','Sherwin-Williams','Specialty Chemicals',' Ohio','1866'),('SIVB','SVB Financial','Regional Banks',' California','1983'),('SJM','The J.M. Smucker Company','Packaged Foods & Meats',' Ohio','1897'),('SLB','Schlumberger','Oil & Gas Equipment & Services',' Kingdom of the Netherlands','1926'),('SNA','Snap-on','Industrial Machinery',' Wisconsin','1920'),('SNPS','Synopsys','Application Software',' California','1986'),('SO','Southern Company','Electric Utilities',' Georgia','1945'),('SPG','Simon Property Group','Retail REITs',' Indiana','2003'),('SPGI','S&P Global','Financial Exchanges & Data',' New York','1917'),('SRE','Sempra Energy','Multi-Utilities',' California','1998'),('STE','Steris','Health Care Equipment',' Ireland','1985'),('STT','State Street Corporation','Asset Management & Custody Banks',' Massachusetts','1792'),('STX','Seagate Technology','Technology Hardware, Storage & Peripherals',' Ireland','1979'),('STZ','Constellation Brands','Distillers & Vintners',' New York','1945'),('SWK','Stanley Black & Decker','Industrial Machinery',' Connecticut','1843'),('SWKS','Skyworks Solutions','Semiconductors',' California','2002'),('SYF','Synchrony Financial','Consumer Finance',' Connecticut','2003'),('SYK','Stryker Corporation','Health Care Equipment',' Michigan','1941'),('SYY','Sysco','Food Distributors',' Texas','1969'),('T','AT&T','Integrated Telecommunication Services',' Texas','1983'),('TAP','Molson Coors Beverage Company','Brewers',' Illinois','2005'),('TDG','TransDigm Group','Aerospace & Defense',' Ohio','1993'),('TDY','Teledyne Technologies','Electronic Equipment & Instruments',' California','1960'),('TECH','Bio-Techne','Life Sciences Tools & Services',' Minnesota','1976'),('TEL','TE Connectivity','Electronic Manufacturing Services',' Switzerland','2007'),('TER','Teradyne','Semiconductor Equipment',' Massachusetts','1960'),('TFC','Truist','Regional Banks',' North Carolina','1872'),('TFX','Teleflex','Health Care Equipment',' Pennsylvania','1943'),('TGT','Target Corporation','General Merchandise Stores',' Minnesota','1902'),('TJX','TJX Companies','Apparel Retail',' Massachusetts','1987'),('TMO','Thermo Fisher Scientific','Life Sciences Tools & Services',' Massachusetts','2006'),('TMUS','T-Mobile US','Wireless Telecommunication Services',' Washington','1994'),('TPR','Tapestry, Inc.','Apparel, Accessories & Luxury Goods',' New York','2017'),('TRGP','Targa Resources','Oil & Gas Storage & Transportation',' Texas','2005'),('TRMB','Trimble Inc.','Electronic Equipment & Instruments',' Colorado','1978'),('TROW','T. Rowe Price','Asset Management & Custody Banks',' Maryland','1937'),('TRV','The Travelers Companies','Property & Casualty Insurance',' New York','1853'),('TSCO','Tractor Supply','Specialty Stores',' Tennessee','1938'),('TSLA','Tesla, Inc.','Automobile Manufacturers',' Texas','2003'),('TSN','Tyson Foods','Packaged Foods & Meats',' Arkansas','1935'),('TT','Trane Technologies','Building Products',' Ireland','1871'),('TTWO','Take-Two Interactive','Interactive Home Entertainment',' New York','1993'),('TXN','Texas Instruments','Semiconductors',' Texas','1930'),('TXT','Textron','Aerospace & Defense',' Rhode Island','1923'),('TYL','Tyler Technologies','Application Software',' Texas','1966'),('UAL','United Airlines Holdings','Airlines',' Illinois','1967'),('UDR','UDR, Inc.','Residential REITs',' Colorado','1972'),('UHS','Universal Health Services','Health Care Facilities',' Pennsylvania','1979'),('ULTA','Ulta Beauty','Specialty Stores',' Illinois','1990'),('UNH','UnitedHealth Group','Managed Health Care',' Minnesota','1977'),('UNP','Union Pacific Corporation','Railroads',' Nebraska','1862'),('UPS','United Parcel Service','Air Freight & Logistics',' Georgia','1907'),('URI','United Rentals','Trading Companies & Distributors',' Connecticut','1997'),('USB','U.S. Bank','Diversified Banks',' Minnesota','1968'),('V','Visa Inc.','Data Processing & Outsourced Services',' California','1958'),('VFC','VF Corporation','Apparel, Accessories & Luxury Goods',' Colorado','1899'),('VICI','Vici Properties','Hotel & Resort REITs',' New York','2017'),('VLO','Valero Energy','Oil & Gas Refining & Marketing',' Texas','1980'),('VMC','Vulcan Materials Company','Construction Materials',' Alabama','1909'),('VNO','Vornado Realty Trust','Office REITs',' New York','1982'),('VRSK','Verisk','Research & Consulting Services',' New Jersey','1971'),('VRSN','Verisign','Internet Services & Infrastructure',' Virginia','1995'),('VRTX','Vertex Pharmaceuticals','Biotechnology',' Massachusetts','1989'),('VTR','Ventas','Health Care REITs',' Illinois','1998'),('VTRS','Viatris','Pharmaceuticals',' Pennsylvania','1961'),('VZ','Verizon','Integrated Telecommunication Services',' New York','1983'),('WAB','Wabtec','Construction Machinery & Heavy Trucks',' Pennsylvania','1999'),('WAT','Waters Corporation','Health Care Distributors',' Massachusetts','1958'),('WBA','Walgreens Boots Alliance','Drug Retail',' Illinois','2014'),('WBD','Warner Bros. Discovery','Broadcasting',' New York','2022'),('WDC','Western Digital','Technology Hardware, Storage & Peripherals',' California','1970'),('WEC','WEC Energy Group','Electric Utilities',' Wisconsin','1896'),('WELL','Welltower','Health Care REITs',' Ohio','1970'),('WFC','Wells Fargo','Diversified Banks',' California','1852'),('WHR','Whirlpool Corporation','Household Appliances',' Michigan','1911'),('WM','Waste Management','Environmental & Facilities Services',' Texas','1968'),('WMB','Williams Companies','Oil & Gas Storage & Transportation',' Oklahoma','1908'),('WMT','Walmart','Hypermarkets & Super Centers',' Arkansas','1962'),('WRB','Berkley','Property & Casualty Insurance',' Connecticut','1967'),('WRK','WestRock','Paper Packaging',' Georgia','2015'),('WST','West Pharmaceutical Services','Health Care Supplies',' Pennsylvania','1923'),('WTW','Willis Towers Watson','Insurance Brokers',' United Kingdom','2016'),('WY','Weyerhaeuser','Specialized REITs',' Washington','1900'),('WYNN','Wynn Resorts','Casinos & Gaming',' Nevada','2002'),('XEL','Xcel Energy','Multi-Utilities',' Minnesota','1909'),('XOM','ExxonMobil','Integrated Oil & Gas',' Texas','1999'),('XRAY','Dentsply Sirona','Health Care Supplies',' North Carolina','2016'),('XYL','Xylem Inc.','Industrial Machinery',' New York','2011'),('YUM','Yum! Brands','Restaurants',' Kentucky','1997'),('ZBH','Zimmer Biomet','Health Care Equipment',' Indiana','1927'),('ZBRA','Zebra Technologies','Electronic Equipment & Instruments',' Illinois','1969'),('ZION','Zions Bancorporation','Regional Banks',' Utah','1873'),('ZTS','Zoetis','Pharmaceuticals',' New Jersey','1952');
/*!40000 ALTER TABLE `ticker_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-14 13:47:24
