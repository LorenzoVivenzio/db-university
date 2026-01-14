-- STUDENTI NATI NEL 1990
SELECT *
FROM `students`
WHERE YEAR (`date_of_birth`) = 1990


--CFU MAGGIORE DI 10
SELECT *
FROM `courses`
WHERE `cfu` > 10