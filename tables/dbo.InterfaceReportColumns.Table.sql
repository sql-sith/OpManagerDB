USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[InterfaceReportColumns]    Script Date: 6/29/2019 5:48:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InterfaceReportColumns](
	[REPORTID] [bigint] NOT NULL,
	[MINCOLUMN] [varchar](200) NOT NULL,
	[MAXCOLUMN] [varchar](200) NOT NULL,
	[AVGCOLUMN] [varchar](200) NOT NULL,
	[UNIT] [varchar](50) NOT NULL,
 CONSTRAINT [InterfaceReportColumns_PK] PRIMARY KEY CLUSTERED 
(
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX__1963863363]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX__1963863363] ON [dbo].[InterfaceReportColumns]
(
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InterfaceReportColumns]  WITH CHECK ADD  CONSTRAINT [InterfaceReportColumns_FK1] FOREIGN KEY([REPORTID])
REFERENCES [dbo].[ReportWidgetID] ([ID])
GO
ALTER TABLE [dbo].[InterfaceReportColumns] CHECK CONSTRAINT [InterfaceReportColumns_FK1]
GO
