SET SERVEROUTPUT ON;

CREATE TABLE Student (
    StudentID NUMBER(5) PRIMARY KEY,
    StudentName VARCHAR2(50),
    DOB DATE,
    Gender VARCHAR2(10),
    DepartmentID NUMBER(5)
);

CREATE OR REPLACE PROCEDURE insert_student (
    p_studentid     IN NUMBER,
    p_studentname   IN VARCHAR2,
    p_dob           IN DATE,
    p_gender        IN VARCHAR2,
    p_departmentid  IN NUMBER
)
IS
BEGIN
    INSERT INTO Student
    (
        StudentID,
        StudentName,
        DOB,
        Gender,
        DepartmentID
    )
    VALUES
    (
        p_studentid,
        p_studentname,
        p_dob,
        p_gender,
        p_departmentid
    );

    DBMS_OUTPUT.PUT_LINE('Student record inserted successfully');

END;
/
