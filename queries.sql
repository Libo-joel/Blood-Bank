-- Get all donors who donated in the last 6 months
SELECT name, blood_group, last_donation
FROM Donors
WHERE last_donation >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH);

-- Find hospitals that requested A+ blood group
SELECT hospital_name
FROM Hospitals
JOIN Requests ON Hospitals.hospital_id = Requests.hospital_id
WHERE blood_group_required = 'A+';

-- Count of requests per blood group
SELECT blood_group_required, COUNT(*) as total_requests
FROM Requests
GROUP BY blood_group_required;
