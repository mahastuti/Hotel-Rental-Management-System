INSERT INTO users (email, username, password, deposit_amount, latitude, longitude, phone) VALUES
('user1@gmail.com', 'user1', 'password1', 100.00, 40.712776, -74.005974, '62816722378'),
('user2@gmail.com', 'user2', 'password2', 200.00, 34.052235, -118.243683, '6282222222'),
('user3@gmail.com', 'user3', 'password3', 150.00, 51.507351, -0.127758, '628799093645'),
('user4@gmail.com', 'user4', 'password4', 250.00, 48.856613, 2.352222, '628344425360'),
('user5@gmail.com', 'user5', 'password5', 300.00, 39.904202, 116.407394, '628799231'),
('user6@gmail.com', 'user6', 'password6', 0.00, 55.755825, 37.617298, '62834100002');

INSERT INTO categories (category) VALUES
('one star'),
('two star'),
('three star'),
('four star'),
('five star');


INSERT INTO hotels (category_id, name, contact, address, latitude, longitude) VALUES
(1, 'The Grand Hotel', '034156782', '123 Main St, New York, NY', 56.712776, -99.005974),
(2, 'Budget Inn', '034156776', '456 Elm St, Los Angeles, CA', 44.052235, -148.243683),
(3, 'Affordable Stay', '03419890', '789 Oak St, London, UK', 21.507351, -9.127758),
(4, 'Chic Boutique', '034165754', '101 Maple St, Paris, France', 22.856613, 91.352222),
(5, 'The Comfort Suites', '03419990', '202 Pine St, Beijing, China', 31.904202, 132.407394);


INSERT INTO rooms (hotel_id, room_type, capacity) VALUES
(1, 'Suite', 8),
(1, 'Deluxe', 11),
(1, 'Standard', 5),
(2, 'Single', 1),
(2, 'Double', 12),
(2, 'Suite', 8),
(3, 'Single', 1),
(3, 'Double', 9),
(3, 'Triple', 12),
(4, 'Suite', 20),
(4, 'Standard', 0),
(4, 'Deluxe', 9),
(5, 'Suite', 1),
(5, 'Standard', 2),
(5, 'Deluxe', 3);


INSERT INTO booking_status (status, description) VALUES
('Confirmed', 'Booking confirmed and guaranteed'),
('Pending', 'Booking pending confirmation'),
('Cancelled', 'Booking cancelled by user'),
('No Show', 'User did not show up'),
('Completed', 'Booking completed successfully');


INSERT INTO bookings (user_id, room_id, booking_status_id, check_in_date, check_out_date) VALUES
(1, 1, 1, '2024-09-01 15:00:00', '2024-09-05 11:00:00'),
(2, 2, 2, '2024-09-10 15:00:00', '2024-09-12 11:00:00'),
(3, 3, 3, '2024-09-15 15:00:00', '2024-09-20 11:00:00'),
(4, 3, 1, '2024-09-20 15:00:00', '2024-09-25 11:00:00'),
(5, 5, 2, '2024-09-25 15:00:00', '2024-09-30 11:00:00'),
(6, 4, 1, '2024-10-01 15:00:00', '2024-10-05 11:00:00');


INSERT INTO payment_methods (payment_method) VALUES
('BNI'),
('Mandiri'),
('PayPal'),
('Jenius'),
('Cash'),
('GoPay');

INSERT INTO payment_status (status) VALUES
('Paid'),
('Pending'),
('Failed'),
('Refunded'),
('Cancelled');


insert into payments (booking_id, payment_method_id, payment_status_id, payment_date) values
(1, 1, 1, '2024-09-01 16:00:00'),
(2, 2, 2, '2024-09-10 16:00:00'),
(3, 3, 3, '2024-09-15 16:00:00'),
(4, 4, 4, '2024-09-20 16:00:00'),
(5, 5, 5, '2024-09-25 16:00:00'),
(6, 6, 1, '2024-10-01 16:00:00');
