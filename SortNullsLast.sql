
-- Sort NULL values of the rows last:
SELECT col FROM @table ORDER BY CASE WHEN col IS NULL THEN 2 ELSE 1 END