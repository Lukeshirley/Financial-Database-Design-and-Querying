SELECT 
    C.CustomerID,
    C.FirstName,
    C.LastName,
    SUM(T.Amount) AS TotalTransactions
FROM 
    Customers C
    JOIN Accounts A ON C.CustomerID = A.CustomerID
    JOIN Transactions T ON A.AccountID = T.AccountID
GROUP BY 
    C.CustomerID, C.FirstName, C.LastName
ORDER BY 
    TotalTransactions DESC
LIMIT 5;
