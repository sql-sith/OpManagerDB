USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ConfigTaskDetails]    Script Date: 6/29/2019 5:46:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfigTaskDetails](
	[AKEY] [int] NULL,
	[USERNAME] [varchar](50) NULL,
	[TASKNAME] [varchar](50) NULL,
	[TYPE] [varchar](2) NULL,
	[PARENTKEY] [int] NULL
) ON [PRIMARY]
GO
