ALTER TABLE accounts
ADD CONSTRAINT balance_nonnegative CHECK (balance >= 0);

CREATE INDEX idx_customer_phone ON customers(phone);
CREATE INDEX idx_account_customer ON accounts(customer_id);
