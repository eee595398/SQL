

CREATE TABLE USER_TEST(ID NUMBER, NAME VARCHAR2(10), RESERVEDATE VARCHAR2(10), RoomNum NUMBER);

INSERT INTO USER_TEST(ID, NAME, RESERVEDATE, RoomNum)
VALUES(1,'홍길동','2016-01-05',2014);

INSERT INTO USER_TEST(ID, NAME, RESERVEDATE, RoomNum)
VALUES(2,'임꺽정','2016-02-12',918);

INSERT INTO USER_TEST(ID, NAME, RESERVEDATE, RoomNum)
VALUES(3,'장길산','2016-01-16',1208);

INSERT INTO USER_TEST(ID, NAME, RESERVEDATE, RoomNum)
VALUES(4,'홍길동','2016-03-17',504);

INSERT INTO USER_TEST(ID, NAME)
VALUES(6,'김유신');

SELECT *FROM USER_TEST;


DELETE FROM USER_TEST
WHERE ID = 4;

UPDATE USER_TEST
SET RoomNum = 2002
WHERE ID = 1;

UPDATE USER_TEST 
SET RoomNum = 2002;