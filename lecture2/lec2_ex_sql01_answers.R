# In Class SQL Exercise
# Load the dataframe and use sqldf to generate your query.
library(sqldf)

employee <- read.csv('https://raw.githubusercontent.com/da6813/summer18/master/lecture1/employee.csv')
position <- read.csv('https://raw.githubusercontent.com/da6813/summer18/master/lecture1/positions.csv')
department <- read.csv('https://raw.githubusercontent.com/da6813/summer18/master/lecture1/departments.csv')

# QUESTION 1
# Select the first 5 rows of the employee, position, and department table to get a 
# sense of the structure of the tables (3 queries)

sqldf("SELECT * FROM employee limit 5") # fix this

sqldf("SELECT * FROM position limit 5") # fix this

sqldf("SELECT * FROM department ") # fix this



# QUESTION 2 
# Find the first 5 employee names of all females in the department 'SAT001' ordered by 
# salary from highest to lowest. Use the departments table to figure out the name of 
# department 'SAT001' (2 queries)

sqldf("select name
       from employee
       where gender = 'F'
       or dept_cd = 'SAT001'
       order by annual_salary desc
       limit 5")

sqldf("select department from department where dept_cd = 'SAT001'")

# QUESTION 3 
# Select all of the Job_Cds from the position table that describe some type of professor. (1 query)

sqldf("select job_cd
       from position
       where job_title like '%PROfESSOr%'")

# QUESTION 4 
# Who is the highest paid professor? (Ignore Associate Professors, Assistant Professors, etc.) 
# Use only one query and list the name

sqldf("select name 
       from employee as x, position as y
       where x.job_cd = y.job_cd
       and job_title = 'PROFESSOR'
       order by annual_salary desc
       limit 1")

# QUESTION 5
# Who are the top five highest paid individuals in the department 'COB MGMT SCIENCE & STATISTICS' ?
# What is the salary of these individuals.  Use only one query and list the name and salary.

sqldf("select name, annual_salary
       from employee as x, department as y
       where x.dept_cd = y.dept_cd
       and department = 'COB MGMT SCIENCE & STATISTICS'
       order by annual_salary desc
       limit 5")


# QUESTION 6
# What are the salaries and names of the top five highest paid associate professors 
# in the College of Engineering. Use only one query.

sqldf("select name, annual_salary
       from employee as x, department as y, position as z
       where x.dept_cd = y.dept_cd
       and x.job_cd = z.job_cd
       and department LIKE '%COE%'
       and job_title LIKE '%ASSOCIATE PROFESSOR%'
       order by annual_salary desc
       limit 5")


# QUESTION 7 
# Find part time employee names and salaries in the 'ATHLETICS' department who have 
# salaries over 15000/year and job titles with 'Athletic Coordinator' in the name. 
# Order them by salary and then alphabetically. List all of the columns from the employee table.

sqldf("select name, x.job_cd, x.dept_cd, race, gender, hire_date, full_part, annual_salary
       from employee as x, department as y, position as z
       where x.dept_cd = y.dept_cd
       and x.job_cd = z.job_cd
       and department = 'ATHLETICS'
       and annual_salary > 15000
       and job_title like '%Athletic Coordinator%'
       order by annual_salary, name")

