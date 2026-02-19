# WHERE vs HAVING
## WHERE
- Filters rows before aggregation
- Can be used with SELECT, UPDATE, DELETE.
### Example
```sql 
SELECT Name, Age 
FROM Student 
WHERE Age >=18;
```

## HAVING 
- Filters after grouping/aggregation.
- Only used with SELECT.
```sql 
SELECT Name, Age
FROM Student
GROUP BY Name, Age
HAVING Age >= 18;
```
## DELETE vs TRUNCATE vs DROP
### DELETE
   - Deletes specific rows based on a condition
   - Can be Rollback
   - DML(Data Manipulation Language)

### TRUNCATE
   - Deletes all rows but retains table structure
   - Cannot be Rollback
   - DDL (Data Defination Language)

### DROP
   - Deletes the entire table or database
   - Cannot be Rollback
   - DDL (Data Defination Language)

## Order of Execution
### SQL Query
 - SELECT 
 - FROM 
 - WHERE ...
 - GROUP BY ...
 - HAVING ...
 - ORDER BY ...

### Execution
- FROM
- WHERE
- GROUP BY
- HAVING
- SELECT
- ORDER BY

## COUNT(*) vs COUNT(Column_Name)
### COUNT(*)
 counts all rows in a table, including those with NULL values

## COUNT(column_Name)
count Only rows with non-NULL values in that column

## CHAR vs VARCHAR
### CHAR
 -  Used to store character strings of fixed length
 - Storage size of CHAR datatypes is equal to n bytes 
 - CHAR(10) → always 10 bytes, pads with spaces. (Fixed)
 - 'Cat ' (padded)

### VARCHAR 
- Used to store character strings of variable length
- The storage size of the VARCHAR datatype is equal to the actual length of the entered string in bytes
- VARCHAR(10) → only uses what’s needed, up to 10 bytes.(Variable)
- 'Cat' (no padding)
