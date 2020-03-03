SELECT custid, COUNT(*) AS 도서수량, SUM(saleprice) AS 총액
FROM orders
GROUP BY custid ;

SELECT custid, COUNT(*) AS 도서수량
FROM orders
WHERE saleprice >= 8000
GROUP BY custid
HAVING count(*) >= 2 ;

/*
#1
SELECT bookname
FROM book
WHERE bookid=1 ;

#2
SELECT bookname
FROM book
WHERE price >= 20000 ;

#3
SELECT COUNT(*)
FROM book ;

#4
SELECT COUNT(DISTINCT publisher)
FROM book ;

#5
SELECT name, address
FROM customer ;

#6
SELECT orderid
FROM orders
WHERE orderdate BETWEEN '20140704' AND '20140707' ;

#7
SELECT orderid
FROM orders
WHERE orderdate NOT BETWEEN '20140704' AND '20140707' ;

#8
SELECT name, address
FROM customer
WHERE name LIKE '김%' ;

#9
SELECT name, address
FROM customer
WHERE name LIKE '김%아' ;

#10
SELECT SUM(saleprice), AVG(saleprice)
FROM orders ;
*/

SELECT *
FROM customer c, orders o
WHERE c.custid=o.custid ;

SELECT *
FROM customer c, orders o
WHERE c.custid=o.custid
ORDER BY c.custid ;

SELECT name, saleprice
FROM customer c, orders o
WHERE c.custid=o.custid ;

SELECT name, SUM(saleprice)
FROM customer c, orders o
WHERE c.custid=o.custid
GROUP BY c.name
ORDER BY c.name ;

SELECT customer.name, book.bookname
FROM customer, orders, book
WHERE customer.custid=orders.custid AND orders.bookid=book.bookid ;

SELECT customer.name, book.bookname
FROM customer, orders, book
WHERE customer.custid=orders.custid AND orders.bookid=book.bookid AND book.price = 20000 ;




