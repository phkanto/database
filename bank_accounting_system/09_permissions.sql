CREATE USER 'bank_teller'@'%' IDENTIFIED BY 'password123';
GRANT SELECT,INSERT,UPDATE ON bank_system.* TO 'bank_teller'@'%';
