USE OpManagerDB;
GO

CREATE OR ALTER PROCEDURE dbo.omdb_listTables_sp
    @type varchar(10) -- list/detail or summary/count
/******************************************************************************************************************
 * 
 * Version 0.70 - previous run was initial success with TeamCity
 * Version 0.71 - trying to get the changed files list in a real PS parameter
 * Version 0.72 - previous attempt had error in PS deployment script
 * Version 0.73 - help from https://samirvaidya.blogspot.com/2015/11/passing-parameters-to-powershell-build.html
 * Version 0.74 - if at first you don't succeed ... debug by dumping all the variables
 *
 ******************************************************************************************************************/

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

