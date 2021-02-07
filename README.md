# Amazon_Vine_Analysis
Performing ETL and Analysis on Amazon Product Reviews to determine bias of favorable VINE reviews. 

## Resources 
PySpark 
Pgadmin 
Pandas 
Psycopg2

## Overview 
the purpose of this project is to analyze Amazon product reviews and uncover favorability of Vine program reviews over regular reviews.
In order to analyze and uncover any insights a large ammount of review data must be processed. 

## Dtabase Schema 
In order to properly process and analyze the review data, I have created a database schema within AWS to load the data into once it is transformed. 

[schema_1]

## ETL Process 

Pyspark is first used to extract and read in review data from an Amazon S3 Data storage server. 
[pyspark_1]()

Pyspark is then used to transfrom the data by creating Dataframes from subsets, which will match the tables within the database and schema constraints. 

- customer table 

- products table 

- review_id table 

- vine review table

After creating the dataframes, they are the loaded into the database.


## Querying Database 

With the data loaded, it is now possible to effeciently traverse and perform analysis. 
In order to gain a more granular understanding of the review data, additional tables are created within the database through several queries. 

[qeury_1]

## Analyzing with Pandas  
With even more focussed subsets of review data created within the database, analysis is smoothly perfomred with pandas in python by connecting my enviornment to the database and loading the needed tables.

[python_12]


## Results 
Through utlizing pandas , I have created the below reviews summary for vine vs no vine reviews 

[summary] 

- In total there were 42,022 reviews of office products, with 2% being vine and 98% non-vine.
- 408 of vine reviews are 5 star, while 18,104 of non-vine reviews are 5 star. 
- 44% of vine reviews are 5 star, as well as 44% of non-vine reviews are 5 star.

## Summary 

Based on the data summary, there is not sufficient evidence of there being any positivty bias for reviews in the Vine program. 
Since there is roughly the same percentage of 5 star rated reviews for vine and non-vine reviews, one is not shown to be praportionatly favored over the other. 







