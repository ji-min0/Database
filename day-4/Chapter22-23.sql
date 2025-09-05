CREATE DATABASE pet_hotel;
USE pet_hotel;


CREATE TABLE PetOwners(
	ownerID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(5) NOT NULL,
    contact INT NOT NULL
);

CREATE TABLE Pets(
	petID INT AUTO_INCREMENT PRIMARY KEY,
    ownerID INT,
    FOREIGN KEY (ownerID) REFERENCES PetOwners (ownerID),
    name VARCHAR(50) NOT NULL,
    species VARCHAR(50) NOT NULL,
    breed VARCHAR(50) NOT NULL
);

CREATE TABLE Rooms(
	roomID INT AUTO_INCREMENT PRIMARY KEY,
    roomNumber INT NOT NULL UNIQUE,
    roomType VARCHAR(50) NOT NULL,
    pricePerNight DECIMAL(10,2) NOT NULL
);

CREATE TABLE Reservations(
	reservationID INT AUTO_INCREMENT PRIMARY KEY,
    petID INT,
    FOREIGN KEY (petID) REFERENCES Pets (petID),
    roomID INT,
	FOREIGN KEY (roomID) REFERENCES Rooms (roomID),
    startDate DATE NOT NULL,
    endDate DATE NOT NULL
);

CREATE TABLE Services(
	serviceID INT AUTO_INCREMENT PRIMARY KEY,
    reservationID INT,
    FOREIGN KEY (reservationID) REFERENCES Reservations (reservationID),
	serviceName VARCHAR(100),
    servicePrice DECIMAL(10,2)
);