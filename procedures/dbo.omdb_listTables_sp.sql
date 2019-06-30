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
 * Version 0.75 - the rabbit holes are always the most fun
 * Version 0.76 - although, I'm ready for this to be over soon, tbh
 * Version 0.77 - water. give me water! and caffeine...  
 * Version 0.78 - things are looking up a little bit...
 * Version 0.79 - yes, this is more-or-less working now.
 * Version 0.80 - testing some SQLCMD parameter changes
 * Version 0.81 - making this fail deliberately once on SQL syntax to test SQLCMD -b parameter
 * Version 0.82 - fiddling with error handler (v 0.81 build succeeded - oops!)
 * Version 0.83 - still trying to get adequate error checking. using teamcity service messages this time
 * Version 0.84 - I'm glad I have an excuse to stay up late with Andrew leaving the house so early...
 *
 ******************************************************************************************************************/

AS

    IF @type = 'list' SET @type = 'detail' @fail = 'here';
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

