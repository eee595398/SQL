SELECT EMP_NAME, NVL(DEPT_TITLE, '부서없음') AS DEPT_TITLE, SALARY
FROM EMPLOYEE
LEFT JOIN DEPARTMENT ON(DEPT_CODE=DEPT_ID)
WHERE NVL(DEPT_TITLE, '부서없음') = '총무부'


SELECT  EMP_NAME, JOB_NAME, SALARY, SALARY*12 ANNUAL_INCOME
FROM EMPLOYEE
JOIN JOB USING (JOB_CODE)
WHERE JOB_NAME =  
AND SALARY > 


SELECT EMP_NAME 이름, TO_CHAR(HIRE_DATE, 'YYYY"년" MM"월" DD"일"')입사일,
DECODE(SUBSTR(EMP_NO,8,1),'1','M','2','F') 성별
FROM EMPLOYEE
WHERE HIRE_DATE < TO_DATE





