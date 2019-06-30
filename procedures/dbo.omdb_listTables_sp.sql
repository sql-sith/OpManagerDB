USE OpManagerDB;
GO

CREATE OR ALTER PROCEDURE dbo.omdb_listTables_sp
    @type varchar(10) -- list/detail or summary/count
/************************************************************************
 * 
 * Version 0.70 - previous run was initial success with TeamCity
 *
 */

AS

    IF @type = 'list' SET @type = 'detail';
    IF @type = 'count' SET @type = 'summary';

    IF @type NOT IN ('detail', 'summary')
	BEGIN
		RAISERROR('%s is an invalid value for @type. Please use list, detail, count, or summary.', 16, 1);
		RETURN -- precautionary
	END;

    IF @type = 'detail'
        SELECT 
            ROW_NUMBER() OVER(ORDER BY t.object_id) AS id_rank
            , ROW_NUMBER() OVER(ORDER BY t.name) AS name_rank
            , t.object_id
            , t.name
        FROM sys.tables AS t
        ORDER BY t.name;
    ELSE
        SELECT COUNT(*) AS table_count
        FROM sys.tables AS t;

