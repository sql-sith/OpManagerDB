USE [OpManagerDB]
GO
/****** Object:  UserDefinedFunction [dbo].[INET_ATON]    Script Date: 6/29/2019 5:45:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[INET_ATON] (@IP AS VARCHAR(15)) RETURNS BIGINT AS BEGIN RETURN (CONVERT(BIGINT, PARSENAME(@IP,1)) + CONVERT(BIGINT, PARSENAME(@IP,2)) * 256 + CONVERT(BIGINT, PARSENAME(@IP,3)) * 65536 + CONVERT(BIGINT, PARSENAME(@IP,4)) * 16777216) END
GO
