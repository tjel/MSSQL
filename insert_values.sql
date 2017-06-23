USE testdb;
GO

CREATE TABLE [dbo].[SCENARIO](
    [SCENARIO_NAME] [nvarchar](250) NOT NULL
)
-- ON PRIMARY
;
GO

INSERT INTO [dbo].[SCENARIO]
    ([SCENARIO_NAME])
VALUES
    ('Plan A'),
    ('Plan B'),
    ('Plan C'),
    ('No plan');
GO
