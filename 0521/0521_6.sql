--1)
SELECT SNAME
	 , MAJOR
	FROM STUDENT
	WHERE MAJOR IN ('유공', '생물', '식영');
	
--2)
SELECT SNAME
	 , MAJOR
	 , SYEAR 
	FROM STUDENT
	WHERE MAJOR != '화학'
	AND SYEAR = 1;
	
--3)
SELECT SNAME
	 , MAJOR
	 , SYEAR 
	FROM STUDENT
	WHERE MAJOR = '물리'
	AND SYEAR = 3;
	
--4)
SELECT SNAME
	 , MAJOR
	 , SYEAR 
	 , AVR 
	FROM STUDENT
	WHERE AVR BETWEEN 2.0 AND 3.0
	 ORDER BY AVR;
	
--5)
SELECT CNO
	 , CNAME
	 , ST_NUM
	 , PNO
	FROM COURSE
	WHERE PNO IS NULL
	AND ST_NUM = 3;

--6)
SELECT CNO
	 , CNAME
	 , ST_NUM
	 , PNO
	FROM COURSE
	WHERE CNAME LIKE '%화학%'
	AND ST_NUM <= 2;

--7)
SELECT PNAME
	 , ORDERS
	 , SECTION 
	FROM PROFESSOR
	WHERE "SECTION" = '화학'
	AND ORDERS = '정교수';
	
--8)
SELECT SNAME
	 , MAJOR
	 , SYEAR 
	 , AVR 
	FROM STUDENT
	WHERE MAJOR = '물리'
	 AND SNAME LIKE '사마%';
	 
--9)
SELECT PNAME
	 , ORDERS
	 , SECTION 
	FROM PROFESSOR
	WHERE PNAME LIKE '__';