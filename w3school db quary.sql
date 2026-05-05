/* write a quary to display all customers in alphabitical oredr */
use w3schools;
select *from customers
order by customerName;

/* WAQ to display all products with price from highest to low */

select *from products
order by price desc;

/*WAQ to print top 5 costist products*/
select *from products 
order by price desc limit 5;

/* WAQ to print top costlist products except top most costlist product*/
select productName,price from products  
order by price desc limit 5 offset 1;

/* WAQ to print top 3 cheap products except topmost 2 cheap products*/
select productName,price from products order by price limit 3 offset 2;


/* WAQ to print cuntries with number of peoples from customers table ,
list only top 3 cuntries with heighst people*/
use w3schools;
select country,count(country) as no_of_people from customers group by country order by no_of_people desc limit 3;