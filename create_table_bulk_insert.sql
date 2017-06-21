USE testdb;
GO
 
IF OBJECT_ID('dbo.testdb') IS NOT NULL DROP TABLE [dbo].[testdb];
 
CREATE TABLE [dbo].[testdb](
    [TYP] [VARCHAR](9) NOT NULL,
    [MARKA] [VARCHAR](13),
    [CENA][VARCHAR](12),
    [RODZAJ][VARCHAR](16),
    [DATA][DATE],
    [OPIS][VARCHAR](30)
); 
-- ON [PRIMARY]
GO
 
BULK INSERT [dbo].[testdb]
    FROM 'D:\path\to\data\file.txt'
    WITH
        (
        FIELDTERMINATOR = '|'
 -- although here the row terminator is declared as \n, the BULK INSERT query 
 -- looks for \r\n (CRLF) in the above given data file     
        ,ROWTERMINATOR = '\n'
 -- ACP means ANSI code page
        ,CODEPAGE =  'ACP'
--	     ,FIRSTROW = 2
--      LASTROW = 484
        );
GO
