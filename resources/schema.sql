-- THIS IS THE SOURCE DATA
CREATE TABLE UkraineCombinedTweetsDeduped (
    username TEXT PRIMARY KEY NOT NULL UNIQUE,
    acctdesc TEXT,
    location TEXT,
    following INT,
    followers INT,
    totaltweets INT,
    usercreatedts DATE,
    tweetid BIGINT,
    tweetcreatedts DATE,
    retweetcount INT,	
    text TEXT,
    hashtags TEXT, 
    language TEXT,
    coordinates TEXT,
    favorite_count INT,
    extractedts DATE
);
-- THIS IS ALL THE CLEANED DATA INCLUDING VADER SENTIMENTS
CREATE TABLE tweets_data (
  tweetid BIGINT PRIMARY KEY NOT NULL UNIQUE,
  username TEXT,
  retweetcount INT,
  favorite_count INT,
  tweetcreatedts DATE,
  text TEXT,
  country TEXT,
  neg FLOAT,
  neu FLOAT,
  pos FLOAT,
  compound FLOAT,
  cleaned_text TEXT,
  sentiment TEXT
 -- latitude FLOAT,
 -- longitude FLOAT
);

-- This table will contain the results of the analysis
CREATE TABLE RussianPersonnelLosses (
    date DATE PRIMARY KEY NOT NULL UNIQUE,
    day INT,
    personnel INT,
    personnel* TEXT,
    POW INT
);
