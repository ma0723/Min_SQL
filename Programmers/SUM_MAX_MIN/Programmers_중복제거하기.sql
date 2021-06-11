SELECT COUNT(DISTINCT NAME) AS count
-- DISTINCT FIELD 입력 유의
-- 중복되는 이름은 하나로 칩니다
-- AS 새로운 FIELD 명으로 설정
FROM ANIMAL_INS
WHERE NAME IS NOT NULL
-- 이때 이름이 NULL인 경우는 집계하지 않으며