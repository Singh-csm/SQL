CREATE TABLE table_name (
  column1 datatype,
  column2 datatype,
  ...
);

INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);

SELECT column1, column2, ...
FROM table_name;

SELECT column1, column2, ...
FROM table_name
WHERE condition;

UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

DELETE FROM table_name
WHERE condition;

SELECT COUNT(column), AVG(column), SUM(column), MAX(column), MIN(column)
FROM table_name;

SELECT column1, column2, ...
FROM table1
INNER JOIN table2 ON table1.column = table2.column;

SELECT column1, column2, ...
FROM table_name
ORDER BY column1 ASC/DESC;

SELECT column1, COUNT(column2)
FROM table_name
GROUP BY column1;
