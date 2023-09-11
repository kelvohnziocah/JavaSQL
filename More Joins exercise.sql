#LEFT JOIN:

SELECT <select_list> FROM TableA A
LEFT JOIN TableB B ON A.Key = B.Key;

#LEFT JOIN with WHERE clause:

SELECT <select_list> FROM TableA A
LEFT JOIN TableB B ON A.Key = B.Key
WHERE B.Key IS NULL;

#FULL OUTER JOIN

SELECT <select_list> FROM TableA A
LEFT JOIN TableB B ON A.Key = B.Key
UNION
SELECT <select_list> FROM TableA A
RIGHT JOIN TableB B ON A.Key = B.Key;


#INNER JOIN

SELECT <select_list> FROM TableA A
INNER JOIN TableB B ON A.Key = B.Key;

#RIGHT JOIN:

SELECT <select_list> FROM TableA A
RIGHT JOIN TableB B ON A.Key = B.Key;

#RIGHT JOIN with WHERE clause:

SELECT <select_list> FROM TableA A
RIGHT JOIN TableB B ON A.Key = B.Key
WHERE A.Key IS NULL;

#FULL OUTER JOIN with WHERE clause:

SELECT <select_list> FROM TableA A
LEFT JOIN TableB B ON A.Key = B.Key
WHERE A.Key IS NULL OR B.Key IS NULL
UNION
SELECT <select_list> FROM TableA A
RIGHT JOIN TableB B ON A.Key = B.Key
WHERE A.Key IS NULL OR B.Key IS NULL;
