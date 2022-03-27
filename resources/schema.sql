-- THIS IS THE SOURCE DATA
CREATE TABLE tweets (
    usercreatedts DATE NOT NULL,
    location TEXT,
    text TEXT,
    country TEXT,
    neg FLOAT,
    neu FLOAT,
    pos FLOAT,
    compound FLOAT,
    sentiment TEXT
);
-- THIS IS THE CLEANED DATA
CREATE TABLE migration (
  data_date DATE NOT NULL,
  people INT
);

-- This table will contain the results of the analysis
CREATE TABLE casualties (
    Date DATE NOT NULL,
    casualties INT
);

CREATE TABLE migration_sentiments (
  data_date DATE NOT NULL, 
  people FLOAT, 
  casualties INT, 
  compound_sentiment FLOAT
  );

  INSERT INTO migration_sentiments 
    SELECT mg.data_date, mg.people, ca.casualties, AVG(tw.compound)
        FROM migration as mg
        LEFT JOIN casualties as ca
            ON mg.data_date = ca.Date
        LEFT JOIN tweets as tw
            ON tw.tweetcreatedts = mg.data_date
        GROUP BY mg.data_date;
