SELECT 
    DATE_FORMAT(T.TransactionDate, '%Y-%m') AS Month,
    SUM(CASE WHEN T.TransactionType = 'Deposit' THEN T.Amount ELSE 0 END) AS TotalDeposits,
    SUM(CASE WHEN T.TransactionType = 'Withdrawal' THEN T.Amount ELSE 0 END) AS TotalWithdrawals
FROM 
    Transactions T
GROUP BY 
    Month
ORDER BY 
    Month;
