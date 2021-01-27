/*create database Cars;*/
/*use Cars;*/

create table Cars(
ID int(100) not null ,
VIN varchar(45),
Manufacturer varchar(45),
Model varchar(45),
Year int(4),
Color varchar(45),
PRIMARY KEY (VIN)
);

create table Customers(
ID int(100) not null ,
Customer_ID int(100),
Name_Cust varchar(45),
Phone varchar(45),
Email varchar(45),
Address varchar(45),
City varchar(45),
State_Province varchar(45),
Country varchar(45),
Postal varchar(45),
PRIMARY KEY (Customer_ID)
);

create table Salespersons(
ID int(100) not null ,
Staff_ID int (30),
Name_Sal varchar(45),
Store varchar(45),
PRIMARY KEY (Staff_ID)
);

create table Invoices(
ID int(100) not null ,
Invoice_Number int (30),
Date_Inv date,
Car int (50),
Customer int (50),
Sales_Person int (50),
PRIMARY KEY (Invoice_Number)
);