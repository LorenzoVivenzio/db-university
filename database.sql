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