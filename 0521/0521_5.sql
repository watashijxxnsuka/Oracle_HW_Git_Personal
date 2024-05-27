--1)
SELECT MAJOR
	 , SNAME 
	FROM STUDENT
	WHERE MAJOR = '화학'
	
--2)
SELECT SNAME
	 , AVR
	FROM STUDENT
	WHERE AVR >= 2.0
	ORDER BY AVR;
	
--3)
SELECT SNAME
	 , AVR
	FROM STUDENT
	WHERE SNAME = '관우';
	
--4)
SELECT PNAME
	 , ORDERS
	FROM PROFESSOR
	WHERE ORDERS = '정교수';
	
--5)
SELECT PNAME
	 , ORDERS
	 , SECTION 
	FROM PROFESSOR
	WHERE SECTION = '화학';
	
--6)
SELECT PNAME
	 , ORDERS
	 , SECTION 
	FROM PROFESSOR
	WHERE PNAME = '송강';
	
--7)
SELECT SNAME
	 , AVR
	 , SYEAR 
	 , MAJOR 
	FROM STUDENT
	WHERE MAJOR = '화학'
	ORDER BY SYEAR;
	
--8)
SELECT PNAME
	 , ORDERS
	 , SECTION 
	 , HIREDATE 
	FROM PROFESSOR
	WHERE HIREDATE < TO_DATE('2000-01-01:00:00:00', 'YYYY-MM-DD:HH24:MI:SS')
	ORDER BY HIREDATE;
	
--9)
SELECT CNO
	 , CNAME
	 , ST_NUM
	 , PNO
	FROM COURSE
	WHERE PNO IS NULL;
	