USE [OpManagerDB]
GO
/****** Object:  UserDefinedFunction [dbo].[INET_BINTOSTR]    Script Date: 6/29/2019 5:45:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[INET_BINTOSTR](@binaryIP varbinary(16))RETURNS nvarchar(39) AS BEGIN DECLARE @ipAsString nvarchar(39)  IF (len(@binaryIP) <= 4) BEGIN  SELECT @ipAsString = CAST(CAST(substring(@binaryIP, 1, 1) AS int) AS nvarchar(3)) + '.' + CAST(CAST(substring(@binaryIP, 2, 1) AS int) AS nvarchar(3)) + '.' + CAST(CAST(substring(@binaryIP, 3, 1) AS int) AS nvarchar(3)) + '.' + CAST(CAST(substring(@binaryIP, 4, 1) AS int) AS nvarchar(3))  END ELSE BEGIN DECLARE @i int DECLARE @length int DECLARE @hexstring char(16)  SELECT @ipAsString = '' SELECT @i = 1 SELECT @length = 16 SELECT @hexstring = '0123456789ABCDEF'  WHILE (@i <= @length) BEGIN DECLARE @tempint int DECLARE @firstint int DECLARE @secondint int  SELECT @tempint = convert(int, substring(@binaryIP,@i,1)) SELECT @firstint = floor(@tempint/16) SELECT @secondint = @tempint - (@firstint*16)  SELECT @ipAsString = @ipAsString + substring(@hexstring, @firstint+1, 1) + substring(@hexstring, @secondint+1, 1)  IF (@i % 2 = 0) SELECT @ipAsString = @ipAsString + ':'  SELECT @i = @i + 1 END END  RETURN @ipAsString END
GO
