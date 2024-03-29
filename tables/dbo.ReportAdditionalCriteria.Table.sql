USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ReportAdditionalCriteria]    Script Date: 6/29/2019 5:50:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportAdditionalCriteria](
	[REPORTID] [bigint] NOT NULL,
	[CRITERIABLOCK] [varchar](250) NOT NULL,
 CONSTRAINT [ReportAdditionalCriteria_PK] PRIMARY KEY CLUSTERED 
(
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_1561401191]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_1561401191] ON [dbo].[ReportAdditionalCriteria]
(
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ReportAdditionalCriteria]  WITH CHECK ADD  CONSTRAINT [ReportAdditionalCriteria_FK1] FOREIGN KEY([REPORTID])
REFERENCES [dbo].[ReportWidgetID] ([ID])
GO
ALTER TABLE [dbo].[ReportAdditionalCriteria] CHECK CONSTRAINT [ReportAdditionalCriteria_FK1]
GO
