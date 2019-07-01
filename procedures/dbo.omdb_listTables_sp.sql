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
 * Version 0.82 - fiddling with error handler (v0.81 build succeeded - oops!)
 * Version 0.83 - still trying to get adequate error checking. using teamcity service messages this time
 * Version 0.84 - I'm glad I have an excuse to stay up late with Andrew leaving the house so early...
 * Version 0.85 - tweak tweak grumble yawn tweak
 * Version 0.86 - now it's become the principle of the thing. can I get it debugged by v0.99?
 * Version 0.85 - forgot to, you know, actually send the error to TeamCity
 * Version 0.86 - last one for the night; I'm tired enough for now...
 * Version 0.87 - maybe it will help if I actually _throw_ the caught error...
 * Version 0.88 - well lookie there ... the escape period is a vertical bar ... kind of gives me flashbacks
 * Version 0.89 - why is it so hard to make this fail??!?
 * Version 0.90 - my v1.00 goal looks iffy. going back to the first way i tried service messages
 * Version 0.91 - totally mystified
 * Version 0.92 - wait - I think that pwsh can't catch native .EXE errors automatically. let me try this again...
 * Version 0.93 - ooh, that was close. it can run, but can it hide forever?
 * Version 0.94 - getting down to the wire here. now I'm just tweaking powershell code.
 * Version 0.95 - after this one, it's off to Granite City! :)
 * Version 0.96 - back from Granite City. frustrated with the lawn guy. only three version ticks left.
 * Version 0.97 - now, without the compile error...
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

