SELECT ANIMAL_ID, NAME
-- 아이디와 이름을 조회
FROM ANIMAL_INS
-- 동물 보호소에 들어온 
WHERE NAME LIKE '%el%' AND ANIMAL_TYPE = 'dog'
-- 동물 이름 중, 이름에 "EL"이 들어가는 
-- 개
ORDER BY NAME
-- 이름 순으로 조회