/*
===========================================================
Create a Database and Schemas
==========================================================
Script Purpose:
    This script  creates  a new datebase  named 'DataWareHouse' after checking if it already exists.
    If database exits ,it is dropped and recreated. The Script also sets up 3 schemas within the database.
    Schemas:
    bronze
    silver
    gold

WARNING:
    Running the script will drop the whole database if it exists.
    All data all data in the data base will be permanently deleted.
    Proceed with Caution and ensure youo have back up before runniung the script

*/

USE master
GO

--Drop and recreate the 'DataWareHouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWareHouse')
    BEGIN
        ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
        DROP DATABASE DataWareHouse
    END
GO


--Create a DataBase 
CREATE DATABASE DataWareHouse
GO

--Use the New DataBase
USE DataWareHouse
GO

--Create Schema

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
