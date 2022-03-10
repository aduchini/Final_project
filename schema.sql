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
-- THIS IS THE CLEANED DATA
CREATE TABLE CleanedTweets (
  tweetid BIGINT PRIMARY KEY NOT NULL UNIQUE,
  acctdesc TEXT,
  country TEXT,
  retweetcount INT,
  text TEXT,
  hashtags TEXT,
  language TEXT,
  latitude FLOAT,
  longitude FLOAT
);

-- This table will contain the results of the analysis
CREATE TABLE VisualizationsData (
    tweetid BIGINT PRIMARY KEY NOT NULL UNIQUE,
    country TEXT,
    language TEXT,
    text TEXT,
    emoticons TEXT,
    hashtags TEXT,
    retweet_count INT,
    sentiment_result INT
);
