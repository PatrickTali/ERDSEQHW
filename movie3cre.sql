CREATE TABLE Customer (
  customer_id SERIAL PRIMARY KEY,
  address VARCHAR(50),
  phone_number VARCHAR(20),
  email VARCHAR(30)
);

CREATE TABLE Movies (
  film_id SERIAL PRIMARY KEY,
  rating_id VARCHAR(20),
  review VARCHAR(500),
  ticket_id INTEGER,
	FOREIGN KEY(ticket_id)
	REFERENCES Tickets(ticket_id)
  
);



CREATE TABLE Tickets (
  ticket_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  film_id INTEGER,
  product_id INTEGER,
    FOREIGN KEY (customer_id)
      REFERENCES Customer(customer_id)
);



CREATE TABLE Concessions (
  product_id SERIAL PRIMARY KEY,
  price NUMERIC(4,2),
  quantity INTEGER,
  rating_id VARCHAR(60),
  ticket_id INTEGER,
    FOREIGN KEY (ticket_id)
      REFERENCES Tickets(ticket_id)
);



