BEGIN;

INSERT INTO bookings (user_id, service_id, slot_start, slot_end, status)
VALUES (2, 2, '2026-11-12 10:00:00', '2026-11-12 10:15:00', 'confirmed');

COMMIT;

BEGIN;

UPDATE bookings 
SET status = 'cancelled' 
WHERE id = 60017 AND status = 'confirmed';

COMMIT;


BEGIN;

INSERT INTO bookings (user_id, service_id, slot_start, slot_end, status)
VALUES (2, 2, '2026-11-12 11:00:00', '2026-11-12 11:15:00', 'pending');

ROLLBACK;