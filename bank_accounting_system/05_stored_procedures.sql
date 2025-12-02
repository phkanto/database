DELIMITER //
CREATE PROCEDURE deposit(IN acc INT, IN amt DECIMAL(10,2))
BEGIN
    UPDATE accounts SET balance = balance + amt WHERE account_id = acc;
    INSERT INTO transactions(account_id, transaction_type, amount)
    VALUES(acc,'deposit',amt);
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE withdraw(IN acc INT, IN amt DECIMAL(10,2))
BEGIN
    IF (SELECT balance FROM accounts WHERE account_id = acc) >= amt THEN
        UPDATE accounts SET balance = balance - amt WHERE account_id = acc;
        INSERT INTO transactions(account_id, transaction_type, amount)
        VALUES(acc,'withdraw',amt);
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Insufficient funds';
    END IF;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE transfer(IN from_acc INT, IN to_acc INT, IN amt DECIMAL(10,2))
BEGIN
    CALL withdraw(from_acc, amt);
    CALL deposit(to_acc, amt);

    INSERT INTO transactions(account_id, transaction_type, amount, from_account_id, to_account_id)
    VALUES(from_acc,'transfer',amt, from_acc,to_acc);
END //
DELIMITER ;
