SELECT 
    A.AccountID,
    SUM(CASE 
            WHEN T.TransactionType = 'Deposit' THEN T.Amount 
            ELSE -T.Amount 
        END) AS NetAmount
FROM 
    Accounts A
    JOIN Transactions T ON A.AccountID = T.AccountID
GROUP BY 
    A.AccountID;

