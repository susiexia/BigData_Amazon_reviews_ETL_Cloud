# BigData_Amazon_reviews_ETL_Cloud

Performing cloud-based ETL and analyzing data using SQL, Natural Language Processing (NLP) pipeline and Machine Learning model.

## Project Background

There are many of Amazon's shoppers depend on product reviews to make a purchase. It turns more and more important to perform data analysis on tons of Amazon's reviews. This project utilized one of Amazon public datasets on AWS S3 Buckets (Beauty product Reviews with over 5 milloin records) to extract, transform and load to AWS RDS database and statistical analyzed data to determine whether the Vine reviews are biased. The point of the Amazon Vine program is supposed to offer unbiased reviews to consumers. Vendors should have no influence on these vine reviews.

This project performed by Spark and completely in the cloud with Google Colab Notebook and AWS RDS.

## ETL Part 

- Github Link: [Github version ETL](/Amazon_Reriews_ETL_process.ipynb) 


### Extract

- Extract Amazon reviews dataset from AWS S3 data storage. <"https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Beauty_v1_00.tsv.gz">

- Load and read reviews dataset into DataFrame of Pyspark with Google Colab Notebook.

### Transform

- Transform the dataset to fit the furnished schemata of AWS RDS database.

### Load

- Load and write pyspark DataFrame directly to the correspond tables into an RDS instance.

----------------------------------------------------------------------------

## Analysis Part 

1. **SQL statistical Analysis**

Performing basic statistical analysis in SQL.

Conclusion :[SQLAnalysisConclusion.md](/SQLAnalysisConclusion.md)


2. **Machine Learning Analysis in Colab-Notebook**

Performing advanced statistical classification and regression model for prediction and evaluation in pySpark.

Conclusion :[ML_AnalysisConclusion.md](/ML_AnalysisConclusion.md)

#### Natural Language Process with Naive Bayes ML model:

- Github Link: [Amazon_Reviews_NLP_ML.ipynb](/Amazon_Reviews_NLP_ML.ipynb)

- Google Colab Notebook link: <https://colab.research.google.com/drive/1kAFj2v4wxlFVrCksN4CiKrWHC4dQj8f9>



#### Classification and Regression:

- Github Link: [Amazon_Reviews_Classification_Regression.ipynb](/Amazon_Reviews_Classification_Regression.ipynb)

- Google Colab Notebook link: <https://colab.research.google.com/drive/12YXyhLtu8gTAPczs3lmfIOepOuX9bDkw>
