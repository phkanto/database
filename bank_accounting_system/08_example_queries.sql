-- List customers
SELECT * FROM customers;

-- Show all accounts from a specific customer
SELECT * FROM accounts WHERE customer_id = 1;

-- Show balance of account 1
SELECT balance FROM accounts WHERE account_id = 1;

-- Show all transfers
SELECT * FROM transactions WHERE transaction_type='transfer';
