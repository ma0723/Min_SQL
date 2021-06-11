SELECT ANIMAL_ID, NAME, DATETIME
-- 모든 동물의 아이디와 이름, 보호 시작일
FROM ANIMAL_INS
ORDER BY NAME, DATETIME DESC
-- 이름이 같은 동물 중에서는 보호를 나중에 시작한 동물을 먼저
-- 이름 순으로 조회