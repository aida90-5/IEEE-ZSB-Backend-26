#Task_1
SELECT product_id
FROM Products
WHERE low_fats ='Y' AND recyclable = 'Y';

#Task_2
SELECT product_id
FROM Products
WHERE low_fats ='Y' AND recyclable = 'Y';

#Task_3
SELECT name 
FROM Customer 
WHERE referee_id IS NULL OR referee_id != 2;