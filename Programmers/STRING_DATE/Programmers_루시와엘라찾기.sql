SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
-- 아이디와 이름, 성별 및 중성화 여부
FROM ANIMAL_INS
WHERE NAME IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
-- WHERE NAME = 'Lucy' OR NAME = 'Ella' OR NAME = 'Pickle' OR NAME = 'Rogan' OR NAME = 'Sabrina' OR NAME = 'Mitty' 
-- 이름이 Lucy, Ella, Pickle, Rogan, Sabrina, Mitty
ORDER BY ANIMAL_ID
-- 아이디 순으로 조회 (역순은 DESC)