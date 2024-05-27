--1) 
SELECT MAJOR || '학과인 ' || SNAME || '학생의 현재 평점은 ' || AVR || '입니다.'
	FROM STUDENT;
	
--2)
SELECT CNAME || '과목은 ' || ST_NUM || '학점 과목입니다.'
	FROM COURSE;
	
--3) 
SELECT PNAME || '교수는 ' || SECTION || '학과 소속입니다.'
	FROM PROFESSOR;
	
--4)
SELECT DISTINCT MAJOR
	FROM STUDENT; 
	
--5)
SELECT DISTINCT SECTION
	FROM PROFESSOR;
	
--6)
SELECT DISTINCT ORDERS
	FROM PROFESSOR;