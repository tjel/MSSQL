CREATE TABLE Example
    (
    SomeField INTEGER,
    DateCreated DATETIME NOT NULL DEFAULT(GETDATE())
    );

/* more explicitly */    
CREATE TABLE [dbo].[Test]
    (
    [TimeStamp] [DATETIME] NOT NULL CONSTRAINT [DF_Test_TimeStamp] DEFAULT (GetDate()),
    [Foo] [VARCHAR](50) NOT NULL
    ) 
ON [PRIMARY];    

/* controlled timestamp during insertion */
INSERT INTO [dbo].[Test2] 
    (
    col1,
    CreatedOn
    )
VALUES
    (
    value1,
    GETDATE()
    );

/* adding constraint after creating table */
ALTER TABLE [dbo].[Test3] 
ADD CONSTRAINT 
    DF_TABLE_DATE DEFAULT GETDATE() 
FOR
    DATE_COLUMN;
