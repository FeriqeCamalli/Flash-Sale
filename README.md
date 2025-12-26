# Flash-Sale
Flash Sale SQL database task

# Flash Sale Database Design – Concurrency & Reporting

This project demonstrates how to handle high-concurrency flash sale scenarios
in a SQL Server database, where multiple users may attempt to purchase the same
limited-stock product at the same time.
The main challenges addressed are:
- Preventing overselling during concurrent purchases
- Providing real-time reporting without blocking active sales

## Why Snapshot Isolation Is Used (Reporting)

During a flash sale, the system must handle many INSERT and UPDATE operations
for orders and inventory. At the same time, the business requires real-time
analytics, such as top-selling products.
Using the default locking behavior, heavy SELECT queries can block write
operations, slowing down purchases.
To solve this, Snapshot Isolation is enabled and used for reporting queries.
Snapshot Isolation allows read operations to:
- Read a consistent snapshot of committed data
- Avoid placing locks on tables or rows
- Not block INSERT or UPDATE operations
This ensures that reporting queries can run in real time without affecting
the performance of active sales transactions.

## Why UPDLOCK and ROWLOCK Are Used

To prevent overselling, the inventory row must not be updated by multiple
transactions at the same time.
An alternative pessimistic locking approach is demonstrated using:
- UPDLOCK: Indicates intent to update the selected row
- ROWLOCK: Ensures locking is applied at the row level, not the entire table
With this approach:
- When one transaction reads an inventory row, it locks it for update
- Other concurrent transactions must wait until the first transaction completes
- This guarantees that stock quantity cannot be reduced incorrectly
This approach provides strong consistency guarantees but reduces throughput
under high concurrency.

## Design Summary
- Snapshot Isolation is used for reporting to avoid blocking write transactions
- UPDLOCK and ROWLOCK are used to demonstrate pessimistic locking for inventory updates
- These techniques ensure data consistency while balancing performance needs
  in a high-concurrency flash sale environment
  
