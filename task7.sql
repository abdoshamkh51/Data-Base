-- Q1. Create STUDENTS table

CREATE TABLE STUDENTS (
    NAME VARCHAR2(100),
    MARKS NUMBER(5,2)
);


-- Q2. Insert student records

INSERT INTO STUDENTS VALUES ('Ahmed', 95);
INSERT INTO STUDENTS VALUES ('Mohamed', 85);
INSERT INTO STUDENTS VALUES ('Ali', 75);
INSERT INTO STUDENTS VALUES ('Omar', 65);
INSERT INTO STUDENTS VALUES ('Sara', 90);

COMMIT;


-- Q3. Assign grades using CASE

SELECT
    NAME,
    MARKS,
    CASE
        WHEN MARKS >= 90 THEN 'A'
        WHEN MARKS >= 80 THEN 'B'
        WHEN MARKS >= 70 THEN 'C'
        ELSE 'F'
    END AS GRADE
FROM STUDENTS;


-- Q4. Display Pass or Fail

SELECT
    NAME,
    MARKS,
    CASE
        WHEN MARKS >= 60 THEN 'Pass'
        ELSE 'Fail'
    END AS RESULT
FROM STUDENTS;


-- Q5. Display performance messages

SELECT
    NAME,
    MARKS,
    CASE
        WHEN MARKS >= 90 THEN 'Excellent'
        WHEN MARKS >= 80 THEN 'Good'
        WHEN MARKS >= 70 THEN 'Average'
        ELSE 'Needs Improvement'
    END AS PERFORMANCE
FROM STUDENTS;


-- Q6. Display today's day name using CASE

SELECT
    CASE
        WHEN TO_CHAR(SYSDATE, 'D') = '1' THEN 'Today is Sunday'
        WHEN TO_CHAR(SYSDATE, 'D') = '2' THEN 'Today is Monday'
        WHEN TO_CHAR(SYSDATE, 'D') = '3' THEN 'Today is Tuesday'
        WHEN TO_CHAR(SYSDATE, 'D') = '4' THEN 'Today is Wednesday'
        WHEN TO_CHAR(SYSDATE, 'D') = '5' THEN 'Today is Thursday'
        WHEN TO_CHAR(SYSDATE, 'D') = '6' THEN 'Today is Friday'
        WHEN TO_CHAR(SYSDATE, 'D') = '7' THEN 'Today is Saturday'
    END AS TODAY
FROM DUAL;
