SELECT students.name, COUNT(assistance_requests.*) AS total_assistance_requests
  FROM students
  JOIN assistance_requests ON students.id = student_id
  WHERE students.name = 'Elliot Dickinson'
  GROUP BY students.name;