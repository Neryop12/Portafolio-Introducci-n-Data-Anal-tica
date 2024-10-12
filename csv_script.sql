//Object films

select * from film f
inner join film_category fc on f.film_id = fc.film_id
inner join category c  on c.category_id = fc.category_id
inner join language l on l.language_id = f.language_id
inner join inventory i on i.film_id = f.film_id;

//renta_pagos_personal
select * 
from rental r
inner join payment p on p.rental_id = r.rental_id
inner join staff sr on sr.staff_id = r.staff_id
inner join staff sp on sp.staff_id = sr.staff_id;

//Customer_history
select * 
from customer c
inner join rental r on r.customer_id = c.customer_id
inner join store s on s.store_id = c.store_id;

//Film actor
select * 
from actor ac
inner join film_actor fa on fa.actor_id = ac.actor_id
inner join film f on f.film_id = f.film_id;
