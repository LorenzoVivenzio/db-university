-- STUDENTI NATI NEL 1990
SELECT *
FROM `students`
WHERE YEAR (`date_of_birth`) = 1990


--CFU MAGGIORE DI 10
SELECT *
FROM `courses`
WHERE `cfu` > 10


-- STUDENTI DI ETA MAGGIORE A 30
SELECT *
FROM `students`
WHERE YEAR (`date_of_birth`) <= 1995
ORDER BY `date_of_birth`  DESC


-- Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea 
SELECT *
FROM `courses`
WHERE `period` = "I semestre"
AND `year` = "1"