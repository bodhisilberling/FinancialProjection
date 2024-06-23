
DELIMITER $$

CREATE PROCEDURE AddTransaction(
    IN p_AccountID INT,
    IN p_TransactionType VARCHAR(50),
    IN p_Amount DECIMAL(15, 2),
    IN p_TransactionDate DATE,
    IN p_Description TEXT
)
BEGIN
    INSERT INTO Transactions (AccountID, TransactionType, Amount, TransactionDate, Description)
    VALUES (p_AccountID, p_TransactionType, p_Amount, p_TransactionDate, p_Description);
    
    -- Update the account balance
    IF p_TransactionType = 'Credit' THEN
        UPDATE Accounts
        SET Balance = Balance + p_Amount
        WHERE AccountID = p_AccountID;
    ELSEIF p_TransactionType = 'Debit' THEN
        UPDATE Accounts
        SET Balance = Balance - p_Amount
        WHERE AccountID = p_AccountID;
    END IF;
END$$

DELIMITER ;