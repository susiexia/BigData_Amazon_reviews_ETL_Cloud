# BigData_Amazon_reviews_ETL_Cloud

Performing cloud-base ETL and analyzing data using SQL, Natural Language Processing (NLP) pipeline and Machine Learning model.

## Project Background

There are many of Amazon's shoppers depend on product reviews to make a purchase. It turns more and more important to perform data analysis on tons of Amazon's reviews. This project utilized one of Amazon public datasets on AWS S3 Buckets (Beauty product Reviews with over 5 milloin records) to extract, transform and load to AWS RDS database and statistical analyzed data to determine whether the Vine reviews are biased. The point of the Amazon Vine program is supposed to offer unbiased reviews to consumers. Vendors should have no influence on these vine reviews.

This project performed by Spark and completely in the cloud in Google Colab Notebook.

## ETL Part 

- Github Links: [Github version ETL](/Amazon_Reriews_ETL_process.ipynb) 

- Google Colab Notebook Link: <https://colab.research.google.com/drive/1N0fTd5rpGznaC15aYb5M63PDzCBJ_0e4)>


### Extract

- Extract Amazon reviews dataset from AWS S3 data storage.

- Load and read reviews dataset into DataFrame of Pyspark with Google Colab Notebook.

### Transform

- Transform the dataset to fit the furnished schemata of AWS RDS database.

### Load

- Load and write pyspark DataFrame directly to the correspond tables into an RDS instance.

----------------------------------------------------------------------------

## Analysis Part 

1. SQL statistical Analysis
Performing basic statistical analysis in SQL.
Conclusion :[SQLAnalysisConclusion.md](/SQLAnalysisConclusion.md)

----------------------------------------------------------------------------

2. Pyspark Analysis in colab-Notebook
Performing advanced statistical classification and regression model for prediction and evaluation in pySpark


### Natural Language Process:

[Amazon_Reviews_NLP_ML.ipynb]()

Google Colab Notebook link: <https://colab.research.google.com/drive/1kAFj2v4wxlFVrCksN4CiKrWHC4dQj8f9>

**Conclusion:**
Naive Bayes Model.

The label of model is the numerical representations of vine (1) and non-vine (0)reviews. The features in model is the review_body column applied to Nutrual Language Process (NLP) and predict whether a given review will be vine or non-vine.

Performing 70% of data to train the Naive Bayes Machine Learning Model, and testing 30% data.
After evaluate
The accuracy of the model isn’t perfect, but it’s not too low either: 0.741000.


### Classification and Regression:

[Amazon_Reviews_Classification_Regression.ipynb](/Amazon_Reviews_Classification_Regression.ipynb)

Google Colab Notebook link: <https://colab.research.google.com/drive/12YXyhLtu8gTAPczs3lmfIOepOuX9bDkw>

- **Naive Bayes Model Conclusion:**

 Naive Bayes Model's prediction computes the conditional probability distribution of each feature given each label.
 Accuracy of model at predicting vine reviews was : 0.976541, which means there will be 0.97 accuracy to determine if a review will be vine reviews based on helpful_votes, total_votes and star_rating.

- **Linear Regression Model Conclusion:**

Using attributes that are the number of helpful_votes and total_votes, to predict label: Star_rating. The correlation coefficients (r) are 0.097 for helpful_votes varivale, -0.0914 for total_votes. There are weak or no correlation between star_rating for a review and corresponding review's number of helpful_votes and total_votes.

- **Logistic Regression Model Conclusion:**

Logistic regression is a statistical method for analyzing a dataset in which there are 'helpful_votes', 'total_votes','star_rating' variables that determine an binary outcome ('vine' column). 
The area under the ROC curve (AUC) is a measure of how well parameters can distinguish between two groups. In this case, Predict AUC is 0.6 means the threshold would be 60%.