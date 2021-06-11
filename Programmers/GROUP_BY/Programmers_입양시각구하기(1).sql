SELECT HOUR(DATETIME) HOUR, COUNT(*)
-- HOUR() 함수 
-- 필드의 이름은 바로 뒤에 적으면 지정 가능 HOUR로 이름 설정
FROM ANIMAL_OUTS
GROUP BY HOUR
-- 각 시간대별로 입양이 몇 건
HAVING HOUR >= 9 and HOUR <= 19
-- 09:00부터 19:59까지
ORDER BY HOUR
-- 시간대 순으로 정렬해야