
---1
SELECT EMP_ID,EMP_NAME, PHONE,HIRE_DATE 
FROM EMPLOYEE 
WHERE DEPT_CODE =
(SELECT DEPT_CODE FROM EMPLOYEE WHERE EMP_NAME = '전지연' )
AND EMP_NAME != '전지연';

--2

SELECT EMP_ID, EMP_NAME ,PHONE ,SALARY ,JOB_NAME
FROM EMPLOYEE
JOIN JOB USING (JOB_CODE)
WHERE SALARY IN (SELECT MAX(SALARY) FROM EMPLOYEE 
WHERE EXTRACT(YEAR FROM HIRE_DATE) >2000 ) 

--3
SELECT EMP_ID , EMP_NAME , DEPT_CODE ,DEPT_TITLE, JOB_CODE
FROM EMPLOYEE
LEFT JOIN DEPARTMENT ON(DEPT_ID = DEPT_CODE)
JOIN JOB USING(JOB_CODE)
WHERE (DEPT_CODE,JOB_CODE)=(SELECT DEPT_CODE,JOB_CODE FROM EMPLOYEE WHERE EMP_NAME = '노옹철')
AND EMP_NAME != '노옹철';


--4


SELECT EMP_ID, EMP_NAME ,DEPT_CODE ,JOB_CODE ,HIRE_DATE 
FROM EMPLOYEE
WHERE (DEPT_CODE,JOB_CODE)=(SELECT DEPT_CODE,JOB_CODE 
FROM EMPLOYEE WHERE EXTRACT(YEAR FROM HIRE_DATE) =2000);

--5


SELECT EMP_ID ,EMP_NAME ,DEPT_CODE ,MANAGER_ID ,EMP_NO ,HIRE_DATE 
FROM EMPLOYEE
WHERE (DEPT_CODE ,MANAGER_ID) IN (SELECT DEPT_CODE, MANAGER_ID FROM EMPLOYEE
WHERE SUBSTR(EMP_NO,1,2)='77' AND SUBSTR(EMP_NO,8,1)='2')


--6

SELECT EMP_ID, EMP_NAME, NVL(DEPT_TITLE,'소속없음'),JOB_NAME, HIRE_DATE 
FROM EMPLOYEE MAIN 
LEFT JOIN DEPARTMENT ON(DEPT_CODE =DEPT_ID)
JOIN JOB USING(JOB_CODE)
WHERE ENT_YN = 'N'
AND HIRE_DATE  =(SELECT MIN(HIRE_DATE) FROM EMPLOYEE SUB WHERE SUB.DEPT_CODE = MAIN.DEPT_CODE)
ORDER BY HIRE_DATE;


--7
SELECT EMP_ID ,EMP_NAME , JOB_NAME ,SUBSTR(EMP_NO,1,2) 나이,SALARY*12
FROM EMPLOYEE MAIN
JOIN JOB USING(JOB_CODE)
WHERE EMP_NO = (SELECT MIN(EMP_NO) FROM EMPLOYEE SUB JOIN JOB USING(JOB_CODE)
WHERE SUB.JOB_CODE =MAIN.JOB_CODE)



