

/*For my first question, 
 * I wanted to find out in this data set which hotel has the highest average overall score, and what city the hotel is in.*/

SELECT h.hotel_name, 
	city,ROUND(AVG(r.score_overall),2) AS avgHotelScore
FROM hotels h 
	INNER JOIN reviews r 
		ON h.hotel_id = r.hotel_id 
GROUP BY h.hotel_name 
ORDER BY r.score_overall DESC;

/*For my second question, 
 * I wanted to see where most of our guests were originally from.*/

SELECT u.country , COUNT(u.country) AS gusetsPerCountry
FROM users u 
GROUP BY country 
ORDER BY gusetsPerCountry  DESC

/*For my third question, 
 * I wanted to create a CTE and have it show what type of trips people are taking and what their genders are.*/

WITH cteTravelType AS
	(SELECT u.traveller_type , 
		u.user_gender,
		COUNT(u.user_id) totalTravlers  
	FROM users u 
	GROUP BY u.traveller_type, user_gender 
	ORDER BY traveller_type, totalTravlers DESC)
SELECT *
FROM cteTravelType 

/*For my fourth question, 
 * I wanted to see who was reviewing the most and rank them all.*/

SELECT r.user_id, RANK() OVER(ORDER BY COUNT(*)DESC) AS reviewRank, COUNT(*) AS numberReview
FROM users u 
	LEFT JOIN reviews r 
		ON u.user_id = r.user_id  
GROUP BY r.user_id 
LIMIT 10

/*For my last question, 
 * I want to see which hotel has the lowest most recent review for the cost of the room, 
 * and what they scored the staff at that hotel.
 * as well as what they were saying about the hotels*/

SELECT h.hotel_name , MAX(r.review_date) AS latestReview, r.score_value_for_money, r.score_staff, r.review_text  
FROM reviews r
	INNER JOIN hotels h 
		ON r.hotel_id = h.hotel_id 
GROUP BY h.hotel_name 
ORDER BY r.score_value_for_money, r.score_staff ASC



