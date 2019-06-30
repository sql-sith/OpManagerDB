USE OpManagerDB;
GO

CREATE OR REPLACE PROCEDURE dbo.omdb_listTables_sp
    @type varchar(10) -- list/detail or summary/count
/************************************************************************
 * 
 * Version 0.56
 *
 */

AS

    IF @type = 'list' SET @type = 'detail';
    IF @type = 'count' SET @type = 'summary';

    IF @type NOT IN ('detail', 'summary');

    IF @type = 'detail'
        SELECT ROW_NUMBER() AS row_number, t.object_id, t.name
        FROM sys.tables AS t
        ORDER BY t.name;
    ELSE
        SELECT COUNT(*) AS table_count
        FROM sys.tables AS t;

