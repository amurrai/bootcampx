SELECT students.name as student, AVG(duration) as average_assignment_duration
FROM assignment_submissions 
JOIN students ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY AVG(duration) DESC;