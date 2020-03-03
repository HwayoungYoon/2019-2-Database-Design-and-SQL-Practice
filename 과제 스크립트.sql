USE camping;

/*데이터 입력*/
INSERT INTO CamCompany VALUES(101,'노을캠프','서울특별시 마포구 하늘공원로 108-1','02-304-3213','김주화','juhwa0101@gmail.com');
INSERT INTO CamCompany VALUES(102,'에버힐','강원도 평창군 봉평면 흥정계곡4길 235','033-217-3927','최명규','choimg@gmail.com');
INSERT INTO CamCompany VALUES(103,'휴파크','전라남도 장성군 황룡면 홍길동로 431','061-394-6777','이전미','imme@gmail.com');
INSERT INTO CamCompany VALUES(104,'더캠핑카','경기도 여주시 강변유원지길 105','031-880-4095','윤혜민','gPals@gmail.com');
INSERT INTO CamCompany VALUES(105,'꿈꾸는사람들','경상북도 칠곡군 왜관읍 봉계1길 6','070-4140-2345','박영은','0silver@gmail.com');
INSERT INTO CamCompany VALUES(106,'솔내음','경기도 김포시 통진읍 절골로127번길 32-90','031-997-3775','최송백','songwhite@gmail.com');
INSERT INTO CamCompany VALUES(107,'뚝섬캠핑컴퍼니','서울특별시 성동구 뚝섬로 131','02-2286-5657','장예현','hyun777@gmail.com');
INSERT INTO CamCompany VALUES(108,'룩스캠핑','경상남도 산청군 신안면 둔철산로 575-26','055-973-6777','김준석','8294seok@gmail.com');
INSERT INTO CamCompany VALUES(109,'1967캠핑','강원도 양양군 강현면 대문터길 22-30','033-539-3618','김태주','ju0027@gmail.com');
INSERT INTO CamCompany VALUES(110,'봄여름','전라북도 익산시 웅포면 강변로 25','063-862-1578','조종례','lovejo@gmail.com');

INSERT INTO CampCar VALUES(201,'하늘구름','12마4628',7,'http://blogfiles.naver.net/20130313_120/dlwnstjf_1363172506845YzhhF_JPEG/%BD%BA%C5%B8%B7%BA%BD%BA_%C4%B7%C7%CE%C4%AB3.jpg','이불,베개,코펠세트,수저세트,목욕세트',198000, STR_TO_DATE('2017-12-09','%Y-%m-%d'),110);
INSERT INTO CampCar VALUES(202,'꿈별','97주2957',4,NULL,'이불,베개,코펠세트,수저세트,목욕세트',217000, STR_TO_DATE('2019-02-19','%Y-%m-%d'),110);
INSERT INTO CampCar VALUES(203,'주피터','02차2036',5,'http://blogfiles.naver.net/20140830_182/winelove_1409384301303p0M8E_JPEG/%C4%B7%C7%CE%C4%AB%B4%EB%BF%A9%2C%C4%B7%C7%CE%C4%AB_%B7%BB%C5%BB_IMG_20140825_223927.jpg','이불,베개,수저세트,목욕세트',199000, STR_TO_DATE('2003-04-05','%Y-%m-%d'),101);
INSERT INTO CampCar VALUES(204,'라운드','82가3325',10,NULL,'이불,베개,목욕세트',235000, STR_TO_DATE('2015-06-24','%Y-%m-%d'),103);
INSERT INTO CampCar VALUES(205,'주황1호','29루7430',6,NULL,'이불,베개,수저세트',258000, STR_TO_DATE('2011-09-30','%Y-%m-%d'),107);
INSERT INTO CampCar VALUES(206,'셀레나','97거2829',9,NULL,NULL,206000, STR_TO_DATE('1998-11-23','%Y-%m-%d'),102);
INSERT INTO CampCar VALUES(207,'새벽별','44다6925',4,'http://blogfiles.naver.net/20121214_40/dandy505_1355474194635ct6b2_JPEG/%C4%B7%C7%CE%C4%AB3.jpg','이불,베개,코펠세트,수저세트,목욕세트',231000, STR_TO_DATE('2017-03-07','%Y-%m-%d'),104);
INSERT INTO CampCar VALUES(208,'12번째꿈','82허8219',8,NULL,NULL,224000, STR_TO_DATE('1999-08-18','%Y-%m-%d'),105);
INSERT INTO CampCar VALUES(209,'아침해','72아2678',10,'http://blogfiles.naver.net/MjAxOTA3MTBfNzEg/MDAxNTYyNzM4NDM2OTQz.vdbOffyYyGH9sF39M2w95BQ2gVnWQOPocD1GlAmOqm4g.faCkIV3XHgdlZfAgPv01-DA1SbHZsPSOsc63anAORH4g.PNG.airdam/%C4%B7%C7%CE%C4%AB.PNG','이불,베개,코펠세트,수저세트,목욕세트',219000, STR_TO_DATE('2018-10-24','%Y-%m-%d'),104);
INSERT INTO CampCar VALUES(210,'소나무','19로9261',8,'http://blogfiles.naver.net/MjAxNzEwMTFfMTky/MDAxNTA3NzAzMDg5Nzkz.3VKS1BTRe3G96vdJhGtnv-BOPxH5C13aBA9dvkYqwiEg.KImoLGbmeLJp4JmUC1FMyACij3cPwAqBmO7ZDUCY3gkg.PNG.aktwlqaktwlq123/%C4%B7%C7%CE%C4%AB.png',NULL,298000, STR_TO_DATE('2018-01-11','%Y-%m-%d'),106);

