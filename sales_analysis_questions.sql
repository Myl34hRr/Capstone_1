USE sample_sales;
SELECT SUM(Sale_Amount) AS totalrevenue,
MIN(Transaction_Date) AS startdate,
MAX(Transaction_Date) AS enddate
FROM store_sales ss
JOIN management m ON ss.id = m. id
WHERE m. region = 'south'
AND m. state = 'texas';
-- total revenue of overall sales in texas with start to end date--
