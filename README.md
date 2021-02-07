# Amazon_Vine_Analysis
Performing ETL and Analysis on Amazon Product Reviews to determine bias of favorable VINE reviews. 

## Resources 
PySpark 
Pgadmin 
Pandas 

## Overview 
the purpose of this project is to analyze Amazon product reviews and uncover favorability of review types (Vine program reviews vs regular reviews).
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

With the data loaded, it is now possible to effeciently traverse and peroform analysis. 




