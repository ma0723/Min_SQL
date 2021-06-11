SET @hour := -1; 
-- 변수 선언 SET @var := value;
-- 쿼리문에서 로컬 변수를 활용
SELECT (@hour := @hour +1) AS HOUR,
-- 0시부터 23시까지 
-- -1에서 1씩 증가하면 0으로 배당 (@var := @var+1)
(SELECT COUNT(*) FROM ANIMAL_OUTS WHERE HOUR(DATETIME) = @hour) AS COUNT
-- 각 시간대별로 입양이 몇 건
FROM ANIMAL_OUTS
WHERE @hour < 23
-- 23시까지 
ORDER BY @hour
-- 시간대 순으로 정렬