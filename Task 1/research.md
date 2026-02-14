# 1- Difference between DBMS and RDBMS
## DBMS (Database Management System)
    - Stores data in the form of files 
    - Data is usually stored either in a navigational form or a hierarchical form.
    - There is no relationship between tables containing data. 
    - Does not support distributed databases. 
    - In order to access the stored data, it has to provide some uniform method.
    - Used in small organizations . 
**Examples :** File systems, XML

## RDBMS (Relational Database Management System) 
    - stores data in the form of a table
    - Relationship is also established between tables of the database. 
    - Defines integrity constraint in the database.
    - It can support distributed database.
    - Designed to handle large amount of related data that can be handled by multiple users.
**Examples :** MySQL, Oracle, MS-Access

# 2-Difference between DDL and DML
## DDL (Data Definition Language)
    -Used to specify a database's structure
    -Include (CREATE, ALTER, DROP, RENAME, and TRUNCATE)
    -Statements only modify the database's schema (No direct effect on the data within the database)
    -Declarations are irreversible and difficult to undo.
**Examples :**
```sql
 CREATE TABLE University (
    University_id NUMBER , Name VARCHAR2(50)
 );
```
## DML(Data Manipulation Language)
    -Used to Insert, update, remove, and retrieve data from a database
    -Include (SELECT, INSERT, UPDATE, DELETE, and MERGE)
    -Statements have a direct impact on the database's data
    -Data can be recovered easily 
**Examples :**
```sql
SELECT Name
FROM University
WHERE  University_id >200;
```

# 3-In your own words, why is Normalization important for a large system like a university database?
Because it reduces data redundancy by decomposing unsatisfactory relations by breaking up their attributes into smaller relation ,
This improves data integrity, simplifies maintenance, and makes the database easier to update and scale.