
-- Create FinancialProjections table
CREATE TABLE FinancialProjections (
    ProjectionID INT AUTO_INCREMENT PRIMARY KEY,
    AccountID INT,
    ProjectionDate DATE NOT NULL,
    ProjectedBalance DECIMAL(15, 2) NOT NULL,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID) ON DELETE CASCADE
);