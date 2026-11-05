SELECT 
  u.name AS client_name,
  s.title AS service_title,
  s.price_cents,
  b.slot_start,
  b.status
FROM bookings AS b
INNER JOIN users AS u ON b.user_id = u.id
INNER JOIN services AS  s ON b.service_id = s.id
WHERE u.id = 2;

SELECT 
  s.id,
  s.title,
  s.price_cents,
  COUNT(b.id) AS total_bookings
FROM services AS s
LEFT JOIN bookings AS b ON s.id = b.service_id
GROUP BY s.id, s.title, s.price_cents
ORDER BY s.id;