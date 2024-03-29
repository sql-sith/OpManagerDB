USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[Reports]    Script Date: 6/29/2019 5:50:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reports](
	[CLASSNAME] [varchar](100) NOT NULL,
	[DAILY] [varchar](10) NULL,
	[WEEKLY] [varchar](10) NULL,
	[HOUR] [varchar](100) NULL,
	[MONTHDAYS] [varchar](50) NULL,
	[WEEKDAYS] [varchar](50) NULL,
	[TIMEVAL] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CLASSNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
