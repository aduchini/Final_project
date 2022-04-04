-- THIS IS THE SOURCE DATA
CREATE TABLE tweets (
    tweetcreatedts DATE NOT NULL,
    text TEXT,
    hashtags TEXT,
    retweetcount INT,
    favorite_count INT,
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
  ukraine_migration INT
);

-- This table will contain the results of the analysis
CREATE TABLE russia_casualties (
    Date DATE NOT NULL,
    russia_prisoners INT,
    russia_casualties INT
);

CREATE TABLE migration_sentiments (
  data_date DATE NOT NULL, 
  ukraine_migration INT, 
  ukraine_casualties INT, 
  russia_casualties INT, 
  compound_sentiment FLOAT
  );

INSERT INTO migration_sentiments SELECT mg.data_date, mg.ukraine_migration, uca.ukraine_casualties, rca.russia_casualties, rca.russia_prisoners, AVG(tw.compound)
        FROM migration as mg
        LEFT JOIN ukraine_casualties as uca
            ON mg.data_date = uca.date
        LEFT JOIN russia_casualties as rca
            ON mg.data_date = rca.date
        LEFT JOIN tweets as tw
            ON tw.tweetcreatedts = mg.data_date
        GROUP BY mg.data_date;
