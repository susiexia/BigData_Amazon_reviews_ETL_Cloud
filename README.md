# BigData_Amazon_reviews_ETL_Cloud

Perform ETL in the cloud AND analyze data using Natural Language Processing (NLP) pipeline including Machine Learning.

## Project Background

There are many of Amazon's shoppers depend on product reviews to make a purchase. It turns more and more important to perform data analysis on tons of Amazon's reviews. This project utilized one of Amazon public datasets on AWS S3 Buckets (Beauty product Reviews with over 5 milloin records) to extract, transform and load to AWS RDS database and statistical analyzed data to determine whether the Vine reviews are biased. The point of the Amazon Vine program is supposed to offer unbiased reviews to consumers. Vendors should have no influence on these vine reviews.

This project performed by Spark and completely in the cloud in Google Colab Notebook.

## ETL Part 

- Github Links: [Github version ETL]() 

- Google Colab Notebook Link: [Google_Colab version ETL] (https://colab.research.google.com/drive/1N0fTd5rpGznaC15aYb5M63PDzCBJ_0e4)


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

2. Pyspark in colab Notebook


- Build an Natural Language Processing (NLP) pipeline in pySpark, 