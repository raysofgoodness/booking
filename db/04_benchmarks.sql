EXPLAIN (ANALYZE, BUFFERS)
SELECT * FROM bookings 
WHERE slot_start = '2026-11-10 10:00:00+02' AND status = 'confirmed';

EXPLAIN (ANALYZE, BUFFERS)
SELECT * FROM bookings WHERE user_id = 1;

CREATE INDEX IF NOT EXISTS idx_bookings_user_id ON bookings(user_id);

EXPLAIN (ANALYZE, BUFFERS)
SELECT * FROM bookings WHERE user_id = 1;

EXPLAIN (ANALYZE, BUFFERS)
SELECT * FROM bookings 
WHERE slot_start = '2026-01-10 12:30:00+02' AND status = 'confirmed';