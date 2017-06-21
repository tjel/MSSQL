USE testdb;
GO

-- go to single user mode, otherwise server will deny attempting to change 
-- the default collation of selected database
ALTER DATABASE testdb SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

-- change collation from (initially chosen) Latin1_General_CI_AS 
-- to Polish_CI_AS
ALTER DATABASE testdb
COLLATE Polish_CI_AS;
GO

-- switch off single user mode and go to the default multi user mode
ALTER DATABASE testdb SET MULTI_USER; 
GO 
