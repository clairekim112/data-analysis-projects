--String Function
--Q1: NC, INC, LLC...
SELECT RIGHT(Base_name,3) AS Last3, COUNT(RIGHT(Base_name,3))
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
GROUP BY RIGHT(Base_name,3);

--Q2:
SELECT CHARINDEX(' ', Number_of_Trips),CHARINDEX(' ', Number_of_Vehicles)
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015;

--Date Function
--Q1: No because it orders by in alphabetical order. The second query orders by numerical order.
SELECT DATENAME(month, Pick_Up_Date)
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
ORDER BY DATENAME(month, Pick_Up_Date) ASC;

SELECT DATENAME(month, Pick_Up_Date)
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
ORDER BY MONTH(pick_up_date) DESC;

--Q2: 
SELECT DAY(pick_up_date) AS 'Pickup day', DATENAME(month, pick_up_date) AS 'Pickup month'
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015
ORDER BY DAY(Pick_Up_Date) ASC;

--Aggregate Functions
--Q1:
SELECT MAX(start_lng)
FROM RideShareDB.dbo.lyft;

--Q2:
SELECT MAX(start_lat)
FROM RideShareDB.dbo.lyft;

--Q3:
SELECT CONCAT(base_number, ':', base_name) AS Base
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015;

SELECT CONCAT_WS(':', base_number, base_name, number_of_trips) AS Base
FROM RideShareDB.dbo.other_FHV_services_jan_aug_2015;