USE Store

SELECT *
FROM Product
WHERE DATEDIFF(M, date_of_delivery, GETDATE()) <= 1

SELECT name, price
FROM Product
WHERE producer = 'Roshen' AND category = '������������ �������'

SELECT *
FROM Product
WHERE name LIKE '�%' AND category LIKE '%�%'

SELECT *
FROM Product
WHERE name LIKE '�%' AND name LIKE '%�'

SELECT *
FROM Product
WHERE price < 50 AND DATEDIFF(D, 2023-10-01, GETDATE()) <= DATEDIFF(D, 2023-10-01, date_of_delivery)

SELECT *
FROM Product
WHERE category = '�������������� �������' AND quantity > 100

DELETE
FROM Product
WHERE LEN(name) < 5