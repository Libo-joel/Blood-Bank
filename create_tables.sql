CREATE TABLE Donors (
    donor_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    blood_group VARCHAR(5),
    last_donation DATE
);

CREATE TABLE Hospitals (
    hospital_id INT PRIMARY KEY,
    hospital_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE Requests (
    request_id INT PRIMARY KEY,
    hospital_id INT,
    blood_group_required VARCHAR(5),
    quantity INT,
    request_date DATE,
    FOREIGN KEY (hospital_id) REFERENCES Hospitals(hospital_id)
);
