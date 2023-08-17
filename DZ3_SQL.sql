-- 1. Отсортируйте данные по полю заработная плата (salary) в порядке: 
-- убывания; 
-- возрастания;

SELECT * FROM staf;

-- убывание.
SELECT * FROM staf
    ORDER BY salary;

-- возрастание
SELECT * FROM staf
    ORDER BY salary desc;
    
-- 2. Выведите 5 максимальных заработных плат(saraly) 
SELECT salary
FROM staf
    ORDER BY salary desc LIMIT 5;
    
-- 3. Посчитайте суммарную зарплату (salary) по каждой специальности (роst)
SELECT post, sum(salary) as "Суммарная ЗП"
FROM staf 
GROUP BY post;

-- 4. Найдите кол-во сотрудников с специальностью (post) « Рабочий» в возрасте от 24 до 49 лет включительно. !! Доработать !! 

SELECT count(post)
FROM staf
WHERE age >= 24  AND age <= 49 AND post = 'Рабочий'
GROUP BY post 
; 	
         

-- 5. Найдите количество специальностей

SELECT count(DISTINCT post) AS 'Количество специальностей'
FROM staf;

-- 6. Выведите специальности, у которых средний возраст сотрудников меньше 30 лет  

SELECT post
        FROM staf
        GROUP BY post
        HAVING AVG(age) < 30;
