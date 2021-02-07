-- Creating Schema 
CREATE TABLE review_id_table (
  review_id TEXT PRIMARY KEY NOT NULL,
  customer_id INTEGER,
  product_id TEXT,
  product_parent INTEGER,
  review_date DATE -- this should be in the formate yyyy-mm-dd
);

-- This table will contain only unique values
CREATE TABLE products_table (
  product_id TEXT PRIMARY KEY NOT NULL UNIQUE,
  product_title TEXT
);

-- Customer table for first data set
CREATE TABLE customers_table (
  customer_id INT PRIMARY KEY NOT NULL UNIQUE,
  customer_count INT
);

-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);


--Create table of vine reviews with 20 or more votes from vine_table
SELECT *
INTO vote_count_20
FROM vine_table 
WHERE total_votes > 20;

-- Create table where helpful votes are equal to 50% or greater than total votes from vote_count_20 table
SELECT * 
INTO vote_50_percent
FROM vote_count_20 
WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5;

-- create table for reviews a part of vine program from vote_50_percent table 
SELECT * 
INTO vine_program_reviews 
FROM vote_50_percent 
WHERE vine = 'Y';

-- create table for reviews not a part of vine program from vote_50_percent table 
SELECT * 
INTO non_vine_program_reviews 
FROM vote_50_percent 
WHERE vine = 'N';

-- 



(SELECT COUNT(*) AS total_paid_votes FROM vine_program_reviews)
UNION
(SELECT COUNT(*) AS total_unpaid_reviews FROM non_vine_program_reviews);

SELECT vote_paid non_vote FROM ( SELECT COUNT(*) 
									 	AS vote_paid 
									 	FROM vine_program_reviews
									 	UNION
									 	SELECT COUNT(*)
									 	AS non_vote
									 	FROM non_vine_program_reviews) AS x;