ALTER TABLE dbo.TableName
ADD ColumnName bit NOT NULL CONSTRAINT DF_Some_Fixed_Name DEFAULT(0) 
    
ALTER TABLE dbo.TableName
DROP CONSTRAINT DF_Some_Fixed_Name, COLUMN ColumnName    
