SELECT OUTTABLE.ANIMAL_ID, OUTTABLE.NAME
-- ID와 이름
-- A.FIELD1, A.FILED2
FROM ANIMAL_OUTS OUTTABLE LEFT JOIN ANIMAL_INS INTABLE 
-- FROM A_TABLE A OO JOIN B_TABLE B
-- INNER JOIN(교집합)
-- LEFT/RIGHT JOIN(부분집합)
-- OUTER JOIN(합집합)
ON OUTTABLE.ANIMAL_ID = INTABLE.ANIMAL_ID
-- ON A.KEY = B.KEY
-- 입양을 간 기록은 있고 (ANIMAL_OUTS)
WHERE INTABLE.ANIMAL_ID IS NULL
-- WHERE B.KEY IS NULL(A, B 교집합 제외 A-B)
-- 보호소에 들어온 기록이 없는 동물(ANIMAL_INS)
ORDER BY ANIMAL_ID
-- ID 순으로 조회