USE sample_sales;
SELECT SUM(Sale_Amount) AS totalrevenue,
MIN(Transaction_Date) AS startdate,
MAX(Transaction_Date) AS enddate
FROM store_sales ss
JOIN management m ON ss.id = m. id
WHERE m. region = 'south'
AND m. state = 'texas';
-- total revenue of overall sales in texas with start to end date--
SELECT DATE_FORMAT(transaction_date, '%Y-%m') AS month,
ROUND(SUM(sale_amount),2) AS total_revenue
FROM sample_sales.store_sales s
GROUP BY month 
ORDER BY month;
-- month by month revenue breakdown in store sales--
SELECT DATE_FORMAT(date, '%Y-%m') AS month,
ROUND(SUM(salestotal),2) AS total_revenue
FROM sample_sales.online_sales o 
GROUP BY month 
ORDER BY month;
-- month by month revenue breakdown for online sales--
SELECT 
    m.region,
    
    SUM(CASE 
        WHEN LOWER(m.state) = 'texas' THEN s.Sale_Amount 
        ELSE 0 
    END) AS territory_revenue,
    
    SUM(s.Sale_Amount) AS region_revenue

FROM store_sales s
JOIN management m
    ON s.id = m.id

WHERE LOWER(m.region) = 'south'
GROUP BY m.region;
-- total revenue for specific sales territory and region--
SELECT 
    p.product,
    s.Sale_Amount,
    sl.state,
    s.id,
    sl.storeid
FROM store_sales s
JOIN store_locations sl
    ON s.store_id = sl.storeid
LEFT JOIN products p  
    ON TRIM(p.prodnum) = TRIM(s.prod_num)
WHERE LOWER(sl.state) = 'texas';

SELECT 
    sl.StoreId,
    SUM(s.Sale_Amount) AS TotalSales,
    RANK() OVER (ORDER BY SUM(s.Sale_Amount) DESC) AS SalesRank
FROM store_sales s
JOIN store_locations sl
    ON s.Store_ID = sl.StoreId
JOIN management m
    ON s.id = m.id
WHERE LOWER(m.region) = 'south'   -- adjust to your territory
GROUP BY sl.StoreId
ORDER BY SalesRank;
-- ranking in store sales performance by each store in territory--