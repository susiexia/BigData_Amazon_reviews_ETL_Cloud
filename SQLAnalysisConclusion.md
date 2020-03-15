# SQL Statistical Analysis

Code: [analysisSQL.sql](/SQL/analysisSQL.sql)

--------------------------

## Conclusion

![Statistical_summary.PNG](/SQL/sql_Outputs/Statistical_summary.PNG)

The first summary contains all stra_rating from 1 to 5 star. We can see Amazon has much fewer vine reviews (33,309, 0.65% of total reviews) versus regular reviews (5,081,424, 99.3% of total reviews) on Beauty market. However, comparing the helpful_votes rate, vine reviews had higher average (2.37) and variance (550.92) than non-vine reviews, 1.70 in average and 295.60 of variance. That indicates that vine reviews in Beauty were highly possibly be trusted due to higher avarage helpful rates.

In addition, the avarage of star_rating in vine reviews was 4.02, comparing to 4.19 in non-vine reviews, which indicates vine-reviewers are more prudent than regular reviwers giving a higher rating to vendor carefully. We are able to infer vine-reviews are more trustworthy.

Furthermore, the higher average of total_votes (3.03) in vine reviews than non-vine (2.16) indicates vine reviewers were more active than non-vine.

![Statistical_summary_4and5star](/SQL/sql_Outputs/Statistical_summary_4and5star.PNG)

This summary contains basic statistics information about higher rate (4 and 5 stars rating). There are 24,927 of vine reviews, which is 0.62% of total 3,995,600 reviews. Comparing to first summary table (0.65%), there are less vine reviews in 4-5 star_rating reviews.