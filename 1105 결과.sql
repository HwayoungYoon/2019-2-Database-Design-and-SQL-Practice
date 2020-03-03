CREATE INDEX ix_Book ON book (bookname);
CREATE INDEX ix_Book2 ON book(publisher, price);
show index from book;
ANALYZE TABLE book;
DROP INDEX ix_Book ON book;

delimiter //
CREATE PROCEDURE InsertBook(
 IN myBookID INTEGER,
 IN myBookName VARCHAR(40),
 IN myPublisher VARCHAR(40),
 IN myPrice INTEGER)
BEGIN
 INSERT INTO book(bookid,bookname,publisher,price)
 VALUES(myBookID,myBookName,myPublisher,myPrice);
 END;
 //
 delimiter ;
 /*프로시저InsertBook을테스트하는부분*/
 CALL Insertbook(13,'스포츠과학','마당과학서적',25000);
 SELECT * FROM book;
 
 delimiter //
 CREATE PROCEDURE BookInsertOrUpdate(
 myBookID INTEGER,
 myBookName VARCHAR(40),
 myPublisher VARCHAR(40),
 myPrice INTEGER )
 BEGIN
 DECLARE mycount INTEGER;
 SELECT count(*) INTO mycount FROM book
 WHERE bookname LIKE myBookName;
 IF mycount!=0 THEN
 SET SQL_SAFE_UPDATES=0; /*DELETE,UPDATE연산에필요한설정문*/
 UPDATE book SET price = myPrice
 WHERE bookname LIKE myBookName;
 ELSE
 INSERT INTO book(bookid,bookname,publisher,price)
 VALUES(myBookID,myBookName,myPublisher,myPrice) ;
 END IF;
 END;
 //
 delimiter ;
 /*BookInsertOrUpdate프로시저를실행하여테스트하는부분*/
 CALL BookInsertOrUpdate(15,'스포츠즐거움','마당과학서적',25000);
 SELECT * FROM book; /*15번투플삽입결과확인*/
 /*BookInsertOrUpdate프로시저를실행하여테스트하는부분*/
 CALL BookInsertOrUpdate(15,'스포츠즐거움','마당과학서적',20000);
 SELECT * FROM book; /*15번투플가격변경확인*/
 
delimiter //
 CREATE PROCEDURE AveragePrice(
 OUT AverageVal INTEGER)
 BEGIN
 SELECT AVG(price) INTO AverageVal
 FROM book WHERE price IS NOT NULL;
 END;
 //
 delimiter ;
/*프로시저AveragePrice를테스트하는부분*/
 CALL AveragePrice(@myValue);
 SELECT @myValue;