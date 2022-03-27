
# Analyzing the Sentiment Distribution of Tweets about the War in Ukraine
Using Natural Language Processing and Sentiment Analysis, tweet data on the War in Ukraine was analyzed.

## Background

### Social Media Analytics (SMA)
Social Media Analytics is used to collect data from various social media websites and evaluate the data effectively, in order to make business as well as logical decisions, based on the data received from end users. Social media is a great platform to understand the end user's sentiments, opinions and choices. SMA is used to analyze the customer's opinions on an emotional level to better understand the public opinion and analyze the polarity in events and issues of concern.

### What is Sentiment Analysis?
Sentiment Analysis, also known as Opinion Mining, is a popular data mining approach used to study the inclination of people's views, sentiments, evaluations, opinions and emotions towards any products, global issues, events, services and organizations to name a few. These opinions are measured through Natural Language Processing(NLP), text analysis, Machine learning and other computational linguistics. Sentiment distribution is widely used to analyze the reaction of people and reveal the contextual polarity of the information used.

### Why Sentiment Analysis?
Sentiment Analysis is an important way to understand the audience and hence make business or corporate decisions based on the analysis performed on people's opinions. Understanding the people's thought process nad needs can help companies and organizations understand what to expect in terms of business and upcoming trends. Based on the results, one can get a direction on how to understand their potential market. Sentiment Analysis provides real time analysis to keep organizations updated all the time. Identifying positive, neutral and negative comments help in audience engagement and better understanding of emotional as well as business aspects of audience in general. 

![twitter sentiment analysis dia1](https://user-images.githubusercontent.com/23488019/158078675-df77b237-3077-451d-888d-acaf958fda8a.png)

### Setbacks of Sentiment Analysis
Sentiment Analysis is a popular way, companies can get information regarding public opinion and their inclination towards or against issues. However, it is not perfect, since there can be discrepancies in the data accumulated and this can lead to minor to major changes in the final result analysis. Few of the major hurdles in performing sentiment anlaysis are discusse below:
1. Tone of people's voice - Th etone of people's voice can sadly not be identified 100% of the times. Sarcasm and irony can b emisinterpreted and misevaluated an dend up getting categorized incorrectly. This problem can be difficult for humans to decipher in day-to-day lives, let alone any algorithm. 
2. Emojis - Wrong use of emojis for sentiment expression can end up in getting skewed results. Sometimes, people can get confused with what emotion an emoji actually represents and hence alter the sentiment altogether. 


### Description of the communication protocols

The group has created a GitHub repository with 4 different branches for each member to work on their own branch. The 4 branches that have been created are as follows:
1. AD_segment-1 : Branch for Ana Duchini
2. AS_segment-1 : Branch for Aakriti Sharma
3. FM_segment-1 : Branch for Flora Matos
4. RK_segment-1 : Branch for Ruchika Kulkarni

## Technologies Used
### A.  Data Cleaning and Analysis
Pandas in Python will be used to clean the data and perform an exploratory analysis. Further analysis will be completed using Python. A number of different libraries that can be used for our project are described below:

#### 1. Tweepy - 
It allows Python to access the Twitter platform/database using its API. A twiiter developer account will be required to get access to the API. We are still working on this aspect of the project. 

#### 2. WordCloud - 
A wordCloud is referred to as a cluster of words that are shown in different sizes depending on their usage. The frequently used words are displayed in bigger bolder font and the lesser used words are shown in smaller font sizes. They are also known as text clouds or tag clouds. 

#### 3. TextBlob - 
It si a Python library for text processing. It is used in performing Natural Language Processing tasks such as sentiment analysis, classification, translation, parts of speech tagging and phrase extraction. 

Anaconda prompt will be used to install all the Python libraries. 


### B.  Database Storage
PostgreSQL is the database we intend to use, and we will integrate Flask to display the data.

### C.  Machine Learning
SciKitLearn is the Machine Learning library we'll be using to create a classifier. Our training and testing setup is 

### D. Data Visualization
Tableau will be used to graphically depict our results and chart the visualizations. 

### E.  Dashboard
In addition to using a Flask template, we will also integrate D3.js for a fully functioning and interactive dashboard. HTML, Bootstrap CSS will be used to create a webpage where we will have the dashboard for all our findings and sentiment analysis. 



### Preprocessing Data

The raw data file contains more than 1.2 million rows and 18 columns of twitter data from all over the world, in 64 different languages. For the purpose of this project, only English tweets were extracted from the data set for the analysis. The number of English tweets are further divided into smaller data sets on the basis of the location of the tweets i.e. data sets from different countries.

The first step in cleaning the data, is to identify the most relevant data, extract it and clean it. As far as sentiment analysis is concerned, the most relevant data in the entire data set is the tweeted text in the 'text' column. For cleaning, the tweets were extracted into a dataframe. To evaluate sentiments, tweets need to contain pure text in lower case. The numbers, hashtags, emojis, hyperlinks are removed with the help of regex (regular expressions) and pandas functions. Once free of all the noise, the data are stored in the form of a csv file for further analysis. The details of cleaning operations can be viewed in the Sentiment_Analysis_Data_Cleaning.ipynb



## Results :



### Natural Language Processing (Exploratory Data Analysis)
- Extract preprocessed data from database
- Use NLP to turn unstructured text into machine-usable code by:
	- Tokenization
	- Lemmatization and Stemming?
	- Removing stop words
	- Can use bag-of-words or tf-idf to get word frequency [*still left to decide best approach*]
Pipeline steps to follow (could use separate notebooks for each step):
1. Raw Text: Start with the raw data, then clean it up.
2. Tokenization: Separate the words from paragraphs or sentences, into individual words.
3. Stop Words Filtering: Remove common words like "a" and "the" that add no real value to what we are looking to analyze.
4. Term Frequency-Inverse Document Frequency (TF-IDF): Statistically rank the words by importance compared to the rest of the words in the text. This is also when the words are converted from text to numbers.
5. Machine Learning: Put everything together and run through the machine learning model to produce an output.
*** NLP packages: NLTK, SpaCy, Gensim, Scikit-Learn
*** Key areas of NLP: LDA, TF-IDF, embedding techniques (i.e. word2vec, doc2vec), neural architectures (i.e. CNN, RNN, attention, Seq2Seq)


## Project Pipeline :

![project pipeline](https://user-images.githubusercontent.com/23488019/158079683-59057a33-11ee-42c4-bcac-af917b35b83d.PNG)
 
 The steps to be completed for Twitter Sentiment Analysis are shown below:
 1. Collecting Data
 2. Preprocessing Data
 3. Exploratory Data processing 
 4. Splitting data into Training and Test sebsets
 5. Applying Machine model and transformations. sentiment Analysis with Logistic Regression and other models.
 6. Evaluating the Model
 7. Data Visualizations
 8.  Deploying the model and visualizations at the web app. 

## Data Visualizatons/Dashboard
#### Tools used -
We have used Tableau for all our data visualizations and analysis. Tableau will also be used to create a secure connection as an ODBC with Sqlite. Successful connection will help us access all our tables and databases and perform our analysis and visualizations effectively. Our final dashboard will be published on Tableau Public. 

#### Interactive elements - 
Our Dashboard in Tableau Public will have a number of interactive elements. Check boxes will be used to give the user flexibility to choose a country of choice and perform visualizations. Other checkboxes for date can be used to select date of choice and see the visualizations accordingly. 

## Model Deployment 
Finally the data visualizations will be deployed on Tableau Public and shared publicly.  

## Summary

