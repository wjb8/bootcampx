SELECT students.name AS student, AVG(assignment_submissions.duration) AS avg_assignment_duration,
  AVG(assignments.duration) AS avg_estimated_duration
  FROM students
  JOIN assignment_submissions ON students.id = student_id
  JOIN assignments ON assignments.id = assignment_id
  WHERE students.end_date IS NULL
  GROUP BY student
  HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
  ORDER BY avg_assignment_duration;