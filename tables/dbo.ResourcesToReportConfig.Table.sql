USE [OpManagerDB]
GO
/****** Object:  Table [dbo].[ResourcesToReportConfig]    Script Date: 6/29/2019 5:50:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResourcesToReportConfig](
	[RESOURCEID] [bigint] NOT NULL,
	[REPORTID] [bigint] NOT NULL,
 CONSTRAINT [ResourcesToReportConfig_PK] PRIMARY KEY CLUSTERED 
(
	[RESOURCEID] ASC,
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IDX_698454371]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_698454371] ON [dbo].[ResourcesToReportConfig]
(
	[RESOURCEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IDX_698454372]    Script Date: 6/29/2019 5:53:30 PM ******/
CREATE NONCLUSTERED INDEX [IDX_698454372] ON [dbo].[ResourcesToReportConfig]
(
	[REPORTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ResourcesToReportConfig]  WITH CHECK ADD  CONSTRAINT [ResourcesToReportConfig_FK1] FOREIGN KEY([RESOURCEID])
REFERENCES [dbo].[Resources] ([RESOURCEID])
GO
ALTER TABLE [dbo].[ResourcesToReportConfig] CHECK CONSTRAINT [ResourcesToReportConfig_FK1]
GO
ALTER TABLE [dbo].[ResourcesToReportConfig]  WITH CHECK ADD  CONSTRAINT [ResourcesToReportConfig_FK2] FOREIGN KEY([REPORTID])
REFERENCES [dbo].[ReportConfig] ([REPORTID])
GO
ALTER TABLE [dbo].[ResourcesToReportConfig] CHECK CONSTRAINT [ResourcesToReportConfig_FK2]
GO
