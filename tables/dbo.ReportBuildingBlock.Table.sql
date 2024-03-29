USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ReportBuildingBlock]    Script Date: 6/29/2019 5:50:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportBuildingBlock](
	[RBBNAME] [nvarchar](250) NOT NULL,
	[SQLSTRING] [ntext] NOT NULL,
	[RBBGID] [bigint] NOT NULL,
	[DISPLAYTYPE] [nvarchar](250) NOT NULL,
	[HANDLER] [nvarchar](250) NULL,
	[TITLE] [nvarchar](2000) NULL,
	[DESCRIPTION] [nvarchar](2000) NULL,
	[JASPERNAME] [nvarchar](250) NULL,
	[ORDERID] [bigint] NULL,
	[SQLTYPE] [int] NOT NULL,
 CONSTRAINT [ReportBuildingBlock_PK] PRIMARY KEY CLUSTERED 
(
	[RBBNAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IDX__1156571630]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1156571630] ON [dbo].[ReportBuildingBlock]
(
	[RBBGID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ReportBuildingBlock_UK0]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [ReportBuildingBlock_UK0] ON [dbo].[ReportBuildingBlock]
(
	[ORDERID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportBuildingBlock] ADD  DEFAULT ('BOTH') FOR [DISPLAYTYPE]
GO
ALTER TABLE [dbo].[ReportBuildingBlock] ADD  DEFAULT ('0') FOR [SQLTYPE]
GO
ALTER TABLE [dbo].[ReportBuildingBlock]  WITH CHECK ADD  CONSTRAINT [ReportBuildingBlock_FK1] FOREIGN KEY([RBBGID])
REFERENCES [dbo].[ReportBuildingBlockGroup] ([RBBGID])
GO
ALTER TABLE [dbo].[ReportBuildingBlock] CHECK CONSTRAINT [ReportBuildingBlock_FK1]
GO
