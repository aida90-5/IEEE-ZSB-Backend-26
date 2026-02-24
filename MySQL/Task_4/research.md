# UNION vs UNION ALL
## UNION
  - Removes duplicate rows, returning only unique records.
  - Slower due to the need to eliminate duplicates.

## UNION ALL
  - Includes all rows, even duplicates, from both result sets.
  - Faster, as it doesn’t check for duplicates and simply combines the rows.

# Subquery vs JOIN
## Subquery
 - Can be slower than JOINs, especially if it returns many rows.
 - Nested subqueries are harder to read and maintain.

## Join
 - Usually faster because the database can optimize it better.
 - Easier to read, understand, debug, and maintain.
 - Commonly used for better performance and scalability.
 