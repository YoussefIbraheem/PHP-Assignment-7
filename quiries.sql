-- QUESTION 1

SELECT orderNumber , SUM(priceEach) AS total FROM `orderdetails` GROUP BY orderNumber; 

-- QUESTION 2

SELECT EMPs.firstName , EMPs.lastName , MANGs.firstName , MANGs.lastName FROM `employees` as EMPs JOIN employees as MANGs ON EMPs.reportsTo = MANGs.employeeNumber;

-- QUESTION 3 

SELECT * FROM `employees` WHERE officeCode =(SELECT officeCode FROM `offices` where city = 'london'); 

-- QUESTION 4

SELECT * FROM `employees` JOIN offices ON employees.officeCode = offices.officeCode AND offices.city = 'london'; 

-- QUESTION 5

SELECT customers.customerName , SUM(orderdetails.priceEach) FROM `customers` JOIN orders ON customers.customerNumber = orders.customerNumber JOIN orderdetails ON orders.orderNumber = orderdetails.orderNumber GROUP BY customers.customerName; 