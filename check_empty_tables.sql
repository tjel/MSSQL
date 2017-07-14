/******************************************/
EXEC sp_MSforeachtable 'IF NOT EXISTS (SELECT 1 FROM ?) PRINT ''?'' ';
GO

/******************************************/
WITH TableRows AS
(
    SELECT 
        SUM(row_count) AS [RowCount], 
        OBJECT_NAME(OBJECT_ID) AS TableName
    FROM 
        sys.dm_db_partition_stats
    WHERE 
        index_id = 0 OR index_id = 1
    GROUP BY 
        OBJECT_ID
)
SELECT *
FROM 
    TableRows
WHERE
    [RowCount] = 0;

/******************************************/
SELECT
   a.rows AS ROW_COUNT,
   b.name AS TABLE_NAME 
FROM 
    sys.partitions a
JOIN 
    sys.tables b
ON 
    a.object_id=b.object_id
WHERE 
    a.rows = 0;
