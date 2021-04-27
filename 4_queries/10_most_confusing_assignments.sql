SELECT assignments.id, assignments.day, assignments.chapter, COUNT(assistance_requests.*) AS requests
  FROM assistance_requests
  JOIN assignments ON assignments.id = assignment_id
  GROUP BY assignments.id
  ORDER BY requests DESC;