SELECT AVG(assistance_requests.started_at - assistance_requests.created_at) AS average_assistance_request_duration
  FROM assistance_requests;