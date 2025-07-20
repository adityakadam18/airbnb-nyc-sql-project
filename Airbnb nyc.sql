CREATE DATABASE airbnb_nyc;

USE airbnb_nyc;

CREATE TABLE listings(
id INT,
name VARCHAR(255),
host_id INT,
neighbourhood_group VARCHAR(255),
neighbourhood VARCHAR(255),
latitude DECIMAL(10,6),
longitude DECIMAL(10,6),
room_type VARCHAR(255),
price INT,
minimum_nights INT,
number_of_reviews INT,
last_reviws INT,
reviews_per_months DECIMAL(4,2),
calculated_host_listings_count INT,
availablity_365 INT 
); 

SELECT * FROM listings
LIMIT 10;


SELECT neighbourhood_group, AVG(price) AS average_price 
FROM listings 
GROUP BY neighbourhood_group 
ORDER BY average_price DESC;  

SELECT room_type, ROUND(AVG(PRICE), 2) AS avg_price
FROM listings 
GROUP BY room_type 
ORDER BY avg_price DESC; 

SELECT id, name, reviews_per_month
FROM listings
WHERE reviews_per_month IS NULL;

SELECT name, neighbourhood_group, neighbourhood, price
FROM listings
WHERE price > 0
ORDER BY price ASC
LIMIT 10;

SELECT host_id, host_name, COUNT(*) AS total_listings
FROM listings
GROUP BY host_id, host_name
ORDER BY total_listings DESC
LIMIT 10;

SELECT room_type, COUNT(*) AS count
FROM listings
GROUP BY room_type
ORDER BY count DESC;

SELECT name, neighbourhood_group, price
FROM listings
ORDER BY price DESC
LIMIT 10;
