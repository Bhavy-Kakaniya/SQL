
-- Q1 Retrieve all data from table DEPOSIT.
SELECT * FROM DEPOSIT
-- Q2 Retrieve all data from table BORROW.
SELECT * FROM BORROW
-- Q3 Display Account No, Customer Name & Amount from DEPOSIT
SELECT ACTNO, CNAME, AMOUNT FROM DEPOSIT
-- Q4 Display Loan No, Amount from BORROW
SELECT LOANNO, AMOUNT FROM BORROW
-- Q5 Display loan details of all customers who belongs to ‘ANDHERI’ branch from borrow table.
SELECT LOANNO FROM BORROW
WHERE BNAME = 'ANDHERI'
-- Q6 Give account no and amount of depositor, whose account no is equals to 106 from deposit table
SELECT ACTNO, AMOUNT FROM DEPOSIT
WHERE ACTNO = 106
-- Q7 Give name of borrowers having amount greater than 5000 from borrow table
SELECT CNAME FROM BORROW
WHERE AMOUNT>5000
-- Q8 Give name of customers who opened account after date '1-12-95' from deposit table.
SELECT CNAME FROM DEPOSIT
WHERE ADATE > '1995-12-01'
-- Q9 Display name of customers whose account no is less than 105 from deposit table.
SELECT CNAME FROM DEPOSIT
WHERE ACTNO<105
-- Q10 Display name of customer who belongs to either ‘NAGPUR’ or ‘DELHI’ from customer table. (USE OR & IN)
SELECT * FROM CUSTOMER
SELECT CNAME FROM CUSTOMER
WHERE CITY = 'NAGPUR' OR CITY = 'DELHI'
-- Q11 Display name of customers with branch whose amount is greater than 4000 and account no is less than 105 from deposit table.
SELECT CNAME, BNAME FROM DEPOSIT
WHERE ACTNO < 105 AND AMOUNT > 4000
-- Q12 Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000 from borrow table. (USE AND & BETWEEN)
SELECT CNAME FROM BORROW
WHERE AMOUNT >= 3000 AND AMOUNT <= 8000
-- Q13 Find all depositors who do not belongs to ‘ANDHERI’ branch from deposit table
SELECT CNAME FROM DEPOSIT
WHERE BNAME != 'ANDHERI'
-- Q14 Display Account No, Customer Name & Amount of such customers who belongs to ‘AJNI’, ‘KAROLBAGH’ Or ‘M.G. ROAD’ and Account No is less than 104 from deposit table.
SELECT ACTNO, CNAME, AMOUNT FROM DEPOSIT
WHERE (BNAME IN ('AJNI', 'KAROLBAGH', 'M.G. ROAD')) AND ACTNO < 104
-- Q15 Display all loan no, customer from borrow table does not belong to ‘VIRAR’ or ‘AJNI’ branch. (use NOT IN)
SELECT LOANNO, CNAME FROM BORROW
WHERE BNAME NOT IN('AJNI', 'VIRAR')
-- Q16 Display all the customer’s name other than ‘MINU’ from deposit table
SELECT CNAME FROM DEPOSIT
WHERE CNAME != 'MINU'
-- Q17 Display customer name from deposit table whose branch name is not available
SELECT CNAME FROM DEPOSIT
WHERE BNAME IS NULL
-- Q18 Retrieve all unique branches using DISTINCT
SELECT DISTINCT BNAME 
FROM BRANCH;
-- Q19 Retrieve first 50% record from borrow table
SELECT TOP 50 PERCENT * 
FROM BORROW
-- Q20 Retrieve first five account number from deposit table
SELECT TOP 5 ACTNO 
FROM DEPOSIT
