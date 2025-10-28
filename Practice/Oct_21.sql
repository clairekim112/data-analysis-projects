/*
Select forename
FROM formula_one.dbo.drivers
WHERE driverId =(
select distinct driverID
FROM formula_one.dbo.results
WHERE position = '1')

-- how many races
SELECT driverId, 
    (SELECT COUNT(*) 
    FROM formula_one.dbo.results AS r
    WHERE r.driverID = d.driverID)
FROM formula_one.dbo.drivers AS d
ORDER BY driverId ASC


SELECT 
    d.forename,
    d.surname
FROM formula_one.dbo.drivers AS d
WHERE d.driverId IN
    (SELECT r.driverId
    FROM formula_one.dbo.results AS r
    GROUP BY r.driverId
    HAVING COUNT(r.driverID)>50)

    */

SELECT * 
FROM formula_one.dbo.drivers