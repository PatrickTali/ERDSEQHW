INSERT INTO customer(
address,
phone_number,
email
)VALUES(
'7911 Brown St. Memphis, TN 38128',
'(901)345-6789',
'greatmovies@gmail.com'
);

SELECT *
FROM customer;

INSERT INTO tickets(
ticket_id,
customer_id,
film_id,
product_id)
VALUES(
'2',
'1',
'3',
'4');

INSERT INTO movies(
film_id,
rating_id,
review,
ticket_id)
VALUES(
'3',
'good',
'great',
'2');

INSERT INTO concessions(
product_id,
price,
quantity,
rating_id,
ticket_id)
VALUES(
'4',
'15.87',
'2',
'good',
'2');