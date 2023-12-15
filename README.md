## Challenge Instructions

The project focuses on developing a comprehensive SQL database for Pewlett Hackard, detailing employee records from the 1980s and 1990s. Six CSV files, containing diverse data sets pertaining to the employees, serve as the foundational inputs.
These have been meticulously structured into SQL tables, ensuring the seamless integration of data from the CSV files into the SQL database. This database forms the backbone for advanced Data Engineering and Data Analysis tasks,
aimed at extracting insightful information about the workforce of Pewlett Hackard during the specified time frame.

## Data Engineering
- Inspect the CSVs and sketch out an ERD of the tables. The [QuickDBD](https://www.quickdatabasediagrams.com/) was used in this project.  Use the information from ERD to create a table schema for each of the six CSV files and specify data types, primary keys, foreign keys, and other constraints.
  - For the primary keys check to see if the column is unique, otherwise create a [composite key](https://en.wikipedia.org/wiki/Compound_key), which takes two primary keys in order to uniquely identify a row
  - Be sure to create tables in the correct order to handle foreign keys
<p align="center">
  <img src="https://github.com/ELCINKOBYAIMANCI/sql-challenge/blob/main/EmployeeSQL/QuickDBD-Free%20Diagram.png" height="75%" width="75%">
</p>

- Import each CSV file into the corresponding SQL table and make sure to import the data in the same order that the tables were created
## Data Analysis
-List the employee number, last name, first name, sex, and salary of each employee.

-List the first name, last name, and hire date for the employees who were hired in 1986.

-List the manager of each department along with their department number, department name, employee number, last name, and first name.

-List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

-List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

-List each employee in the Sales department, including their employee number, last name, and first name.

-List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

-List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

  ##List of Content

1.QuickDBD-Free Diagram.png: an image file of the ERD

2.QuickDBD-Free Diagram.sql: a .sql file of the table schemata

3.sql_challenge_queries.sql: a .sql file of the queries
