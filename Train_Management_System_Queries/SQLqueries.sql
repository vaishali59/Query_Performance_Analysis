/*where clause */
/* displaying seat details for all trains from <source> to <destination> on <date> */
select total seats, available seats from train_info where departure_date =”” and source="" and destination ="" ;

/*update statement */
/* Updating number of available seats */
UPDATE train_status 
SET available=10
WHERE train_id=1234 AND date="17-02-2020";

/*count of female passengers*/
SELECT count(passengerID) FROM passenger WHERE gender = 'F';

/*Group By */
/* Displaying Trains having more thn 2 route points */
SELECT train_name FROM train T 
JOIN 
route R ON r.train_id = t.tain_id 
WHERE COUNT(route_point)>2
GROUP BY
t.tain_id ;

/* Nested Queries */
/* Displaying Train Numbers going through a specific Route Point */
SELECT train_number FROM train_info
WHERE train_info.train_id IN (SELECT route.train_id
                          FROM route
                          WHERE route.route_point="");

/* Order By and Join */
/* Displaying name, ticket_id, price */
SELECT name, ticket_id, price FROM passenger p
JOIN ticket t
ON p.ticket_id = t.ticket_id
ORDER BY price DESC; 

/* Displaying name, route, train details for Female passengers */
SELECT name, route_point, train_name FROM passenger 
JOIN train t
ON t.tain_id = p.train_id
JOIN root r
ON t.train_id = r.train_id
WHERE gender="F";








