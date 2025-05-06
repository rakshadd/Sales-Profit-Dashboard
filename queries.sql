-- Total Sales and Profit by Customer Segment
SELECT 
    Customer_Segment, 
    SUM(Sales_Amount) AS Total_Sales, 
    SUM(Profit) AS Total_Profit
FROM 
    sales_data
GROUP BY 
    Customer_Segment;

-- Top 5 Products by Sales
SELECT 
    Product_Name, 
    SUM(Sales_Amount) AS Total_Sales
FROM 
    sales_data
GROUP BY 
    Product_Name
ORDER BY 
    Total_Sales DESC
LIMIT 5;

-- Monthly Sales Trend
SELECT 
    DATE_FORMAT(Order_Date, '%Y-%m') AS Month, 
    SUM(Sales_Amount) AS Total_Sales
FROM 
    sales_data
GROUP BY 
    Month
ORDER BY 
    Month;

-- Profit by Product Category
SELECT 
    Category, 
    SUM(Profit) AS Total_Profit
FROM 
    sales_data
GROUP BY 
    Category;

-- Feedback Analysis
SELECT 
    Feedback, 
    COUNT(*) AS Feedback_Count
FROM 
    sales_data
GROUP BY 
    Feedback
ORDER BY 
    Feedback DESC;
