CREATE VIEW customer_accounts AS
SELECT c.first_name, c.last_name, a.account_id, a.balance
FROM accounts a
JOIN customers c ON a.customer_id = c.customer_id;

CREATE VIEW account_transactions AS
SELECT a.account_id, t.transaction_type, t.amount, t.transaction_date
FROM transactions t
JOIN accounts a ON t.account_id = a.account_id;
