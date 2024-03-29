USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ConfigTasks]    Script Date: 6/29/2019 5:46:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigTasks](
	[USERNAME] [varchar](50) NULL,
	[TASKNAME] [varchar](50) NULL,
	[PROTOCOL] [varchar](10) NULL,
	[VERSION] [varchar](10) NULL,
	[SUBTASKS] [varchar](200) NULL,
	[ROLLBACKNEEDED] [varchar](5) NULL,
	[ROLLBACKTYPE] [int] NULL,
	[ROLLBACKDOCUMENT] [varchar](50) NULL,
	[MIBSTOBELOADED] [varchar](100) NULL,
	[DESCRIPTION] [text] NULL,
	[ISTEMPLATE] [varchar](5) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
