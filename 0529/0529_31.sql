--1) 4.5 환산 평점이 가장 높은 3인의 학생을 검색하세요.
SELECT ROWNUM
	 , A.SNO
	 , A.SNAME
	 , A.AVR_G
	FROM (SELECT SNO, SNAME, AVR*1.125 AS AVR_G FROM STUDENT  ORDER BY AVR DESC) A
	WHERE ROWNUM <= 3;

--2) 기말고사 과목별 평균이 높은 3과목을 검색하세요.
SELECT ROWNUM
	 , A.CNO
	 , A.CNAME
	 , A.AVG_RESULT
	FROM (SELECT C.CNO, C.CNAME, AVG(SC.RESULT) AS AVG_RESULT 
		 FROM COURSE c  JOIN SCORE SC ON C.CNO = SC.CNO
		 GROUP BY C.CNO, C.CNAME ORDER BY AVG_RESULT DESC) A
	WHERE ROWNUM <= 3;

--3) 학과별, 학년별, 기말고사 평균이 순위 3까지를 검색하세요.(학과, 학년, 평균점수 검색)
SELECT ROWNUM, A.CNAME, A.SYEAR, A.AVG_SCORE
FROM (
    SELECT C.CNAME,
           S.SYEAR,
           AVG(SC.RESULT) AS AVG_SCORE
    	 FROM STUDENT S
    	 JOIN SCORE SC 
    	 ON S.SNO = SC.SNO
    	 JOIN COURSE C 
    	 ON SC.CNO = C.CNO
    	 GROUP BY C.CNAME, S.SYEAR
    	 ORDER BY AVG_SCORE DESC
) A
WHERE ROWNUM <= 3;

--4) 기말고사 성적이 높은 과목을 담당하는 교수 3인을 검색하세요.(교수이름, 과목명, 평균점수 검색)
SELECT ROWNUM, A.CNO, A.CNAME, A.AVG_RESULT, P.PNAME
	FROM(SELECT C.CNO, C.CNAME, AVG(SC.RESULT) AS AVG_RESULT 
		 FROM COURSE c  JOIN SCORE SC ON C.CNO = SC.CNO
		 GROUP BY C.CNO, C.CNAME ORDER BY AVG_RESULT DESC) A
		 JOIN COURSE CC ON A.CNO = CC.CNO 
		JOIN PROFESSOR P ON CC.PNO = P.PNO
	WHERE ROWNUM <= 3;

--5) 교수별로 현재 수강중인 학생의 수를 검색하세요. - 나 진짜 모르겠음
SELECT P.PNO, P.PNAME, C.CNAME, COUNT(SC.SNO) AS STU_CNT
	FROM STUDENT S 
	JOIN SCORE SC ON S.SNO = SC.SNO 
	JOIN COURSE C ON SC.CNO = C.CNO 
	JOIN PROFESSOR P ON C.PNO = P.PNO
	GROUP BY P.PNO, P.PNAME, C.CNAME;




