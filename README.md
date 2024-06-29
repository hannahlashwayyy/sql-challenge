# sql-challenge
#SCHEMATA 
Began by mapping out all the data in the CSV files to find related columns and then determine in which tables to declare the column as a primary key or foreign key and in on case a composite primary key. For example, it made sense to declare the 'emp_no' column as the primary key in the Employee table and as a foreign key in all the other tables that referenced the 'emp_no'. Looking at all of the CSV files before I began creating my tables allowed me to make note of which data type to classify them as and in the case of VARCHAR datatypes, to determine their value length.

*note* I did include my "select * from" queries in the schemata file as I used them in the process of creating my tables to just double check that my csv files were importing correctly.

#QUERIES 
1. Used 'JOIN' to reference both 'employee' and 'salary' tables to print each employee's full name, sex, salary, and employee number. Used employee table as primary table as it contained most of the data I needed.

2. Used 'EXTRACT(YEAR FROM =)' to select which column to pull data from and 'WHERE' to determine the year needed from that column

3-4. Same as first query, just used a second 'JOIN' to be able to pull from 3 tables. In this case I set the 'dept_manager' for third query and 'dept_emp' for fourth query as my primary tables because I needed both columns in the tables and only some columns from the other two tables.

5. Used 'WHERE' to limit all first names to just 'Hercules',  and 'AND' to add my second constraint and make it mantatory. Second constraint used 'LIKE B%' to select any last names that began with B  versus '= 'B'' would only select last names that were just the letter B.

6. Same as query requests 3 and 4 all I did was use 'WHERE' to limit which departments to display info for - in this case I only wanted to display employees and their information in the sales department.

7. Combination of query 5 and 6. Essentially the same as the previous query where I used 'WHERE' operator to limit displayed info to isolate sales department however this time I also included and 'OR' operator which allowed me to display employee information for the sales or development department. Used 'OR' instead of 'AND' because 'AND' sets a different limit, being that the employee would have to be registered under both department instead of looking at employees that were a part of either department.

8. Used aggregate function 'COUNT(*) AS' to count the number employees with the same last names. By grouping by employee last name and ordering by count this allowed the 'DESC' operator to display the data in terms of descending by the actual number of employees with the same last name versus is if did 'ORDER BY last_name DESC' it would display the data in reverse alphabetical order not by numerical quantity. 
