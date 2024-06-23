
DELIMITER $$

CREATE PROCEDURE AddUser(
    IN p_Username VARCHAR(50),
    IN p_PasswordHash VARCHAR(255),
    IN p_Email VARCHAR(100)
)
BEGIN
    INSERT INTO Users (Username, PasswordHash, Email)
    VALUES (p_Username, p_PasswordHash, p_Email);
END$$

DELIMITER ;