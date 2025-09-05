-- 선택과제: 쿼리문 학습으로 더 성장할 사람들을 위해서

USE classicmodels;

-- 생성(CREATE)

-- 1번
INSERT INTO customers (customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, city, country)
VALUES(500, '과제 공장', '난', '과제', '02-0000-0000', '주소는주소', 'Seoul', 'Korea');

-- 2번 # FOREGIN KEY 때문에 8번 먼저 실행하기 
INSERT INTO products (productCode, productName, productLine, productScale, productVendor, productDescription, quantityInStock, buyPrice, MSRP)
VALUES('S00_0000', '선택과제', '데일리과제들', '1:1', '오즈코딩스쿨', '선택이라는 이름의 필수과제', 1, 0.0, 0.0);

-- 3번 # FOREGIN KEY 때문에 4번 먼저 실행하기
INSERT INTO employees (employeeNumber, lastName, firstName, extension, email, officeCode, jobTitle)
VALUES(1000, '과', '제', 'x0000', 'assignment@classicmodels.com', '0', '수강생');

-- 4번
INSERT INTO offices (officeCode, city, phone, addressLine1, country, postalCode, territory)
VALUES('0', 'Seoul', '02-0000-0000', '주소입니다', 'Korea', '00000', 'Korea');

-- 5번
INSERT INTO orders (orderNumber, orderDate, requireDate, status, customerNumber)
VALUES(10000, '2025-09-05', '2025-09-08', 'In Process', 500);
  
-- 6번
INSERT INTO orderdetails (orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
VALUES(10000, 'S00_0000', 1, 0.0, 0);

-- 7번
INSERT INTO payments (customerNumber, checkNumber, paymentDate, amount)
VALUES(500, 'A000000', '2025-09-05', 0.0);
  
-- 8번
INSERT INTO productlines (productLine)
VALUES('데일리과제들'), ('오늘의과제'); # '오늘의 과제'는 10번 때문에,,,

-- 9번
INSERT INTO customers (customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, city, country)
VALUES(501, '과제 공장2', '나', '과제', '02-0000-0000', '이거는주소', 'Seoul', 'Korea');

-- 10번
INSERT INTO products (productCode, productName, productLine, productScale, productVendor, productDescription, quantityInStock, buyPrice, MSRP)
VALUES('S00_0001', '선택과제1', '오늘의과제', '1:1', '오즈코딩스쿨', '선택 그러나 필수과제', 1, 0.0, 0.0);


-- 읽기(READ)
-- 1번
SELECT * FROM customers;

-- 2번
SELECT * FROM  products;

-- 3번
SELECT lastName, firstName, jobTitle FROM employees;

-- 4번
SELECT addressLine1 FROM offices;

-- 5번
SELECT * FROM orders ORDER BY orderDate DESC LIMIT 10 ;

-- 6번
SELECT * FROM orderdetails WHERE orderNumber = 10000;

-- 7번
SELECT * FROM payments WHERE customerNumber = 500;

-- 8번
SELECT productLine, textDescription FROM productlines;

-- 9번
SELECT * FROM customers WHERE city = 'Seoul';

-- 10번
SELECT * FROM products WHERE MSRP = 0 And 100;