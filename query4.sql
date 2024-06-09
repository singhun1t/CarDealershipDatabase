USE car_dealership;

SELECT d.name, d.address
FROM vehicles v
INNER JOIN inventory i ON v.VIN = i.VIN
INNER JOIN dealerships d ON d.dealership_id = i.dealership_id
WHERE v.VIN = 1764;