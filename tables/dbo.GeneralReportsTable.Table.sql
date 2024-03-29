USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[GeneralReportsTable]    Script Date: 6/29/2019 5:47:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneralReportsTable](
	[ReportDisplayID] [varchar](50) NOT NULL,
	[ReportName] [varchar](50) NOT NULL,
	[Category] [varchar](50) NOT NULL,
	[ListID] [varchar](50) NOT NULL,
 CONSTRAINT [GenRep_PK1] PRIMARY KEY CLUSTERED 
(
	[ReportDisplayID] ASC,
	[ListID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
