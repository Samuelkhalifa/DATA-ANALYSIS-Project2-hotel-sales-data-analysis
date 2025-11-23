CREATE DATABASE hotelDB_project;

USE hotelDB_project;


WITH hotels AS (
SELECT * FROM hotel_revenue_historical_2018
UNION
SELECT * FROM hotel_revenue_historical_2019
UNION
SELECT * FROM hotel_revenue_historical_2020
)
SELECT * 
FROM
	hotels
	LEFT JOIN hotel_revenue_historical_market_segment
	ON hotels.market_segment = hotel_revenue_historical_market_segment.market_segment
    LEFT JOIN hotel_revenue_historical_meal_cost
    ON hotels.meal = hotel_revenue_historical_meal_cost.meal;