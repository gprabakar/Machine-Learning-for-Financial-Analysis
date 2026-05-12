//*** 1. Total transaction amount per customer  *** //
SELECT
customer_id,
SUM(amount) AS total_spending
FROM transactions
GROUP BY customer_id
ORDER BY total_spending DESC;
//*** ******************************  //

//*** 2. Average transaction amount  *** //
SELECT
AVG(amount) AS avg_transaction
FROM transactions;

//**************************//
//*** 3. Transaction count by type  *** //
SELECT
transaction_type,
COUNT(*) AS total_transactions
FROM transactions
GROUP BY transaction_type;

//**************************//

//*** 3. Transaction count by type  *** //
SELECT
transaction_type,
COUNT(*) AS total_transactions
FROM transactions
GROUP BY transaction_type;
//**************************//

//*** 4. High value transactions (> 5000)  *** //
SELECT *
FROM transactions
WHERE amount > 5000;
//**************************//

//*** 5. Monthly transaction trends  *** //
SELECT
strftime('%Y-%m', transaction_date) AS month,
SUM(amount) AS monthly_total
FROM transactions
GROUP BY month;
//**************************//

//*** 6. Top spending customers  *** //
SELECT
customer_id,
SUM(amount) AS total_spent
FROM transactions
GROUP BY customer_id
ORDER BY total_spent DESC;
//**************************//

//*** 7. Average transaction amount by account type  *** //
SELECT
account_type,
AVG(amount) AS avg_transaction
FROM transactions
GROUP BY account_type;
//**************************//

//*** 8. Transaction trend by date  *** //
SELECT
transaction_date,
SUM(amount) AS total_amount
FROM transactions
GROUP BY transaction_date
ORDER BY transaction_date;
//**************************//

//*** 9. Verify relationships between tables  *** //
SELECT
c.customer_name,
t.account_type,
t.transaction_type,
t.amount,
t.transaction_date
FROM customers c
JOIN transactions t
ON c.customer_id = t.customer_id
LIMIT 10
//**************************//

//*** 10. Verify relationships between tables  *** //
SELECT * from customers LIMIT 10

//**************************//
