use sakila;

-- 1. Drop column picture from staff

select * from staff;

alter table staff
drop picture;

/* 2. A new person is hired to help Jon. 
Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly. */

select * from staff;

select * from customer where last_name = "SANDERS";

insert into staff(first_name, last_name, address_id, email, store_id, active, username, last_update)
values("Tammy", "Sanders", 79, "TAMMY.SANDERS@sakilacustomer.org", 2, 1, "Tammy", current_date());

# update staff set email = "Tammy.Sanders@sakilastaff.org" where staff_id = 3;

/* Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1.
 You can use current date for the rental_date column in the rental table.
 Hint: Check the columns in the table rental and see what information you would need to add there.
 You can query those pieces of information. For eg., you would notice that you need customer_id information as well.
 To get that you can use the following query: */
 
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select * from rental where inventory_id in(2, 3, 4);
select * from inventory where film_id = 1;
select * from film where title = "ACADEMY DINOSAUR";
select * from staff;
select * from inventory where film_id = 1 and store_id = 2;

select * from rental order by rental_id desc;

insert into rental(rental_date, inventory_id, customer_id, staff_id, last_update)
values(current_date(), 2, 130, 1, current_date());
