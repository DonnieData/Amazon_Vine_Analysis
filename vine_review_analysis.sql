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

