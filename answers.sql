--Question

--  ProductDetail table
-- This approach uses a CTE or string-splitting function (varies by RDBMS)

-- Example for PostgreSQL using UNNEST with STRING_TO_ARRAY
SELECT 
    OrderID,
    CustomerName,
    TRIM(product) AS Product
FROM (
    SELECT 
        OrderID,
        CustomerName,
        STRING_TO_ARRAY(Products, ',') AS ProductList
    FROM ProductDetail
) AS sub,
UNNEST(sub.ProductList) AS product;

OrderID | CustomerName | Product
--------|--------------|---------
101     | John Doe     | Laptop
101     | John Doe     | Mouse
102     | Jane Smith   | Tablet
102     | Jane Smith   | Keyboard
102     | Jane Smith   | Mouse
103     | Emily Clark  | Phone


--Question 2

-- Create Orders table
SELECT DISTINCT OrderID, CustomerName
FROM OrderDetails;

-- Create OrderItems table
SELECT OrderID, Product, Quantity
FROM OrderDetails;




