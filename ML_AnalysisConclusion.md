# Machine Learning Analysis

Performing advanced statistical classification and regression model for prediction and evaluation in pySpark.

## Natural Language Process with Naive Bayes ML Model

- Github Link: [Amazon_Reviews_NLP_ML.ipynb](/Amazon_Reviews_NLP_ML.ipynb)

- Google Colab Notebook link: <https://colab.research.google.com/drive/1kAFj2v4wxlFVrCksN4CiKrWHC4dQj8f9>


The label of model is the numerical representations of vine (1) and non-vine (0) reviews. The features in model is the review_body column applied to Natrual Language Process (NLP) and predict whether a given review will be vine or non-vine. The prediction column will indicate with a 1.0 if the model thinks this review pertains of vine and 0.0 if it thinks it’s non-vine review. 
Performing 70% of data to train the Naive Bayes Machine Learning Model and testing 30% data.
For the evaluate part, accuracy of model at predicting reviews was 0.959364.


## Classification and Regression:

- Github Link: [Amazon_Reviews_Classification_Regression.ipynb](/Amazon_Reviews_Classification_Regression.ipynb)

- Google Colab Notebook link: <https://colab.research.google.com/drive/12YXyhLtu8gTAPczs3lmfIOepOuX9bDkw>

- **Naive Bayes Model Conclusion:**

 Naive Bayes Model's prediction computes the conditional probability distribution of each feature given each label.
 Accuracy of model at predicting vine reviews was : 0.976541, which means there will be 0.97 accuracy to determine if a review will be vine reviews based on helpful_votes, total_votes and star_rating.

- **Linear Regression Model Conclusion:**

Using attributes that are the number of helpful_votes and total_votes, to predict label: Star_rating. The correlation coefficients (r) are 0.097 for helpful_votes varivale, -0.0914 for total_votes. There are weak or no correlation between star_rating for a review and corresponding review's number of helpful_votes and total_votes.

- **Logistic Regression Model Conclusion:**

Logistic regression is a statistical method for analyzing a dataset in which there are 'helpful_votes', 'total_votes','star_rating' variables that determine a binary outcome ('vine' column). 
The area under the ROC curve (AUC) is a measure of how well parameters can distinguish between two groups. In this case, Predict AUC is 0.6 means the threshold would be 60%.