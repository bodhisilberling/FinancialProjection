
SELECT 
    u.UserID, u.Username, a.AccountID, a.AccountName, a.AccountType, a.Balance
FROM 
    Users u
JOIN 
    Accounts a ON u.UserID = a.UserID
WHERE 
    u.UserID = ?;