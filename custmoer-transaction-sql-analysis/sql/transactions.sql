CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT,
    transaction_date DATE,
    transaction_type VARCHAR(20),
    amount DECIMAL(10,2),
    merchant VARCHAR(100),
    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);