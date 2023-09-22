
/* Query 1 sum bytes */
SELECT album.title as "Album title ", 
sum(bytes) as "sum of bytes"
FROM album
JOIN track
ON album.albumid=track.albumid 
GROUP BY album.title
ORDER BY  "sum of bytes" desc
LIMIT 10;

/* Query 2 Quantity*/
SELECT customer.country,
sum(invoiceline.quantity) AS "The Quantity"
FROM invoiceline
JOIN customer
ON customer.customerid=invoiceline.invoiceid 
GROUP BY customer.country
ORDER BY "The Quantity" desc
LIMIT 20;


/* Query 3 milliseconds & album title*/
SELECT album.title,min(track.milliseconds) as "milliseconds"
FROM track
join album
on album.albumid=track.albumid
group by album.title
order by "milliseconds" 
limit 10;


/* Query 4 Composer name & album title*/
SELECT Distinct track.composer AS"Composer name",
count(album.title) AS"Number of Album with title"
FROM track
JOIN album
ON album.albumid=track.albumid 
GROUP BY  track.composer
order by "Number of Album with title" desc
LIMIT 10;

