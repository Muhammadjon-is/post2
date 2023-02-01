1 -- select all staff order by first_name, =>  SELECT *
FROM
    staff
ORDER BY
    first_name;

2 -- select all payment order by amount desc
SELECT
    *
FROM
    payment
ORDER BY
    amount DESC;

3 -- select all addresses order by postal_code asc
SELECT
    *
FROM
    addresses
ORDER BY
    postal_code;

-- 4 Select all customers ad join their addresses. 
SELECT
    *
FROM
    customers
    JOIN addresses ON customers.address_id = addresses.address_id;

-- 5 Select all stores and join their addresses.
SELECT
    *
FROM
    stores
    JOIN addresses ON stores.address_id = addresses.address_id;

-- 6 Select all stores and join staff using manager_staff_id
SELECT
    *
FROM
    stores
    JOIN staff ON stores.manager_staff_id = staff.staff_id;

-- 7 Select all addresses join cities
SELECT
    *
FROM
    addresses
    JOIN cities ON addresses.city_id = cities.city_id;

-- 8 find total payment by date
SELECT
    payment_date,
    SUM(sum) as total_payment
FROM
    payment
GROUP BY
    payment_date;

-- 9 find average payment
SELECT
    AVG(sum) as average_payment
FROM
    payment;

--10 sum all payments
SELECT
    SUM(sum) as total_payment
FROM
    payment;