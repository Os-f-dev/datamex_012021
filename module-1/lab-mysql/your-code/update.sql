USE lab_mysql;

UPDATE customers
SET email = "ppicasso@gmail.com"
WHERE name Like "Pablo Picasso" and id = 1;

UPDATE customers
SET email = "lincoln@us.gov"
WHERE name Like "Abraham Lincoln" and id = 2; 

UPDATE customers
SET email = "hello@napoleon.me"
WHERE name Like "Napoléon Bonaparte" and id = 3; 