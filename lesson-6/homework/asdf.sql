1. Using SELECT DISTINCT
This is the simplest way. DISTINCT applies to all columns in the SELECT clause and returns only unique rows.
SELECT DISTINCT col1, col2
FROM InputTbl;
What this does:
It returns unique pairs exactly as they appear.
Duplicate rows like (a, b) only appear once.
However, (a, b) and (b, a) are treated as different because the order matters.
Using GROUP BY
You can also use GROUP BY on the two columns to get distinct pairs:
SELECT col1, col2
FROM InputTbl
GROUP BY col1, col2;
What this does:
Groups the rows by (col1, col2) pairs.
Returns one row per distinct pair.
Functionally equivalent to SELECT DISTINCT here.
Bonus: Distinct Pairs Ignoring Order
If you want to treat (a, b) and (b, a) as the same pair (order doesn't matter), you need to normalize the order:
SELECT DISTINCT
    CASE WHEN col1 < col2 THEN col1 ELSE col2 END AS val1,
    CASE WHEN col1 < col2 THEN col2 ELSE col1 END AS val2
FROM InputTbl;
Explanation:
This ensures the smaller value always goes first.
So (a, b) and (b, a) both become (a, b) in output.
2. SELECT *
FROM TestMultipleZero
WHERE NOT (A = 0 AND B = 0 AND C = 0 AND D = 0);
3. SELECT *
FROM section1
WHERE id % 2 = 1;
4. SELECT TOP 1 *
FROM section1
ORDER BY id ASC;
5. SELECT TOP 1 *
FROM section1
ORDER BY id DESC;
6. SELECT *
FROM section1
WHERE LOWER(name) LIKE 'b%';
7. SELECT Code
FROM ProductCodes
WHERE Code LIKE '%[_]%';
