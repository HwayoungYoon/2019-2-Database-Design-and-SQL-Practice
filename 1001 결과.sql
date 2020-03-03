
SELECT bookname, price  FROM Book;
SELECT price, bookname  FROM Book;
SELECT bookid, bookname, publisher, price  FROM Book;
SELECT *  FROM Book;
SELECT *  FROM customer;
SELECT *  FROM orders;
SELECT publisher  FROM Book;
SELECT distinct publisher  FROM Book;

SELECT *  FROM Book  where price<20000;
SELECT *  FROM Book  where price between 10000 and 20000;
SELECT *  FROM Book  where price>=10000 and price<=20000;
SELECT *  FROM Book  where publisher in('굿스포츠','대한미디어');
SELECT *  FROM Book  where publisher='굿스포츠' or publisher='대한미디어';
SELECT *  FROM Book  where publisher not in('굿스포츠','대한미디어');
SELECT bookname, publisher  FROM Book  where bookname like '축구의 역사';
SELECT bookname, publisher  FROM Book  where bookname like '%축구%';
SELECT *  FROM Book  where bookname like '_구%';

SELECT *  FROM Book  order by bookname;
SELECT *  FROM Book  order by price;
SELECT *  FROM Book  order by price, bookname;
SELECT *  FROM Book  order by price desc, publisher asc;

SELECT sum(saleprice)  FROM orders;
SELECT sum(saleprice) as 총매출  FROM orders;
SELECT sum(saleprice) as 총매출  FROM orders  where custid=2;
SELECT sum(saleprice) as Total, avg(saleprice) as Average, min(saleprice) as Minimum, max(saleprice) as Maximum  FROM orders;
SELECT count(*)  FROM orders; 
