-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

    SELECT p."Id", p."QuantityPerUnit", p."ProductName", "Category"."Id", "Category"."CategoryName" 
    FROM "Product" AS p
    JOIN "Category" AS c
    ON p."CategoryId" = c."Id";

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

    SELECT o."Id" "OrderId", o."ShipName" "CompanyName", o."OrderDate"
    FROM "Order" AS o
    WHERE "OrderDate" < "2012-08-09"

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

    SELECT od."OrderId", od."ProductId", "Product"."ProductName", "Product"."QuantityPerUnit"
    FROM "OrderDetail" AS od
    JOIN "Product" ON od."ProductId" = "Product"."Id"
    Where "OrderId" = 10251

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

    SELECT o."Id" "OrderId", c."CompanyName" "CustomerCompanyName", e."LastName" "EmployeeLastName"  
    FROM "Order" AS o
    JOIN "Employee" AS e ON o."EmployeeId" = e."Id"
    JOIN "Customer" AS c ON o."CustomerId" = c."Id"