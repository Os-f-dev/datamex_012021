USE lab_mysql;


INSERT INTO cars (vin, manufacturer, model, year, color) VALUES("3K096I98581DHSNUP", "Volkswagen" ,"Tiguan",2019,"Blue");
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES("ZM8G7BEUQZ97IH46V", "Peugeot" ,"Rifter",2019,"Red");
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES("RKXVNNIHLVVZOUB4M", "Ford" ,"Fusion",2018,"White");
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES("HKNDGS7CU31E9Z7JW", "Toyota" ,"RAV4",2018,"Silver");
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES("DAM41UDN3CHU2WVF6", "Volvo" ,"V60",2019,"Gray");
INSERT INTO cars (vin, manufacturer, model, year, color) VALUES("DAM41UDN3CHU2WVF6", "Volvo" ,"V60 Cross Country",2019,"Gray");

INSERT INTO customers (customer_id, name, phone,email, address, city, state, country, postal ) VALUES(10001, "Pablo Picasso" ,"+34 636 17 63 82","-","Paseo de la Chopera","Madrid","Madrid","Spain",28045);
INSERT INTO customers (customer_id, name, phone,email, address, city, state, country, postal ) VALUES(20001, "Abraham Lincoln" ,"+1 305 907 7086","-","120 SW 8th St","Miami","Florida","United States",33130);
INSERT INTO customers (customer_id, name, phone,email, address, city, state, country, postal ) VALUES(30001, "Napoléon Bonaparte" ,"+33 1 79 75 40 00","-","40 Rue du Colisée","Paris","Île-de-France","France",75008);

INSERT INTO store (store_name, country, state, address ) VALUES("Madrid Cars" , "Spain" ,"Madrid", "Paseo de la Castellana");
INSERT INTO store (store_name, country, state, address ) VALUES("Barcelona Cars" , "Spain" ,"Barcelona", "Paseo de Gracia");
INSERT INTO store (store_name, country, state, address ) VALUES("Berlin Cars" , "Alemania" ,"Berlin", "Unter den Linden");
INSERT INTO store (store_name, country, state, address ) VALUES("Paris Cars" , "Francia" ,"Paris", "Avenida de los Campos Elíseos");
INSERT INTO store (store_name, country, state, address ) VALUES("Miami beach Cars" , "EEUU" ,"Miami", "Gran Avenida de Miami playa");
INSERT INTO store (store_name, country, state, address ) VALUES("Mexico City Cars" , "Mexico City" ,"Mexico City", "Avenida 16 de Septiembre ");
INSERT INTO store (store_name, country, state, address ) VALUES("Amsterdam Cars" , "Paises Bajos" ,"Amsterdam", "Avenida Damrak");
INSERT INTO store (store_name, country, state, address ) VALUES("Brazil Cars" , "Brazil" ,"São Paulo", "Avenida Paulista");


INSERT INTO salespersons (staff_id, name, store_id ) VALUES(00001, "Petey Cruiser" , 1);
INSERT INTO salespersons (staff_id, name, store_id ) VALUES(00001, "Anna Sthesia" , 2);
INSERT INTO salespersons (staff_id, name, store_id ) VALUES(00001, "Paul Molive" ,3);
INSERT INTO salespersons (staff_id, name, store_id ) VALUES(00001, "Gail Forcewind" ,4);
INSERT INTO salespersons (staff_id, name, store_id ) VALUES(00001, "Paige Turner " ,5);
INSERT INTO salespersons (staff_id, name, store_id ) VALUES(00001, "Bob Frapples" ,6);
INSERT INTO salespersons (staff_id, name, store_id ) VALUES(00001, "Walter Melon" ,7);
INSERT INTO salespersons (staff_id, name, store_id ) VALUES(00001, "Shonda Leer" ,8);

INSERT INTO invoices (invoice_number, date, car, customer, sales_person ) VALUES(852399038, '2018-08-22-' , 1, 2, 4);
INSERT INTO invoices (invoice_number, date, car, customer, sales_person ) VALUES(731166526, '2018-12-31'  , 4, 1, 6);
INSERT INTO invoices (invoice_number, date, car, customer, sales_person ) VALUES(271135104, '2019-01-22' , 3, 3, 8);
