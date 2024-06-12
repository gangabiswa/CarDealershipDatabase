SELECT v.*
FROM vehicles v
JOIN inventory i ON v.VIN = i.vin
WHERE i.dealership_id = dealership_id;