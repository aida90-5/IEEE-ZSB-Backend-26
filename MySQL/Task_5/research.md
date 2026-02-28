# Window Functions vs GROUP BY
## GROUP BY
- One Row Per Group.
- All non-aggregated columns must appear
- Individual row details are lost
## Window Functions
- Output is at the same row-level as the original table.
- You can calculate aggregates without collapsing rows.

# Clustered vs Non-Clustered Indexes
## Clustered Index
- Leaf nodes contain the actual data itself.
- The data is physically reordered to match the index.
## Non-Clustered Indexes
- Leaf nodes contain indexed columns and pointers to data.
- The logical order does not match the physical order of rows.
## Why are you only allowed to have exactly one clustered index per table?
- A clustered index determines the physical order of the table rows on disk.  
- The table can only be physically sorted one way, you are only allowed one clustered index per table.

# Filtered & Unique Indexes
## What is a "Filtered Index" and why is it useful? (Mention the impact on storage and query performance).
- Filtered & Unique index is a specialized type of non-clustered index in SQL Server that applies to a subset of rows in a table, defined by a filter predicate.
- This approach is particularly useful for optimizing queries that target specific subsets of data, improving performance, and reducing storage and maintenance costs.

## If you put a "Unique Index" on an Email column, how does it physically slow down INSERT statements while speeding up SELECT statements?

- SELECT queries are much faster because Unique index acts like a fast lookup table (B-Tree), so the database doesn’t have to scan the whole table.

- INSERT becomes slightly slower because The database must Check the unique index to ensure the new email doesn’t already exist & Update the index structure (B-Tree) after inserting the row.

# Choosing the Right Index
## You have a temporary "Staging Table" where you insert millions of rows very quickly, read them once, and then delete them. According to the "How to Choose" video, should you use a Clustered Index, a Non-Clustered Index,or a Heap Structure? Why?

- Heap Structure , Because : 
      
      - Insert-heavy workload
      - Read-once, delete-after-use
      - Heap structure advantage

# Database Transactions (ACID):
## Explain the "All or Nothing" concept (Atomicity). What disastrous scenario happens if a partial failure occurs without using a Transaction?
- Atomicity ensures that a transaction is all-or-nothing.
- If any operation within it fails, all changes are rolled back.
