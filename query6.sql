USE car_dealership;

SELECT sc.ID, sc.DateSold, sc.SalePrice, sc.VIN
FROM sales_contracts sc
INNER JOIN inventory v ON v.VIN = sc.VIN
INNER JOIN dealerships d ON d.dealership_id = v.dealership_id
WHERE sc.DateSold BETWEEN '2023-01-02' AND '2024-05-01';