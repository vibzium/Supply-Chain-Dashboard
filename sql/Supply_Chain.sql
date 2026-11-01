SELECT * FROM supply_db.supply_chain_data;

SELECT SKU, 
	`Product type`,
    Price,
    `Number of products sold`,
    `Revenue generated`
FROM supply_db.supply_chain_data;

SELECT
    ROUND(SUM(`Revenue generated`), 2) AS Total_Revenue
FROM supply_db.supply_chain_data;

SELECT
    SUM(`Number of products sold`) AS Total_Products_Sold
FROM supply_db.supply_chain_data;

SELECT
    ROUND(AVG(Price), 2) AS Average_Product_Price
FROM supply_db.supply_chain_data;

SELECT
    ROUND(AVG(`Revenue generated`), 2) AS Average_Revenue_Per_SKU
FROM supply_db.supply_chain_data;

SELECT
    `Product type`,
    COUNT(SKU) AS Total_SKUs,
    SUM(`Number of products sold`) AS Total_Units_Sold,
    ROUND(SUM(`Revenue generated`), 2) AS Total_Revenue
FROM supply_db.supply_chain_data
GROUP BY `Product type`
ORDER BY Total_Revenue DESC;

SELECT
    SUM(`Stock levels`) AS Total_Stock_Levels
FROM supply_db.supply_chain_data;

SELECT
    ROUND(AVG(`Stock levels`), 2) AS Average_Stock_Level
FROM supply_db.supply_chain_data;

SELECT
    SUM(Availability) AS Total_Availability
FROM supply_db.supply_chain_data;

SELECT
    `Product type`,
    COUNT(SKU) AS Total_SKUs,
    SUM(`Stock levels`) AS Total_Stock,
    ROUND(AVG(`Stock levels`), 2) AS Average_Stock
FROM supply_db.supply_chain_data
GROUP BY `Product type`
ORDER BY Total_Stock DESC;

SELECT
    `Supplier name`,
    COUNT(SKU) AS Total_SKUs,
    SUM(`Stock levels`) AS Total_Stock,
    ROUND(AVG(`Lead times`), 2) AS Average_Lead_Time
FROM supply_db.supply_chain_data
GROUP BY `Supplier name`
ORDER BY Total_Stock DESC;

SELECT
    `Supplier name`,
    ROUND(AVG(`Lead time`), 2) AS Average_Lead_Time
FROM supply_db.supply_chain_data
GROUP BY `Supplier name`
ORDER BY Average_Lead_Time ASC;

SELECT
    `Product type`,
    ROUND(AVG(`Manufacturing lead time`), 2) AS Avg_Manufacturing_Lead_Time
FROM supply_db.supply_chain_data
GROUP BY `Product type`
ORDER BY Avg_Manufacturing_Lead_Time ASC;

SELECT
    `Product type`,
    ROUND(SUM(`Manufacturing costs`), 2) AS Total_Manufacturing_Cost,
    ROUND(AVG(`Manufacturing costs`), 2) AS Average_Manufacturing_Cost
FROM supply_db.supply_chain_data
GROUP BY `Product type`
ORDER BY Total_Manufacturing_Cost DESC;

SELECT
    `Inspection results`,
    COUNT(*) AS Total_Products,
    ROUND(
        COUNT(*) * 100.0 /
        (SELECT COUNT(*) FROM supply_db.supply_chain_data),
        2
    ) AS Percentage
FROM supply_db.supply_chain_data
GROUP BY `Inspection results`
ORDER BY Total_Products DESC;

SELECT
    `Product type`,
    ROUND(AVG(`Defect rates`), 2) AS Average_Defect_Rate,
    ROUND(MAX(`Defect rates`), 2) AS Maximum_Defect_Rate,
    ROUND(MIN(`Defect rates`), 2) AS Minimum_Defect_Rate
FROM supply_db.supply_chain_data
GROUP BY `Product type`
ORDER BY Average_Defect_Rate DESC;

SELECT
    `Supplier name`,
    SUM(`Production volumes`) AS Total_Production_Volume,
    ROUND(AVG(`Manufacturing costs`), 2) AS Avg_Manufacturing_Cost
FROM supply_db.supply_chain_data
GROUP BY `Supplier name`
ORDER BY Total_Production_Volume DESC;

SELECT
    `Shipping carriers`,
    ROUND(AVG(`Shipping times`), 2) AS Average_Shipping_Time
FROM supply_db.supply_chain_data
GROUP BY `Shipping carriers`
ORDER BY Average_Shipping_Time ASC;

SELECT
    `Shipping carriers`,
    ROUND(SUM(`Shipping costs`), 2) AS Total_Shipping_Cost,
    ROUND(AVG(`Shipping costs`), 2) AS Average_Shipping_Cost
FROM supply_db.supply_chain_data
GROUP BY `Shipping carriers`
ORDER BY Total_Shipping_Cost DESC;

SELECT
    `Transportation modes`,
    COUNT(*) AS Total_Products,
    ROUND(AVG(`Shipping times`), 2) AS Average_Shipping_Time,
    ROUND(AVG(`Shipping costs`), 2) AS Average_Shipping_Cost
FROM supply_db.supply_chain_data
GROUP BY `Transportation modes`
ORDER BY Average_Shipping_Cost ASC;

SELECT
    Location,
    COUNT(*) AS Total_Products,
    ROUND(SUM(`Shipping costs`), 2) AS Total_Shipping_Cost
FROM supply_db.supply_chain_data
GROUP BY Location
ORDER BY Total_Shipping_Cost DESC;

SELECT
    `Product type`,
    ROUND(SUM(`Shipping costs`), 2) AS Total_Shipping_Cost,
    ROUND(AVG(`Shipping times`), 2) AS Average_Shipping_Time
FROM supply_db.supply_chain_data
GROUP BY `Product type`
ORDER BY Total_Shipping_Cost DESC;

SELECT
    ROUND(AVG(`Shipping times`), 2) AS Average_Shipping_Time,
    ROUND(SUM(`Shipping costs`), 2) AS Total_Shipping_Cost,
    ROUND(AVG(`Shipping costs`), 2) AS Average_Shipping_Cost
FROM supply_db.supply_chain_data;