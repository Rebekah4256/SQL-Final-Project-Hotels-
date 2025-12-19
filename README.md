# SQL-Final-Project-Hotels-
SQL Final Project analyzing hotels.

My data set https://www.kaggle.com/datasets/alperenmyung/international-hotel-booking-analytics

In my data, there are three different tables: hotels, reviews, and users. All the tables are connected by the reviews table, hotels by hotel ID, and the users table is connected via the user ID.
This data shows 25 different hotels and what types of people who are staying at and reviewing the hotels.

First question, I wanted to find out in this data set which hotel has the highest average overall score, and what city the hotel is in.
For my findings, I found that the hotel with the highest average score is the Marina Bay Zenith in Singapore, with an average score of 9.05.
How I found this out was first to get the names of the hotels and what city the hotel is located then find the average of the overall score column, calling the average column avgHotelScore. 
Then, grouping the days by the hotel name and ordering all the data from highest to lowest rating

For my second question, I wanted to see where most of our guests were originally from.
What I found with this question was that the majority of guests visiting these hotels are from the United States, at 280, with the United Kingdom close behind, with 231 guests.
How I found this was first selecting the country that the guests were from, then counting how many people were in the data set.
Then I grouped the data by county and ordered from highest to lowest guest count to find where the most people were coming from.

For question three,  I wanted to create a CTE and have it show what type of trips people are taking and what their genders are.
What I found with this query was that most of the people who were traveling to these hotels were couples, with a man making the reservation.
How I did this was I made a CTE that first selected the traveler type and then counted the how many people there were from the user table.
Then it grouped by traveller type, and then the gender of the user then ordered the data by the type of travel, and then the total travelers.

Question four, I wanted to see who the top 10 reviewers are and rank them all.
What I found with the one is that the top 2 reviewers were user IDs 1760 and 595; they both have reviewed 44 times.
Firstly, I need to join the user and reviews tables, so I decided to do this by left joining to make sure that if there was someone who did not review, their ID would still show up.
Then I selected the user ID, counted how many reviews there were, ranked them as well, and made sure to group them by user ID and limit the data to just show the top ten.

For my last question, I want to see which hotel has the lowest most recent review for the cost of the room, and what they scored the staff at that hotel, as well as what they were saying about the hotels.
Lastly, I found that The Bodphotud Inn had the lowest most recent review in terms of cost in this data, at a 7.3, and they rated the staff an 8.8
How I found this was first, I needed to combine the reviews and hotels table. I chose to do an inner join for this, so there would be no null data.
Next, I selected the hotel names, then the most recent review, then the score or the value, then the score for the staff, and grouped the data by hotel and ordered by the money score from lowest to highest, then staff score from highest to lowest.
