
SELECT 
    t.TransactionID, t.TransactionType, t.Amount, t.TransactionDate, t.Description
FROM 
    Transactions t
WHERE 
    t.AccountID = ?
ORDER BY 
    t.TransactionDate DESC;