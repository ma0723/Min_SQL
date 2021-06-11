SELECT ANIMAL_ID
-- ID
FROM ANIMAL_INS
WHERE NAME IS NULL
-- 동물 보호소에 들어온 동물 중, 이름이 없는 채로 들어온 동물
ORDER BY ANIMAL_ID
-- ID는 오름차순 정렬