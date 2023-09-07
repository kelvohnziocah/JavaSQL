/*1. CONCAT:

Description: Concatenates two columns or strings together.
Alias: ALIAS_NAME*/
SELECT CONCAT(COLUMN1, COLUMN2) AS CONCATENATED_NAME
FROM YOUR_TABLE;
/* 2. LOWER:

Description: Converts the characters in a column to lowercase.
Alias: LOWER_COLUMN*/
SELECT LOWER (COLUMN) AS LOWER_COLUMN
FROM YOUR_TABLE;
/*3. UPPER:

Description: Converts the characters in a column to uppercase.
Alias: UPPER_COLUMN*/

SELECT UPPER(COLUMN) AS UPPER_COLUMN
FROM YOUR_TABLE;
/*4. TRIM:

Description: Removes leading and trailing spaces from a column.
Alias: TRIMMED_COLUMN*/

SELECT TRIM(COLUMN) AS TRIMMED_COLUMN
FROM YOUR_TABLE;
/*5. LENGTH:

Description: Returns the length (number of characters) of a column.
Alias: COLUMN_LENGTH*/
SELECT LENGTH(COLUMN) AS COLUMN_LENGTH
FROM YOUR_TABLE;
/*6. SUBSTRING:

Description: Retrieves a substring from a column, starting at a specified position and of a specified length.
Alias: SUBSTRING_RESULT*/
SELECT SUBSTRING(COLUMN, START, LENGTH) AS SUBSTRING_RESULT
FROM YOUR_TABLE;
/*7. ROUND:

Description: Rounds a numeric column to the specified number of decimal places.
Alias: ROUNDED_COLUMN*/
SELECT ROUND(COLUMN, DECIMAL_PLACES) AS ROUNDED_COLUMN
FROM YOUR_TABLE;
/*8. DATE_ADD and DATE_SUB:

Description: Adds or subtracts an interval from a date or timestamp column.
Alias: BIRTHDAY_DATE*/
SELECT DATE_ADD(DATE_ADD(NOW(), INTERVAL 7 DAY), INTERVAL 2 MONTH) AS BIRTHDAY_DATE;
/*9. FORMAT:

Description: Formats a date or timestamp column using a specified format string.
Alias: FORMATTED_DATE*/
SELECT FORMAT(COLUMN, FORMAT_STRING) AS FORMATTED_DATE
FROM YOUR_TABLE;
/*
To get the time to exactly midnight, you can use the DATE function to extract only the date portion from a timestamp:
*/
SELECT DATE(NOW()) AS MIDNIGHT_DATE;
#This will give you the current date with the time portion set to midnight (00:00:00).

#Birthday
SELECT DATE_ADD(DATE_ADD(NOW(), INTERVAL 7 DAY), INTERVAL 0 MONTH) AS BIRTHDAY_DATE;
