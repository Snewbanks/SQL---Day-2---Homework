--1. How many actors are there with the last name ‘Wahlberg’? 
    select count(*)
    from actor 
    where last_name like 'Wahlberg'
    = 2

--2. How many payments were made between $3.99 and $5.99?
    select count(*) 
    from payment 
    where amount between 3.99 and 5.99
    = 5607

--3. What film does the store have the most of? 
    select count (inventory.film_id), film.title 
    from inventory,film 
    group by inventory.film_id , film.title
    = 8 (Too many titles to list)

--4. How many customers have the last name ‘William’? 
    select * 
    from customer 
    where last_name like 'William'
    = 0

--5. What store employee (get the id) sold the most rentals?




--6. How many different district names are there?
    select count (distinct district) 
    from address 
    = 378


--7. What film has the most actors in it?
    


--8. From store_id 1, how many customers have a last name ending with ‘es’? 
    select distinct store_id, count(store_id)
    from customer
    where last_name like '%es'
    group by customer.store_id limit 1
    = 13


--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250)
    select count(distinct amount)
    from payment p 
    where customer_id >= 380 and customer_id <= 430
    having count(rental_id) > 250
    = 11


--10. Within the film table, how many rating categories are there? And what rating has the most  movies total?
    select count (distinct rating) 
    from film 
    = 5

    select distinct rating , count(rating) 
    from film 
    group by rating order by count desc limit 1
    = PG-13	223
      