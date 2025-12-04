-- transactions/transactions_demo.sql
-- Example 1: atomic transfer between accounts
BEGIN;
-- subtract
UPDATE accounts SET balance = balance - 200.00 WHERE id = '<FROM_ACCOUNT_ID>';
-- add
UPDATE accounts SET balance = balance + 200.00 WHERE id = '<TO_ACCOUNT_ID>';
INSERT INTO transactions (account_id, amount, type) VALUES ('<FROM_ACCOUNT_ID>', 200.00, 'debit');
INSERT INTO transactions (account_id, amount, type) VALUES ('<TO_ACCOUNT_ID>', 200.00, 'credit');
COMMIT;


-- Example 2: demonstrate rollback on error
BEGIN;
UPDATE accounts SET balance = balance - 1e10 WHERE id = '<FROM_ACCOUNT_ID>';
-- simulate an error
ROLLBACK; -- no changes persisted


-- Example 3: isolation demonstration (SERIALIZABLE vs READ COMMITTED)
-- In session A:
-- BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
-- SELECT balance FROM accounts WHERE id = ...;
-- In session B:
-- BEGIN; UPDATE accounts SET balance = balance + 100 WHERE id=...; COMMIT;
-- Back to A: attempt an UPDATE; may receive serialization failure requiring retry.
