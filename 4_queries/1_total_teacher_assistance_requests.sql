SELECT teachers.name, COUNT(assistance_requests.*) AS total_assistance_requests
  FROM teachers
  JOIN assistance_requests ON teachers.id = teacher_id
  WHERE teachers.name = 'Waylon Boehm'
  GROUP BY teachers.name;