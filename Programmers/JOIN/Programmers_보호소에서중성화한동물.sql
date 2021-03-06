SELECT A.ANIMAL_ID, A.ANIMAL_TYPE , A.NAME
-- 동물의 아이디와 생물 종, 이름을 조회
FROM ANIMAL_INS A LEFT JOIN ANIMAL_OUTS B
ON A.ANIMAL_ID = B.ANIMAL_ID
-- ANIMAL_OUTS 테이블의 ANIMAL_ID는 ANIMAL_INS의 ANIMAL_ID의 외래 키
WHERE A.SEX_UPON_INTAKE LIKE 'Intact%' 
AND B.SEX_UPON_OUTCOME NOT LIKE 'Intact%'
-- 보호소에 들어올 당시에는 중성화(SEX_UPON_INTAKE)X
-- 보호소를 나갈 당시에는 중성화(SEX_UPON_OUTCOME)O
ORDER BY A.ANIMAL_ID
-- 아이디 순으로 조회