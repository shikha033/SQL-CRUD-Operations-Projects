USE railway_management;

-- All trains
SELECT * FROM Trains;

-- Join example
SELECT r.reservation_id, p.name, t.train_name
FROM Reservations r
JOIN Passengers p ON r.passenger_id = p.passenger_id
JOIN Trains t ON r.train_id = t.train_id;

-- Available seats check
SELECT train_name, available_seats
FROM Trains
WHERE available_seats > 0;
