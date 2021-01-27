USE lab_mysql;

-- Encontrar el registro
SELECT * FROM cars WHERE vin LIKE "DAM41UDN3CHU2WVF6";
-- Eliminar el registro 
DELETE FROM cars WHERE vin LIKE "DAM41UDN3CHU2WVF6" AND id = 6;