INSERT INTO Customer VALUES(301,'오윤영','서울 노원구 동일로215길 48','010-3825-9288','ohyyyy@gmail.com', STR_TO_DATE('2018-08-12','%Y-%m-%d'),'하늘구름캠핑카');
INSERT INTO Customer VALUES(302,'김서원','경기 하남시 신장로136번길 32','010-0672-1132','seo1@gmail.com',NULL,NULL);
INSERT INTO Customer VALUES(303,'최우리','서울 구로구 구로중앙로 134','010-1374-2868','woooori@gmail.com', STR_TO_DATE('2019-07-25','%Y-%m-%d'),'꿈별캠핑카');
INSERT INTO Customer VALUES(304,'박민식','경기 부천시 상이로 46','010-8465-2751','pms91@gmail.com',NULL,NULL);
INSERT INTO Customer VALUES(305,'정은서','인천 부평구 주부토로66번길 39','010-1067-3285','silverwest@gmail.com',NULL,NULL);
INSERT INTO Customer VALUES(306,'강채린','서울 강북구 도봉로68길 26','010-0916-7322','chaechae@gmail.com',NULL,NULL);
INSERT INTO Customer VALUES(307,'유지원','경기 의정부시 평화로 122','010-3296-3202','jiwonyou@gmail.com', STR_TO_DATE('2018-12-30','%Y-%m-%d'),'새벽별캠핑카');
INSERT INTO Customer VALUES(308,'김미주','인천 미추홀구 석정로126번길 23','010-1292-4436','mizoothepark@gmail.com',NULL,NULL);
INSERT INTO Customer VALUES(309,'이규아','충남 천안시 서북구 월봉4로 91','010-6842-9975','gyua@gmail.com',NULL,NULL);
INSERT INTO Customer VALUES(310,'조찬영','전북 익산시 익산대로68길 51','010-2796-8473','chan0@gmail.com',NULL,NULL);

