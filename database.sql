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



-- Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020
SELECT *
FROM `exams`
WHERE `date` = "2020/06/20"
AND `hour` > "14:00:00"



-- Selezionare tutti i corsi di laurea magistrale
SELECT *
FROM `degrees`
WHERE `level`= "magistrale"


-- Da quanti dipartimenti è composta l'università?
SELECT COUNT(*)
FROM `departments`


-- Quanti sono gli insegnanti che non hanno un numero di telefono?
SELECT COUNT(*)
FROM `teachers`
WHERE `phone` IS NULL



-- GROUP BY
--  Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(`enrolment_date`), COUNT(id)
FROM `students`
GROUP BY YEAR (`enrolment_date`)



-- Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT `office_address`,COUNT(id)
FROM `teachers`
GROUP BY `office_address`


-- Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `department_id`, COUNT(id)
FROM `degrees`
GROUP BY `department_id`
