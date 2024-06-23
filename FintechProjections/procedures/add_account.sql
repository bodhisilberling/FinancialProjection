
DELIMITER $$

CREATE PROCEDURE AddAccount(
    IN p_UserID INT,
    IN p_AccountName VARCHAR(100),
    IN p_AccountType VARCHAR(50),
    IN p_Balance DECIMAL(15, 2)
)
BEGIN
    INSERT INTO Accounts (UserID, AccountName, AccountType, Balance)
    VALUES (p_UserID, p_AccountName, p_AccountType, p_Balance);
END$$

DELIMITER ;