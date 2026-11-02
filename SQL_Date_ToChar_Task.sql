
-- Q1: Display current date as DD-MON-YYYY
SELECT TO_CHAR(SYSDATE, 'DD-MON-YYYY') AS CURRENT_DATE
FROM DUAL;

-- Q2: Display current date as Month YYYY
SELECT TO_CHAR(SYSDATE, 'Month YYYY') AS CURRENT_DATE
FROM DUAL;

-- Q3: Convert number to character with formatting
SELECT TO_CHAR(12345.67, '99,999.99') AS FORMATTED_NUMBER
FROM DUAL;

-- Q4: Show salary formatted with currency symbol
SELECT TO_CHAR(15000, 'L99,999') AS FORMATTED_SALARY
FROM DUAL;
