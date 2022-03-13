Final Project - Segment 1
# Analyzing the Sentiment Distribution of Tweets about the War in Ukraine
Using Natural Language Processing and Sentiment Analysis, tweet data on the War in Ukraine was analyzed.

## Overview
The main goal of the present project was to identify the sentiments Twitter users have about the war in Ukraine.

On February 24, 2022, Russia invaded Ukraine demanding an assurance that Ukraine will never join NATO. Over a dozen cities and towns were attacked, including the capital city, Kyiv (Source: [NYTimes](https://www.nytimes.com/interactive/2022/world/europe/ukraine-maps.html?searchResultPosition=3))

Since then, there have been tensions between countries, in particular with the United States and European Union supporting Ukraine, and Russia counting with Venezuela and Syria as allies (Source: [NYTimes](https://www.nytimes.com/2022/03/05/world/americas/venezuela-russia-usa.html?searchResultPosition=1)). These tensions, according to media channels and specialists, can potentially escalate the Ukrainian war to a third world war.

Besides the threat of worldwide conflict, other impacts of the Russian invasion on Ukraine has already been observed. The most prominent impact is Ukrainians’ migration to neighboring countries, such as Poland, Hungary and Slovakia. Specialists have been calling it a major refugee crisis, as of March 11 over two and a half million Ukrainians have fled their homes (Source: [The UN Refugee Agency](https://data2.unhcr.org/en/situations/ukraine#_ga=2.200929772.353981607.1646674903-2007428328.1646674903)).

Given the direct or indirect impact of the war in Ukraine to people’s lives, it is worthwhile to assess the sentiments people have about this event. Sentiments were identified through text data, consisting of over one million tweets downloaded from February 26 to March 10, 2022. Data was sourced from [Kaggle](https://www.kaggle.com/bwandowando/ukraine-russian-crisis-twitter-dataset-1-2-m-rows/discussion/310030). The dataset administrator used three processes to collect data:

- Process 1 hashtags: "#SlavaUkraini OR #Russia OR #RussiaUkraineWar OR #Putin OR #RussiaUkraine OR #RussianWar OR #ww3 OR #moscow OR #RussianConflict"
- Process 2 hashtags: "#ukraineunderattack OR #Ukriane OR #Ukraine OR #RussianUkrainianWar OR #UkraineRussia OR #UkraineConflict OR #UkraineWar OR #Kharkiv OR #StopPutinNow"
- Process 3: Geolocation UKRAINE country.

Through the examination of tweet data, the following questions will be answered:

1. **What are the most common words mentioned on twitter about the Ukrainian war**?
(in results, show ordered list or tag clouds with most frequent words for the whole dataset and/or can split by sentiment polarity)
2. **What is the sentiment breakdown for Ukraine war tweets**?
(in results, show pie chart with negative, positive and neutral percentages)
3. **How sentiment polarity changes over time**?
(in results, show line graph with sentiments change over time)

Further questions can be answered if time allows:

4. Do sentiment distributions change according to country (i.e., location of the twitter account)?
5. How accurate is the model created in predicting polarity (new sentiment output) based on tweet text?

### Description of the communication protocols
The group has created a GitHub repository with 4 different branches for each member to work on their own branch.

Specific roles have not yet been assigned to members as the group is deciding together the main project components. To do this, group members have been communicating through slack and meeting daily via zoom.

## Results

### Preprocessing Data
(Explain how raw data was cleaned using pandas and re, filtered by language and location, and a new data file was created for NLP)

### Database Structure
- Load raw dataset and preprocessed dataset to SQLite or PostgreSQL
(Add sketch of the ER Diagram here)

### Natural Language Processing (Exploratory Data Analysis)
- Extract preprocessed data from database
- Use NLP to turn unstructured text into machine-usable code by:
	- Tokenization
	- Lemmatization and Stemming?
	- Removing stop words
	- Can use bag-of-words or tf-idf to get word frequency [*still left to decide best approach*]

*** NLP packages: NLTK, SpaCy, Gensim, Scikit-Learn
*** Key areas of NLP: LDA, TF-IDF, embedding techniques (i.e. word2vec, doc2vec), neural architectures (i.e. CNN, RNN, attention, Seq2Seq)

### Sentiment Analysis
- Extract polarity score (positive, negative or neutral) from text  [*still left to decide best approach*]
- use Library TextBlob or Vader to get polarity and subjectivity scores. Seems Vader is a better option as it’s optimized for social media data.
- to visualize words as word clouds use wordcloud library with matplotlib 

### Polarity Prediction [*a maybe*]

## Summary







## Provisional Machine Learning Model (MLM)
The provisional machine learning model must accomplish:
- Takes in data in from the provisional database
- Outputs label(s) for input data

## Database
Provisional database must:
- Sample data that mimics the expected final database structure or schema
- Draft machine learning module is connected to the provisional database

