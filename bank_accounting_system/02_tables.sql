CREATE TABLE customers (
  customer_id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  phone VARCHAR(20),
  passport_id VARCHAR(50) UNIQUE,
  address VARCHAR(200),
  date_registered DATE
);

CREATE TABLE accounts (
  account_id INT PRIMARY KEY AUTO_INCREMENT,
  customer_id INT,
  account_type ENUM('savings','checking','credit'),
  balance DECIMAL(12,2) DEFAULT 0,
  status ENUM('active','closed','frozen') DEFAULT 'active',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE transactions (
  transaction_id INT PRIMARY KEY AUTO_INCREMENT,
  account_id INT,
  transaction_type ENUM('deposit','withdraw','transfer'),
  amount DECIMAL(12,2),
  transaction_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  from_account_id INT,
  to_account_id INT,
  FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);
