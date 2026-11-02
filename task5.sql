-- Task 5: DECODE and ORDERS

-- Q1: Use DECODE instead of CASE
SELECT
    NAME,
    MARKS,
    DECODE(
        TRUNC(MARKS / 10),
        10, 'A',
        9, 'A',
        8, 'B',
        7, 'C',
        'F'
    ) AS GRADE
FROM STUDENTS;


-- Q2: Create ORDERS table
CREATE TABLE ORDERS (
    STATUS CHAR(1)
);


-- Q3: Insert order statuses
INSERT INTO ORDERS (STATUS) VALUES ('P');
INSERT INTO ORDERS (STATUS) VALUES ('S');
INSERT INTO ORDERS (STATUS) VALUES ('D');

COMMIT;


-- Q3: Display full status using DECODE
SELECT
    STATUS,
    DECODE(
        STATUS,
        'P', 'Pending',
        'S', 'Shipped',
        'D', 'Delivered',
        'Unknown'
    ) AS FULL_STATUS
FROM ORDERS;