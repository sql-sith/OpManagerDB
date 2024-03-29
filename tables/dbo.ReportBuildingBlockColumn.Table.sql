USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ReportBuildingBlockColumn]    Script Date: 6/29/2019 5:50:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportBuildingBlockColumn](
	[RBBCID] [bigint] NOT NULL,
	[RBBNAME] [nvarchar](250) NOT NULL,
	[COLUMNNAME] [nvarchar](50) NOT NULL,
	[TABLENAME] [nvarchar](50) NULL,
	[COLORCOLUMN] [nvarchar](50) NULL,
	[HANDLER] [nvarchar](250) NULL,
 CONSTRAINT [ReportBuildingBlockColumn_PK] PRIMARY KEY CLUSTERED 
(
	[RBBCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IDX__1232566647]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1232566647] ON [dbo].[ReportBuildingBlockColumn]
(
	[RBBNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportBuildingBlockColumn]  WITH CHECK ADD  CONSTRAINT [ReportBuildingBlockColumn_FK] FOREIGN KEY([RBBNAME])
REFERENCES [dbo].[ReportBuildingBlock] ([RBBNAME])
GO
ALTER TABLE [dbo].[ReportBuildingBlockColumn] CHECK CONSTRAINT [ReportBuildingBlockColumn_FK]
GO
