USE lab_mysql;

CREATE TABLE cars(
    id int NOT NULL AUTO_INCREMENT,
    vin varchar(255) NOT NULL,
    manufacturer varchar(255),
    model varchar(255),
    year int,
    color varchar(255),
    PRIMARY KEY (id)
   
);

CREATE TABLE customers (
    id int NOT NULL AUTO_INCREMENT,
    customer_id int NOT NULL,
    name varchar(255) NOT NULL,
    phone varchar(255),
    email varchar(255),
    address varchar(255),
    city varchar(255),
    state varchar(255),
    country varchar(255),
    postal int,
    PRIMARY KEY (id)
    
); 


-- Completando el esquema
CREATE TABLE store  (
    id int NOT NULL AUTO_INCREMENT,
    store_name varchar(255) NOT NULL,
    country varchar(255) NOT NULL,
    state varchar(255) NOT NULL,
    address varchar(255) NOT NULL,
    PRIMARY KEY (id)

); 
CREATE TABLE salespersons  (
    id int NOT NULL AUTO_INCREMENT,
    staff_id varchar(255) NOT NULL,
    name varchar(255) NOT NULL,
    store_id int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (store_id) REFERENCES store(id)
);

CREATE TABLE invoices  (
    id int NOT NULL AUTO_INCREMENT,
    invoice_number int NOT NULL,
    date Date NOT NULL,
    car int NOT NULL,
    customer int NOT NULL,
    sales_person int NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (car) REFERENCES cars(id),
    FOREIGN KEY (customer) REFERENCES customers(id),
    FOREIGN KEY (sales_person) REFERENCES salespersons(id)
); 
