INSERT INTO customers(first_name,last_name,phone,passport_id,address,date_registered)
VALUES 
('John','Doe','555-1212','AB12345','New York','2024-01-10'),
('Alice','Smith','555-3333','XY98765','LA','2024-01-12');

INSERT INTO accounts(customer_id,account_type,balance)
VALUES
(1,'savings',5000),
(1,'checking',2000),
(2,'savings',3500);
