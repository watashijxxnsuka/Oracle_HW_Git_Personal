--<단일 행 함수를 이용하세요>
--1) 교수들이 부임한 달에 근무한 일수는 몇 일인지 검색하세요
SELECT HIREDATE
	 , LAST_DAY(HIREDATE) 
	 , LAST_DAY(HIREDATE) - HIREDATE  
	FROM PROFESSOR;
	

--2) 교수들의 오늘까지 근무한 주가 몇 주인지 검색하세요
SELECT HIREDATE
	 , MONTHS_BETWEEN(SYSDATE , HIREDATE) / 7
	FROM PROFESSOR;

--3) 1991년에서 1995년 사이에 부임한 교수를 검색하세요
SELECT PNAME
	 , HIREDATE
	FROM PROFESSOR
	WHERE HIREDATE BETWEEN TO_DATE('1991', 'YYYY') AND TO_DATE('1995', 'YYYY');
	 

--4) 학생들의 4.5 환산 평점을 검색하세요(단 소수 이하 둘째자리까지)
SELECT SNAME
	 , AVR
	 , ROUND(AVR*1.125, 2) AS "4.5"
	FROM STUDENT
	ORDER BY "4.5"; 

--5) 사원들의 오늘까지 근무 기간이 몇 년 몇 개월 며칠인지 검색하세요
SELECT ENAME
	 , HDATE 
	 , TRUNC(SYSDATE) - TRUNC(HDATE)  
	FROM EMP;



