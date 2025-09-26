/*
================================================================================
Script Name   : create_datawarehouse_schemas.sql
Purpose       : 
    This script creates a new database called 'datawarehouse' and sets up three 
    schemas representing the typical layers of a data warehouse:
        1. bronze  - raw data layer
        2. silver  - cleaned and transformed data
        3. gold    - aggregated and curated data for reporting
================================================================================
*/

-- Switch to the master database
USE master;
GO

-- Create a new database called datawarehouse
CREATE DATABASE datawarehouse;
GO

-- Switch to the newly created database
USE datawarehouse;
GO

-- Create schemas for different layers of the data warehouse
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
