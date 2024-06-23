
DELIMITER $$

CREATE PROCEDURE GenerateProjection(
    IN p_AccountID INT,
    IN p_ProjectionDate DATE,
    IN p_ProjectedBalance DECIMAL(15, 2)
)
BEGIN
    INSERT INTO FinancialProjections (AccountID, ProjectionDate, ProjectedBalance)
    VALUES (p_AccountID, p_ProjectionDate, p_ProjectedBalance);
END$$

DELIMITER ;