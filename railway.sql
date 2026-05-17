CREATE DATABASE IF NOT EXISTS railway_management;
USE railway_management;

CREATE TABLE Trains (
    train_id INT PRIMARY KEY,
    train_name VARCHAR(100),
    source_station VARCHAR(100),
    destination_station VARCHAR(100),
    departure_time DATETIME,
    arrival_time DATETIME,
    total_seats INT,
    available_seats INT
);

CREATE TABLE Passengers (
    passenger_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

INSERT INTO Trains VALUES
(1, 'Express-101', 'New York', 'Washington', '2024-12-20 10:00:00', '2024-12-20 12:00:00', 100, 100);

INSERT INTO Passengers VALUES
(1, 'Alice', 28, 'Female', 'alice@example.com', '1234567890');
