USE Store

SELECT *
FROM Product
WHERE DATEDIFF(M, date_of_delivery, GETDATE()) <= 1

SELECT name, price
FROM Product
WHERE producer = 'Roshen' AND category = 'Кондитерские изделия'

SELECT *
FROM Product
WHERE name LIKE 'К%' AND category LIKE '%А%'

SELECT *
FROM Product
WHERE name LIKE 'В%' AND name LIKE '%Л'

SELECT *
FROM Product
WHERE price < 50 AND DATEDIFF(D, 2023-10-01, GETDATE()) <= DATEDIFF(D, 2023-10-01, date_of_delivery)

SELECT *
FROM Product
WHERE category = 'Безалкогольные напитки' AND quantity > 100

DELETE
FROM Product
WHERE LEN(name) < 5