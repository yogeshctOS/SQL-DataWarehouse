Loading the Bronze Layer – GitHub Explanation
Overview

The bronze.load_bronze stored procedure is designed to populate the Bronze layer of a Data Warehouse from raw CSV files. It loads both CRM and ERP datasets into the corresponding Bronze tables. This procedure ensures a clean load by truncating tables before inserting new data.

How It Works
1. Error Handling

Uses TRY...CATCH to handle errors gracefully.

If any table fails to load, the procedure will not crash the entire process.

2. Logging with PRINT

Progress messages are printed to indicate which tables are being truncated and loaded.

Useful for monitoring in SQL Server Management Studio (SSMS).

3. Table Truncation

Clears existing data from the Bronze tables using TRUNCATE TABLE.

Ensures only the latest raw data is loaded.

4. Bulk Loading Data

Uses BULK INSERT to load CSV files efficiently into SQL Server tables.

Options used:

FIRSTROW = 2: Skips the CSV header row.

FIELDTERMINATOR = ',': Specifies that the CSV is comma-separated.

TABLOCK: Improves performance by locking the table during the insert.

Tables Loaded
CRM Tables

crm_cust_info – Customer information from CRM.

crm_prd_info – Product information from CRM.

crm_sales_details – Sales transactions from CRM.

ERP Tables

erp_cust_az12 – ERP customer data.

erp_loc_a101 – ERP location data.

erp_px_cat_g1v2 – ERP product category/pricing data.

Why It’s Useful

Automates loading raw data into the Bronze layer, the first layer of a modern data lake or data warehouse architecture.

Ensures clean, repeatable loads by truncating tables before inserting.

Provides easy monitoring through printed messages and error handling.

Usage
-- Execute the procedure to load all Bronze tables
EXEC bronze.load_bronze;


Note: CSV file paths are not hardcoded in this version. Ensure your SQL Server has access to the data files.
