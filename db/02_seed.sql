INSERT INTO users (email, password_hash, name, role) 
VALUES 
  ('admin@booking.com', 'test_hash_admin', 'Олексій Майстер', 'admin'),
  ('client1@gmail.com', 'test_hash_1', 'Іван Клієнт', 'client');

INSERT INTO services (title, duration_min, price_cents, is_active)
VALUES 
  ('Стрижка', 30, 50000, TRUE),
  ('Стрижка бороди', 15, 30000, TRUE),
  ('Комплекс', 60, 100000, TRUE);

INSERT INTO bookings (user_id, service_id, slot_start, slot_end, status) 
VALUES 
  (2, 1, '2026-11-10 10:00:00+02', '2026-11-10 10:30:00+02', 'confirmed'),
  (2, 2, '2026-11-10 11:00:00+02', '2026-11-10 11:15:00+02', 'confirmed'),
  (2, 1, '2026-11-09 15:00:00+02', '2026-11-09 15:30:00+02', 'cancelled');