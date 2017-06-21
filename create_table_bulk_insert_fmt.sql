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
        FORMATFILE = 'D:\path\to\format\file.txt'
        );
GO
