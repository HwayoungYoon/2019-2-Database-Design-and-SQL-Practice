SELECT name
FROM customer
WHERE address LIKE '%대한민국%'
UNION
SELECT name
FROM customer
WHERE custid IN (SELECT custid FROM orders);

SELECT name
FROM customer
WHERE address LIKE '%대한민국%' AND
	name NOT IN (SELECT name
				FROM customer
                WHERE custid IN(SELECT custid FROM orders));

SELECT name
FROM customer
WHERE address LIKE '%대한민국%' AND
	name IN (SELECT name
				FROM customer
                WHERE custid IN(SELECT custid FROM orders));

SELECT name, address
FROM customer cs
WHERE EXISTS(SELECT *
			FROM orders od
            WHERE cs.custid=od.custid);

SELECT *
FROM customer c1
WHERE NOT EXISTS (SELECT * FROM orders c2 WHERE c1.custid=c2.custid);

/*심화질문*/
SELECT name
FROM customer, orders, book
WHERE customer.custid=orders.custid AND orders.bookid=book.bookid 
AND name NOT LIKE '박지성' AND publisher 
		IN (SELECT publisher
			FROM customer, orders, book
            WHERE customer.custid=orders.custid AND orders.bookid=book.bookid AND name LIKE '박지성');

SELECT name
FROM customer c1
WHERE 2 <= (SELECT COUNT(DISTINCT publisher)
			FROM customer,orders,book
            WHERE customer.custid=orders.custid AND orders.bookid=book.bookid 
				AND (name LIKE c1.name));

SELECT bookname
FROM book b1
WHERE (
	(SELECT COUNT(book.bookid)
	FROM book,orders
	WHERE book.bookid=orders.bookid AND book.bookid=b1.bookid)
		>= 0.3*(SELECT COUNT(*) FROM customer));



CREATE TABLE newbook (
 bookid INTEGER,
 bookname VARCHAR(20),
 publisher VARCHAR(20),
 price INTEGER);

CREATE TABLE newcustomer (
 custid INTEGER PRIMARY KEY,
 name VARCHAR(40),
 address VARCHAR(40),
 phone VARCHAR(30) );
 
CREATE TABLE neworders (
 orderid INTEGER,
 custid INTEGER  NOT NULL,
 bookid INTEGER  NOT NULL,
 saleprice INTEGER,
 orderdate DATE,
 PRIMARY KEY (orderid),
 FOREIGN KEY (custid) REFERENCES newcustomer(custid) ON DELETE CASCADE);