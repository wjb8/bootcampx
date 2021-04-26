SELECT students.name AS student, AVG(assignment_submissions.duration) AS avg_assignment_duration
  FROM assignment_submissions
  JOIN students ON students.id = student_id
  WHERE students.end_date IS NULL
  GROUP BY students.name
  ORDER BY avg_assignment_duration DESC;
