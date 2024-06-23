
SELECT 
    p.ProjectionID, p.ProjectionDate, p.ProjectedBalance
FROM 
    FinancialProjections p
WHERE 
    p.AccountID = ?
ORDER BY 
    p.ProjectionDate DESC;