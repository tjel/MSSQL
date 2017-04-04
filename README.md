# MSSQL

### Restoring database from backup file
```SQL
RESTORE DATABASE AdventureWorks 
FROM DISK = 'C:\var\opt\mssql\data\AdventureWorks2014.bak'
WITH MOVE 'AdventureWorks2014_Data' 
TO 'C:\var\opt\mssql\data\AdventureWorks_Data.mdf',
MOVE 'AdventureWorks2014_Log' 
TO 'C:\var\opt\mssql\data\AdventureWorks_Log.ldf'
GO
```
