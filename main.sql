SELECT * FROM students;
SELECT * FROM exam_scores;
SELECT * FROM projects;


SELECT AVG(score) AS class_avg_score 
FROM exam_scores;


SELECT 
s.name AS student_name,
s.branch AS student_branch,
e.score AS student_score,
e.subject AS student_subject
FROM exam_scores AS e
INNER JOIN students AS s 
ON s.student_id = e.student_id
WHERE e.score > (
SELECT AVG(score) AS class_average 
FROM exam_scores
);

SELECT 
s.name AS student_name,
s.branch AS student_branch,
e.score AS student_score,
e.subject AS student_subject
FROM exam_scores AS e
INNER JOIN students AS s 
ON s.student_id = e.student_id
WHERE e.score < (
SELECT AVG(score) AS class_average 
FROM exam_scores
);