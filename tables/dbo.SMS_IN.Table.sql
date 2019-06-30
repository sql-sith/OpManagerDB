USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[SMS_IN]    Script Date: 6/29/2019 5:51:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMS_IN](
	[ORIGINATOR] [char](32) NULL,
	[MESSAGE_DATE] [bigint] NULL,
	[TEXT] [char](255) NULL
) ON [PRIMARY]
GO