INSERT INTO CampRepairCenter VALUES(401,'다고쳐','경기도 시흥시 동서로 137-71','031-548-0075','최지명','jimyung@gmail.com');
INSERT INTO CampRepairCenter VALUES(402,'튼튼정비','경기도 의왕시 북골안길 96','031-8008-6692','김자인','zain@gmail.com');
INSERT INTO CampRepairCenter VALUES(403,'정비고','전라북도 남원시 운봉읍 주촌3길 49-4','063-620-5752','이청은','chungeun@gmail.com');
INSERT INTO CampRepairCenter VALUES(404,'우리정비','서울 강북구 삼양로 457','02-590-4597','최미라','mira@gmail.com');
INSERT INTO CampRepairCenter VALUES(405,'모두정비','서울 도봉구 도봉로136나길 20','02-983-5095','주금례','goldju@gmail.com');
INSERT INTO CampRepairCenter VALUES(406,'캠핑카정비전문','경기 남양주시 별내3로 64-21','031-390-7666','이재덕','jaeduk@gmail.com');
INSERT INTO CampRepairCenter VALUES(407,'더파크정비','경기 성남시 중원구 제일로 60','031-729-4299','장철민','cheolmin@gmail.com');
INSERT INTO CampRepairCenter VALUES(408,'스파르타','충청북도 단양군 가곡면 어의곡리 새밭로 794','043-422-2729','김희용','heeyong@gmail.com');
INSERT INTO CampRepairCenter VALUES(409,'이기우정비','경기도 평택시 고덕면 새악길 43-42','031-572-4511','이기우','lkwoo@gmail.com');
INSERT INTO CampRepairCenter VALUES(410,'블랙앤화이트','전라북도 무주군 무풍면 구천동로 530-62','063-320-2547','박현도','hyunpark@gmail.com');

INSERT INTO CampRent VALUES(501, STR_TO_DATE('2019-09-21','%Y-%m-%d'),'4일',235000, STR_TO_DATE('2019-09-23','%Y-%m-%d'),'캠프파이어 풀세트 대여',105000,301,204,103);
INSERT INTO CampRent VALUES(502, STR_TO_DATE('2019-02-01','%Y-%m-%d'),'8일',224000, STR_TO_DATE('2019-02-03','%Y-%m-%d'),NULL,0,305,208,105);
INSERT INTO CampRent VALUES(503, STR_TO_DATE('2019-11-28','%Y-%m-%d'),'9일',198000, STR_TO_DATE('2019-11-30','%Y-%m-%d'),NULL,0,303,201,110);
INSERT INTO CampRent VALUES(504, STR_TO_DATE('2019-12-17','%Y-%m-%d'),'7일',217000, STR_TO_DATE('2019-12-19','%Y-%m-%d'),'여가세트 대여',18000,309,202,110);
INSERT INTO CampRent VALUES(505, STR_TO_DATE('2019-07-11','%Y-%m-%d'),'3일',198000, STR_TO_DATE('2019-07-13','%Y-%m-%d'),NULL,0,303,201,110);
INSERT INTO CampRent VALUES(506, STR_TO_DATE('2019-07-25','%Y-%m-%d'),'3일',231000, STR_TO_DATE('2019-07-27','%Y-%m-%d'),'캠프파이어 풀세트, 여가세트 대여',215000,302,207,104);
INSERT INTO CampRent VALUES(507, STR_TO_DATE('2019-08-19','%Y-%m-%d'),'5일',298000, STR_TO_DATE('2019-08-21','%Y-%m-%d'),'여가세트 대여',139000,304,210,106);
INSERT INTO CampRent VALUES(508, STR_TO_DATE('2018-12-31','%Y-%m-%d'),'5일',219000, STR_TO_DATE('2019-01-02','%Y-%m-%d'),NULL,0,306,209,104);
INSERT INTO CampRent VALUES(509, STR_TO_DATE('2019-04-14','%Y-%m-%d'),'3일',206000, STR_TO_DATE('2019-04-16','%Y-%m-%d'),'캠프파이어 풀세트 대여',127000,307,206,102);
INSERT INTO CampRent VALUES(510, STR_TO_DATE('2019-03-23','%Y-%m-%d'),'2일',258000, STR_TO_DATE('2019-03-25','%Y-%m-%d'),NULL,0,310,205,107);

