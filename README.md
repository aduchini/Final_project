# Final Project - Segment 1
## Overview (Presentation) - Deliverable needs to be Google Slides
- Selected topic: Ukraine Sentiment Analysis
- Reason: Find out points of view by country on current developing situation in Ukraine 
- Source of data: Kaggle [Ukraine Conflict Twitter Dataset](https://www.kaggle.com/bwandowando/ukraine-russian-crisis-twitter-dataset-1-2-m-rows?select=UkraineCombinedTweetsDeduped_MAR09.csv.gzip) *data collected on March 8, 2022
- Questions to be answered: 

## Description of the communication protocols (github)

(create 4 branches in github, with at least 4 commits per person)

## Provisional Machine Learning Model (MLM)
The provisional machine learning model must accomplish:
- Outputs label(s) for input data
Pipeline steps to follow (could use separate notebooks for each step):
1. Raw Text: Start with the raw data, then clean it up.
2. Tokenization: Separate the words from paragraphs or sentences, into individual words.
3. Stop Words Filtering: Remove common words like "a" and "the" that add no real value to what we are looking to analyze.
4. Term Frequency-Inverse Document Frequency (TF-IDF): Statistically rank the words by importance compared to the rest of the words in the text. This is also when the words are converted from text to numbers.
5. Machine Learning: Put everything together and run through the machine learning model to produce an output.

## Database
Provisional database must:
- [USA Provisional database](usa_tweets_dataset.csv)
- [Poland Provisional database](poland_tweets_dataset.csv)
- Sample data that mimics the expected final database structure or schema
- Draft machine learning module is connected to the provisional database