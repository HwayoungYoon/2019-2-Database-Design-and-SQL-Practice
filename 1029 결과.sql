SELECT ABS(-78), ABS(+78) ;
SELECT ROUND(4.875,1) ;
SELECT custid '고객번호', ROUND(SUM(saleprice)/COUNT(*), -2) '평균금액'
FROM orders
GROUP BY custid ;
SELECT bookid, REPLACE(bookname, '야구', '농구') bookname, publisher, price
FROM book ;
SELECT bookname '제목', CHAR_LENGTH(bookname) '문자수', LENGTH(bookname) '바이트수'
FROM book
WHERE publisher='굿스포츠' ;
SELECT SUBSTR(name, 1, 1) '성', COUNT(*) '인원'
FROM customer
GROUP BY SUBSTR(name, 1, 1) ;
SELECT orderid '주문번호', STR_TO_DATE(orderdate, '%Y-%m-%d') '주문일', custid '고객번호', bookid '도서번호'
FROM orders
WHERE orderdate=DATE_FORMAT('20140707', '%Y%m%d') ;
SELECT SYSDATE(), DATE_FORMAT(SYSDATE(), '%Y/%m/%d %M %h:%s') 'SYSDATE_1' ;
SELECT name '이름', IFNULL(phone, '연락처없음') '전화번호'
FROM customer ;
SET @seq:=0 ;
SELECT (@seq:=@seq+1) '순번', custid, name, phone
FROM customer
WHERE @seq < 2 ;


SELECT cs.name, SUM(od.saleprice) 'total'
FROM (SELECT custid, name FROM customer WHERE custid <= 2) cs, orders od
WHERE cs.custid=od.custid
GROUP BY cs.name ;
SELECT orderid, saleprice
FROM orders
WHERE saleprice <= (SELECT AVG(saleprice) FROM orders) ;
SELECT orderid, custid, saleprice
FROM orders od
WHERE saleprice > (SELECT AVG(saleprice) FROM orders so WHERE od.custid=so.custid) ;
SELECT SUM(saleprice) 'total'
FROM orders
WHERE custid IN (SELECT custid FROM customer WHERE address LIKE '%대한민국%') ;
CREATE VIEW vw_book
AS SELECT *
FROM book
WHERE bookname LIKE '%축구%' ;
CREATE VIEW vw_customer
AS SELECT *
FROM customer
WHERE address LIKE '%대한민국%' ;
SELECT *
FROM vw_customer ;
CREATE VIEW vw_orders (orderid, custid, name, bookid, bookname, saleprice, orderdate)
AS SELECT od.orderid, od.custid, cs.name, od.bookid, bk.bookname, od.saleprice, od.orderdate
FROM orders od, customer cs, book bk
WHERE od.custid=cs.custid AND od.bookid=bk.bookid ;
CREATE OR REPLACE VIEW vw_customer (custid, name, address)
AS SELECT custid, name, address
FROM customer
WHERE address LIKE '%영국%' ;
SELECT *
FROM vw_customer ;
DROP VIEW vw_customer ;
SELECT *
FROM vw_customer ;
