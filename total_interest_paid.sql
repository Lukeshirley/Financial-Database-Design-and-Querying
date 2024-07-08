SELECT 
    C.CustomerID,
    C.FirstName,
    C.LastName,
    SUM(L.LoanAmount * (L.InterestRate / 100)) AS TotalInterestPaid
FROM 
    Customers C
    JOIN Loans L ON C.CustomerID = L.CustomerID
GROUP BY 
    C.CustomerID, C.FirstName, C.LastName;
