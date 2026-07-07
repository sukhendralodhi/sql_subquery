SELECT *
FROM students;
SELECT *
FROM exam_scores;
SELECT *
FROM projects;
SELECT AVG(score) AS class_avg_score
FROM exam_scores;
-- subquery must return a single value, so we can use it in the WHERE clause to filter students who scored below the class average.


SELECT s.name AS student_name,
    s.branch AS student_branch,
    e.score AS student_score,
    e.subject AS student_subject
FROM exam_scores AS e
    INNER JOIN students AS s ON s.student_id = e.student_id
WHERE e.score > (
        SELECT AVG(score) AS class_average
        FROM exam_scores
    );


SELECT s.name AS student_name,
    s.branch AS student_branch,
    e.score AS student_score,
    e.subject AS student_subject
FROM exam_scores AS e
    INNER JOIN students AS s ON s.student_id = e.student_id
WHERE e.score < (
        SELECT AVG(score) AS class_average
        FROM exam_scores
    );



SELECT * FROM exam_scores
WHERE score >= 90;

SELECT * FROM projects 
WHERE marks >= 85;

SELECT 
	s.name, s.branch
FROM students as s
WHERE s.student_id IN(
	SELECT student_id FROM exam_scores
	WHERE score >= 90
) AND s.student_id IN (
	SELECT student_id FROM projects
	WHERE marks >= 85
);


SELECT * FROM students;


SELECT 
s.name AS student_name,
s.branch AS student_branch,
total_stats.total_score,
total_stats.number_of_attempts
FROM (
SELECT student_id,
SUM(score) AS total_score,
COUNT(*) AS number_of_attempts
FROM exam_scores
GROUP BY student_id
) AS total_stats 
INNER JOIN students AS s 
ON s.student_id = total_stats.student_id;


SELECT 
s.name AS student_name,
s.branch AS student_branch,
total_stats.total_score,
total_stats.number_of_attempts
FROM (
SELECT student_id,
SUM(score) AS total_score,
COUNT(*) AS number_of_attempts
FROM exam_scores
GROUP BY student_id
) AS total_stats 
INNER JOIN students AS s 
ON s.student_id = total_stats.student_id
ORDER BY total_stats.total_score DESC;

SELECT 
s.name AS student_name,
s.student_id,
p.title AS project_name,
s.branch AS student_branch,
p.marks AS project_marks
FROM projects AS p
INNER JOIN students 
AS s ON p.student_id = s.student_id;