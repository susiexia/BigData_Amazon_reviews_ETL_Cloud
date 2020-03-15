--------Analysis-------------------

-- Statistical summary of Vine table
SELECT vine, COUNT(*), CAST(AVG(helpful_votes) AS DECIMAL(10,2)) AS helpful_avg,
			CAST(variance(helpful_votes) AS DECIMAL(10,2)) AS helpful_VARIANCE,
			CAST(MAX(helpful_votes) AS DECIMAL(10,2)) AS helpful_max,
			CAST(AVG(star_rating) AS DECIMAL(10,2)) AS Start_rating_avg, 
			CAST(variance(star_rating) AS DECIMAL(10,2)) AS Start_rating_VARIANCE, 
			CAST(AVG(total_votes) AS DECIMAL(10,2)) AS Total_votes_avg,		
			CAST(variance(total_votes) AS DECIMAL(10,2)) AS Total_votes_VARIANCE,			 			 
			CAST(MAX(total_votes) AS DECIMAL(10,2)) AS Total_votes_max		
FROM vine_table
GROUP BY vine;
-- Statistical summary of Vine table in 4-5 star_rating

SELECT  v.vine, COUNT(v.vine),CAST(AVG(helpful_votes) AS DECIMAL(10,2)) AS helpful_avg,
			CAST(variance(helpful_votes) AS DECIMAL(10,2)) AS helpful_VARIANCE,
			CAST(MAX(helpful_votes) AS DECIMAL(10,2)) AS helpful_max,
			CAST(AVG(star_rating) AS DECIMAL(10,2)) AS Star_rating_avg, 
			CAST(variance(star_rating) AS DECIMAL(10,2)) AS Star_rating_VARIANCE, 
			CAST(AVG(total_votes) AS DECIMAL(10,2)) AS Total_votes_avg,		
			CAST(variance(total_votes) AS DECIMAL(10,2)) AS Total_votes_VARIANCE,			 			 
			CAST(MAX(total_votes) AS DECIMAL(10,2)) AS Total_votes_max
FROM vine_table AS v 
WHERE v.star_rating >= 4 
GROUP BY  v.vine


SELECT *
FROM vine_table
WHERE vine_table.VINE = 'Y'
ORDER BY vine_table.helpful_votes, vine_table.total_votes DESC;

-- combine customer information and vine table, to figure out vine reviews metrics
SELECT c.customer_id, COUNT(v.total_votes) AS votes_count,CAST(AVG(v.helpful_votes) AS DECIMAL(10,2)) AS helpful_avg, 
			CAST(AVG(v.star_rating) AS DECIMAL(10,2)) AS Start_rating_avg, 
			CAST(AVG(total_votes) AS DECIMAL(10,2)) AS Total_votes_avg
FROM vine_table AS v 
JOIN review_id_table AS r ON v.review_id = r.review_id
JOIN customers AS c ON r.customer_id = c.customer_id
WHERE v.vine = 'Y'
GROUP BY c.customer_id
ORDER BY AVG(v.helpful_votes) DESC;