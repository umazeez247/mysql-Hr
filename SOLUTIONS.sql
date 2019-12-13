#1-Write a query in SQL to display the full name (first and last name), and salary for those 
#employees who earn below 6000
SELECT concat(rtrim(FIRST_NAME),' ',RTRIM(LAST_NAME)) AS Full_Name, SALARY
  FROM employees
    WHERE SALARY < 6000;
    
#2 - Write a query in SQL to display the first name, last name, department ID, and department name for each
#employee.
SELECT E.first_name , E.last_name , 
       E.department_id , D.department_name 
        FROM employees E 
         JOIN departments D 
          ON E.department_id = D.department_id;
          
#3-Write a query in SQL to display the first and last_name, department number and salary for those employees who
#earn more than 8000
SELECT first_name,last_name, department_id, salary
 FROM employees
  WHERE salary > 8000;
  
#4-Write a query in SQL to display the first and last name, and department number for all employees whose last name
#is “McEwen”
SELECT first_name, last_name, department_id
 FROM employees
  WHERE last_name = 'McEwen';
  
#5-Write a query in SQL to display the full name (first and last), hire date, salary, and department number for those
#employees whose first name does not containing the letter M and make the result set in ascending order by
#department number.
SELECT concat(rtrim(FIRST_NAME),' ',RTRIM(LAST_NAME)) as Full_Name, hire_date,  
 salary,  department_id
  FROM employees
   WHERE first_name NOT LIKE '%M%'
     ORDER BY department_id;

#6-Write a query in SQL to display the full name (first and last), the phone number and email separated by hyphen,
#and salary, for those employees whose salary is within the range of 9000 and 17000. The column headings assign
#with Full_Name, Contact_Details and Remuneration respectively
SELECT concat(rtrim(FIRST_NAME),' ',RTRIM(LAST_NAME)) AS Full_Name,
       replace(PHONE_NUMBER, '.', '-') AS Phone_number, email AS Contact_Details,
       salary  AS Remuneration
         FROM employees
           WHERE salary BETWEEN 9000 AND 17000;

#7 - Write a query in SQL to display the full name (first and last), job id and date of hire for those employees who was
#hired during May 24th, 2007 and April 21st, 2008.
SELECT concat(rtrim(FIRST_NAME),' ',RTRIM(LAST_NAME)) AS Full_Name, 
  job_id, hire_date 
   FROM employees 
    WHERE hire_date 
     BETWEEN '2007-05-24' AND '2008-04-21';

#8. Write a query in SQL to display the the full name (first and last name), and department number for those
#employees who works either in department 60 or 80. 
SELECT concat(rtrim(FIRST_NAME),' ',RTRIM(LAST_NAME)) AS Full_Name, 
  DEPARTMENT_ID 
   FROM employees 
    WHERE DEPARTMENT_ID 
     BETWEEN 60 AND 80;
     
#9.Write a query in SQL to display the first and last name, departmentID, city, and state province for each employee
SELECT E.first_name,E.last_name, 
   D.department_name, L.city, L.state_province
     FROM employees E 
      JOIN departments D  
        ON E.department_id = D.department_id  
          JOIN locations L
           ON D.location_id = L.location_id;
           
#10- Write a query in SQL to display the first name, last name, salary, and job grade for all employees
SELECT E.first_name, E.last_name, E.salary, J.grade_level
 FROM employees E 
   JOIN job_grades J
     ON E.salary BETWEEN J.lowest_sal AND J.highest_sal;
     
