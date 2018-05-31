# make sure your directory is correct
# setwd('your directory here')

# install.packages('sqldf')
library(sqldf)

employee <- read.csv('employee.csv')
positions <- read.csv('positions.csv')
departments <- read.csv('departments.csv')


# EASY
# Select the 10 lowest annual salaries, from lowest to highest, of all employees in the College of Business "COB". 
# assume OSPA-COF-COB-HONORSRSC is in the college of business (use a "LIMIT" statement)

sqldf("your query here")


# LESS EASY
# select employees that make more money than the highest paid female employee
# look up limit 

sqldf("your query here")

# MEDIUM
# Are there any employees with exactly the same name? Remove duplicates.

sqldf("your query here")


# HARD
# find assistant professors in who are compensated more than all other associate professors in the same department 
# do not use aggregate function
# *note that sqldf does not support ALL or ANY functions 
# *value > (subquery) acts like ALL function




