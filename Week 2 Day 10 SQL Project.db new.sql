1. Query all columns (attributes) for every row in the CITY table.

SOLUTION:
SELECT *
FROM CITY

2.Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.

SOLUTION:
select *
FROM CITY
WHERE POPULATION > 100000
AND COUNTRYCODE = 'USA'

3.Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.

SOLUTION:
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'USA'
AND POPULATION > 120000

4.Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

SOLUTION:
SELECT *
FROM CITY 
WHERE COUNTRYCODE = 'JPN'

5.Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

SOLUTION:
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN'

6.Query a list of CITY and STATE from the STATION table.

SOLUTION:
SELECT CITY, STATE
FROM STATION


7.Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer

SOLUTION:
SELECT DISTINCT CITY
FROM STATION
WHERE (ID % 2) = 0
ORDER BY CITY ASC



8.Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates

solution:

SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE 'a%' or city like 'e%' or city like 'i%' or city like 'o%' or city like 'u%'


9.Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates

SOLUTION:

SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE '%a' or CITY like '%e' or CITY like '%i' or CITY like '%o' or CITY like '%u'
ORDER BY CITY DESC

10.Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates.

solution:

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE '%a' AND CITY NOT LIKE '%e' AND CITY NOT LIKE '%i' AND CITY NOT LIKE '%o' AND CITY NOT LIKE '%u'

11.Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.

solution:

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE 'a%' AND CITY NOT LIKE 'e%' AND CITY NOT LIKE 'i%' AND CITY NOT LIKE 'o%' AND CITY NOT LIKE 'u%'



13. Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

solution:

SELECT DISTINCT CITY
FROM STATION
WHERE CITY NOT LIKE 'a%' AND CITY NOT LIKE 'e%' AND CITY NOT LIKE 'i%' AND CITY NOT LIKE 'o%' AND CITY NOT LIKE 'u%' AND CITY NOT LIKE '%a' AND CITY NOT LIKE '%e' AND CITY NOT LIKE '%i' AND CITY NOT LIKE '%o' AND CITY NOT LIKE '%u'


14.Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

SOULTION:

SELECT NAME
FROM EMPLOYEE
ORDER BY NAME ASC


15.Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id.

SOLUTION:

select name
FROM Employee
WHERE salary > 2000 AND months < 10
order by employee_id asc

16.Query a count of the number of cities in CITY having a Population larger than 100000

SOLUTION:

SELECT  COUNT(NAME)
FROM CITY
WHERE POPULATION > 100000

17. Query the total population of all cities in CITY where District is California.

solution:

SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California'

18.Query the average population of all cities in CITY where District is California.

solution:

SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'California'

19. Query the average population for all cities in CITY, rounded down to the nearest integer.

SOLUTION:

SELECT FLOOR(AVG(POPULATION))
FROM CITY;

20. Query the difference between the maximum and minimum populations in CITY

SOLUTION:

SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY

21. Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

SOLUTION:

SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;

22. Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345 . Truncate your answer to 4 decimal places.

SOLUTION

SELECT ROUND(MAX(LAT_N), 4)
FROM STATION
WHERE LAT_N < 137.2345
