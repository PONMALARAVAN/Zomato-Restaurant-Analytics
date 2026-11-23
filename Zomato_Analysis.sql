use root;
select * from zomato;
-- Check rating distribution
SELECT Rating, COUNT(*) AS count
FROM zomato
WHERE CountryCode = 1
GROUP BY Rating
ORDER BY count DESC;

-- Q1: Which cities in India have the most restaurants?
SELECT City,
       COUNT(*) AS restaurant_count
FROM zomato
WHERE CountryCode = 1
GROUP BY City
ORDER BY restaurant_count DESC
LIMIT 10;

-- Q2: Most popular cuisines in India
SELECT Cuisines,
       COUNT(*) AS count,
       ROUND(AVG(Rating), 2) AS avg_rating
FROM zomato
WHERE CountryCode = 1
  AND Cuisines IS NOT NULL
GROUP BY Cuisines
ORDER BY count DESC
LIMIT 15;

-- Q3: Online delivery adoption by city
SELECT City,
       COUNT(*) AS total,
       SUM(CASE WHEN Has_Online_delivery = 'Yes' THEN 1 ELSE 0 END) AS with_delivery,
       ROUND(100.0 * SUM(CASE WHEN Has_Online_delivery = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 1) AS delivery_pct
FROM zomato
WHERE CountryCode = 1
GROUP BY City
HAVING COUNT(*) > 50
ORDER BY delivery_pct DESC
LIMIT 10;

-- Q4: Does table booking affect ratings?
SELECT Has_Table_booking,
       COUNT(*) AS restaurants,
       ROUND(AVG(Rating), 2) AS avg_rating,
       ROUND(AVG(Votes), 0) AS avg_votes
FROM zomato
WHERE CountryCode = 1
  AND Rating > 0
GROUP BY Has_Table_booking;

-- Q5: Price range vs average rating
SELECT
  CASE
    WHEN Average_Cost_for_two < 300 THEN 'Budget (under 300)'
    WHEN Average_Cost_for_two BETWEEN 300 AND 700 THEN 'Mid (300-700)'
    WHEN Average_Cost_for_two BETWEEN 700 AND 1500 THEN 'Premium (700-1500)'
    ELSE 'Fine Dining (1500+)'
  END AS price_category,
  COUNT(*) AS restaurant_count,
  ROUND(AVG(Rating), 2) AS avg_rating,
  ROUND(AVG(Votes), 0) AS avg_votes
FROM zomato
WHERE CountryCode = 1
  AND Rating > 0
GROUP BY price_category
ORDER BY avg_rating DESC;

-- Q6: Best value restaurants — high rating, low cost, high votes
	SELECT RestaurantName, City, Cuisines,
		   Average_Cost_for_two, Rating, Votes
	FROM zomato
	WHERE CountryCode = 1
	  AND Rating >= 4.0
	  AND Average_Cost_for_two <= 500
	  AND Votes >= 200
	ORDER BY Rating DESC, Votes DESC
	LIMIT 20;

-- Q7: Which city has the most Excellent rated restaurants?
SELECT City,
       COUNT(*) AS excellent_restaurants
FROM zomato
WHERE CountryCode = 1
  AND Rating = 'Excellent'
GROUP BY City
ORDER BY excellent_restaurants DESC
LIMIT 10;

-- Q8: Correlation — do more votes mean higher rating?
SELECT
  CASE
    WHEN Votes < 100 THEN 'Low votes (under 100)'
    WHEN Votes BETWEEN 100 AND 500 THEN 'Medium (100-500)'
    WHEN Votes BETWEEN 500 AND 2000 THEN 'High (500-2000)'
    ELSE 'Very High (2000+)'
  END AS vote_category,
  COUNT(*) AS restaurants,
  ROUND(AVG(Rating), 2) AS avg_rating
FROM zomato
WHERE CountryCode = 1
  AND Rating > 0
GROUP BY vote_category
ORDER BY avg_rating DESC;



