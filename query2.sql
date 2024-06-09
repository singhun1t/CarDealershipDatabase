USE car_dealership;
SELECT v.Model, v.Make, v.VIN
FROM vehicles v
INNER JOIN inventory i ON v.VIN = i.VIN
INNER JOIN dealerships d ON d.dealership_id = i.dealership_id
WHERE d.name = 'Toyota West';