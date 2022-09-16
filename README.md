# project-2-group-8
​
## Overview
The purpose of this project is to find the happiness and freedom of the populace and combine the data to see where the rankings are for the most “free people” and if that correlates to their happiness ranking.  
​
## Team Members
* Randy Lam
* Jon Kwiatkowski
* Loukya Kilari  
​
## Original Datasets
​
* [Human Freedom Index](https://www.kaggle.com/datasets/gsutters/the-human-freedom-index?select=hfi_cc_2021.csv)
​
* [World Happiness Index](https://www.kaggle.com/datasets/mathurinache/world-happiness-report?select=2021.csv)  
​
## Database Used
* `PostgreSQL`  
​
## Instructions 
​
1.	Navigate to the folder that will contain your work and open Gitbash (windows) or Terminal (Mac)
1.	Clone this repo 
1.	Once the folder has been cloned, open `PostgreSQL` and create a new database with a filename `etlproject_db`
1.	Import `schema.sql` and run the code to create three tables `world_happiness`, `human_freedom_index`, and `regions`.
1.	Once the sql file has been updated, open another Gitbash/Terminal session and open a Jupyter Notebook session.

1.	Run the code within the Jupyter Notebook.
	
	a. The notebook has been seperated/marked down into specific sections along with comments as to what the code does.
	
	b. When creating the DB connection the input needs to be changed to your specific Username, Password, Port, Host, etc.  

1. To check whether or not everything has been done correctly, run the queries in the `query.sql` file.  
​
## Additional Notes/Reminders
​
* PostgreSQL username, password, host, port, db name will need to be updated to what you have specifically.

* There are comments within the jupyter notebook that clarifies what the code does

* Some tables have null values and that removed the whole column, to fix this we updated the code and recreated the tables after removing **not null** from the affected columns of the `human_freedom_index`.  

* If you run the code a second time, be sure to drop the tables before attempting to load in more data.

## Resources
* [QuickDBD](https://quickdatabasediagrams.com/)
* Project 2 Instructions
