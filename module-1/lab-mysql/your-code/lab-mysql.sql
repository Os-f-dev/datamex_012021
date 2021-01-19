/*
USE lab_mysql

create table customers(
		ID int not null primary key AUTO_INCREMENT,
        Customer_ID CHAR(100) not null,
        FirstName CHAR(50) NOT NULL,
        LastName char(50) not null,
        Phone char(50) not null,
        Email char(100) not null, 
        Address char(100) not null,
        City char(50) not null,
        State char(50) not null,
        Zipcode char(20) not null,
        Country char(20) not null);*

***********************************************************
        
create table cars(
		ID int not null AUTO_INCREMENT primary key,
        VIN char(50) not null,
        Manufacturer char(50) not null,
        Model char(20) not null,
        Year char(20) not null,
        Color char(20) not null);*
        
***********************************************************        
        
create table salespersons(
		ID int not null primary key AUTO_INCREMENT,
        Staff_ID int not null,
        FirstName char(50) not null,
        LastName char(50) not null,
        Store char(50) not null);*

***********************************************************
        
create table invoices(
		ID int not null primary key AUTO_INCREMENT,
        Invoice_Number int not null,
        Date date not null,
        Car int not null, foreign key (Car) references cars(ID),
        Customer int not null, foreign key (Customer) references customers(ID),
        Sales_Person int not null, foreign key (Sales_Person) references salespersons(ID));*
        
************************************************************                
        
insert into cars (VIN, Manufacturer, Model, Year, Color) values ('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019','Blue');         
insert into cars (VIN, Manufacturer, Model, Year, Color) values ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red');       
insert into cars (VIN, Manufacturer, Model, Year, Color) values ('RKXVNNIHLVVZOUB4M0', 'Ford', 'Fusion', '2018', 'White');
insert into cars (VIN, Manufacturer, Model, Year, Color) values ('HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV04', '2018', 'Silver');
insert into cars (VIN, Manufacturer, Model, Year, Color) values ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray');
insert into cars (VIN, Manufacturer, Model, Year, Color) values ('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', '2019', 'Gray');*        

************************************************************

insert into customers (Customer_ID, FirstName, LastName, Phone, Email, Address, City, State, Country, Zipcode) values ('10001', 'Pablo', 'Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'); 
insert into customers (Customer_ID, FirstName, LastName, Phone, Email, Address, City, State, Country, Zipcode) values ('20001', 'Abraham', 'Lincoln','+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130');
insert into customers (Customer_ID, FirstName, LastName, Phone, Email, Address, City, State, Country, Zipcode) values ('30001', 'Napoleón', 'Bonaparte','+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');*

************************************************************

insert into salespersons (Staff_ID, FirstName, LastName, Store) values (0001, 'Petey', 'Cruiser', 'Madrid');
insert into salespersons (Staff_ID, FirstName, LastName, Store) values (0002, 'Anna', 'Sthesia', 'Barcelona');
insert into salespersons (Staff_ID, FirstName, LastName, Store) values (0003, 'Paul', 'Molive', 'Berlin');
insert into salespersons (Staff_ID, FirstName, LastName, Store) values (0004, 'Gail', 'Forcewind', 'Paris');
insert into salespersons (Staff_ID, FirstName, LastName, Store) values (0005, 'Paige', 'Turner', 'Mimia');
insert into salespersons (Staff_ID, FirstName, LastName, Store) values (0006, 'Bob', 'Frapples', 'Mexico City');
insert into salespersons (Staff_ID, FirstName, LastName, Store) values (0007, 'Walter', 'Melon', 'Amsterdam');
insert into salespersons (Staff_ID, FirstName, LastName, Store) values (0008, 'Shonda', 'Leer', 'São Paulo');*/

insert into invoices (Invoice_Number, Date, Car, Customer, Sales_Person) value (852399038,'2018-08-22',0,1,3);
insert into invoices (Invoice_Number, Date, Car, Customer, Sales_Person) value (731166526,'2018-12-31',3,0,5);
insert into invoices (Invoice_Number, Date, Car, Customer, Sales_Person) value (271135104,'2019-01-22',2,2,7);


