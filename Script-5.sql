
--1.
SELECT DEPARTMENT_NAME"학과 명", CATEGORY "계열" 
FROM TB_DEPARTMENT;


--2. 


SELECT DEPARTMENT_NAME, CAPACITY
FROM TB_DEPARTMENT;


--3.

SELECT STUDENT_NAME 
FROM TB_STUDENT
WHERE DEPARTMENT_NO IN (001)
AND ABSENCE_YN = 'Y' AND SUBSTR( STUDENT_SSN, 8,1)=2;


--4.
SELECT  STUDENT_NAME 
FROM TB_STUDENT
WHERE  STUDENT_NO IN ('A513079','A513090','A513091','A513110','A513119');


--5.

SELECT DEPARTMENT_NAME, CATEGORY  
FROM TB_DEPARTMENT
WHERE CAPACITY  BETWEEN 20 AND 30;


--6.
SELECT PROFESSOR_NAME
FROM TB_PROFESSOR
WHERE DEPARTMENT_NO IS NULL; 


--7.
SELECT STUDENT_NAME 
FROM TB_STUDENT ts 
WHERE DEPARTMENT_NO IS NULL;


--8.
SELECT CLASS_NO 
FROM TB_CLASS tc 
WHERE PREATTENDING_CLASS_NO IS NOT NULL;


--9.

SELECT DISTINCT CATEGORY 
FROM TB_DEPARTMENT;


--10.

SELECT STUDENT_NO, STUDENT_NAME, STUDENT_SSN 
FROM TB_STUDENT ts 
WHERE ENTRANCE_DATE BETWEEN('2002-01-01') AND('2002-12-31') 
AND SUBSTR(STUDENT_ADDRESS,2,1)= '전주'; 






-------------



---함수

--1.


SELECT STUDENT_NO "학번", STUDENT_NAME "이름", SUBSTR(ENTRANCE_DATE, 0)"입학년도"
FROM TB_STUDENT
WHERE DEPARTMENT_NO = 002;


--2.
SELECT PROFESSOR_NAME, PROFESSOR_SSN 
FROM TB_PROFESSOR
WHERE PROFESSOR_NAME LIKE '____%'
OR PROFESSOR_NAME NOT LIKE '___%'


--3.

SELECT PROFESSOR_NAME "교수이름", 100 - SUBSTR(PROFESSOR_SSN, 1,2)+8 "나이" 
FROM TB_PROFESSOR 
WHERE SUBSTR(PROFESSOR_SSN,8,1) = 1
ORDER BY 2 ASC;


--4.
SELECT SUBSTR(PROFESSOR_NAME,2,2) "이름"
FROM TB_PROFESSOR



--5.TB_CLASS ***

SELECT STUDENT_NO, STUDENT_NAME 
FROM TB_STUDENT ts 
WHERE 100 - SUBSTR(STUDENT_SSN,1,2)+8>
  8-SUBSTR(ENTRANCE_DATE,3,2)+


  
  
 ----6 ***
  
SELECT TO CHAR((TO_DATE('2020-12-25')), 'YY//MM//DD DAY') FROM DUAL;


--- 7 **

--- 99년 10월 11일, 49년, 10월 11일, 


--8 

SELECT STUDENT_NO, STUDENT_NAME 
FROM TB_STUDENT
WHERE SUBSTR(ENTRANCE_DATE,1,4) > 2000 






