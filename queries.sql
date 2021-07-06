-- Database Queries

-- Find all customers with postal code 1010
select * from customers wherwe postalcode = '1010';

-- Find the phone number for the supplier with the id 11
select * from suppliers where supplierid = '11';


-- List first 10 orders placed, sorted descending by the order date
select * from orders
limit 10
order by orderDate desc;

-- Find all customers that live in London, Madrid, or Brazil
SELECT * from customers
where country = 'Brazil' or 'madrid' or 'london';
-- Add a customer record for "The Shire", the contact name is "Bilbo Baggins" the address is -"1 Hobbit-Hole" in "Bag End", postal code "111" and the country is "Middle Earth"
insert into customers (customername, contactname, address, city, postalcode, country)
values ('bilbo baggins', 'frodo baggins', '1 hobbit hole', 'bag end', '111', 'middle earth');

-- Update Bilbo Baggins record so that the postal code changes to "11122"
update customers
set postalcode = '11122'
where customername = 'bilbo baggins'

-- (Stretch) Find a query to discover how many different cities are stored in the Customers table. Repeats should not be double counted
select count (distinct city) 
from customers;
-- (Stretch) Find all suppliers who have names longer than 20 characters. You can use `length(SupplierName)` to get the length of the name
select * from suppliers
where length(suppliername) > 20;
