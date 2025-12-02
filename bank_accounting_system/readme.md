Bank Accounting System — MySQL Database Project
📌 Overview

This project implements a simplified Bank Accounting System using a MySQL relational database. It simulates core banking operations such as customer account creation, deposits, withdrawals, transfers, and maintaining transaction history.

The final output demonstrates:

relational database design

proper normalization

stored procedures

triggers

views

security & permissions

🗂 Project Structure
bank_system_project/
  01_create_database.sql
  02_tables.sql
  03_constraints.sql
  04_insert_sample_data.sql
  05_stored_procedures.sql
  06_triggers.sql
  07_views.sql
  08_example_queries.sql
  09_permissions.sql
  README.md

🚀 Installation & Execution
1. Start MySQL
mysql -u root -p

2. Run SQL scripts in this order:
SOURCE 01_create_database.sql;
SOURCE 02_tables.sql;
SOURCE 03_constraints.sql;
SOURCE 04_insert_sample_data.sql;
SOURCE 05_stored_procedures.sql;
SOURCE 06_triggers.sql;
SOURCE 07_views.sql;
SOURCE 08_example_queries.sql;
-- Optional:
SOURCE 09_permissions.sql;

🏦 Database Schema
Main Entities:
Table	Description
customers	Stores customer personal info
accounts	Bank accounts linked to customers
transactions	Logs every financial operation
Relationships:

One customer → many accounts

One account → many transactions

🔐 Security Measures

Unique passport IDs for customers

CHECK constraint prevents negative balances

Withdrawal procedure checks sufficient funds

Optional restricted user roles using GRANT

⚙️ Core Functionality
✔ Add deposit
CALL deposit(1,500);

✔ Withdraw money
CALL withdraw(2,1000);

✔ Transfer between accounts
CALL transfer(1,3,200);

✔ View customer accounts
SELECT * FROM customer_accounts;

✔ View transaction history
SELECT * FROM account_transactions;

🧪 Sample Test Data

The project includes demo rows of:

customers

accounts

initial balances

This allows immediate testing without manual insertion.
