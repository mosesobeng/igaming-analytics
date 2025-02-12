SELECT DISTINCT p.player_id, p.registration_date, p.affiliate, p.city, p.date_modified
FROM Players p
JOIN Transactions t ON p.player_id = t.player_id
WHERE t.transaction_type = 'Deposit'
  AND t.date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);


  

SELECT t.date, t.psp,
       SUM(CASE WHEN t.transaction_type = 'Deposit' THEN t.amount ELSE 0 END) AS total_deposits,
       SUM(CASE WHEN t.transaction_type = 'Withdraw' THEN -t.amount ELSE 0 END) AS total_withdrawals
FROM Transactions t
GROUP BY t.date, t.psp;




SELECT p.affiliate,
       SUM(t.amount) AS total_deposits,
       COUNT(t.transaction_id) AS deposit_count
FROM Players p
JOIN Transactions t ON p.player_id = t.player_id
WHERE t.transaction_type = 'Deposit'
GROUP BY p.affiliate;




SELECT p.player_id, p.registration_date, p.affiliate, p.city, p.date_modified,
       t.transaction_id, t.psp, t.amount, t.transaction_type
FROM Players p
LEFT JOIN (
    SELECT player_id, MAX(date) AS max_date
    FROM Transactions
    GROUP BY player_id
) latest ON p.player_id = latest.player_id
LEFT JOIN Transactions t ON p.player_id = t.player_id AND latest.max_date = t.date;