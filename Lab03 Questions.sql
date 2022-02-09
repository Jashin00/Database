/*********************************************************************************
Assignment - Lab 3 Multiple Table Queries
By <give your name>
Lab Section: ??
**********************************************************************************/

set pagesize 40
set linesize 120


/*********************************************************************************
 Question 1A, 1B, 1C
 Use the tables in your schema.
 For each country in Asia, display the country name and the region name. 
 Sort the results by country name in ascendening sequence.
 Give the answer in the requested SQL verisons using the requested keywords.
 Write the query in SQL/86 and SQL/92.
 Note: Do NOT use the code for Asia in your search, look for the string 'Asia'
**********************************************************************************/
-- 1A -- SQL/86
SELECT country_name, region_name
FROM countries c , regions r
WHERE r.region_name = 'Asia'
ORDER BY c.country_name ASC;

-- 1B -- SQL/92 using "ON"
SELECT country_name, region_name
FROM countries c INNER JOIN regions r ON(r.region_name = 'Asia')
ORDER BY c.country_name ASC;
-- 1C -- SQL/92 using "USING"
SELECT country_name, region_name
FROM countries c INNER JOIN regions r USING(region_id)
WHERE r.region_name = 'Asia'
ORDER BY c.country_name ASC;


/*********************************************************************************
 Question 2A, 2B
 Use the tables in your schema.
 Write a query to display the last name, job title, department id, and 
 department name for all employees who work in Southlake. 
 Sort the results by last name in ascending sequence.
**********************************************************************************/
-- 2A --  SQL/86
SELECT e.last_name, j.job_title, d.department_id, d.department_name, l.location_id
FROM employees e, jobs j, departments d, locations l
WHERE l.location_id = d.location_id AND 
      d.department_id = e.department_id AND 
      e.job_id = j.job_id AND
      l.city = 'Southlake'
ORDER BY last_name ASC;

      

-- 2B -- SQL/92
SELECT e.last_name, j.job_title, department_id, d.department_name, location_id
FROM locations l INNER JOIN departments d USING(location_id)
       INNER JOIN employees e USING(department_id)
       INNER JOIN jobs j USING(job_id)
WHERE l.city = 'Southlake'
ORDER BY last_name ASC;



/*********************************************************************************
 Question 3A, 3B 
 Use the tables in your schema.
 Write a query that will list all of the employees (last names), whose last name
 starts with 'G', and the departments (give the name of the department) to which 
 they belong. Include all employees who have not yet been assigned to any department. 
 If an employee does not belong to a department, use the string "unassigned" for 
 the department name.
 Sort the results by last name in ascending sequence.
 Use the terms "Last Name" and "Department" for the column headings.
 Write the query in SQL/86 and SQL/92.
 Note: do not use IS NULL or IS NOT NULL in your query. 
**********************************************************************************/
-- 3A -- SQL/86
SELECT e.last_name, d.department_name
FROM employees, department
WHERE e.last_name LIKE 'D%'
ORDER BY e.last_name ASC;


-- 3B -- SQL/92


/*********************************************************************************
 Question 4A, 4B  
 Use the tables in your schema.
 Display the employee last name and employee id along with their manager's last 
 name and manager number (in other words the manager's employee id) for all 
 employees whose last name begins with 'T'. 
 Label the columns Employee, Emp#, Manager, and Mgr#, respectively (note the use of upper and lower 
 case). 
 Sort the results by employee last name in descending sequence.
 Write the query in SQL/86 and SQL/92.
**********************************************************************************/

-- 4A -- SQL/86



-- 4B -- SQL/92



/*********************************************************************************
 Question 5A, 5B 
 Use the tables in your schema.
 Display the region, the employee first and last name (separated by a space) in a 
 column titled "Employee Name", and the employee's salary.  Only include employees 
 with a salary between 9000 and 10000 (inclusive).
 Sort the report by ascending region name, and then by descending salary.
 Make it so region names are not repeated (ie: suppress duplicate values - if the 
 region name of a row matches the region name of the row above it - don't show the
 region name).  Hint: you will need to us "BREAK ON". After a grouping of employees
 within a region, add in a blank line by  using "SKIP 1" at the end of the break
 on clause.
 Be sure to clear breaks after your query so it does not affect other queries.
 Write the query in SQL/86 and SQL/92.
 Note: Remember to join all the tables that are required to connect the employee 
       table to the region table.
**********************************************************************************/
-- 5A -- SQL/86


-- 5B -- SQL/92



/*********************************************************************************
 Question 6 
 Use the tables in your schema.
 Create a report showing:
   First name, last name, and salary of all of the employees who make over $11,000.
   Use a column command to format the salary to have a heading of "Emp Salary",
   and left justify it.  Put the salaries into a currency format: $9,999,999.99
   Sort the report by salary in descending sequence.
   Turn the TTITLE and BTITLE off after the query and clear the salary column so
   that it doesn't affect other queries.
Create the following header for the report:
   left-justified: 'Run date: ' use _DATE command
   centered: Show the user who ran the query as 'Run by: ' SQL.USER
   right-justified: Put Page number on the right as 'Page: ' SQL.PNO
Create the following footer for the report:
   centered: 'End of Report'
**********************************************************************************/





/*********************************************************************************
 Question 7A, 7B
 Use the tables in your schema.
 List the the employees (last name, job name, department name, salary) who make
 more than X dollars.  Make it so that the user running the script is prompted 
 to enter the X amount for salary. 
 Sort the results by salary in descending sequence. 
 Test it with a salary of 4000.
 Write the query in SQL/86 and SQL/92.
**********************************************************************************/
-- 7A -- SQL/86


-- 7B -- SQL/92
