USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[DashboardColumns]    Script Date: 6/29/2019 5:46:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DashboardColumns](
	[DASHBOARDID] [bigint] NOT NULL,
	[COLUMNID] [int] NOT NULL,
	[COLUMNWIDTH] [int] NOT NULL,
 CONSTRAINT [DashboardColumns_PK] PRIMARY KEY CLUSTERED 
(
	[DASHBOARDID] ASC,
	[COLUMNID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__695210602]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__695210602] ON [dbo].[DashboardColumns]
(
	[DASHBOARDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DashboardColumns]  WITH CHECK ADD  CONSTRAINT [DashboardColumns_FK1] FOREIGN KEY([DASHBOARDID])
REFERENCES [dbo].[Dashboard] ([DASHBOARDID])
GO
ALTER TABLE [dbo].[DashboardColumns] CHECK CONSTRAINT [DashboardColumns_FK1]
GO
