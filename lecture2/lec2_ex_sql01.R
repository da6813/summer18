# In Class SQL Exercise
# Load the dataframe and use sqldf to generate your query.
library(sqldf)

employee <- read.csv('https://raw.githubusercontent.com/da6813/summer18/master/lecture1/employee.csv')
position <- read.csv('https://raw.githubusercontent.com/da6813/summer18/master/lecture1/positions.csv')
department <- read.csv('https://raw.githubusercontent.com/da6813/summer18/master/lecture1/departments.csv')

# QUESTION 1
# Select the first 5 rows of the employee, position, and department table to get a 
# sense of the structure of the tables (3 queries)

sqldf("SELECT * FROM TABLENAME") # fix this

sqldf("")

sqldf("")

# QUESTION 2 
# Find the first 5 employee names of all females in the department 'SAT001' ordered by 
# salary from highest to lowest. Use the departments table to figure out the name of 
# department 'SAT001' (2 queries)

sqldf("")

sqldf("")

# QUESTION 3 
# Select all of the Job_Cds from the position table that describe some type of professor. (1 query)

sqldf("")

# QUESTION 4 
# Who is the highest paid professor? (Ignore Associate Professors, Assistant Professors, etc.) 
# Use only one query and list the name

sqldf("")

# QUESTION 5
# Who are the top five highest paid individuals in the department 'COB MGMT SCIENCE & STATISTICS' ?
# What is the salary of these individuals.  Use only one query and list the name and salary.

sqldf("")

# QUESTION 6
# What are the salaries and names of the top five highest paid associate professors 
# in the College of Engineering. Use only one query.

sqldf("")

# QUESTION 7 
# Find part time employee names and salaries in the 'ATHLETICS' department who have 
# salaries over 15000/year and job titles with 'Athletic Coordinator' in the name. 
# Order them by salary and then alphabetically. List all of the columns from the employee table.

sqldf("")
