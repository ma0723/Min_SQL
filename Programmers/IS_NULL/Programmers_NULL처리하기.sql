SELECT ANIMAL_TYPE, CASE WHEN NAME IS NULL THEN 'No name' ELSE NAME END NAME, SEX_UPON_INTAKE
-- CASE WHEN FIELD THEN VALUE ELSE VALUE END FIELD
-- 동물의 생물 종, 이름, 성별 및 중성화 여부
FROM ANIMAL_INS
-- 이름이 없는 동물(NULL)의 이름은 "No name"으로 표시
-- IFNULL(NAME, 'No name')
ORDER BY ANIMAL_ID
-- 아이디 순으로 조회