INSERT INTO CampRepair VALUES(601,'내부 리모델링', STR_TO_DATE('2019-11-22','%Y-%m-%d'),224000, STR_TO_DATE('2019-11-27','%Y-%m-%d'),NULL,102,206,301,403);
INSERT INTO CampRepair VALUES(602,'내부 리모델링', STR_TO_DATE('2019-08-25','%Y-%m-%d'),109000, STR_TO_DATE('2019-08-30','%Y-%m-%d'),NULL,103,204,304,401);
INSERT INTO CampRepair VALUES(603,'전기 재설비', STR_TO_DATE('2019-07-08','%Y-%m-%d'),350000, STR_TO_DATE('2019-07-13','%Y-%m-%d'),'조명 재설치',107,205,307,407);
INSERT INTO CampRepair VALUES(604,'정기점검', STR_TO_DATE('2018-12-24','%Y-%m-%d'),98000, STR_TO_DATE('2018-12-29','%Y-%m-%d'),NULL,104,207,305,408);
INSERT INTO CampRepair VALUES(605,'수도관 재설비', STR_TO_DATE('2019-10-23','%Y-%m-%d'),123000, STR_TO_DATE('2019-10-28','%Y-%m-%d'),NULL,101,203,309,402);
INSERT INTO CampRepair VALUES(606,'정기점검', STR_TO_DATE('2019-03-06','%Y-%m-%d'),88000, STR_TO_DATE('2019-03-11','%Y-%m-%d'),NULL,105,208,310,404);
INSERT INTO CampRepair VALUES(607,'내부 리모델링', STR_TO_DATE('2019-02-13','%Y-%m-%d'),110000, STR_TO_DATE('2019-02-18','%Y-%m-%d'),NULL,106,210,301,409);
INSERT INTO CampRepair VALUES(608,'수도관 재설비', STR_TO_DATE('2018-05-17','%Y-%m-%d'),142000, STR_TO_DATE('2018-05-22','%Y-%m-%d'),NULL,103,204,308,405);
INSERT INTO CampRepair VALUES(609,'수도관 재설비', STR_TO_DATE('2019-09-14','%Y-%m-%d'),119000, STR_TO_DATE('2019-09-19','%Y-%m-%d'),NULL,104,209,302,410);
INSERT INTO CampRepair VALUES(610,'전기 재설비', STR_TO_DATE('2019-08-09','%Y-%m-%d'),283000, STR_TO_DATE('2019-08-14','%Y-%m-%d'),'전기장판 추가 설치',101,201,304,406);

/*데이터 변경*/
UPDATE camcompany
SET com_phone = '033-322-3910'
WHERE com_id = 102 ;
UPDATE camcompany
SET com_m_email = 'hyun0770@gmail.com'
WHERE com_id = 107 ;

UPDATE campcar
SET car_detail = '이불,베개,수저세트,목욕세트'
WHERE car_id = 206 ;
UPDATE campcar
SET car_pasnum = 7
WHERE car_id = 208 ;

UPDATE customer
SET cus_email = 'ohyysmile@gmail.com'
WHERE cus_license = 301 ;
UPDATE customer
SET cus_phone = '010-6712-3984'
WHERE cus_license = 310 ;

UPDATE camprepaircenter
SET recen_name = '캠핑의지존'
WHERE recen_id = 405 ;
UPDATE camprepaircenter
SET recen_m_name = '유채성'
WHERE recen_id = 407 ;

UPDATE camprent
SET rent_ex_cost = 133000
WHERE rent_id = 509 ;
UPDATE camprent
SET rent_period = '10일'
WHERE rent_id = 502 ;

UPDATE camprepair
SET re_cost = 75000
WHERE re_id = 604 ;
UPDATE camprepair
SET re_cost = 269000
WHERE re_id = 610 ;

/*서울에 있는 캠핑카 정비소에 대한 모든 정보 검색*/
SELECT *
FROM camprepaircenter
WHERE recen_address LIKE '%서울%' ;

/*캠핑카 승차 인원이 5인 이상인 캠핑카의 모든 정보 검색*/
SELECT *
FROM campcar
WHERE car_pasnum >= 5 ;